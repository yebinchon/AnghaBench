; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_sig.c__thr_signal_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_sig.c__thr_signal_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i64, i32, i32*, i32 }
%struct.usigaction = type { %struct.sigaction }

@SIG_SETMASK = common dso_local global i32 0, align 4
@_thr_maskset = common dso_local global i32 0, align 4
@_SIG_MAXSIG = common dso_local global i32 0, align 4
@SIGCANCEL = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i64 0, align 8
@SIG_IGN = common dso_local global i64 0, align 8
@SA_NODEFER = common dso_local global i32 0, align 4
@SA_SIGINFO = common dso_local global i32 0, align 4
@thr_sighandler = common dso_local global i32* null, align 8
@sigcancel_handler = common dso_local global i32 0, align 4
@SIG_UNBLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_thr_signal_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sigaction, align 8
  %4 = alloca %struct.sigaction, align 8
  %5 = alloca %struct.sigaction, align 8
  %6 = alloca %struct.usigaction*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %74

12:                                               ; preds = %1
  %13 = load i32, i32* @SIG_SETMASK, align 4
  %14 = call i32 @__sys_sigprocmask(i32 %13, i32* @_thr_maskset, i32* %7)
  store i32 1, i32* %8, align 4
  br label %15

15:                                               ; preds = %68, %12
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @_SIG_MAXSIG, align 4
  %18 = icmp sle i32 %16, %17
  br i1 %18, label %19, label %71

19:                                               ; preds = %15
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @SIGCANCEL, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %68

24:                                               ; preds = %19
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @__sys_sigaction(i32 %25, %struct.sigaction* null, %struct.sigaction* %5)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %39, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %5, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SIG_DFL, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %5, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @SIG_IGN, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %34, %29, %24
  br label %68

40:                                               ; preds = %34
  %41 = load i32, i32* %8, align 4
  %42 = call %struct.usigaction* @__libc_sigaction_slot(i32 %41)
  store %struct.usigaction* %42, %struct.usigaction** %6, align 8
  %43 = load %struct.usigaction*, %struct.usigaction** %6, align 8
  %44 = getelementptr inbounds %struct.usigaction, %struct.usigaction* %43, i32 0, i32 0
  %45 = bitcast %struct.sigaction* %44 to i8*
  %46 = bitcast %struct.sigaction* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %45, i8* align 8 %46, i64 32, i1 false)
  %47 = bitcast %struct.sigaction* %4 to i8*
  %48 = bitcast %struct.sigaction* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %47, i8* align 8 %48, i64 32, i1 false)
  %49 = load %struct.usigaction*, %struct.usigaction** %6, align 8
  %50 = getelementptr inbounds %struct.usigaction, %struct.usigaction* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %50, i32 0, i32 1
  %52 = call i32 @remove_thr_signals(i32* %51)
  %53 = load i32, i32* @SA_NODEFER, align 4
  %54 = xor i32 %53, -1
  %55 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %4, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = and i32 %56, %54
  store i32 %57, i32* %55, align 8
  %58 = load i32, i32* @SA_SIGINFO, align 4
  %59 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %4, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %58
  store i32 %61, i32* %59, align 8
  %62 = load i32*, i32** @thr_sighandler, align 8
  %63 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %4, i32 0, i32 2
  store i32* %62, i32** %63, align 8
  %64 = load i32, i32* @_thr_maskset, align 4
  %65 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %4, i32 0, i32 1
  store i32 %64, i32* %65, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @__sys_sigaction(i32 %66, %struct.sigaction* %4, %struct.sigaction* null)
  br label %68

68:                                               ; preds = %40, %39, %23
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %15

71:                                               ; preds = %15
  %72 = load i32, i32* @SIG_SETMASK, align 4
  %73 = call i32 @__sys_sigprocmask(i32 %72, i32* %7, i32* null)
  br label %74

74:                                               ; preds = %71, %1
  %75 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @SIGFILLSET(i32 %76)
  %78 = load i32, i32* @SA_SIGINFO, align 4
  %79 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 3
  store i32 %78, i32* %79, align 8
  %80 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 2
  store i32* @sigcancel_handler, i32** %80, align 8
  %81 = load i32, i32* @SIGCANCEL, align 4
  %82 = call i32 @__sys_sigaction(i32 %81, %struct.sigaction* %3, %struct.sigaction* null)
  %83 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @SIGEMPTYSET(i32 %84)
  %86 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @SIGCANCEL, align 4
  %89 = call i32 @SIGADDSET(i32 %87, i32 %88)
  %90 = load i32, i32* @SIG_UNBLOCK, align 4
  %91 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 1
  %92 = call i32 @__sys_sigprocmask(i32 %90, i32* %91, i32* null)
  ret void
}

declare dso_local i32 @__sys_sigprocmask(i32, i32*, i32*) #1

declare dso_local i32 @__sys_sigaction(i32, %struct.sigaction*, %struct.sigaction*) #1

declare dso_local %struct.usigaction* @__libc_sigaction_slot(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @remove_thr_signals(i32*) #1

declare dso_local i32 @SIGFILLSET(i32) #1

declare dso_local i32 @SIGEMPTYSET(i32) #1

declare dso_local i32 @SIGADDSET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
