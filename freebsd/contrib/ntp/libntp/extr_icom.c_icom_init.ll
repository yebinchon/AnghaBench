; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_icom.c_icom_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_icom.c_icom_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32*, i64, i64, i64 }

@O_RDWR = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@IBAUD = common dso_local global i32 0, align 4
@CS8 = common dso_local global i32 0, align 4
@CLOCAL = common dso_local global i32 0, align 4
@VMIN = common dso_local global i64 0, align 8
@VTIME = common dso_local global i64 0, align 8
@TCSANOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @icom_init(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* @O_RDWR, align 4
  %14 = call i32 @tty_open(i8* %12, i32 %13, i32 511)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %62

18:                                               ; preds = %3
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @tcgetattr(i32 %19, %struct.TYPE_6__* %8)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load i32, i32* @errno, align 4
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @close(i32 %25)
  %27 = load i32, i32* %11, align 4
  store i32 %27, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %62

28:                                               ; preds = %18
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 4
  store i64 0, i64* %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 3
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* @IBAUD, align 4
  %32 = load i32, i32* @CS8, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @CLOCAL, align 4
  %35 = or i32 %33, %34
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store i32 %35, i32* %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 2
  store i64 0, i64* %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* @VMIN, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  store i32 0, i32* %41, align 4
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* @VTIME, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  store i32 5, i32* %45, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @cfsetispeed(%struct.TYPE_6__* %8, i32 %46)
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @cfsetospeed(%struct.TYPE_6__* %8, i32 %48)
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @TCSANOW, align 4
  %52 = call i32 @tcsetattr(i32 %50, i32 %51, %struct.TYPE_6__* %8)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %28
  %56 = load i32, i32* @errno, align 4
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @close(i32 %57)
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %62

60:                                               ; preds = %28
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %60, %55, %23, %17
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @tty_open(i8*, i32, i32) #1

declare dso_local i32 @tcgetattr(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @cfsetispeed(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @cfsetospeed(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @tcsetattr(i32, i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
