; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_futex.c_futex_lock_set_owner.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_futex.c_futex_lock_set_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.futex_lock = type { i32 }

@CLOUDABI_LOCK_WRLOCKED = common dso_local global i32 0, align 4
@LOCK_OWNER_UNKNOWN = common dso_local global i8* null, align 8
@CLOUDABI_LOCK_KERNEL_MANAGED = common dso_local global i32 0, align 4
@LOCK_UNMANAGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.futex_lock*, i32)* @futex_lock_set_owner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @futex_lock_set_owner(%struct.futex_lock* %0, i32 %1) #0 {
  %3 = alloca %struct.futex_lock*, align 8
  %4 = alloca i32, align 4
  store %struct.futex_lock* %0, %struct.futex_lock** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @CLOUDABI_LOCK_WRLOCKED, align 4
  %7 = xor i32 %6, -1
  %8 = and i32 %5, %7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i8*, i8** @LOCK_OWNER_UNKNOWN, align 8
  %12 = ptrtoint i8* %11 to i32
  %13 = load %struct.futex_lock*, %struct.futex_lock** %3, align 8
  %14 = getelementptr inbounds %struct.futex_lock, %struct.futex_lock* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  br label %34

15:                                               ; preds = %2
  %16 = load i32, i32* @CLOUDABI_LOCK_WRLOCKED, align 4
  %17 = load i32, i32* @CLOUDABI_LOCK_KERNEL_MANAGED, align 4
  %18 = or i32 %16, %17
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @LOCK_UNMANAGED, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %15
  %26 = load i8*, i8** @LOCK_OWNER_UNKNOWN, align 8
  %27 = ptrtoint i8* %26 to i32
  %28 = load %struct.futex_lock*, %struct.futex_lock** %3, align 8
  %29 = getelementptr inbounds %struct.futex_lock, %struct.futex_lock* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  br label %34

30:                                               ; preds = %15
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.futex_lock*, %struct.futex_lock** %3, align 8
  %33 = getelementptr inbounds %struct.futex_lock, %struct.futex_lock* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  br label %34

34:                                               ; preds = %30, %25, %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
