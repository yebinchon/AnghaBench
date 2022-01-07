; ModuleID = '/home/carl/AnghaBench/freebsd/stand/uboot/lib/extr_disk.c_stor_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/uboot/lib/extr_disk.c_stor_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.open_file = type { i64 }
%struct.disk_devdesc = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.open_file*, i32, i8*)* @stor_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stor_ioctl(%struct.open_file* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.open_file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.disk_devdesc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_2__, align 4
  %11 = alloca %struct.TYPE_2__, align 4
  %12 = alloca %struct.TYPE_2__, align 4
  store %struct.open_file* %0, %struct.open_file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %13 = load %struct.open_file*, %struct.open_file** %5, align 8
  %14 = getelementptr inbounds %struct.open_file, %struct.open_file* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.disk_devdesc*
  store %struct.disk_devdesc* %16, %struct.disk_devdesc** %8, align 8
  %17 = load %struct.disk_devdesc*, %struct.disk_devdesc** %8, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @disk_ioctl(%struct.disk_devdesc* %17, i32 %18, i8* %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @ENOTTY, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %4, align 4
  br label %53

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  switch i32 %27, label %50 [
    i32 128, label %28
    i32 129, label %36
  ]

28:                                               ; preds = %26
  %29 = load %struct.disk_devdesc*, %struct.disk_devdesc** %8, align 8
  %30 = call i64 @SI(%struct.disk_devdesc* %29)
  %31 = bitcast %struct.TYPE_2__* %10 to i64*
  store i64 %30, i64* %31, align 4
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %7, align 8
  %35 = bitcast i8* %34 to i32*
  store i32 %33, i32* %35, align 4
  br label %52

36:                                               ; preds = %26
  %37 = load %struct.disk_devdesc*, %struct.disk_devdesc** %8, align 8
  %38 = call i64 @SI(%struct.disk_devdesc* %37)
  %39 = bitcast %struct.TYPE_2__* %11 to i64*
  store i64 %38, i64* %39, align 4
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.disk_devdesc*, %struct.disk_devdesc** %8, align 8
  %43 = call i64 @SI(%struct.disk_devdesc* %42)
  %44 = bitcast %struct.TYPE_2__* %12 to i64*
  store i64 %43, i64* %44, align 4
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %41, %46
  %48 = load i8*, i8** %7, align 8
  %49 = bitcast i8* %48 to i32*
  store i32 %47, i32* %49, align 4
  br label %52

50:                                               ; preds = %26
  %51 = load i32, i32* @ENOTTY, align 4
  store i32 %51, i32* %4, align 4
  br label %53

52:                                               ; preds = %36, %28
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %50, %24
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @disk_ioctl(%struct.disk_devdesc*, i32, i8*) #1

declare dso_local i64 @SI(%struct.disk_devdesc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
