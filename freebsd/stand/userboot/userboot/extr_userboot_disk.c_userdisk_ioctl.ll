; ModuleID = '/home/carl/AnghaBench/freebsd/stand/userboot/userboot/extr_userboot_disk.c_userdisk_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/userboot/userboot/extr_userboot_disk.c_userdisk_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.open_file = type { i64 }
%struct.disk_devdesc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ENOTTY = common dso_local global i32 0, align 4
@diskioctl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.open_file*, i32, i8*)* @userdisk_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @userdisk_ioctl(%struct.open_file* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.open_file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.disk_devdesc*, align 8
  %9 = alloca i32, align 4
  store %struct.open_file* %0, %struct.open_file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load %struct.open_file*, %struct.open_file** %5, align 8
  %11 = getelementptr inbounds %struct.open_file, %struct.open_file* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.disk_devdesc*
  store %struct.disk_devdesc* %13, %struct.disk_devdesc** %8, align 8
  %14 = load %struct.disk_devdesc*, %struct.disk_devdesc** %8, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @disk_ioctl(%struct.disk_devdesc* %14, i32 %15, i8* %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @ENOTTY, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %4, align 4
  br label %32

23:                                               ; preds = %3
  %24 = load i32, i32* @diskioctl, align 4
  %25 = load %struct.disk_devdesc*, %struct.disk_devdesc** %8, align 8
  %26 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @CALLBACK(i32 %24, i32 %28, i32 %29, i8* %30)
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %23, %21
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @disk_ioctl(%struct.disk_devdesc*, i32, i8*) #1

declare dso_local i32 @CALLBACK(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
