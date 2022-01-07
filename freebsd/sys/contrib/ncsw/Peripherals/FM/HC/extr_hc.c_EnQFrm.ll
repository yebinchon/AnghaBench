; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/HC/extr_hc.c_EnQFrm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/HC/extr_hc.c_EnQFrm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64*, i32, i64 (i32, i8*)*, i32 }

@E_OK = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Send Hc, SeqNum %d, buff@0x%x, fd offset 0x%x\00", align 1
@MINOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"HC enqueue failed\00", align 1
@E_TIMEOUT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"HC Callback, timeout exceeded\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*, i32*, i64)* @EnQFrm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @EnQFrm(%struct.TYPE_3__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i64, i64* @E_OK, align 8
  store i64 %10, i64* %7, align 8
  store i64 100, i64* %9, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @FmPcdLock(i32 %13)
  store i64 %14, i64* %8, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @ASSERT_COND(i32 %23)
  %25 = load i64, i64* @TRUE, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  store i64 %25, i64* %30, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @FmPcdUnlock(i32 %33, i64 %34)
  %36 = load i32, i32* @TRACE, align 4
  %37 = load i64, i64* %6, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @DPAA_FD_GET_ADDR(i32* %38)
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @DPAA_FD_GET_OFFSET(i32* %40)
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i8*
  %44 = call i32 @DBG(i32 %36, i8* %43)
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  %47 = load i64 (i32, i8*)*, i64 (i32, i8*)** %46, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = bitcast i32* %51 to i8*
  %53 = call i64 %47(i32 %50, i8* %52)
  store i64 %53, i64* %7, align 8
  %54 = load i64, i64* %7, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %3
  %57 = load i32, i32* @MINOR, align 4
  %58 = load i64, i64* %7, align 8
  %59 = call i32 @RETURN_ERROR(i32 %57, i64 %58, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %60

60:                                               ; preds = %56, %3
  br label %61

61:                                               ; preds = %75, %60
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = load i64, i64* %6, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %61
  %70 = load i64, i64* %9, align 8
  %71 = add i64 %70, -1
  store i64 %71, i64* %9, align 8
  %72 = icmp ne i64 %71, 0
  br label %73

73:                                               ; preds = %69, %61
  %74 = phi i1 [ false, %61 ], [ %72, %69 ]
  br i1 %74, label %75, label %77

75:                                               ; preds = %73
  %76 = call i32 @XX_UDelay(i32 100)
  br label %61

77:                                               ; preds = %73
  %78 = load i64, i64* %9, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %77
  %81 = load i32, i32* @MINOR, align 4
  %82 = load i64, i64* @E_TIMEOUT, align 8
  %83 = call i32 @RETURN_ERROR(i32 %81, i64 %82, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %84

84:                                               ; preds = %80, %77
  %85 = load i64, i64* %7, align 8
  ret i64 %85
}

declare dso_local i64 @FmPcdLock(i32) #1

declare dso_local i32 @ASSERT_COND(i32) #1

declare dso_local i32 @FmPcdUnlock(i32, i64) #1

declare dso_local i32 @DBG(i32, i8*) #1

declare dso_local i32 @DPAA_FD_GET_ADDR(i32*) #1

declare dso_local i32 @DPAA_FD_GET_OFFSET(i32*) #1

declare dso_local i32 @RETURN_ERROR(i32, i64, i8*) #1

declare dso_local i32 @XX_UDelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
