; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_upnp_web.c_web_get_action.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_upnp_web.c_web_get_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.http_request = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"SOAPAction:\00", align 1
@urn_wfawlanconfig = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.http_request*, i64*)* @web_get_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @web_get_action(%struct.http_request* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.http_request*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.http_request* %0, %struct.http_request** %4, align 8
  store i64* %1, i64** %5, align 8
  %10 = load i64*, i64** %5, align 8
  store i64 0, i64* %10, align 8
  %11 = load %struct.http_request*, %struct.http_request** %4, align 8
  %12 = call i8* @http_request_get_hdr_line(%struct.http_request* %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %95

16:                                               ; preds = %2
  %17 = load i8*, i8** %8, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 34
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i8*, i8** %8, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %8, align 8
  br label %25

24:                                               ; preds = %16
  store i8* null, i8** %3, align 8
  br label %95

25:                                               ; preds = %21
  %26 = load i8*, i8** @urn_wfawlanconfig, align 8
  store i8* %26, i8** %6, align 8
  %27 = load i8*, i8** @urn_wfawlanconfig, align 8
  %28 = call i32 @os_strlen(i8* %27)
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %7, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i64 @os_strncasecmp(i8* %30, i8* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  store i8* null, i8** %3, align 8
  br label %95

36:                                               ; preds = %25
  %37 = load i32, i32* %7, align 4
  %38 = load i8*, i8** %8, align 8
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  store i8* %40, i8** %8, align 8
  br label %41

41:                                               ; preds = %53, %36
  %42 = load i8*, i8** %8, align 8
  %43 = load i8, i8* %42, align 1
  %44 = call i64 @isgraph(i8 signext %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load i8*, i8** %8, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 35
  br label %51

51:                                               ; preds = %46, %41
  %52 = phi i1 [ false, %41 ], [ %50, %46 ]
  br i1 %52, label %53, label %56

53:                                               ; preds = %51
  %54 = load i8*, i8** %8, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %8, align 8
  br label %41

56:                                               ; preds = %51
  %57 = load i8*, i8** %8, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 35
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  store i8* null, i8** %3, align 8
  br label %95

62:                                               ; preds = %56
  %63 = load i8*, i8** %8, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %8, align 8
  %65 = load i8*, i8** %8, align 8
  store i8* %65, i8** %9, align 8
  br label %66

66:                                               ; preds = %78, %62
  %67 = load i8*, i8** %8, align 8
  %68 = load i8, i8* %67, align 1
  %69 = call i64 @isgraph(i8 signext %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load i8*, i8** %8, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp ne i32 %74, 34
  br label %76

76:                                               ; preds = %71, %66
  %77 = phi i1 [ false, %66 ], [ %75, %71 ]
  br i1 %77, label %78, label %81

78:                                               ; preds = %76
  %79 = load i8*, i8** %8, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %8, align 8
  br label %66

81:                                               ; preds = %76
  %82 = load i8*, i8** %8, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp ne i32 %84, 34
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  store i8* null, i8** %3, align 8
  br label %95

87:                                               ; preds = %81
  %88 = load i8*, i8** %8, align 8
  %89 = load i8*, i8** %9, align 8
  %90 = ptrtoint i8* %88 to i64
  %91 = ptrtoint i8* %89 to i64
  %92 = sub i64 %90, %91
  %93 = load i64*, i64** %5, align 8
  store i64 %92, i64* %93, align 8
  %94 = load i8*, i8** %9, align 8
  store i8* %94, i8** %3, align 8
  br label %95

95:                                               ; preds = %87, %86, %61, %35, %24, %15
  %96 = load i8*, i8** %3, align 8
  ret i8* %96
}

declare dso_local i8* @http_request_get_hdr_line(%struct.http_request*, i8*) #1

declare dso_local i32 @os_strlen(i8*) #1

declare dso_local i64 @os_strncasecmp(i8*, i8*, i32) #1

declare dso_local i64 @isgraph(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
