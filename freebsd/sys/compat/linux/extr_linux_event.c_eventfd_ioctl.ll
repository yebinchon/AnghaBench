; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_event.c_eventfd_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_event.c_eventfd_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i64, i32, i32* }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }

@DTYPE_LINUXEFD = common dso_local global i64 0, align 8
@DTYPE_LINUXTFD = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@FNONBLOCK = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, i8*, %struct.ucred*, %struct.thread*)* @eventfd_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eventfd_ioctl(%struct.file* %0, i32 %1, i8* %2, %struct.ucred* %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ucred*, align 8
  %11 = alloca %struct.thread*, align 8
  store %struct.file* %0, %struct.file** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store %struct.ucred* %3, %struct.ucred** %10, align 8
  store %struct.thread* %4, %struct.thread** %11, align 8
  %12 = load %struct.file*, %struct.file** %7, align 8
  %13 = getelementptr inbounds %struct.file, %struct.file* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %28, label %16

16:                                               ; preds = %5
  %17 = load %struct.file*, %struct.file** %7, align 8
  %18 = getelementptr inbounds %struct.file, %struct.file* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @DTYPE_LINUXEFD, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %16
  %23 = load %struct.file*, %struct.file** %7, align 8
  %24 = getelementptr inbounds %struct.file, %struct.file* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @DTYPE_LINUXTFD, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22, %5
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %6, align 4
  br label %51

30:                                               ; preds = %22, %16
  %31 = load i32, i32* %8, align 4
  switch i32 %31, label %49 [
    i32 128, label %32
    i32 129, label %48
  ]

32:                                               ; preds = %30
  %33 = load i8*, i8** %9, align 8
  %34 = bitcast i8* %33 to i32*
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.file*, %struct.file** %7, align 8
  %39 = getelementptr inbounds %struct.file, %struct.file* %38, i32 0, i32 1
  %40 = load i32, i32* @FNONBLOCK, align 4
  %41 = call i32 @atomic_set_int(i32* %39, i32 %40)
  br label %47

42:                                               ; preds = %32
  %43 = load %struct.file*, %struct.file** %7, align 8
  %44 = getelementptr inbounds %struct.file, %struct.file* %43, i32 0, i32 1
  %45 = load i32, i32* @FNONBLOCK, align 4
  %46 = call i32 @atomic_clear_int(i32* %44, i32 %45)
  br label %47

47:                                               ; preds = %42, %37
  br label %48

48:                                               ; preds = %30, %47
  store i32 0, i32* %6, align 4
  br label %51

49:                                               ; preds = %30
  %50 = load i32, i32* @ENXIO, align 4
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %49, %48, %28
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

declare dso_local i32 @atomic_set_int(i32*, i32) #1

declare dso_local i32 @atomic_clear_int(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
