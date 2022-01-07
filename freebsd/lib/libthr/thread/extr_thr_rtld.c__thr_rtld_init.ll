; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_rtld.c__thr_rtld_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_rtld.c__thr_rtld_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RtldLockInfo = type { i32*, i32, i32, i32, i32, i32, i32, i32 }
%struct.pthread = type { i32 }
%struct.umtx = type { i32 }

@UMTX_OP_WAKE = common dso_local global i32 0, align 4
@_thr_rtld_lock_create = common dso_local global i32 0, align 4
@_thr_rtld_lock_destroy = common dso_local global i32 0, align 4
@_thr_rtld_rlock_acquire = common dso_local global i32 0, align 4
@_thr_rtld_wlock_acquire = common dso_local global i32 0, align 4
@_thr_rtld_lock_release = common dso_local global i32 0, align 4
@_thr_rtld_set_flag = common dso_local global i32 0, align 4
@_thr_rtld_clr_flag = common dso_local global i32 0, align 4
@SYS_getpid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_thr_rtld_init() #0 {
  %1 = alloca %struct.RtldLockInfo, align 8
  %2 = alloca %struct.pthread*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64 -1, i64* %4, align 8
  %6 = call %struct.pthread* (...) @_get_curthread()
  store %struct.pthread* %6, %struct.pthread** %2, align 8
  %7 = bitcast i64* %4 to %struct.umtx*
  %8 = load i32, i32* @UMTX_OP_WAKE, align 4
  %9 = call i32 @_umtx_op_err(%struct.umtx* %7, i32 %8, i32 1, i32 0, i32 0)
  %10 = call i32 (...) @__error()
  %11 = call i32 @memcpy(i64* %4, i64* %4, i32 8)
  %12 = call i32 @mprotect(i32* null, i32 0, i32 0)
  %13 = call i32 (...) @_rtld_get_stack_prot()
  %14 = load i32, i32* @_thr_rtld_lock_create, align 4
  %15 = getelementptr inbounds %struct.RtldLockInfo, %struct.RtldLockInfo* %1, i32 0, i32 7
  store i32 %14, i32* %15, align 8
  %16 = load i32, i32* @_thr_rtld_lock_destroy, align 4
  %17 = getelementptr inbounds %struct.RtldLockInfo, %struct.RtldLockInfo* %1, i32 0, i32 6
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @_thr_rtld_rlock_acquire, align 4
  %19 = getelementptr inbounds %struct.RtldLockInfo, %struct.RtldLockInfo* %1, i32 0, i32 5
  store i32 %18, i32* %19, align 8
  %20 = load i32, i32* @_thr_rtld_wlock_acquire, align 4
  %21 = getelementptr inbounds %struct.RtldLockInfo, %struct.RtldLockInfo* %1, i32 0, i32 4
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @_thr_rtld_lock_release, align 4
  %23 = getelementptr inbounds %struct.RtldLockInfo, %struct.RtldLockInfo* %1, i32 0, i32 3
  store i32 %22, i32* %23, align 8
  %24 = load i32, i32* @_thr_rtld_set_flag, align 4
  %25 = getelementptr inbounds %struct.RtldLockInfo, %struct.RtldLockInfo* %1, i32 0, i32 2
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @_thr_rtld_clr_flag, align 4
  %27 = getelementptr inbounds %struct.RtldLockInfo, %struct.RtldLockInfo* %1, i32 0, i32 1
  store i32 %26, i32* %27, align 8
  %28 = getelementptr inbounds %struct.RtldLockInfo, %struct.RtldLockInfo* %1, i32 0, i32 0
  store i32* null, i32** %28, align 8
  %29 = call i32 @_rtld_atfork_pre(i32* null)
  %30 = call i32 @_rtld_atfork_post(i32* null)
  %31 = call i32 (...) @_malloc_prefork()
  %32 = call i32 (...) @_malloc_postfork()
  %33 = call i32 (...) @getpid()
  %34 = load i32, i32* @SYS_getpid, align 4
  %35 = call i32 @syscall(i32 %34)
  %36 = load %struct.pthread*, %struct.pthread** %2, align 8
  %37 = call i32 @_thr_signal_block(%struct.pthread* %36)
  %38 = call i32 @_rtld_thread_init(%struct.RtldLockInfo* %1)
  %39 = load %struct.pthread*, %struct.pthread** %2, align 8
  %40 = call i32 @_thr_signal_unblock(%struct.pthread* %39)
  %41 = call i32 (...) @__getcontextx_size()
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32* @alloca(i32 %42)
  store i32* %43, i32** %3, align 8
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @getcontext(i32* %44) #3
  %46 = load i32*, i32** %3, align 8
  %47 = bitcast i32* %46 to i8*
  %48 = call i32 @__fillcontextx2(i8* %47)
  ret void
}

declare dso_local %struct.pthread* @_get_curthread(...) #1

declare dso_local i32 @_umtx_op_err(%struct.umtx*, i32, i32, i32, i32) #1

declare dso_local i32 @__error(...) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @mprotect(i32*, i32, i32) #1

declare dso_local i32 @_rtld_get_stack_prot(...) #1

declare dso_local i32 @_rtld_atfork_pre(i32*) #1

declare dso_local i32 @_rtld_atfork_post(i32*) #1

declare dso_local i32 @_malloc_prefork(...) #1

declare dso_local i32 @_malloc_postfork(...) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @syscall(i32) #1

declare dso_local i32 @_thr_signal_block(%struct.pthread*) #1

declare dso_local i32 @_rtld_thread_init(%struct.RtldLockInfo*) #1

declare dso_local i32 @_thr_signal_unblock(%struct.pthread*) #1

declare dso_local i32 @__getcontextx_size(...) #1

declare dso_local i32* @alloca(i32) #1

; Function Attrs: returns_twice
declare dso_local i32 @getcontext(i32*) #2

declare dso_local i32 @__fillcontextx2(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
