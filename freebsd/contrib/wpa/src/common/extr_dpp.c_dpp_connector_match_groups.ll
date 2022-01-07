; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_connector_match_groups.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_connector_match_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.json_token = type { i64, i32, %struct.json_token*, %struct.json_token* }

@.str = private unnamed_addr constant [7 x i8] c"groups\00", align 1
@JSON_ARRAY = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"DPP: No peer groups array found\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"groupId\00", align 1
@JSON_STRING = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"DPP: Missing peer groupId string\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"netRole\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"DPP: Missing peer groups::netRole string\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"DPP: peer connector group: groupId='%s' netRole='%s'\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"DPP: Compatible group/netRole in own connector\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.json_token*, %struct.json_token*)* @dpp_connector_match_groups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpp_connector_match_groups(%struct.json_token* %0, %struct.json_token* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.json_token*, align 8
  %5 = alloca %struct.json_token*, align 8
  %6 = alloca %struct.json_token*, align 8
  %7 = alloca %struct.json_token*, align 8
  %8 = alloca %struct.json_token*, align 8
  %9 = alloca %struct.json_token*, align 8
  store %struct.json_token* %0, %struct.json_token** %4, align 8
  store %struct.json_token* %1, %struct.json_token** %5, align 8
  %10 = load %struct.json_token*, %struct.json_token** %5, align 8
  %11 = call %struct.json_token* @json_get_member(%struct.json_token* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.json_token* %11, %struct.json_token** %6, align 8
  %12 = load %struct.json_token*, %struct.json_token** %6, align 8
  %13 = icmp ne %struct.json_token* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.json_token*, %struct.json_token** %6, align 8
  %16 = getelementptr inbounds %struct.json_token, %struct.json_token* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @JSON_ARRAY, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14, %2
  %21 = load i32, i32* @MSG_DEBUG, align 4
  %22 = call i32 (i32, i8*, ...) @wpa_printf(i32 %21, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %85

23:                                               ; preds = %14
  %24 = load %struct.json_token*, %struct.json_token** %6, align 8
  %25 = getelementptr inbounds %struct.json_token, %struct.json_token* %24, i32 0, i32 3
  %26 = load %struct.json_token*, %struct.json_token** %25, align 8
  store %struct.json_token* %26, %struct.json_token** %7, align 8
  br label %27

27:                                               ; preds = %80, %23
  %28 = load %struct.json_token*, %struct.json_token** %7, align 8
  %29 = icmp ne %struct.json_token* %28, null
  br i1 %29, label %30, label %84

30:                                               ; preds = %27
  %31 = load %struct.json_token*, %struct.json_token** %7, align 8
  %32 = call %struct.json_token* @json_get_member(%struct.json_token* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store %struct.json_token* %32, %struct.json_token** %8, align 8
  %33 = load %struct.json_token*, %struct.json_token** %8, align 8
  %34 = icmp ne %struct.json_token* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.json_token*, %struct.json_token** %8, align 8
  %37 = getelementptr inbounds %struct.json_token, %struct.json_token* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @JSON_STRING, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35, %30
  %42 = load i32, i32* @MSG_DEBUG, align 4
  %43 = call i32 (i32, i8*, ...) @wpa_printf(i32 %42, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %80

44:                                               ; preds = %35
  %45 = load %struct.json_token*, %struct.json_token** %7, align 8
  %46 = call %struct.json_token* @json_get_member(%struct.json_token* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store %struct.json_token* %46, %struct.json_token** %9, align 8
  %47 = load %struct.json_token*, %struct.json_token** %9, align 8
  %48 = icmp ne %struct.json_token* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load %struct.json_token*, %struct.json_token** %9, align 8
  %51 = getelementptr inbounds %struct.json_token, %struct.json_token* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @JSON_STRING, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %49, %44
  %56 = load i32, i32* @MSG_DEBUG, align 4
  %57 = call i32 (i32, i8*, ...) @wpa_printf(i32 %56, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  br label %80

58:                                               ; preds = %49
  %59 = load i32, i32* @MSG_DEBUG, align 4
  %60 = load %struct.json_token*, %struct.json_token** %8, align 8
  %61 = getelementptr inbounds %struct.json_token, %struct.json_token* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.json_token*, %struct.json_token** %9, align 8
  %64 = getelementptr inbounds %struct.json_token, %struct.json_token* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 (i32, i8*, ...) @wpa_printf(i32 %59, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i32 %62, i32 %65)
  %67 = load %struct.json_token*, %struct.json_token** %4, align 8
  %68 = load %struct.json_token*, %struct.json_token** %8, align 8
  %69 = getelementptr inbounds %struct.json_token, %struct.json_token* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.json_token*, %struct.json_token** %9, align 8
  %72 = getelementptr inbounds %struct.json_token, %struct.json_token* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @dpp_connector_compatible_group(%struct.json_token* %67, i32 %70, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %58
  %77 = load i32, i32* @MSG_DEBUG, align 4
  %78 = call i32 (i32, i8*, ...) @wpa_printf(i32 %77, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %85

79:                                               ; preds = %58
  br label %80

80:                                               ; preds = %79, %55, %41
  %81 = load %struct.json_token*, %struct.json_token** %7, align 8
  %82 = getelementptr inbounds %struct.json_token, %struct.json_token* %81, i32 0, i32 2
  %83 = load %struct.json_token*, %struct.json_token** %82, align 8
  store %struct.json_token* %83, %struct.json_token** %7, align 8
  br label %27

84:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %76, %20
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.json_token* @json_get_member(%struct.json_token*, i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @dpp_connector_compatible_group(%struct.json_token*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
