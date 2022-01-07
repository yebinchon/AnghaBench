; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_umtx.c___thr_umutex_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_umtx.c___thr_umutex_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.umutex = type { i32, i32 }

@UMUTEX_PRIO_PROTECT = common dso_local global i32 0, align 4
@UMUTEX_PRIO_INHERIT = common dso_local global i32 0, align 4
@UMTX_OP_MUTEX_LOCK = common dso_local global i32 0, align 4
@UMUTEX_CONTESTED = common dso_local global i32 0, align 4
@UMUTEX_RB_OWNERDEAD = common dso_local global i32 0, align 4
@EOWNERDEAD = common dso_local global i32 0, align 4
@UMUTEX_RB_NOTRECOV = common dso_local global i32 0, align 4
@ENOTRECOVERABLE = common dso_local global i32 0, align 4
@UMTX_OP_MUTEX_WAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__thr_umutex_lock(%struct.umutex* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.umutex*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.umutex* %0, %struct.umutex** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.umutex*, %struct.umutex** %4, align 8
  %8 = getelementptr inbounds %struct.umutex, %struct.umutex* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @UMUTEX_PRIO_PROTECT, align 4
  %11 = load i32, i32* @UMUTEX_PRIO_INHERIT, align 4
  %12 = or i32 %10, %11
  %13 = and i32 %9, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.umutex*, %struct.umutex** %4, align 8
  %17 = load i32, i32* @UMTX_OP_MUTEX_LOCK, align 4
  %18 = call i32 @_umtx_op_err(%struct.umutex* %16, i32 %17, i32 0, i32 0, i32 0)
  store i32 %18, i32* %3, align 4
  br label %64

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %60, %19
  %21 = load %struct.umutex*, %struct.umutex** %4, align 8
  %22 = getelementptr inbounds %struct.umutex, %struct.umutex* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @UMUTEX_CONTESTED, align 4
  %26 = xor i32 %25, -1
  %27 = and i32 %24, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %20
  %30 = load %struct.umutex*, %struct.umutex** %4, align 8
  %31 = getelementptr inbounds %struct.umutex, %struct.umutex* %30, i32 0, i32 1
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = or i32 %33, %34
  %36 = call i64 @atomic_cmpset_acq_32(i32* %31, i32 %32, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %64

39:                                               ; preds = %29, %20
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @UMUTEX_RB_OWNERDEAD, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %39
  %44 = load %struct.umutex*, %struct.umutex** %4, align 8
  %45 = getelementptr inbounds %struct.umutex, %struct.umutex* %44, i32 0, i32 1
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @UMUTEX_CONTESTED, align 4
  %49 = or i32 %47, %48
  %50 = call i64 @atomic_cmpset_acq_32(i32* %45, i32 %46, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %43
  %53 = load i32, i32* @EOWNERDEAD, align 4
  store i32 %53, i32* %3, align 4
  br label %64

54:                                               ; preds = %43, %39
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @UMUTEX_RB_NOTRECOV, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* @ENOTRECOVERABLE, align 4
  store i32 %59, i32* %3, align 4
  br label %64

60:                                               ; preds = %54
  %61 = load %struct.umutex*, %struct.umutex** %4, align 8
  %62 = load i32, i32* @UMTX_OP_MUTEX_WAIT, align 4
  %63 = call i32 @_umtx_op_err(%struct.umutex* %61, i32 %62, i32 0, i32 0, i32 0)
  br label %20

64:                                               ; preds = %58, %52, %38, %15
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @_umtx_op_err(%struct.umutex*, i32, i32, i32, i32) #1

declare dso_local i64 @atomic_cmpset_acq_32(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
