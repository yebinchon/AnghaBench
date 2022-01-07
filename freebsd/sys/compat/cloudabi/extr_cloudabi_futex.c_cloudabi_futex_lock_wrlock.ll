; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_futex.c_cloudabi_futex_lock_wrlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_futex.c_cloudabi_futex_lock_wrlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.futex_lock = type { i32 }
%struct.futex_queue = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cloudabi_futex_lock_wrlock(%struct.thread* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.thread*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.futex_lock*, align 8
  %17 = alloca %struct.futex_queue, align 4
  %18 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %19 = load %struct.thread*, %struct.thread** %9, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = load i32, i32* %11, align 4
  %22 = call i32 @futex_lock_lookup(%struct.thread* %19, i32* %20, i32 %21, %struct.futex_lock** %16)
  store i32 %22, i32* %18, align 4
  %23 = load i32, i32* %18, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %7
  %26 = load i32, i32* %18, align 4
  store i32 %26, i32* %8, align 4
  br label %40

27:                                               ; preds = %7
  %28 = call i32 @futex_queue_init(%struct.futex_queue* %17)
  %29 = load %struct.futex_lock*, %struct.futex_lock** %16, align 8
  %30 = load %struct.thread*, %struct.thread** %9, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* %14, align 4
  %35 = load i32, i32* %15, align 4
  %36 = call i32 @futex_lock_wrlock(%struct.futex_lock* %29, %struct.thread* %30, i32* %31, i32 %32, i32 %33, i32 %34, i32 %35, %struct.futex_queue* %17)
  store i32 %36, i32* %18, align 4
  %37 = load %struct.futex_lock*, %struct.futex_lock** %16, align 8
  %38 = call i32 @futex_lock_release(%struct.futex_lock* %37)
  %39 = load i32, i32* %18, align 4
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %27, %25
  %41 = load i32, i32* %8, align 4
  ret i32 %41
}

declare dso_local i32 @futex_lock_lookup(%struct.thread*, i32*, i32, %struct.futex_lock**) #1

declare dso_local i32 @futex_queue_init(%struct.futex_queue*) #1

declare dso_local i32 @futex_lock_wrlock(%struct.futex_lock*, %struct.thread*, i32*, i32, i32, i32, i32, %struct.futex_queue*) #1

declare dso_local i32 @futex_lock_release(%struct.futex_lock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
