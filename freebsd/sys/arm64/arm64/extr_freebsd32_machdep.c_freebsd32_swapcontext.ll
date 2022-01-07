; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_freebsd32_machdep.c_freebsd32_swapcontext.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_freebsd32_machdep.c_freebsd32_swapcontext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, i32 }
%struct.freebsd32_swapcontext_args = type { i32*, i32* }
%struct.TYPE_5__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GET_MC_CLEAR_RET = common dso_local global i32 0, align 4
@UC32_COPY_SIZE = common dso_local global i32 0, align 4
@SIG_SETMASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @freebsd32_swapcontext(%struct.thread* %0, %struct.freebsd32_swapcontext_args* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.freebsd32_swapcontext_args*, align 8
  %5 = alloca %struct.TYPE_5__, align 4
  %6 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.freebsd32_swapcontext_args* %1, %struct.freebsd32_swapcontext_args** %4, align 8
  %7 = load %struct.freebsd32_swapcontext_args*, %struct.freebsd32_swapcontext_args** %4, align 8
  %8 = getelementptr inbounds %struct.freebsd32_swapcontext_args, %struct.freebsd32_swapcontext_args* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = load %struct.freebsd32_swapcontext_args*, %struct.freebsd32_swapcontext_args** %4, align 8
  %13 = getelementptr inbounds %struct.freebsd32_swapcontext_args, %struct.freebsd32_swapcontext_args* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %11, %2
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %6, align 4
  br label %61

18:                                               ; preds = %11
  %19 = call i32 @bzero(%struct.TYPE_5__* %5, i32 8)
  %20 = load %struct.thread*, %struct.thread** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %22 = load i32, i32* @GET_MC_CLEAR_RET, align 4
  %23 = call i32 @get_mcontext32(%struct.thread* %20, i32* %21, i32 %22)
  %24 = load %struct.thread*, %struct.thread** %3, align 8
  %25 = getelementptr inbounds %struct.thread, %struct.thread* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @PROC_LOCK(i32 %26)
  %28 = load %struct.thread*, %struct.thread** %3, align 8
  %29 = getelementptr inbounds %struct.thread, %struct.thread* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = load %struct.thread*, %struct.thread** %3, align 8
  %33 = getelementptr inbounds %struct.thread, %struct.thread* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @PROC_UNLOCK(i32 %34)
  %36 = load %struct.freebsd32_swapcontext_args*, %struct.freebsd32_swapcontext_args** %4, align 8
  %37 = getelementptr inbounds %struct.freebsd32_swapcontext_args, %struct.freebsd32_swapcontext_args* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* @UC32_COPY_SIZE, align 4
  %40 = call i32 @copyout(%struct.TYPE_5__* %5, i32* %38, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %60

43:                                               ; preds = %18
  %44 = load %struct.freebsd32_swapcontext_args*, %struct.freebsd32_swapcontext_args** %4, align 8
  %45 = getelementptr inbounds %struct.freebsd32_swapcontext_args, %struct.freebsd32_swapcontext_args* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* @UC32_COPY_SIZE, align 4
  %48 = call i32 @copyin(i32* %46, %struct.TYPE_5__* %5, i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %43
  %52 = load %struct.thread*, %struct.thread** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %54 = call i32 @set_mcontext32(%struct.thread* %52, i32* %53)
  store i32 %54, i32* %6, align 4
  %55 = load %struct.thread*, %struct.thread** %3, align 8
  %56 = load i32, i32* @SIG_SETMASK, align 4
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %58 = call i32 @kern_sigprocmask(%struct.thread* %55, i32 %56, i32* %57, i32* null, i32 0)
  br label %59

59:                                               ; preds = %51, %43
  br label %60

60:                                               ; preds = %59, %18
  br label %61

61:                                               ; preds = %60, %16
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local i32 @bzero(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @get_mcontext32(%struct.thread*, i32*, i32) #1

declare dso_local i32 @PROC_LOCK(i32) #1

declare dso_local i32 @PROC_UNLOCK(i32) #1

declare dso_local i32 @copyout(%struct.TYPE_5__*, i32*, i32) #1

declare dso_local i32 @copyin(i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @set_mcontext32(%struct.thread*, i32*) #1

declare dso_local i32 @kern_sigprocmask(%struct.thread*, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
