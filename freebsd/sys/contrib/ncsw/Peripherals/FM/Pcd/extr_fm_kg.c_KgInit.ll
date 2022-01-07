; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_kg.c_KgInit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_kg.c_KgInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@E_OK = common dso_local global i64 0, align 8
@MAJOR = common dso_local global i32 0, align 4
@E_NO_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"FM KG HW spinlock\00", align 1
@NCSW_MASTER_ID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @KgInit(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %4 = load i64, i64* @E_OK, align 8
  store i64 %4, i64* %3, align 8
  %5 = call i64 (...) @XX_InitSpinlock()
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store i64 %5, i64* %9, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @MAJOR, align 4
  %18 = load i32, i32* @E_NO_MEMORY, align 4
  %19 = call i32 @RETURN_ERROR(i32 %17, i32 %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %16, %1
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @NCSW_MASTER_ID, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %28 = call i64 @KgInitMaster(%struct.TYPE_7__* %27)
  store i64 %28, i64* %3, align 8
  br label %32

29:                                               ; preds = %20
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %31 = call i64 @KgInitGuest(%struct.TYPE_7__* %30)
  store i64 %31, i64* %3, align 8
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i64, i64* %3, align 8
  %34 = load i64, i64* @E_OK, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %51

36:                                               ; preds = %32
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %36
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @XX_FreeSpinlock(i64 %48)
  br label %50

50:                                               ; preds = %43, %36
  br label %51

51:                                               ; preds = %50, %32
  %52 = load i64, i64* %3, align 8
  ret i64 %52
}

declare dso_local i64 @XX_InitSpinlock(...) #1

declare dso_local i32 @RETURN_ERROR(i32, i32, i8*) #1

declare dso_local i64 @KgInitMaster(%struct.TYPE_7__*) #1

declare dso_local i64 @KgInitGuest(%struct.TYPE_7__*) #1

declare dso_local i32 @XX_FreeSpinlock(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
