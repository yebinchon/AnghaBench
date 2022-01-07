; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_ramdisk.c_ctl_backend_ramdisk_lun_attr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_ramdisk.c_ctl_backend_ramdisk_lun_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_be_ramdisk_lun = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@UINT64_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"blocksused\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"blocksavail\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @ctl_backend_ramdisk_lun_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctl_backend_ramdisk_lun_attr(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ctl_be_ramdisk_lun*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.ctl_be_ramdisk_lun*
  store %struct.ctl_be_ramdisk_lun* %9, %struct.ctl_be_ramdisk_lun** %6, align 8
  %10 = load i32, i32* @UINT64_MAX, align 4
  store i32 %10, i32* %7, align 4
  %11 = load %struct.ctl_be_ramdisk_lun*, %struct.ctl_be_ramdisk_lun** %6, align 8
  %12 = getelementptr inbounds %struct.ctl_be_ramdisk_lun, %struct.ctl_be_ramdisk_lun* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %56

17:                                               ; preds = %2
  %18 = load %struct.ctl_be_ramdisk_lun*, %struct.ctl_be_ramdisk_lun** %6, align 8
  %19 = getelementptr inbounds %struct.ctl_be_ramdisk_lun, %struct.ctl_be_ramdisk_lun* %18, i32 0, i32 2
  %20 = call i32 @sx_slock(i32* %19)
  %21 = load i8*, i8** %5, align 8
  %22 = call i64 @strcmp(i8* %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %17
  %25 = load %struct.ctl_be_ramdisk_lun*, %struct.ctl_be_ramdisk_lun** %6, align 8
  %26 = getelementptr inbounds %struct.ctl_be_ramdisk_lun, %struct.ctl_be_ramdisk_lun* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ctl_be_ramdisk_lun*, %struct.ctl_be_ramdisk_lun** %6, align 8
  %29 = getelementptr inbounds %struct.ctl_be_ramdisk_lun, %struct.ctl_be_ramdisk_lun* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sdiv i32 %27, %31
  store i32 %32, i32* %7, align 4
  br label %51

33:                                               ; preds = %17
  %34 = load i8*, i8** %5, align 8
  %35 = call i64 @strcmp(i8* %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %33
  %38 = load %struct.ctl_be_ramdisk_lun*, %struct.ctl_be_ramdisk_lun** %6, align 8
  %39 = getelementptr inbounds %struct.ctl_be_ramdisk_lun, %struct.ctl_be_ramdisk_lun* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ctl_be_ramdisk_lun*, %struct.ctl_be_ramdisk_lun** %6, align 8
  %42 = getelementptr inbounds %struct.ctl_be_ramdisk_lun, %struct.ctl_be_ramdisk_lun* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %40, %43
  %45 = load %struct.ctl_be_ramdisk_lun*, %struct.ctl_be_ramdisk_lun** %6, align 8
  %46 = getelementptr inbounds %struct.ctl_be_ramdisk_lun, %struct.ctl_be_ramdisk_lun* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sdiv i32 %44, %48
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %37, %33
  br label %51

51:                                               ; preds = %50, %24
  %52 = load %struct.ctl_be_ramdisk_lun*, %struct.ctl_be_ramdisk_lun** %6, align 8
  %53 = getelementptr inbounds %struct.ctl_be_ramdisk_lun, %struct.ctl_be_ramdisk_lun* %52, i32 0, i32 2
  %54 = call i32 @sx_sunlock(i32* %53)
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %51, %15
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @sx_slock(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @sx_sunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
