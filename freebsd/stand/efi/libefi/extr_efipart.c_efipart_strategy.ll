; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_efipart.c_efipart_strategy.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_efipart.c_efipart_strategy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcache_devdata = type { i32, i8*, i32 }
%struct.disk_devdesc = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i64 }
%struct.devdesc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@efipart_realstrategy = common dso_local global i32 0, align 4
@DEVT_DISK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i64, i8*, i64*)* @efipart_strategy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efipart_strategy(i8* %0, i32 %1, i32 %2, i64 %3, i8* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.bcache_devdata, align 8
  %15 = alloca %struct.disk_devdesc*, align 8
  %16 = alloca %struct.TYPE_11__*, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i64* %5, i64** %13, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = bitcast i8* %18 to %struct.disk_devdesc*
  store %struct.disk_devdesc* %19, %struct.disk_devdesc** %15, align 8
  %20 = load %struct.disk_devdesc*, %struct.disk_devdesc** %15, align 8
  %21 = icmp eq %struct.disk_devdesc* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %6
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %7, align 4
  br label %98

24:                                               ; preds = %6
  %25 = load %struct.disk_devdesc*, %struct.disk_devdesc** %15, align 8
  %26 = bitcast %struct.disk_devdesc* %25 to %struct.devdesc*
  %27 = call %struct.TYPE_11__* @efiblk_get_pdinfo(%struct.devdesc* %26)
  store %struct.TYPE_11__* %27, %struct.TYPE_11__** %16, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %29 = icmp eq %struct.TYPE_11__* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* %7, align 4
  br label %98

32:                                               ; preds = %24
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %32
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %41
  %51 = load i32, i32* @ENXIO, align 4
  store i32 %51, i32* %7, align 4
  br label %98

52:                                               ; preds = %41, %32
  %53 = load i32, i32* @efipart_realstrategy, align 4
  %54 = getelementptr inbounds %struct.bcache_devdata, %struct.bcache_devdata* %14, i32 0, i32 2
  store i32 %53, i32* %54, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = getelementptr inbounds %struct.bcache_devdata, %struct.bcache_devdata* %14, i32 0, i32 1
  store i8* %55, i8** %56, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = getelementptr inbounds %struct.bcache_devdata, %struct.bcache_devdata* %14, i32 0, i32 0
  store i32 %59, i32* %60, align 8
  %61 = load %struct.disk_devdesc*, %struct.disk_devdesc** %15, align 8
  %62 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @DEVT_DISK, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %91

69:                                               ; preds = %52
  %70 = load %struct.disk_devdesc*, %struct.disk_devdesc** %15, align 8
  %71 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = mul nsw i32 %72, %79
  store i32 %80, i32* %17, align 4
  %81 = load i32, i32* %17, align 4
  %82 = sdiv i32 %81, 512
  store i32 %82, i32* %17, align 4
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %17, align 4
  %86 = add nsw i32 %84, %85
  %87 = load i64, i64* %11, align 8
  %88 = load i8*, i8** %12, align 8
  %89 = load i64*, i64** %13, align 8
  %90 = call i32 @bcache_strategy(%struct.bcache_devdata* %14, i32 %83, i32 %86, i64 %87, i8* %88, i64* %89)
  store i32 %90, i32* %7, align 4
  br label %98

91:                                               ; preds = %52
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %10, align 4
  %94 = load i64, i64* %11, align 8
  %95 = load i8*, i8** %12, align 8
  %96 = load i64*, i64** %13, align 8
  %97 = call i32 @bcache_strategy(%struct.bcache_devdata* %14, i32 %92, i32 %93, i64 %94, i8* %95, i64* %96)
  store i32 %97, i32* %7, align 4
  br label %98

98:                                               ; preds = %91, %69, %50, %30, %22
  %99 = load i32, i32* %7, align 4
  ret i32 %99
}

declare dso_local %struct.TYPE_11__* @efiblk_get_pdinfo(%struct.devdesc*) #1

declare dso_local i32 @bcache_strategy(%struct.bcache_devdata*, i32, i32, i64, i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
