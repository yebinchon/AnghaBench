; ModuleID = '/home/carl/AnghaBench/freebsd/stand/usb/storage/extr_umass_loader.c_umass_disk_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/usb/storage/extr_umass_loader.c_umass_disk_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.open_file = type { i64 }
%struct.disk_devdesc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@umass_uaa = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.open_file*, i32, i8*)* @umass_disk_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @umass_disk_ioctl(%struct.open_file* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.open_file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.disk_devdesc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.open_file* %0, %struct.open_file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %12 = load %struct.open_file*, %struct.open_file** %5, align 8
  %13 = getelementptr inbounds %struct.open_file, %struct.open_file* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.disk_devdesc*
  store %struct.disk_devdesc* %15, %struct.disk_devdesc** %8, align 8
  %16 = load %struct.disk_devdesc*, %struct.disk_devdesc** %8, align 8
  %17 = icmp eq %struct.disk_devdesc* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %4, align 4
  br label %52

20:                                               ; preds = %3
  %21 = load %struct.disk_devdesc*, %struct.disk_devdesc** %8, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @disk_ioctl(%struct.disk_devdesc* %21, i32 %22, i8* %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @ENOTTY, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %4, align 4
  br label %52

30:                                               ; preds = %20
  %31 = load i32, i32* %6, align 4
  switch i32 %31, label %50 [
    i32 128, label %32
    i32 129, label %32
  ]

32:                                               ; preds = %30, %30
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @umass_uaa, i32 0, i32 0), align 4
  %34 = call i32 @usb_msc_read_capacity(i32 %33, i32 0, i32* %9, i32* %10)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @EINVAL, align 4
  store i32 %37, i32* %4, align 4
  br label %52

38:                                               ; preds = %32
  %39 = load i32, i32* %6, align 4
  %40 = icmp eq i32 %39, 129
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32, i32* %9, align 4
  %43 = load i8*, i8** %7, align 8
  %44 = bitcast i8* %43 to i32*
  store i32 %42, i32* %44, align 4
  br label %49

45:                                               ; preds = %38
  %46 = load i32, i32* %10, align 4
  %47 = load i8*, i8** %7, align 8
  %48 = bitcast i8* %47 to i32*
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %45, %41
  store i32 0, i32* %4, align 4
  br label %52

50:                                               ; preds = %30
  %51 = load i32, i32* @ENXIO, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %50, %49, %36, %28, %18
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @disk_ioctl(%struct.disk_devdesc*, i32, i8*) #1

declare dso_local i32 @usb_msc_read_capacity(i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
