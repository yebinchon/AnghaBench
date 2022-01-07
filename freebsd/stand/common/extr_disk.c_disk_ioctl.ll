; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_disk.c_disk_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_disk.c_disk_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disk_devdesc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.open_disk* }
%struct.open_disk = type { i32, i32, i32 }

@ENOTTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @disk_ioctl(%struct.disk_devdesc* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.disk_devdesc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.open_disk*, align 8
  store %struct.disk_devdesc* %0, %struct.disk_devdesc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load %struct.disk_devdesc*, %struct.disk_devdesc** %5, align 8
  %10 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.open_disk*, %struct.open_disk** %11, align 8
  store %struct.open_disk* %12, %struct.open_disk** %8, align 8
  %13 = load %struct.open_disk*, %struct.open_disk** %8, align 8
  %14 = icmp eq %struct.open_disk* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOTTY, align 4
  store i32 %16, i32* %4, align 4
  br label %50

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %47 [
    i32 128, label %19
    i32 129, label %25
  ]

19:                                               ; preds = %17
  %20 = load %struct.open_disk*, %struct.open_disk** %8, align 8
  %21 = getelementptr inbounds %struct.open_disk, %struct.open_disk* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i8*, i8** %7, align 8
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 4
  br label %49

25:                                               ; preds = %17
  %26 = load %struct.disk_devdesc*, %struct.disk_devdesc** %5, align 8
  %27 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load %struct.open_disk*, %struct.open_disk** %8, align 8
  %32 = getelementptr inbounds %struct.open_disk, %struct.open_disk* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %7, align 8
  %35 = bitcast i8* %34 to i32*
  store i32 %33, i32* %35, align 4
  br label %46

36:                                               ; preds = %25
  %37 = load %struct.open_disk*, %struct.open_disk** %8, align 8
  %38 = getelementptr inbounds %struct.open_disk, %struct.open_disk* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.open_disk*, %struct.open_disk** %8, align 8
  %41 = getelementptr inbounds %struct.open_disk, %struct.open_disk* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 %39, %42
  %44 = load i8*, i8** %7, align 8
  %45 = bitcast i8* %44 to i32*
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %36, %30
  br label %49

47:                                               ; preds = %17
  %48 = load i32, i32* @ENOTTY, align 4
  store i32 %48, i32* %4, align 4
  br label %50

49:                                               ; preds = %46, %19
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %47, %15
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
