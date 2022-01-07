; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_futex.c_futex_lock_wake_up_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_futex.c_futex_lock_wake_up_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.futex_lock = type { i32, i32, i32 }

@CLOUDABI_LOCK_WRLOCKED = common dso_local global i32 0, align 4
@CLOUDABI_LOCK_KERNEL_MANAGED = common dso_local global i32 0, align 4
@LOCK_UNMANAGED = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.futex_lock*, i32*)* @futex_lock_wake_up_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @futex_lock_wake_up_next(%struct.futex_lock* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.futex_lock*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.futex_lock* %0, %struct.futex_lock** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.futex_lock*, %struct.futex_lock** %4, align 8
  %9 = getelementptr inbounds %struct.futex_lock, %struct.futex_lock* %8, i32 0, i32 2
  %10 = call i32 @futex_queue_count(i32* %9)
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %65

12:                                               ; preds = %2
  %13 = load %struct.futex_lock*, %struct.futex_lock** %4, align 8
  %14 = getelementptr inbounds %struct.futex_lock, %struct.futex_lock* %13, i32 0, i32 2
  %15 = call i32 @futex_queue_count(i32* %14)
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = load %struct.futex_lock*, %struct.futex_lock** %4, align 8
  %19 = getelementptr inbounds %struct.futex_lock, %struct.futex_lock* %18, i32 0, i32 1
  %20 = call i32 @futex_queue_count(i32* %19)
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %17, %12
  %23 = load %struct.futex_lock*, %struct.futex_lock** %4, align 8
  %24 = getelementptr inbounds %struct.futex_lock, %struct.futex_lock* %23, i32 0, i32 2
  %25 = call i32 @futex_queue_tid_best(i32* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @CLOUDABI_LOCK_WRLOCKED, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @CLOUDABI_LOCK_KERNEL_MANAGED, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @futex_user_store(i32* %26, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %22
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %3, align 4
  br label %84

37:                                               ; preds = %22
  %38 = load %struct.futex_lock*, %struct.futex_lock** %4, align 8
  %39 = getelementptr inbounds %struct.futex_lock, %struct.futex_lock* %38, i32 0, i32 2
  %40 = call i32 @futex_queue_wake_up_best(i32* %39)
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.futex_lock*, %struct.futex_lock** %4, align 8
  %43 = getelementptr inbounds %struct.futex_lock, %struct.futex_lock* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  br label %64

44:                                               ; preds = %17
  %45 = load i32*, i32** %5, align 8
  %46 = load %struct.futex_lock*, %struct.futex_lock** %4, align 8
  %47 = getelementptr inbounds %struct.futex_lock, %struct.futex_lock* %46, i32 0, i32 2
  %48 = call i32 @futex_queue_tid_best(i32* %47)
  %49 = load i32, i32* @CLOUDABI_LOCK_WRLOCKED, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @futex_user_store(i32* %45, i32 %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %44
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %3, align 4
  br label %84

56:                                               ; preds = %44
  %57 = load %struct.futex_lock*, %struct.futex_lock** %4, align 8
  %58 = getelementptr inbounds %struct.futex_lock, %struct.futex_lock* %57, i32 0, i32 2
  %59 = call i32 @futex_queue_wake_up_best(i32* %58)
  %60 = load i8*, i8** @LOCK_UNMANAGED, align 8
  %61 = ptrtoint i8* %60 to i32
  %62 = load %struct.futex_lock*, %struct.futex_lock** %4, align 8
  %63 = getelementptr inbounds %struct.futex_lock, %struct.futex_lock* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %56, %37
  br label %83

65:                                               ; preds = %2
  %66 = load i32*, i32** %5, align 8
  %67 = load %struct.futex_lock*, %struct.futex_lock** %4, align 8
  %68 = getelementptr inbounds %struct.futex_lock, %struct.futex_lock* %67, i32 0, i32 1
  %69 = call i32 @futex_queue_count(i32* %68)
  %70 = call i32 @futex_user_store(i32* %66, i32 %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %3, align 4
  br label %84

75:                                               ; preds = %65
  %76 = load %struct.futex_lock*, %struct.futex_lock** %4, align 8
  %77 = getelementptr inbounds %struct.futex_lock, %struct.futex_lock* %76, i32 0, i32 1
  %78 = call i32 @futex_queue_wake_up_all(i32* %77)
  %79 = load i8*, i8** @LOCK_UNMANAGED, align 8
  %80 = ptrtoint i8* %79 to i32
  %81 = load %struct.futex_lock*, %struct.futex_lock** %4, align 8
  %82 = getelementptr inbounds %struct.futex_lock, %struct.futex_lock* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  br label %83

83:                                               ; preds = %75, %64
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %73, %54, %35
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @futex_queue_count(i32*) #1

declare dso_local i32 @futex_queue_tid_best(i32*) #1

declare dso_local i32 @futex_user_store(i32*, i32) #1

declare dso_local i32 @futex_queue_wake_up_best(i32*) #1

declare dso_local i32 @futex_queue_wake_up_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
