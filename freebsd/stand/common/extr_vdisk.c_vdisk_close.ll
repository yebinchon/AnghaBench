; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_vdisk.c_vdisk_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_vdisk.c_vdisk_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.open_file = type { i64 }
%struct.disk_devdesc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.devdesc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@DEVT_DISK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.open_file*)* @vdisk_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdisk_close(%struct.open_file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.open_file*, align 8
  %4 = alloca %struct.disk_devdesc*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  store %struct.open_file* %0, %struct.open_file** %3, align 8
  %6 = load %struct.open_file*, %struct.open_file** %3, align 8
  %7 = getelementptr inbounds %struct.open_file, %struct.open_file* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.disk_devdesc*
  store %struct.disk_devdesc* %9, %struct.disk_devdesc** %4, align 8
  %10 = load %struct.disk_devdesc*, %struct.disk_devdesc** %4, align 8
  %11 = icmp eq %struct.disk_devdesc* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* %2, align 4
  br label %39

14:                                               ; preds = %1
  %15 = load %struct.disk_devdesc*, %struct.disk_devdesc** %4, align 8
  %16 = bitcast %struct.disk_devdesc* %15 to %struct.devdesc*
  %17 = call %struct.TYPE_7__* @vdisk_get_info(%struct.devdesc* %16)
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %5, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %19 = icmp eq %struct.TYPE_7__* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %2, align 4
  br label %39

22:                                               ; preds = %14
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %24, align 4
  %27 = load %struct.disk_devdesc*, %struct.disk_devdesc** %4, align 8
  %28 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @DEVT_DISK, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %22
  %36 = load %struct.disk_devdesc*, %struct.disk_devdesc** %4, align 8
  %37 = call i32 @disk_close(%struct.disk_devdesc* %36)
  store i32 %37, i32* %2, align 4
  br label %39

38:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %35, %20, %12
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local %struct.TYPE_7__* @vdisk_get_info(%struct.devdesc*) #1

declare dso_local i32 @disk_close(%struct.disk_devdesc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
