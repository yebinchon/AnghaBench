; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qm_portal_fqr.c_CheckStashParams.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qm_portal_fqr.c_CheckStashParams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i64, i32 }

@QM_CONTEXTA_MAX_STASH_SIZE = common dso_local global i64 0, align 8
@MAJOR = common dso_local global i32 0, align 4
@E_INVALID_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Frame Annotation Size Exceeded Max Stash Size(%d)\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Frame Data Size Exceeded Max Stash Size(%d)\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Frame Context Size Exceeded Max Stash Size(%d)\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"FQ Context Address Must be givven\00", align 1
@CACHELINE_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"FQ Context Address Must be aligned to %d\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"FQ Context Address May be up to 40 bit\00", align 1
@E_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @CheckStashParams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckStashParams(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %3 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %4 = call i32 @ASSERT_COND(%struct.TYPE_6__* %3)
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @QM_CONTEXTA_MAX_STASH_SIZE, align 8
  %10 = icmp sgt i64 %8, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load i32, i32* @MAJOR, align 4
  %13 = load i32, i32* @E_INVALID_VALUE, align 4
  %14 = load i64, i64* @QM_CONTEXTA_MAX_STASH_SIZE, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = call i32 @RETURN_ERROR(i32 %12, i32 %13, i8* %15)
  br label %17

17:                                               ; preds = %11, %1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @QM_CONTEXTA_MAX_STASH_SIZE, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %17
  %25 = load i32, i32* @MAJOR, align 4
  %26 = load i32, i32* @E_INVALID_VALUE, align 4
  %27 = load i64, i64* @QM_CONTEXTA_MAX_STASH_SIZE, align 8
  %28 = inttoptr i64 %27 to i8*
  %29 = call i32 @RETURN_ERROR(i32 %25, i32 %26, i8* %28)
  br label %30

30:                                               ; preds = %24, %17
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @QM_CONTEXTA_MAX_STASH_SIZE, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = load i32, i32* @MAJOR, align 4
  %39 = load i32, i32* @E_INVALID_VALUE, align 4
  %40 = load i64, i64* @QM_CONTEXTA_MAX_STASH_SIZE, align 8
  %41 = inttoptr i64 %40 to i8*
  %42 = call i32 @RETURN_ERROR(i32 %38, i32 %39, i8* %41)
  br label %43

43:                                               ; preds = %37, %30
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %87

49:                                               ; preds = %43
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %49
  %56 = load i32, i32* @MAJOR, align 4
  %57 = load i32, i32* @E_INVALID_VALUE, align 4
  %58 = call i32 @RETURN_ERROR(i32 %56, i32 %57, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %59

59:                                               ; preds = %55, %49
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @CACHELINE_SIZE, align 4
  %65 = call i32 @IS_ALIGNED(i32 %63, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %59
  %68 = load i32, i32* @MAJOR, align 4
  %69 = load i32, i32* @E_INVALID_VALUE, align 4
  %70 = load i32, i32* @CACHELINE_SIZE, align 4
  %71 = sext i32 %70 to i64
  %72 = inttoptr i64 %71 to i8*
  %73 = call i32 @RETURN_ERROR(i32 %68, i32 %69, i8* %72)
  br label %74

74:                                               ; preds = %67, %59
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = and i64 %79, -1099511627776
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %74
  %83 = load i32, i32* @MAJOR, align 4
  %84 = load i32, i32* @E_INVALID_VALUE, align 4
  %85 = call i32 @RETURN_ERROR(i32 %83, i32 %84, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  br label %86

86:                                               ; preds = %82, %74
  br label %87

87:                                               ; preds = %86, %43
  %88 = load i32, i32* @E_OK, align 4
  ret i32 %88
}

declare dso_local i32 @ASSERT_COND(%struct.TYPE_6__*) #1

declare dso_local i32 @RETURN_ERROR(i32, i32, i8*) #1

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
