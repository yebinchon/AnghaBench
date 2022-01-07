; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_vdisk.c_vdisk_strategy.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_vdisk.c_vdisk_strategy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disk_devdesc = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.devdesc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@DEVT_DISK = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@F_MASK = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i64, i8*, i64*)* @vdisk_strategy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdisk_strategy(i8* %0, i32 %1, i32 %2, i64 %3, i8* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.disk_devdesc*, align 8
  %15 = alloca %struct.TYPE_7__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i64* %5, i64** %13, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = bitcast i8* %18 to %struct.disk_devdesc*
  store %struct.disk_devdesc* %19, %struct.disk_devdesc** %14, align 8
  %20 = load %struct.disk_devdesc*, %struct.disk_devdesc** %14, align 8
  %21 = icmp eq %struct.disk_devdesc* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %6
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %7, align 4
  br label %106

24:                                               ; preds = %6
  %25 = load %struct.disk_devdesc*, %struct.disk_devdesc** %14, align 8
  %26 = bitcast %struct.disk_devdesc* %25 to %struct.devdesc*
  %27 = call %struct.TYPE_7__* @vdisk_get_info(%struct.devdesc* %26)
  store %struct.TYPE_7__* %27, %struct.TYPE_7__** %15, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %29 = icmp eq %struct.TYPE_7__* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* %7, align 4
  br label %106

32:                                               ; preds = %24
  %33 = load i64, i64* %11, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = load i64, i64* %11, align 8
  %37 = urem i64 %36, 512
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35, %32
  %40 = load i32, i32* @EIO, align 4
  store i32 %40, i32* %7, align 4
  br label %106

41:                                               ; preds = %35
  %42 = load %struct.disk_devdesc*, %struct.disk_devdesc** %14, align 8
  %43 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @DEVT_DISK, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %41
  %51 = load %struct.disk_devdesc*, %struct.disk_devdesc** %14, align 8
  %52 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = mul nsw i32 %53, %56
  store i32 %57, i32* %17, align 4
  %58 = load i32, i32* %17, align 4
  %59 = sdiv i32 %58, 512
  store i32 %59, i32* %17, align 4
  %60 = load i32, i32* %17, align 4
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* %10, align 4
  br label %63

63:                                               ; preds = %50, %41
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %10, align 4
  %68 = shl i32 %67, 9
  %69 = load i32, i32* @SEEK_SET, align 4
  %70 = call i32 @lseek(i32 %66, i32 %68, i32 %69)
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %72, label %74

72:                                               ; preds = %63
  %73 = load i32, i32* @EIO, align 4
  store i32 %73, i32* %7, align 4
  br label %106

74:                                               ; preds = %63
  store i64 0, i64* @errno, align 8
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @F_MASK, align 4
  %77 = and i32 %75, %76
  switch i32 %77, label %92 [
    i32 129, label %78
    i32 128, label %85
  ]

78:                                               ; preds = %74
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i8*, i8** %12, align 8
  %83 = load i64, i64* %11, align 8
  %84 = call i64 @read(i32 %81, i8* %82, i64 %83)
  store i64 %84, i64* %16, align 8
  br label %94

85:                                               ; preds = %74
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i8*, i8** %12, align 8
  %90 = load i64, i64* %11, align 8
  %91 = call i64 @write(i32 %88, i8* %89, i64 %90)
  store i64 %91, i64* %16, align 8
  br label %94

92:                                               ; preds = %74
  %93 = load i32, i32* @ENOSYS, align 4
  store i32 %93, i32* %7, align 4
  br label %106

94:                                               ; preds = %85, %78
  %95 = load i64, i64* @errno, align 8
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %94
  %98 = load i64*, i64** %13, align 8
  %99 = icmp ne i64* %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i64, i64* %16, align 8
  %102 = load i64*, i64** %13, align 8
  store i64 %101, i64* %102, align 8
  br label %103

103:                                              ; preds = %100, %97, %94
  %104 = load i64, i64* @errno, align 8
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %7, align 4
  br label %106

106:                                              ; preds = %103, %92, %72, %39, %30, %22
  %107 = load i32, i32* %7, align 4
  ret i32 %107
}

declare dso_local %struct.TYPE_7__* @vdisk_get_info(%struct.devdesc*) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i64 @read(i32, i8*, i64) #1

declare dso_local i64 @write(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
