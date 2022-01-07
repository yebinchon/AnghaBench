; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_osu_client.c_server_dnsname_suffix_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_osu_client.c_server_dnsname_suffix_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hs20_osu_client = type { i64, i8** }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Checking suffix match against server dNSName %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hs20_osu_client*, i8*)* @server_dnsname_suffix_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @server_dnsname_suffix_match(%struct.hs20_osu_client* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hs20_osu_client*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store %struct.hs20_osu_client* %0, %struct.hs20_osu_client** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i64 @os_strlen(i8* %10)
  store i64 %11, i64* %6, align 8
  store i64 0, i64* %8, align 8
  br label %12

12:                                               ; preds = %68, %2
  %13 = load i64, i64* %8, align 8
  %14 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %15 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ult i64 %13, %16
  br i1 %17, label %18, label %71

18:                                               ; preds = %12
  %19 = load i32, i32* @MSG_INFO, align 4
  %20 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %21 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %20, i32 0, i32 1
  %22 = load i8**, i8*** %21, align 8
  %23 = load i64, i64* %8, align 8
  %24 = getelementptr inbounds i8*, i8** %22, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @wpa_printf(i32 %19, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %28 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %27, i32 0, i32 1
  %29 = load i8**, i8*** %28, align 8
  %30 = load i64, i64* %8, align 8
  %31 = getelementptr inbounds i8*, i8** %29, i64 %30
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %9, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = call i64 @os_strlen(i8* %33)
  store i64 %34, i64* %7, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* %7, align 8
  %37 = icmp ugt i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %18
  br label %68

39:                                               ; preds = %18
  %40 = load i8*, i8** %9, align 8
  %41 = load i64, i64* %7, align 8
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  %43 = load i64, i64* %6, align 8
  %44 = sub i64 0, %43
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i8*, i8** %5, align 8
  %47 = load i64, i64* %6, align 8
  %48 = call i64 @os_strncasecmp(i8* %45, i8* %46, i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %39
  br label %68

51:                                               ; preds = %39
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* %7, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store i32 1, i32* %3, align 4
  br label %72

56:                                               ; preds = %51
  %57 = load i8*, i8** %9, align 8
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* %6, align 8
  %60 = sub i64 %58, %59
  %61 = sub i64 %60, 1
  %62 = getelementptr inbounds i8, i8* %57, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 46
  br i1 %65, label %66, label %67

66:                                               ; preds = %56
  store i32 1, i32* %3, align 4
  br label %72

67:                                               ; preds = %56
  br label %68

68:                                               ; preds = %67, %50, %38
  %69 = load i64, i64* %8, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %8, align 8
  br label %12

71:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %66, %55
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i64 @os_strlen(i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i8*) #1

declare dso_local i64 @os_strncasecmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
