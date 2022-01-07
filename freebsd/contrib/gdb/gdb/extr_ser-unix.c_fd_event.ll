; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ser-unix.c_fd_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ser-unix.c_fd_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serial = type { i64, i32, i32 (%struct.serial*, i32)*, i32, i32, i32 }

@SERIAL_ERROR = common dso_local global i8* null, align 8
@BUFSIZ = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@SERIAL_EOF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @fd_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fd_event(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.serial*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.serial*
  store %struct.serial* %8, %struct.serial** %5, align 8
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i8*, i8** @SERIAL_ERROR, align 8
  %13 = ptrtoint i8* %12 to i64
  %14 = load %struct.serial*, %struct.serial** %5, align 8
  %15 = getelementptr inbounds %struct.serial, %struct.serial* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  br label %68

16:                                               ; preds = %2
  %17 = load %struct.serial*, %struct.serial** %5, align 8
  %18 = getelementptr inbounds %struct.serial, %struct.serial* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %67

21:                                               ; preds = %16
  br label %22

22:                                               ; preds = %38, %21
  %23 = load %struct.serial*, %struct.serial** %5, align 8
  %24 = getelementptr inbounds %struct.serial, %struct.serial* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.serial*, %struct.serial** %5, align 8
  %27 = getelementptr inbounds %struct.serial, %struct.serial* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @BUFSIZ, align 4
  %30 = call i32 @read(i32 %25, i32 %28, i32 %29)
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %22
  %32 = load i32, i32* %6, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i64, i64* @errno, align 8
  %36 = load i64, i64* @EINTR, align 8
  %37 = icmp eq i64 %35, %36
  br label %38

38:                                               ; preds = %34, %31
  %39 = phi i1 [ false, %31 ], [ %37, %34 ]
  br i1 %39, label %22, label %40

40:                                               ; preds = %38
  %41 = load i32, i32* %6, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i64, i64* @SERIAL_EOF, align 8
  %45 = load %struct.serial*, %struct.serial** %5, align 8
  %46 = getelementptr inbounds %struct.serial, %struct.serial* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  br label %66

47:                                               ; preds = %40
  %48 = load i32, i32* %6, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %47
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = load %struct.serial*, %struct.serial** %5, align 8
  %54 = getelementptr inbounds %struct.serial, %struct.serial* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load %struct.serial*, %struct.serial** %5, align 8
  %56 = getelementptr inbounds %struct.serial, %struct.serial* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.serial*, %struct.serial** %5, align 8
  %59 = getelementptr inbounds %struct.serial, %struct.serial* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 4
  br label %65

60:                                               ; preds = %47
  %61 = load i8*, i8** @SERIAL_ERROR, align 8
  %62 = ptrtoint i8* %61 to i64
  %63 = load %struct.serial*, %struct.serial** %5, align 8
  %64 = getelementptr inbounds %struct.serial, %struct.serial* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  br label %65

65:                                               ; preds = %60, %50
  br label %66

66:                                               ; preds = %65, %43
  br label %67

67:                                               ; preds = %66, %16
  br label %68

68:                                               ; preds = %67, %11
  %69 = load %struct.serial*, %struct.serial** %5, align 8
  %70 = getelementptr inbounds %struct.serial, %struct.serial* %69, i32 0, i32 2
  %71 = load i32 (%struct.serial*, i32)*, i32 (%struct.serial*, i32)** %70, align 8
  %72 = load %struct.serial*, %struct.serial** %5, align 8
  %73 = load %struct.serial*, %struct.serial** %5, align 8
  %74 = getelementptr inbounds %struct.serial, %struct.serial* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 %71(%struct.serial* %72, i32 %75)
  %77 = load %struct.serial*, %struct.serial** %5, align 8
  %78 = call i32 @reschedule(%struct.serial* %77)
  ret void
}

declare dso_local i32 @read(i32, i32, i32) #1

declare dso_local i32 @reschedule(%struct.serial*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
