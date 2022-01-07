; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_futex.c_futex_lock_tryrdlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_futex.c_futex_lock_tryrdlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.futex_lock = type { i64 }

@LOCK_UNMANAGED = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@CLOUDABI_LOCK_UNLOCKED = common dso_local global i32 0, align 4
@CLOUDABI_LOCK_KERNEL_MANAGED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CLOUDABI_LOCK_WRLOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.futex_lock*, i32*)* @futex_lock_tryrdlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @futex_lock_tryrdlock(%struct.futex_lock* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.futex_lock*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.futex_lock* %0, %struct.futex_lock** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.futex_lock*, %struct.futex_lock** %4, align 8
  %10 = getelementptr inbounds %struct.futex_lock, %struct.futex_lock* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @LOCK_UNMANAGED, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @EBUSY, align 4
  store i32 %15, i32* %3, align 4
  br label %70

16:                                               ; preds = %2
  %17 = load i32, i32* @CLOUDABI_LOCK_UNLOCKED, align 4
  store i32 %17, i32* %6, align 4
  br label %18

18:                                               ; preds = %69, %16
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @CLOUDABI_LOCK_KERNEL_MANAGED, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %3, align 4
  br label %70

25:                                               ; preds = %18
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @CLOUDABI_LOCK_WRLOCKED, align 4
  %28 = and i32 %26, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %25
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %7, align 4
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  %36 = call i32 @futex_user_cmpxchg(i32* %32, i32 %33, i32* %6, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %3, align 4
  br label %70

41:                                               ; preds = %30
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %70

46:                                               ; preds = %41
  br label %69

47:                                               ; preds = %25
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %7, align 4
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @CLOUDABI_LOCK_KERNEL_MANAGED, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @futex_user_cmpxchg(i32* %49, i32 %50, i32* %6, i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %47
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %3, align 4
  br label %70

59:                                               ; preds = %47
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = load %struct.futex_lock*, %struct.futex_lock** %4, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @futex_lock_set_owner(%struct.futex_lock* %64, i32 %65)
  %67 = load i32, i32* @EBUSY, align 4
  store i32 %67, i32* %3, align 4
  br label %70

68:                                               ; preds = %59
  br label %69

69:                                               ; preds = %68, %46
  br label %18

70:                                               ; preds = %63, %57, %45, %39, %23, %14
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @futex_user_cmpxchg(i32*, i32, i32*, i32) #1

declare dso_local i32 @futex_lock_set_owner(%struct.futex_lock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
