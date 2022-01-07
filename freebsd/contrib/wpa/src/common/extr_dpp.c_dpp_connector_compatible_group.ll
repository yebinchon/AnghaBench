; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_connector_compatible_group.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_connector_compatible_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.json_token = type { i64, i8*, %struct.json_token*, %struct.json_token* }

@.str = private unnamed_addr constant [7 x i8] c"groups\00", align 1
@JSON_ARRAY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"groupId\00", align 1
@JSON_STRING = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"netRole\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.json_token*, i8*, i8*)* @dpp_connector_compatible_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpp_connector_compatible_group(%struct.json_token* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.json_token*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.json_token*, align 8
  %9 = alloca %struct.json_token*, align 8
  %10 = alloca %struct.json_token*, align 8
  %11 = alloca %struct.json_token*, align 8
  store %struct.json_token* %0, %struct.json_token** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.json_token*, %struct.json_token** %5, align 8
  %13 = call %struct.json_token* @json_get_member(%struct.json_token* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.json_token* %13, %struct.json_token** %8, align 8
  %14 = load %struct.json_token*, %struct.json_token** %8, align 8
  %15 = icmp ne %struct.json_token* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct.json_token*, %struct.json_token** %8, align 8
  %18 = getelementptr inbounds %struct.json_token, %struct.json_token* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @JSON_ARRAY, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16, %3
  store i32 0, i32* %4, align 4
  br label %86

23:                                               ; preds = %16
  %24 = load %struct.json_token*, %struct.json_token** %8, align 8
  %25 = getelementptr inbounds %struct.json_token, %struct.json_token* %24, i32 0, i32 3
  %26 = load %struct.json_token*, %struct.json_token** %25, align 8
  store %struct.json_token* %26, %struct.json_token** %9, align 8
  br label %27

27:                                               ; preds = %81, %23
  %28 = load %struct.json_token*, %struct.json_token** %9, align 8
  %29 = icmp ne %struct.json_token* %28, null
  br i1 %29, label %30, label %85

30:                                               ; preds = %27
  %31 = load %struct.json_token*, %struct.json_token** %9, align 8
  %32 = call %struct.json_token* @json_get_member(%struct.json_token* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store %struct.json_token* %32, %struct.json_token** %10, align 8
  %33 = load %struct.json_token*, %struct.json_token** %10, align 8
  %34 = icmp ne %struct.json_token* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.json_token*, %struct.json_token** %10, align 8
  %37 = getelementptr inbounds %struct.json_token, %struct.json_token* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @JSON_STRING, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35, %30
  br label %81

42:                                               ; preds = %35
  %43 = load %struct.json_token*, %struct.json_token** %9, align 8
  %44 = call %struct.json_token* @json_get_member(%struct.json_token* %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store %struct.json_token* %44, %struct.json_token** %11, align 8
  %45 = load %struct.json_token*, %struct.json_token** %11, align 8
  %46 = icmp ne %struct.json_token* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load %struct.json_token*, %struct.json_token** %11, align 8
  %49 = getelementptr inbounds %struct.json_token, %struct.json_token* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @JSON_STRING, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %47, %42
  br label %81

54:                                               ; preds = %47
  %55 = load %struct.json_token*, %struct.json_token** %10, align 8
  %56 = getelementptr inbounds %struct.json_token, %struct.json_token* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = call i64 @os_strcmp(i8* %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %54
  %61 = load i8*, i8** %6, align 8
  %62 = call i64 @os_strcmp(i8* %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %60
  %65 = load %struct.json_token*, %struct.json_token** %10, align 8
  %66 = getelementptr inbounds %struct.json_token, %struct.json_token* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = call i64 @os_strcmp(i8* %67, i8* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  br label %81

72:                                               ; preds = %64, %60, %54
  %73 = load %struct.json_token*, %struct.json_token** %11, align 8
  %74 = getelementptr inbounds %struct.json_token, %struct.json_token* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = load i8*, i8** %7, align 8
  %77 = call i64 @dpp_compatible_netrole(i8* %75, i8* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  store i32 1, i32* %4, align 4
  br label %86

80:                                               ; preds = %72
  br label %81

81:                                               ; preds = %80, %71, %53, %41
  %82 = load %struct.json_token*, %struct.json_token** %9, align 8
  %83 = getelementptr inbounds %struct.json_token, %struct.json_token* %82, i32 0, i32 2
  %84 = load %struct.json_token*, %struct.json_token** %83, align 8
  store %struct.json_token* %84, %struct.json_token** %9, align 8
  br label %27

85:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %86

86:                                               ; preds = %85, %79, %22
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local %struct.json_token* @json_get_member(%struct.json_token*, i8*) #1

declare dso_local i64 @os_strcmp(i8*, i8*) #1

declare dso_local i64 @dpp_compatible_netrole(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
