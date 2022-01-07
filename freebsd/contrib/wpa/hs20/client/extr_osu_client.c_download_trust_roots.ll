; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_osu_client.c_download_trust_roots.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_osu_client.c_download_trust_roots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hs20_osu_client = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"%s/ca.pem\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"%s/polupd-ca.pem\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"%s/aaa-ca.pem\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hs20_osu_client*, i8*)* @download_trust_roots to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @download_trust_roots(%struct.hs20_osu_client* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hs20_osu_client*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [300 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hs20_osu_client* %0, %struct.hs20_osu_client** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i8* @os_strdup(i8* %11)
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %64

16:                                               ; preds = %2
  %17 = load i8*, i8** %6, align 8
  %18 = call i8* @os_strrchr(i8* %17, i8 signext 47)
  store i8* %18, i8** %7, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @os_free(i8* %22)
  store i32 -1, i32* %3, align 4
  br label %64

24:                                               ; preds = %16
  %25 = load i8*, i8** %7, align 8
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds [300 x i8], [300 x i8]* %8, i64 0, i64 0
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @snprintf(i8* %26, i32 300, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %27)
  %29 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr inbounds [300 x i8], [300 x i8]* %8, i64 0, i64 0
  %32 = call i32 @cmd_dl_osu_ca(%struct.hs20_osu_client* %29, i8* %30, i8* %31)
  store i32 %32, i32* %9, align 4
  %33 = getelementptr inbounds [300 x i8], [300 x i8]* %8, i64 0, i64 0
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @snprintf(i8* %33, i32 300, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  %36 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds [300 x i8], [300 x i8]* %8, i64 0, i64 0
  %39 = call i32 @cmd_dl_polupd_ca(%struct.hs20_osu_client* %36, i8* %37, i8* %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %24
  %43 = load i32, i32* %10, align 4
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 -1, i32* %9, align 4
  br label %46

46:                                               ; preds = %45, %42, %24
  %47 = getelementptr inbounds [300 x i8], [300 x i8]* %8, i64 0, i64 0
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 @snprintf(i8* %47, i32 300, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %48)
  %50 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = getelementptr inbounds [300 x i8], [300 x i8]* %8, i64 0, i64 0
  %53 = call i32 @cmd_dl_aaa_ca(%struct.hs20_osu_client* %50, i8* %51, i8* %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %46
  %57 = load i32, i32* %10, align 4
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 -1, i32* %9, align 4
  br label %60

60:                                               ; preds = %59, %56, %46
  %61 = load i8*, i8** %6, align 8
  %62 = call i32 @os_free(i8* %61)
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %60, %21, %15
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i8* @os_strdup(i8*) #1

declare dso_local i8* @os_strrchr(i8*, i8 signext) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @cmd_dl_osu_ca(%struct.hs20_osu_client*, i8*, i8*) #1

declare dso_local i32 @cmd_dl_polupd_ca(%struct.hs20_osu_client*, i8*, i8*) #1

declare dso_local i32 @cmd_dl_aaa_ca(%struct.hs20_osu_client*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
