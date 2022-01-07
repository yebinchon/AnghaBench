; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_parse_uri_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_parse_uri_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp_bootstrap_info = type { i8* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"DPP: URI(information): %s\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"DPP: Invalid URI information payload\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dpp_parse_uri_info(%struct.dpp_bootstrap_info* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dpp_bootstrap_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.dpp_bootstrap_info* %0, %struct.dpp_bootstrap_info** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %72

10:                                               ; preds = %2
  %11 = load i8*, i8** %5, align 8
  %12 = call i8* @os_strchr(i8* %11, i8 signext 59)
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %10
  %16 = load i8*, i8** %5, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @os_strlen(i8* %17)
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %16, i64 %19
  store i8* %20, i8** %6, align 8
  br label %21

21:                                               ; preds = %15, %10
  %22 = load i8*, i8** %6, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = ptrtoint i8* %22 to i64
  %25 = ptrtoint i8* %23 to i64
  %26 = sub i64 %24, %25
  %27 = add nsw i64 %26, 1
  %28 = trunc i64 %27 to i32
  %29 = call i8* @os_malloc(i32 %28)
  %30 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %4, align 8
  %31 = getelementptr inbounds %struct.dpp_bootstrap_info, %struct.dpp_bootstrap_info* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  %32 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %4, align 8
  %33 = getelementptr inbounds %struct.dpp_bootstrap_info, %struct.dpp_bootstrap_info* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %21
  store i32 -1, i32* %3, align 4
  br label %72

37:                                               ; preds = %21
  %38 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %4, align 8
  %39 = getelementptr inbounds %struct.dpp_bootstrap_info, %struct.dpp_bootstrap_info* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = ptrtoint i8* %42 to i64
  %45 = ptrtoint i8* %43 to i64
  %46 = sub i64 %44, %45
  %47 = trunc i64 %46 to i32
  %48 = call i32 @os_memcpy(i8* %40, i8* %41, i32 %47)
  %49 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %4, align 8
  %50 = getelementptr inbounds %struct.dpp_bootstrap_info, %struct.dpp_bootstrap_info* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = ptrtoint i8* %52 to i64
  %55 = ptrtoint i8* %53 to i64
  %56 = sub i64 %54, %55
  %57 = getelementptr inbounds i8, i8* %51, i64 %56
  store i8 0, i8* %57, align 1
  %58 = load i32, i32* @MSG_DEBUG, align 4
  %59 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %4, align 8
  %60 = getelementptr inbounds %struct.dpp_bootstrap_info, %struct.dpp_bootstrap_info* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 (i32, i8*, ...) @wpa_printf(i32 %58, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %61)
  %63 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %4, align 8
  %64 = getelementptr inbounds %struct.dpp_bootstrap_info, %struct.dpp_bootstrap_info* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @dpp_uri_valid_info(i8* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %37
  %69 = load i32, i32* @MSG_DEBUG, align 4
  %70 = call i32 (i32, i8*, ...) @wpa_printf(i32 %69, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %72

71:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %68, %36, %9
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i8* @os_strchr(i8*, i8 signext) #1

declare dso_local i32 @os_strlen(i8*) #1

declare dso_local i8* @os_malloc(i32) #1

declare dso_local i32 @os_memcpy(i8*, i8*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @dpp_uri_valid_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
