; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_usb.c_usb_start_wait_urb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_usb.c_usb_start_wait_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32, i32, i64, i32, i32* }

@usb_linux_wait_complete = common dso_local global i32 0, align 4
@URB_WAIT_WAKEUP = common dso_local global i32 0, align 4
@URB_IS_SLEEPING = common dso_local global i32 0, align 4
@Giant = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.urb*, i32, i64*)* @usb_start_wait_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_start_wait_urb(%struct.urb* %0, i32 %1, i64* %2) #0 {
  %4 = alloca %struct.urb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64* %2, i64** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 1, i32* %5, align 4
  br label %12

12:                                               ; preds = %11, %3
  %13 = load %struct.urb*, %struct.urb** %4, align 8
  %14 = getelementptr inbounds %struct.urb, %struct.urb* %13, i32 0, i32 5
  store i32* @usb_linux_wait_complete, i32** %14, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.urb*, %struct.urb** %4, align 8
  %17 = getelementptr inbounds %struct.urb, %struct.urb* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* @URB_WAIT_WAKEUP, align 4
  %19 = load %struct.urb*, %struct.urb** %4, align 8
  %20 = getelementptr inbounds %struct.urb, %struct.urb* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load i32, i32* @URB_IS_SLEEPING, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.urb*, %struct.urb** %4, align 8
  %26 = getelementptr inbounds %struct.urb, %struct.urb* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = call i64 @mtx_owned(i32* @Giant)
  %30 = icmp ne i64 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 0, i32 1
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %12
  %36 = call i32 @mtx_lock(i32* @Giant)
  br label %37

37:                                               ; preds = %35, %12
  %38 = load %struct.urb*, %struct.urb** %4, align 8
  %39 = call i32 @usb_submit_urb(%struct.urb* %38, i32 0)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %70

43:                                               ; preds = %37
  br label %44

44:                                               ; preds = %51, %43
  %45 = load %struct.urb*, %struct.urb** %4, align 8
  %46 = getelementptr inbounds %struct.urb, %struct.urb* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @URB_WAIT_WAKEUP, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %44
  %52 = load i32, i32* @URB_IS_SLEEPING, align 4
  %53 = load %struct.urb*, %struct.urb** %4, align 8
  %54 = getelementptr inbounds %struct.urb, %struct.urb* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  %57 = load %struct.urb*, %struct.urb** %4, align 8
  %58 = getelementptr inbounds %struct.urb, %struct.urb* %57, i32 0, i32 4
  %59 = call i32 @cv_wait(i32* %58, i32* @Giant)
  %60 = load i32, i32* @URB_IS_SLEEPING, align 4
  %61 = xor i32 %60, -1
  %62 = load %struct.urb*, %struct.urb** %4, align 8
  %63 = getelementptr inbounds %struct.urb, %struct.urb* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, %61
  store i32 %65, i32* %63, align 4
  br label %44

66:                                               ; preds = %44
  %67 = load %struct.urb*, %struct.urb** %4, align 8
  %68 = getelementptr inbounds %struct.urb, %struct.urb* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %66, %42
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = call i32 @mtx_unlock(i32* @Giant)
  br label %75

75:                                               ; preds = %73, %70
  %76 = load i64*, i64** %6, align 8
  %77 = icmp ne i64* %76, null
  br i1 %77, label %78, label %89

78:                                               ; preds = %75
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load i64*, i64** %6, align 8
  store i64 0, i64* %82, align 8
  br label %88

83:                                               ; preds = %78
  %84 = load %struct.urb*, %struct.urb** %4, align 8
  %85 = getelementptr inbounds %struct.urb, %struct.urb* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = load i64*, i64** %6, align 8
  store i64 %86, i64* %87, align 8
  br label %88

88:                                               ; preds = %83, %81
  br label %89

89:                                               ; preds = %88, %75
  %90 = load i32, i32* %7, align 4
  ret i32 %90
}

declare dso_local i64 @mtx_owned(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @cv_wait(i32*, i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
