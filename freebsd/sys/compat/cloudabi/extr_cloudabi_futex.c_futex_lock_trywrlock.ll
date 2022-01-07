; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_futex.c_futex_lock_trywrlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_futex.c_futex_lock_trywrlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.futex_lock = type { i32 }

@EDEADLK = common dso_local global i32 0, align 4
@LOCK_UNMANAGED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@CLOUDABI_LOCK_UNLOCKED = common dso_local global i32 0, align 4
@CLOUDABI_LOCK_KERNEL_MANAGED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CLOUDABI_LOCK_WRLOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.futex_lock*, i32*, i32, i32)* @futex_lock_trywrlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @futex_lock_trywrlock(%struct.futex_lock* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.futex_lock*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.futex_lock* %0, %struct.futex_lock** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.futex_lock*, %struct.futex_lock** %6, align 8
  %15 = getelementptr inbounds %struct.futex_lock, %struct.futex_lock* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @EDEADLK, align 4
  store i32 %20, i32* %5, align 4
  br label %105

21:                                               ; preds = %4
  %22 = load %struct.futex_lock*, %struct.futex_lock** %6, align 8
  %23 = getelementptr inbounds %struct.futex_lock, %struct.futex_lock* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @LOCK_UNMANAGED, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @EBUSY, align 4
  store i32 %28, i32* %5, align 4
  br label %105

29:                                               ; preds = %21
  %30 = load i32, i32* @CLOUDABI_LOCK_UNLOCKED, align 4
  store i32 %30, i32* %10, align 4
  br label %31

31:                                               ; preds = %104, %29
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @CLOUDABI_LOCK_KERNEL_MANAGED, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @EINVAL, align 4
  store i32 %37, i32* %5, align 4
  br label %105

38:                                               ; preds = %31
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @CLOUDABI_LOCK_WRLOCKED, align 4
  %42 = or i32 %40, %41
  %43 = icmp eq i32 %39, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* @EDEADLK, align 4
  store i32 %45, i32* %5, align 4
  br label %105

46:                                               ; preds = %38
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @CLOUDABI_LOCK_UNLOCKED, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %82

50:                                               ; preds = %46
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @CLOUDABI_LOCK_WRLOCKED, align 4
  %53 = or i32 %51, %52
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load i32, i32* @CLOUDABI_LOCK_KERNEL_MANAGED, align 4
  %58 = load i32, i32* %11, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %11, align 4
  br label %60

60:                                               ; preds = %56, %50
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* @CLOUDABI_LOCK_UNLOCKED, align 4
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @futex_user_cmpxchg(i32* %61, i32 %62, i32* %10, i32 %63)
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %13, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load i32, i32* %13, align 4
  store i32 %68, i32* %5, align 4
  br label %105

69:                                               ; preds = %60
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @CLOUDABI_LOCK_UNLOCKED, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %69
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.futex_lock*, %struct.futex_lock** %6, align 8
  %79 = getelementptr inbounds %struct.futex_lock, %struct.futex_lock* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  br label %80

80:                                               ; preds = %76, %73
  store i32 0, i32* %5, align 4
  br label %105

81:                                               ; preds = %69
  br label %104

82:                                               ; preds = %46
  %83 = load i32, i32* %10, align 4
  store i32 %83, i32* %12, align 4
  %84 = load i32*, i32** %7, align 8
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* @CLOUDABI_LOCK_KERNEL_MANAGED, align 4
  %88 = or i32 %86, %87
  %89 = call i32 @futex_user_cmpxchg(i32* %84, i32 %85, i32* %10, i32 %88)
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %13, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %82
  %93 = load i32, i32* %13, align 4
  store i32 %93, i32* %5, align 4
  br label %105

94:                                               ; preds = %82
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %12, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %94
  %99 = load %struct.futex_lock*, %struct.futex_lock** %6, align 8
  %100 = load i32, i32* %12, align 4
  %101 = call i32 @futex_lock_set_owner(%struct.futex_lock* %99, i32 %100)
  %102 = load i32, i32* @EBUSY, align 4
  store i32 %102, i32* %5, align 4
  br label %105

103:                                              ; preds = %94
  br label %104

104:                                              ; preds = %103, %81
  br label %31

105:                                              ; preds = %98, %92, %80, %67, %44, %36, %27, %19
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i32 @futex_user_cmpxchg(i32*, i32, i32*, i32) #1

declare dso_local i32 @futex_lock_set_owner(%struct.futex_lock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
