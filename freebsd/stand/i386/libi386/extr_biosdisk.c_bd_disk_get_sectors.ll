; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_biosdisk.c_bd_disk_get_sectors.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_biosdisk.c_bd_disk_get_sectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disk_devdesc = type { i64, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@D_SLICENONE = common dso_local global i32 0, align 4
@D_PARTNONE = common dso_local global i32 0, align 4
@DIOCGMEDIASIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.disk_devdesc*)* @bd_disk_get_sectors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bd_disk_get_sectors(%struct.disk_devdesc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.disk_devdesc*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.disk_devdesc, align 8
  %6 = alloca i32, align 4
  store %struct.disk_devdesc* %0, %struct.disk_devdesc** %3, align 8
  %7 = load %struct.disk_devdesc*, %struct.disk_devdesc** %3, align 8
  %8 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %7, i32 0, i32 3
  %9 = call %struct.TYPE_4__* @bd_get_bdinfo(%struct.TYPE_5__* %8)
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %4, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %11 = icmp eq %struct.TYPE_4__* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %54

13:                                               ; preds = %1
  %14 = load %struct.disk_devdesc*, %struct.disk_devdesc** %3, align 8
  %15 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %5, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.disk_devdesc*, %struct.disk_devdesc** %3, align 8
  %21 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %5, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* @D_SLICENONE, align 4
  %27 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %5, i32 0, i32 2
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @D_PARTNONE, align 4
  %29 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %5, i32 0, i32 1
  store i32 %28, i32* %29, align 8
  %30 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %5, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %33, %36
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @disk_open(%struct.disk_devdesc* %5, i32 %38, i32 %41)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %13
  %45 = load i32, i32* @DIOCGMEDIASIZE, align 4
  %46 = call i32 @disk_ioctl(%struct.disk_devdesc* %5, i32 %45, i32* %6)
  %47 = call i32 @disk_close(%struct.disk_devdesc* %5)
  br label %48

48:                                               ; preds = %44, %13
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = sdiv i32 %49, %52
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %48, %12
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.TYPE_4__* @bd_get_bdinfo(%struct.TYPE_5__*) #1

declare dso_local i64 @disk_open(%struct.disk_devdesc*, i32, i32) #1

declare dso_local i32 @disk_ioctl(%struct.disk_devdesc*, i32, i32*) #1

declare dso_local i32 @disk_close(%struct.disk_devdesc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
