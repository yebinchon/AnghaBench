; ModuleID = '/home/carl/AnghaBench/freebsd/lib/librt/extr_sigev_thread.c_sigev_thread_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/librt/extr_sigev_thread.c_sigev_thread_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigev_thread = type { i32, i32, i32, i32, i32* }

@sigev_default_thread = common dso_local global %struct.sigev_thread* null, align 8
@sigev_threads = common dso_local global i32 0, align 4
@tn_link = common dso_local global i32 0, align 4
@SIGBUS = common dso_local global i32 0, align 4
@SIGILL = common dso_local global i32 0, align 4
@SIGFPE = common dso_local global i32 0, align 4
@SIGSEGV = common dso_local global i32 0, align 4
@SIGTRAP = common dso_local global i32 0, align 4
@SIG_SETMASK = common dso_local global i32 0, align 4
@sigev_default_attr = common dso_local global i32 0, align 4
@sigev_service_loop = common dso_local global i32 0, align 4
@sigev_list_mtx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sigev_thread* (i32)* @sigev_thread_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sigev_thread* @sigev_thread_create(i32 %0) #0 {
  %2 = alloca %struct.sigev_thread*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sigev_thread*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = load %struct.sigev_thread*, %struct.sigev_thread** @sigev_default_thread, align 8
  %12 = icmp ne %struct.sigev_thread* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %10
  %14 = call i32 (...) @__sigev_list_lock()
  %15 = load %struct.sigev_thread*, %struct.sigev_thread** @sigev_default_thread, align 8
  %16 = getelementptr inbounds %struct.sigev_thread, %struct.sigev_thread* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 8
  %19 = call i32 (...) @__sigev_list_unlock()
  %20 = load %struct.sigev_thread*, %struct.sigev_thread** @sigev_default_thread, align 8
  store %struct.sigev_thread* %20, %struct.sigev_thread** %2, align 8
  br label %83

21:                                               ; preds = %10, %1
  %22 = call %struct.sigev_thread* @malloc(i32 24)
  store %struct.sigev_thread* %22, %struct.sigev_thread** %4, align 8
  %23 = load %struct.sigev_thread*, %struct.sigev_thread** %4, align 8
  %24 = getelementptr inbounds %struct.sigev_thread, %struct.sigev_thread* %23, i32 0, i32 4
  store i32* null, i32** %24, align 8
  %25 = load %struct.sigev_thread*, %struct.sigev_thread** %4, align 8
  %26 = getelementptr inbounds %struct.sigev_thread, %struct.sigev_thread* %25, i32 0, i32 1
  store i32 -1, i32* %26, align 4
  %27 = load %struct.sigev_thread*, %struct.sigev_thread** %4, align 8
  %28 = getelementptr inbounds %struct.sigev_thread, %struct.sigev_thread* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load %struct.sigev_thread*, %struct.sigev_thread** %4, align 8
  %30 = getelementptr inbounds %struct.sigev_thread, %struct.sigev_thread* %29, i32 0, i32 2
  %31 = call i32 @_pthread_cond_init(i32* %30, i32* null)
  %32 = call i32 (...) @__sigev_list_lock()
  %33 = load %struct.sigev_thread*, %struct.sigev_thread** %4, align 8
  %34 = load i32, i32* @tn_link, align 4
  %35 = call i32 @LIST_INSERT_HEAD(i32* @sigev_threads, %struct.sigev_thread* %33, i32 %34)
  %36 = call i32 (...) @__sigev_list_unlock()
  %37 = call i32 @sigfillset(i32* %5)
  %38 = load i32, i32* @SIGBUS, align 4
  %39 = call i32 @sigdelset(i32* %5, i32 %38)
  %40 = load i32, i32* @SIGILL, align 4
  %41 = call i32 @sigdelset(i32* %5, i32 %40)
  %42 = load i32, i32* @SIGFPE, align 4
  %43 = call i32 @sigdelset(i32* %5, i32 %42)
  %44 = load i32, i32* @SIGSEGV, align 4
  %45 = call i32 @sigdelset(i32* %5, i32 %44)
  %46 = load i32, i32* @SIGTRAP, align 4
  %47 = call i32 @sigdelset(i32* %5, i32 %46)
  %48 = load i32, i32* @SIG_SETMASK, align 4
  %49 = call i32 @_sigprocmask(i32 %48, i32* %5, i32* %6)
  %50 = load %struct.sigev_thread*, %struct.sigev_thread** %4, align 8
  %51 = getelementptr inbounds %struct.sigev_thread, %struct.sigev_thread* %50, i32 0, i32 3
  %52 = load i32, i32* @sigev_service_loop, align 4
  %53 = load %struct.sigev_thread*, %struct.sigev_thread** %4, align 8
  %54 = call i32 @_pthread_create(i32* %51, i32* @sigev_default_attr, i32 %52, %struct.sigev_thread* %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* @SIG_SETMASK, align 4
  %56 = call i32 @_sigprocmask(i32 %55, i32* %6, i32* null)
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %21
  %60 = call i32 (...) @__sigev_list_lock()
  %61 = load %struct.sigev_thread*, %struct.sigev_thread** %4, align 8
  %62 = load i32, i32* @tn_link, align 4
  %63 = call i32 @LIST_REMOVE(%struct.sigev_thread* %61, i32 %62)
  %64 = call i32 (...) @__sigev_list_unlock()
  %65 = load %struct.sigev_thread*, %struct.sigev_thread** %4, align 8
  %66 = call i32 @free(%struct.sigev_thread* %65)
  store %struct.sigev_thread* null, %struct.sigev_thread** %4, align 8
  br label %81

67:                                               ; preds = %21
  %68 = call i32 (...) @__sigev_list_lock()
  br label %69

69:                                               ; preds = %74, %67
  %70 = load %struct.sigev_thread*, %struct.sigev_thread** %4, align 8
  %71 = getelementptr inbounds %struct.sigev_thread, %struct.sigev_thread* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load %struct.sigev_thread*, %struct.sigev_thread** %4, align 8
  %76 = getelementptr inbounds %struct.sigev_thread, %struct.sigev_thread* %75, i32 0, i32 2
  %77 = load i32, i32* @sigev_list_mtx, align 4
  %78 = call i32 @_pthread_cond_wait(i32* %76, i32 %77)
  br label %69

79:                                               ; preds = %69
  %80 = call i32 (...) @__sigev_list_unlock()
  br label %81

81:                                               ; preds = %79, %59
  %82 = load %struct.sigev_thread*, %struct.sigev_thread** %4, align 8
  store %struct.sigev_thread* %82, %struct.sigev_thread** %2, align 8
  br label %83

83:                                               ; preds = %81, %13
  %84 = load %struct.sigev_thread*, %struct.sigev_thread** %2, align 8
  ret %struct.sigev_thread* %84
}

declare dso_local i32 @__sigev_list_lock(...) #1

declare dso_local i32 @__sigev_list_unlock(...) #1

declare dso_local %struct.sigev_thread* @malloc(i32) #1

declare dso_local i32 @_pthread_cond_init(i32*, i32*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.sigev_thread*, i32) #1

declare dso_local i32 @sigfillset(i32*) #1

declare dso_local i32 @sigdelset(i32*, i32) #1

declare dso_local i32 @_sigprocmask(i32, i32*, i32*) #1

declare dso_local i32 @_pthread_create(i32*, i32*, i32, %struct.sigev_thread*) #1

declare dso_local i32 @LIST_REMOVE(%struct.sigev_thread*, i32) #1

declare dso_local i32 @free(%struct.sigev_thread*) #1

declare dso_local i32 @_pthread_cond_wait(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
