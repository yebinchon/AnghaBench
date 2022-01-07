; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_clnt_vc.c_clnt_vc_freeres.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_clnt_vc.c_clnt_vc_freeres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.ct_data = type { i64, %struct.TYPE_7__ }

@SIG_SETMASK = common dso_local global i32 0, align 4
@clnt_fd_lock = common dso_local global i32 0, align 4
@vc_fd_locks = common dso_local global i64* null, align 8
@vc_cv = common dso_local global i32* null, align 8
@XDR_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32 (%struct.TYPE_7__*, i8*)*, i8*)* @clnt_vc_freeres to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clnt_vc_freeres(%struct.TYPE_8__* %0, i32 (%struct.TYPE_7__*, i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32 (%struct.TYPE_7__*, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ct_data*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 (%struct.TYPE_7__*, i8*)* %1, i32 (%struct.TYPE_7__*, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %13 = icmp ne %struct.TYPE_8__* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.ct_data*
  store %struct.ct_data* %19, %struct.ct_data** %7, align 8
  %20 = load %struct.ct_data*, %struct.ct_data** %7, align 8
  %21 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %20, i32 0, i32 1
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** %8, align 8
  %22 = call i32 @sigfillset(i32* %11)
  %23 = load i32, i32* @SIG_SETMASK, align 4
  %24 = call i32 @thr_sigsetmask(i32 %23, i32* %11, i32* %10)
  %25 = call i32 @mutex_lock(i32* @clnt_fd_lock)
  br label %26

26:                                               ; preds = %34, %3
  %27 = load i64*, i64** @vc_fd_locks, align 8
  %28 = load %struct.ct_data*, %struct.ct_data** %7, align 8
  %29 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i64, i64* %27, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %26
  %35 = load i32*, i32** @vc_cv, align 8
  %36 = load %struct.ct_data*, %struct.ct_data** %7, align 8
  %37 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = call i32 @cond_wait(i32* %39, i32* @clnt_fd_lock)
  br label %26

41:                                               ; preds = %26
  %42 = load i32, i32* @XDR_FREE, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load i32 (%struct.TYPE_7__*, i8*)*, i32 (%struct.TYPE_7__*, i8*)** %5, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 %45(%struct.TYPE_7__* %46, i8* %47)
  store i32 %48, i32* %9, align 4
  %49 = call i32 @mutex_unlock(i32* @clnt_fd_lock)
  %50 = load i32, i32* @SIG_SETMASK, align 4
  %51 = call i32 @thr_sigsetmask(i32 %50, i32* %10, i32* null)
  %52 = load i32*, i32** @vc_cv, align 8
  %53 = load %struct.ct_data*, %struct.ct_data** %7, align 8
  %54 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  %57 = call i32 @cond_signal(i32* %56)
  %58 = load i32, i32* %9, align 4
  ret i32 %58
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sigfillset(i32*) #1

declare dso_local i32 @thr_sigsetmask(i32, i32*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cond_wait(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cond_signal(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
