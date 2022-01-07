; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_futex.c_futex_lock_unmanage.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_futex.c_futex_lock_unmanage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.futex_lock = type { i32, i32, i32 }

@LOCK_UNMANAGED = common dso_local global i32 0, align 4
@CLOUDABI_LOCK_KERNEL_MANAGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.futex_lock*, i32*)* @futex_lock_unmanage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @futex_lock_unmanage(%struct.futex_lock* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.futex_lock*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.futex_lock* %0, %struct.futex_lock** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.futex_lock*, %struct.futex_lock** %4, align 8
  %10 = getelementptr inbounds %struct.futex_lock, %struct.futex_lock* %9, i32 0, i32 2
  %11 = call i64 @futex_queue_count(i32* %10)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %49

13:                                               ; preds = %2
  %14 = load %struct.futex_lock*, %struct.futex_lock** %4, align 8
  %15 = getelementptr inbounds %struct.futex_lock, %struct.futex_lock* %14, i32 0, i32 1
  %16 = call i64 @futex_queue_count(i32* %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %49

18:                                               ; preds = %13
  %19 = load i32, i32* @LOCK_UNMANAGED, align 4
  %20 = load %struct.futex_lock*, %struct.futex_lock** %4, align 8
  %21 = getelementptr inbounds %struct.futex_lock, %struct.futex_lock* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @futex_user_load(i32* %22, i32* %7)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %3, align 4
  br label %50

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %47, %28
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %6, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @CLOUDABI_LOCK_KERNEL_MANAGED, align 4
  %35 = xor i32 %34, -1
  %36 = and i32 %33, %35
  %37 = call i32 @futex_user_cmpxchg(i32* %31, i32 %32, i32* %7, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %29
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %3, align 4
  br label %50

42:                                               ; preds = %29
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %48

47:                                               ; preds = %42
  br label %29

48:                                               ; preds = %46
  br label %49

49:                                               ; preds = %48, %13, %2
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %40, %26
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i64 @futex_queue_count(i32*) #1

declare dso_local i32 @futex_user_load(i32*, i32*) #1

declare dso_local i32 @futex_user_cmpxchg(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
