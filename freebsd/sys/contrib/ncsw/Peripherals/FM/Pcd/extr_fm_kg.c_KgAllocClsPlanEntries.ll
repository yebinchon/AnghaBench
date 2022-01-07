; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_kg.c_KgAllocClsPlanEntries.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_kg.c_KgAllocClsPlanEntries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }

@E_OK = common dso_local global i32 0, align 4
@CLS_PLAN_NUM_PER_GRP = common dso_local global i64 0, align 8
@MAJOR = common dso_local global i32 0, align 4
@E_INVALID_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"numOfClsPlanEntries must be a power of 2 and divisible by 8\00", align 1
@FM_PCD_MAX_NUM_OF_CLS_PLANS = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@MINOR = common dso_local global i32 0, align 4
@E_FULL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"No resources for clsPlan\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @KgAllocClsPlanEntries(i64 %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %16 = load i64, i64* %6, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %10, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @E_OK, align 4
  store i32 %21, i32* %5, align 4
  br label %115

22:                                               ; preds = %4
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @CLS_PLAN_NUM_PER_GRP, align 8
  %25 = urem i64 %23, %24
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @POWER_OF_2(i64 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27, %22
  %32 = load i32, i32* @MAJOR, align 4
  %33 = load i32, i32* @E_INVALID_VALUE, align 4
  %34 = call i32 @RETURN_ERROR(i32 %32, i32 %33, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %31, %27
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* @CLS_PLAN_NUM_PER_GRP, align 8
  %38 = udiv i64 %36, %37
  store i64 %38, i64* %11, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  br label %39

39:                                               ; preds = %70, %35
  %40 = load i64, i64* %14, align 8
  %41 = load i64, i64* @FM_PCD_MAX_NUM_OF_CLS_PLANS, align 8
  %42 = load i64, i64* @CLS_PLAN_NUM_PER_GRP, align 8
  %43 = udiv i64 %41, %42
  %44 = icmp ult i64 %40, %43
  br i1 %44, label %45, label %71

45:                                               ; preds = %39
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load i64, i64* %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %66, label %56

56:                                               ; preds = %45
  %57 = load i64, i64* %12, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %12, align 8
  %59 = load i64, i64* %14, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %14, align 8
  %61 = load i64, i64* %12, align 8
  %62 = load i64, i64* %11, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  br label %71

65:                                               ; preds = %56
  br label %70

66:                                               ; preds = %45
  store i64 0, i64* %12, align 8
  %67 = load i64, i64* %13, align 8
  %68 = load i64, i64* %11, align 8
  %69 = add i64 %67, %68
  store i64 %69, i64* %14, align 8
  store i64 %69, i64* %13, align 8
  br label %70

70:                                               ; preds = %66, %65
  br label %39

71:                                               ; preds = %64, %39
  %72 = load i64, i64* %12, align 8
  %73 = load i64, i64* %11, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %111

75:                                               ; preds = %71
  %76 = load i64, i64* %13, align 8
  %77 = load i64, i64* @CLS_PLAN_NUM_PER_GRP, align 8
  %78 = mul i64 %76, %77
  %79 = load i64*, i64** %9, align 8
  store i64 %78, i64* %79, align 8
  %80 = load i64, i64* %13, align 8
  store i64 %80, i64* %15, align 8
  br label %81

81:                                               ; preds = %106, %75
  %82 = load i64, i64* %15, align 8
  %83 = load i64, i64* %13, align 8
  %84 = load i64, i64* %11, align 8
  %85 = add i64 %83, %84
  %86 = icmp ult i64 %82, %85
  br i1 %86, label %87, label %109

87:                                               ; preds = %81
  %88 = load i64, i64* @TRUE, align 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = load i64, i64* %15, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  store i64 %88, i64* %96, align 8
  %97 = load i64, i64* %8, align 8
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = load i64, i64* %15, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  store i64 %97, i64* %105, align 8
  br label %106

106:                                              ; preds = %87
  %107 = load i64, i64* %15, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %15, align 8
  br label %81

109:                                              ; preds = %81
  %110 = load i32, i32* @E_OK, align 4
  store i32 %110, i32* %5, align 4
  br label %115

111:                                              ; preds = %71
  %112 = load i32, i32* @MINOR, align 4
  %113 = load i32, i32* @E_FULL, align 4
  %114 = call i32 @RETURN_ERROR(i32 %112, i32 %113, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %115

115:                                              ; preds = %20, %109, %111
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

declare dso_local i32 @POWER_OF_2(i64) #1

declare dso_local i32 @RETURN_ERROR(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
