; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_sig.c_thr_sighandler.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_sig.c_thr_sighandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32 }
%struct.pthread = type { i32, i32, i32, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.usigaction = type { i32, %struct.sigaction }

@errno = common dso_local global i32 0, align 4
@_thr_deferset = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.sigaction*, i8*)* @thr_sighandler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thr_sighandler(i32 %0, %struct.sigaction* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sigaction*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.pthread*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca %struct.sigaction, align 4
  %10 = alloca %struct.usigaction*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.sigaction* %1, %struct.sigaction** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i32, i32* @errno, align 4
  store i32 %12, i32* %11, align 4
  %13 = call %struct.pthread* (...) @_get_curthread()
  store %struct.pthread* %13, %struct.pthread** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %8, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call %struct.usigaction* @__libc_sigaction_slot(i32 %16)
  store %struct.usigaction* %17, %struct.usigaction** %10, align 8
  %18 = load %struct.usigaction*, %struct.usigaction** %10, align 8
  %19 = getelementptr inbounds %struct.usigaction, %struct.usigaction* %18, i32 0, i32 0
  %20 = call i32 @_thr_rwl_rdlock(i32* %19)
  %21 = load %struct.usigaction*, %struct.usigaction** %10, align 8
  %22 = getelementptr inbounds %struct.usigaction, %struct.usigaction* %21, i32 0, i32 1
  %23 = bitcast %struct.sigaction* %9 to i8*
  %24 = bitcast %struct.sigaction* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 4, i1 false)
  %25 = load %struct.usigaction*, %struct.usigaction** %10, align 8
  %26 = getelementptr inbounds %struct.usigaction, %struct.usigaction* %25, i32 0, i32 0
  %27 = call i32 @_thr_rwl_unlock(i32* %26)
  %28 = load i32, i32* %11, align 4
  store i32 %28, i32* @errno, align 4
  %29 = load %struct.pthread*, %struct.pthread** %7, align 8
  %30 = getelementptr inbounds %struct.pthread, %struct.pthread* %29, i32 0, i32 3
  store i64 0, i64* %30, align 8
  %31 = load %struct.pthread*, %struct.pthread** %7, align 8
  %32 = call i64 @THR_IN_CRITICAL(%struct.pthread* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %55

34:                                               ; preds = %3
  %35 = load i32, i32* @_thr_deferset, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i64 @SIGISMEMBER(i32 %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %34
  %40 = load %struct.pthread*, %struct.pthread** %7, align 8
  %41 = getelementptr inbounds %struct.pthread, %struct.pthread* %40, i32 0, i32 2
  %42 = call i32 @memcpy(i32* %41, %struct.sigaction* %9, i32 4)
  %43 = load %struct.pthread*, %struct.pthread** %7, align 8
  %44 = getelementptr inbounds %struct.pthread, %struct.pthread* %43, i32 0, i32 1
  %45 = load %struct.sigaction*, %struct.sigaction** %5, align 8
  %46 = call i32 @memcpy(i32* %44, %struct.sigaction* %45, i32 4)
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.pthread*, %struct.pthread** %7, align 8
  %51 = getelementptr inbounds %struct.pthread, %struct.pthread* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* @_thr_deferset, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  br label %60

55:                                               ; preds = %34, %3
  %56 = load i32, i32* %4, align 4
  %57 = load %struct.sigaction*, %struct.sigaction** %5, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %59 = call i32 @handle_signal(%struct.sigaction* %9, i32 %56, %struct.sigaction* %57, %struct.TYPE_3__* %58)
  br label %60

60:                                               ; preds = %55, %39
  ret void
}

declare dso_local %struct.pthread* @_get_curthread(...) #1

declare dso_local %struct.usigaction* @__libc_sigaction_slot(i32) #1

declare dso_local i32 @_thr_rwl_rdlock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @_thr_rwl_unlock(i32*) #1

declare dso_local i64 @THR_IN_CRITICAL(%struct.pthread*) #1

declare dso_local i64 @SIGISMEMBER(i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.sigaction*, i32) #1

declare dso_local i32 @handle_signal(%struct.sigaction*, i32, %struct.sigaction*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
