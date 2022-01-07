; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qm.c_CheckQmParameters.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qm.c_CheckQmParameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, i32, i32, i32 }

@QM_MAX_NUM_OF_FQIDS = common dso_local global i64 0, align 8
@MAJOR = common dso_local global i32 0, align 4
@E_INVALID_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"partFqidBase+partNumOfFqids out of range!!!\00", align 1
@QM_MAX_NUM_OF_CGS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"partCgsBase+partNumOfCgs out of range!!!\00", align 1
@NCSW_MASTER_ID = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"swPortalsBaseAddress isn't properly aligned\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"rtFramesDepth must be larger than '0'!!!\00", align 1
@MEGABYTE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [52 x i8] c"rtFramesDepth must be equal or smaller than 48MB!!!\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"totalNumOfFqids must be larger than '0'!!!\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"totalNumOfFqids must be equal or smaller than 16MB!!!\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Exceptions callback not provided\00", align 1
@E_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @CheckQmParameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckQmParameters(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 4
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %8, %13
  %15 = load i64, i64* @QM_MAX_NUM_OF_FQIDS, align 8
  %16 = icmp sgt i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32, i32* @MAJOR, align 4
  %19 = load i32, i32* @E_INVALID_VALUE, align 4
  %20 = call i32 @RETURN_ERROR(i32 %18, i32 %19, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %17, %1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %24, %27
  %29 = load i64, i64* @QM_MAX_NUM_OF_CGS, align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %21
  %32 = load i32, i32* @MAJOR, align 4
  %33 = load i32, i32* @E_INVALID_VALUE, align 4
  %34 = call i32 @RETURN_ERROR(i32 %32, i32 %33, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %31, %21
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @NCSW_MASTER_ID, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %116

41:                                               ; preds = %35
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @UINT_TO_PTR(i32 %46)
  %48 = call i32 @XX_VirtToPhys(i32 %47)
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = and i64 %50, 2097151
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %41
  %54 = load i32, i32* @MAJOR, align 4
  %55 = load i32, i32* @E_INVALID_VALUE, align 4
  %56 = call i32 @RETURN_ERROR(i32 %54, i32 %55, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %57

57:                                               ; preds = %53, %41
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %57
  %65 = load i32, i32* @MAJOR, align 4
  %66 = load i32, i32* @E_INVALID_VALUE, align 4
  %67 = call i32 @RETURN_ERROR(i32 %65, i32 %66, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %68

68:                                               ; preds = %64, %57
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 4
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @MEGABYTE, align 4
  %75 = mul nsw i32 16, %74
  %76 = mul nsw i32 %75, 3
  %77 = icmp sgt i32 %73, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %68
  %79 = load i32, i32* @MAJOR, align 4
  %80 = load i32, i32* @E_INVALID_VALUE, align 4
  %81 = call i32 @RETURN_ERROR(i32 %79, i32 %80, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0))
  br label %82

82:                                               ; preds = %78, %68
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 4
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %82
  %90 = load i32, i32* @MAJOR, align 4
  %91 = load i32, i32* @E_INVALID_VALUE, align 4
  %92 = call i32 @RETURN_ERROR(i32 %90, i32 %91, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  br label %93

93:                                               ; preds = %89, %82
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 4
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @MEGABYTE, align 4
  %100 = mul nsw i32 16, %99
  %101 = icmp sgt i32 %98, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %93
  %103 = load i32, i32* @MAJOR, align 4
  %104 = load i32, i32* @E_INVALID_VALUE, align 4
  %105 = call i32 @RETURN_ERROR(i32 %103, i32 %104, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0))
  br label %106

106:                                              ; preds = %102, %93
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %106
  %112 = load i32, i32* @MAJOR, align 4
  %113 = load i32, i32* @E_INVALID_VALUE, align 4
  %114 = call i32 @RETURN_ERROR(i32 %112, i32 %113, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  br label %115

115:                                              ; preds = %111, %106
  br label %116

116:                                              ; preds = %115, %35
  %117 = load i32, i32* @E_OK, align 4
  ret i32 %117
}

declare dso_local i32 @RETURN_ERROR(i32, i32, i8*) #1

declare dso_local i32 @XX_VirtToPhys(i32) #1

declare dso_local i32 @UINT_TO_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
