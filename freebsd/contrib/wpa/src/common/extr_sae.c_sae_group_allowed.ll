; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_sae.c_sae_group_allowed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_sae.c_sae_group_allowed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sae_data = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"SAE: Proposed group %u not enabled in the current configuration\00", align 1
@WLAN_STATUS_FINITE_CYCLIC_GROUP_NOT_SUPPORTED = common dso_local global i32 0, align 4
@SAE_COMMITTED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"SAE: Do not allow group to be changed\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"SAE: Unsupported Finite Cyclic Group %u\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"SAE: Group information not yet initialized\00", align 1
@WLAN_STATUS_UNSPECIFIED_FAILURE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [74 x i8] c"SAE: Do not allow FFC group %u without explicit configuration enabling it\00", align 1
@WLAN_STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sae_group_allowed(%struct.sae_data* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sae_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sae_data* %0, %struct.sae_data** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32*, i32** %6, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %46

11:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %29, %11
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %8, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %12
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %32

28:                                               ; preds = %19
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %8, align 4
  br label %12

32:                                               ; preds = %27, %12
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %32
  %41 = load i32, i32* @MSG_DEBUG, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 (i32, i8*, ...) @wpa_printf(i32 %41, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @WLAN_STATUS_FINITE_CYCLIC_GROUP_NOT_SUPPORTED, align 4
  store i32 %44, i32* %4, align 4
  br label %104

45:                                               ; preds = %32
  br label %46

46:                                               ; preds = %45, %3
  %47 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %48 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @SAE_COMMITTED, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %62

52:                                               ; preds = %46
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %55 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %53, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load i32, i32* @MSG_DEBUG, align 4
  %60 = call i32 (i32, i8*, ...) @wpa_printf(i32 %59, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* @WLAN_STATUS_FINITE_CYCLIC_GROUP_NOT_SUPPORTED, align 4
  store i32 %61, i32* %4, align 4
  br label %104

62:                                               ; preds = %52, %46
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %65 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %63, %66
  br i1 %67, label %68, label %78

68:                                               ; preds = %62
  %69 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i64 @sae_set_group(%struct.sae_data* %69, i32 %70)
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load i32, i32* @MSG_DEBUG, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call i32 (i32, i8*, ...) @wpa_printf(i32 %74, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* @WLAN_STATUS_FINITE_CYCLIC_GROUP_NOT_SUPPORTED, align 4
  store i32 %77, i32* %4, align 4
  br label %104

78:                                               ; preds = %68, %62
  %79 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %80 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %79, i32 0, i32 2
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = icmp eq %struct.TYPE_2__* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load i32, i32* @MSG_DEBUG, align 4
  %85 = call i32 (i32, i8*, ...) @wpa_printf(i32 %84, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %86 = load i32, i32* @WLAN_STATUS_UNSPECIFIED_FAILURE, align 4
  store i32 %86, i32* %4, align 4
  br label %104

87:                                               ; preds = %78
  %88 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %89 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %88, i32 0, i32 2
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %87
  %95 = load i32*, i32** %6, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %102, label %97

97:                                               ; preds = %94
  %98 = load i32, i32* @MSG_DEBUG, align 4
  %99 = load i32, i32* %7, align 4
  %100 = call i32 (i32, i8*, ...) @wpa_printf(i32 %98, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.4, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* @WLAN_STATUS_FINITE_CYCLIC_GROUP_NOT_SUPPORTED, align 4
  store i32 %101, i32* %4, align 4
  br label %104

102:                                              ; preds = %94, %87
  %103 = load i32, i32* @WLAN_STATUS_SUCCESS, align 4
  store i32 %103, i32* %4, align 4
  br label %104

104:                                              ; preds = %102, %97, %83, %73, %58, %40
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @sae_set_group(%struct.sae_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
