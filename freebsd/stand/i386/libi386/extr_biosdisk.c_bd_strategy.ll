; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_biosdisk.c_bd_strategy.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_biosdisk.c_bd_strategy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.bcache_devdata = type { i32, i8*, i32 }
%struct.disk_devdesc = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@bd_realstrategy = common dso_local global i32 0, align 4
@DEVT_DISK = common dso_local global i64 0, align 8
@BIOSDISK_SECSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i64, i8*, i64*)* @bd_strategy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bd_strategy(i8* %0, i32 %1, i32 %2, i64 %3, i8* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca %struct.bcache_devdata, align 8
  %16 = alloca %struct.disk_devdesc*, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i64* %5, i64** %13, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = bitcast i8* %18 to %struct.disk_devdesc*
  store %struct.disk_devdesc* %19, %struct.disk_devdesc** %16, align 8
  %20 = load %struct.disk_devdesc*, %struct.disk_devdesc** %16, align 8
  %21 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %20, i32 0, i32 1
  %22 = call %struct.TYPE_6__* @bd_get_bdinfo(%struct.TYPE_7__* %21)
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %14, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %24 = icmp eq %struct.TYPE_6__* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %6
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %7, align 4
  br label %64

27:                                               ; preds = %6
  %28 = load i32, i32* @bd_realstrategy, align 4
  %29 = getelementptr inbounds %struct.bcache_devdata, %struct.bcache_devdata* %15, i32 0, i32 2
  store i32 %28, i32* %29, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = getelementptr inbounds %struct.bcache_devdata, %struct.bcache_devdata* %15, i32 0, i32 1
  store i8* %30, i8** %31, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.bcache_devdata, %struct.bcache_devdata* %15, i32 0, i32 0
  store i32 %34, i32* %35, align 8
  store i32 0, i32* %17, align 4
  %36 = load %struct.disk_devdesc*, %struct.disk_devdesc** %16, align 8
  %37 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @DEVT_DISK, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %27
  %45 = load %struct.disk_devdesc*, %struct.disk_devdesc** %16, align 8
  %46 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = mul nsw i32 %47, %50
  store i32 %51, i32* %17, align 4
  %52 = load i32, i32* @BIOSDISK_SECSIZE, align 4
  %53 = load i32, i32* %17, align 4
  %54 = sdiv i32 %53, %52
  store i32 %54, i32* %17, align 4
  br label %55

55:                                               ; preds = %44, %27
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %17, align 4
  %59 = add nsw i32 %57, %58
  %60 = load i64, i64* %11, align 8
  %61 = load i8*, i8** %12, align 8
  %62 = load i64*, i64** %13, align 8
  %63 = call i32 @bcache_strategy(%struct.bcache_devdata* %15, i32 %56, i32 %59, i64 %60, i8* %61, i64* %62)
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %55, %25
  %65 = load i32, i32* %7, align 4
  ret i32 %65
}

declare dso_local %struct.TYPE_6__* @bd_get_bdinfo(%struct.TYPE_7__*) #1

declare dso_local i32 @bcache_strategy(%struct.bcache_devdata*, i32, i32, i64, i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
