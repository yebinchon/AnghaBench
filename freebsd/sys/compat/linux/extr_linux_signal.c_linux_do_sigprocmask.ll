; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_signal.c_linux_do_sigprocmask.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_signal.c_linux_do_sigprocmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i64* }

@SIG_BLOCK = common dso_local global i32 0, align 4
@SIG_UNBLOCK = common dso_local global i32 0, align 4
@SIG_SETMASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, i32, i32*, i32*)* @linux_do_sigprocmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linux_do_sigprocmask(%struct.thread* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.thread*, %struct.thread** %6, align 8
  %15 = getelementptr inbounds %struct.thread, %struct.thread* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 0
  store i64 0, i64* %17, align 8
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %25 [
    i32 130, label %19
    i32 128, label %21
    i32 129, label %23
  ]

19:                                               ; preds = %4
  %20 = load i32, i32* @SIG_BLOCK, align 4
  store i32 %20, i32* %7, align 4
  br label %27

21:                                               ; preds = %4
  %22 = load i32, i32* @SIG_UNBLOCK, align 4
  store i32 %22, i32* %7, align 4
  br label %27

23:                                               ; preds = %4
  %24 = load i32, i32* @SIG_SETMASK, align 4
  store i32 %24, i32* %7, align 4
  br label %27

25:                                               ; preds = %4
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %5, align 4
  br label %49

27:                                               ; preds = %23, %21, %19
  %28 = load i32*, i32** %8, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @linux_to_bsd_sigset(i32* %31, i32* %11)
  store i32* %11, i32** %12, align 8
  br label %34

33:                                               ; preds = %27
  store i32* null, i32** %12, align 8
  br label %34

34:                                               ; preds = %33, %30
  %35 = load %struct.thread*, %struct.thread** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32*, i32** %12, align 8
  %38 = call i32 @kern_sigprocmask(%struct.thread* %35, i32 %36, i32* %37, i32* %10, i32 0)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = load i32*, i32** %9, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32*, i32** %9, align 8
  %46 = call i32 @bsd_to_linux_sigset(i32* %10, i32* %45)
  br label %47

47:                                               ; preds = %44, %41, %34
  %48 = load i32, i32* %13, align 4
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %47, %25
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @linux_to_bsd_sigset(i32*, i32*) #1

declare dso_local i32 @kern_sigprocmask(%struct.thread*, i32, i32*, i32*, i32) #1

declare dso_local i32 @bsd_to_linux_sigset(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
