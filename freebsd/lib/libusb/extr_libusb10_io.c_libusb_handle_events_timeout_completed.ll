; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10_io.c_libusb_handle_events_timeout_completed.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10_io.c_libusb_handle_events_timeout_completed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32 }

@LIBUSB_DEBUG_FUNCTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"libusb_handle_events_timeout_completed enter\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"libusb_handle_events_timeout_completed exit\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libusb_handle_events_timeout_completed(i32* %0, %struct.timeval* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.timeval*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.timeval* %1, %struct.timeval** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = call i32* @GET_CONTEXT(i32* %8)
  store i32* %9, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* @LIBUSB_DEBUG_FUNCTION, align 4
  %12 = call i32 @DPRINTF(i32* %10, i32 %11, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @libusb_lock_events(i32* %13)
  br label %15

15:                                               ; preds = %3, %34
  %16 = load i32*, i32** %6, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %15
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %18
  br label %35

26:                                               ; preds = %22
  br label %27

27:                                               ; preds = %26, %15
  %28 = load i32*, i32** %4, align 8
  %29 = load %struct.timeval*, %struct.timeval** %5, align 8
  %30 = call i32 @libusb_handle_events_locked(i32* %28, %struct.timeval* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %35

34:                                               ; preds = %27
  br label %15

35:                                               ; preds = %33, %25
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @libusb_unlock_events(i32* %36)
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* @LIBUSB_DEBUG_FUNCTION, align 4
  %40 = call i32 @DPRINTF(i32* %38, i32 %39, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

declare dso_local i32* @GET_CONTEXT(i32*) #1

declare dso_local i32 @DPRINTF(i32*, i32, i8*) #1

declare dso_local i32 @libusb_lock_events(i32*) #1

declare dso_local i32 @libusb_handle_events_locked(i32*, %struct.timeval*) #1

declare dso_local i32 @libusb_unlock_events(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
