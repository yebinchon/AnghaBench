; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/geli/extr_gelidev.c_geli_dev_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/geli/extr_gelidev.c_geli_dev_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.open_file = type { i64 }
%struct.geli_devdesc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.g_eli_metadata }
%struct.g_eli_metadata = type { i32, i32 }

@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.open_file*, i32, i8*)* @geli_dev_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @geli_dev_ioctl(%struct.open_file* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.open_file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.geli_devdesc*, align 8
  %9 = alloca %struct.g_eli_metadata*, align 8
  store %struct.open_file* %0, %struct.open_file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load %struct.open_file*, %struct.open_file** %5, align 8
  %11 = getelementptr inbounds %struct.open_file, %struct.open_file* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.geli_devdesc*
  store %struct.geli_devdesc* %13, %struct.geli_devdesc** %8, align 8
  %14 = load %struct.geli_devdesc*, %struct.geli_devdesc** %8, align 8
  %15 = getelementptr inbounds %struct.geli_devdesc, %struct.geli_devdesc* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.g_eli_metadata* %17, %struct.g_eli_metadata** %9, align 8
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %35 [
    i32 128, label %19
    i32 129, label %25
  ]

19:                                               ; preds = %3
  %20 = load %struct.g_eli_metadata*, %struct.g_eli_metadata** %9, align 8
  %21 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i8*, i8** %7, align 8
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 4
  br label %37

25:                                               ; preds = %3
  %26 = load %struct.g_eli_metadata*, %struct.g_eli_metadata** %9, align 8
  %27 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.g_eli_metadata*, %struct.g_eli_metadata** %9, align 8
  %30 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %28, %31
  %33 = load i8*, i8** %7, align 8
  %34 = bitcast i8* %33 to i32*
  store i32 %32, i32* %34, align 4
  br label %37

35:                                               ; preds = %3
  %36 = load i32, i32* @ENOTTY, align 4
  store i32 %36, i32* %4, align 4
  br label %38

37:                                               ; preds = %25, %19
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %37, %35
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
