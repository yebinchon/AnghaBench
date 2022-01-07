; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_umtx.c___thr_umutex_lock_spin.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_umtx.c___thr_umutex_lock_spin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.umutex = type { i32, i32 }

@_thr_is_smp = common dso_local global i32 0, align 4
@UMUTEX_PRIO_PROTECT = common dso_local global i32 0, align 4
@UMUTEX_PRIO_INHERIT = common dso_local global i32 0, align 4
@UMTX_OP_MUTEX_LOCK = common dso_local global i32 0, align 4
@SPINLOOPS = common dso_local global i32 0, align 4
@UMUTEX_CONTESTED = common dso_local global i32 0, align 4
@UMUTEX_RB_OWNERDEAD = common dso_local global i32 0, align 4
@EOWNERDEAD = common dso_local global i32 0, align 4
@UMUTEX_RB_NOTRECOV = common dso_local global i32 0, align 4
@ENOTRECOVERABLE = common dso_local global i32 0, align 4
@CPU_SPINWAIT = common dso_local global i32 0, align 4
@UMTX_OP_MUTEX_WAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__thr_umutex_lock_spin(%struct.umutex* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.umutex*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.umutex* %0, %struct.umutex** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @_thr_is_smp, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load %struct.umutex*, %struct.umutex** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @__thr_umutex_lock(%struct.umutex* %11, i32 %12)
  store i32 %13, i32* %3, align 4
  br label %86

14:                                               ; preds = %2
  %15 = load %struct.umutex*, %struct.umutex** %4, align 8
  %16 = getelementptr inbounds %struct.umutex, %struct.umutex* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @UMUTEX_PRIO_PROTECT, align 4
  %19 = load i32, i32* @UMUTEX_PRIO_INHERIT, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %17, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %14
  %24 = load %struct.umutex*, %struct.umutex** %4, align 8
  %25 = load i32, i32* @UMTX_OP_MUTEX_LOCK, align 4
  %26 = call i32 @_umtx_op_err(%struct.umutex* %24, i32 %25, i32 0, i32 0, i32 0)
  store i32 %26, i32* %3, align 4
  br label %86

27:                                               ; preds = %14
  br label %28

28:                                               ; preds = %82, %27
  %29 = load i32, i32* @SPINLOOPS, align 4
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %80, %28
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %7, align 4
  %33 = icmp ne i32 %31, 0
  br i1 %33, label %34, label %82

34:                                               ; preds = %30
  %35 = load %struct.umutex*, %struct.umutex** %4, align 8
  %36 = getelementptr inbounds %struct.umutex, %struct.umutex* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @UMUTEX_CONTESTED, align 4
  %40 = xor i32 %39, -1
  %41 = and i32 %38, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %34
  %44 = load %struct.umutex*, %struct.umutex** %4, align 8
  %45 = getelementptr inbounds %struct.umutex, %struct.umutex* %44, i32 0, i32 1
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %6, align 4
  %49 = or i32 %47, %48
  %50 = call i64 @atomic_cmpset_acq_32(i32* %45, i32 %46, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %86

53:                                               ; preds = %43, %34
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @UMUTEX_RB_OWNERDEAD, align 4
  %56 = icmp eq i32 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i64 @__predict_false(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %53
  %61 = load %struct.umutex*, %struct.umutex** %4, align 8
  %62 = getelementptr inbounds %struct.umutex, %struct.umutex* %61, i32 0, i32 1
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @UMUTEX_CONTESTED, align 4
  %66 = or i32 %64, %65
  %67 = call i64 @atomic_cmpset_acq_32(i32* %62, i32 %63, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %60
  %70 = load i32, i32* @EOWNERDEAD, align 4
  store i32 %70, i32* %3, align 4
  br label %86

71:                                               ; preds = %60, %53
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @UMUTEX_RB_NOTRECOV, align 4
  %74 = icmp eq i32 %72, %73
  %75 = zext i1 %74 to i32
  %76 = call i64 @__predict_false(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %71
  %79 = load i32, i32* @ENOTRECOVERABLE, align 4
  store i32 %79, i32* %3, align 4
  br label %86

80:                                               ; preds = %71
  %81 = load i32, i32* @CPU_SPINWAIT, align 4
  br label %30

82:                                               ; preds = %30
  %83 = load %struct.umutex*, %struct.umutex** %4, align 8
  %84 = load i32, i32* @UMTX_OP_MUTEX_WAIT, align 4
  %85 = call i32 @_umtx_op_err(%struct.umutex* %83, i32 %84, i32 0, i32 0, i32 0)
  br label %28

86:                                               ; preds = %78, %69, %52, %23, %10
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @__thr_umutex_lock(%struct.umutex*, i32) #1

declare dso_local i32 @_umtx_op_err(%struct.umutex*, i32, i32, i32, i32) #1

declare dso_local i64 @atomic_cmpset_acq_32(i32*, i32, i32) #1

declare dso_local i64 @__predict_false(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
