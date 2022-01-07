; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/zfs/extr_zfsimpl.c_vdev_read_phys.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/zfs/extr_zfsimpl.c_vdev_read_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, i32, i32, i8*, i64)*, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*, i8*, i32, i64)* @vdev_read_phys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdev_read_phys(%struct.TYPE_4__* %0, i32* %1, i8* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32 (%struct.TYPE_4__*, i32, i32, i8*, i64)*, i32 (%struct.TYPE_4__*, i32, i32, i8*, i64)** %15, align 8
  %17 = icmp ne i32 (%struct.TYPE_4__*, i32, i32, i8*, i64)* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* @EIO, align 4
  store i32 %19, i32* %6, align 4
  br label %55

20:                                               ; preds = %5
  %21 = load i32*, i32** %8, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32*, i32** %8, align 8
  %25 = call i64 @BP_GET_PSIZE(i32* %24)
  store i64 %25, i64* %12, align 8
  br label %28

26:                                               ; preds = %20
  %27 = load i64, i64* %11, align 8
  store i64 %27, i64* %12, align 8
  br label %28

28:                                               ; preds = %26, %23
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32 (%struct.TYPE_4__*, i32, i32, i8*, i64)*, i32 (%struct.TYPE_4__*, i32, i32, i8*, i64)** %30, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i8*, i8** %9, align 8
  %38 = load i64, i64* %12, align 8
  %39 = call i32 %31(%struct.TYPE_4__* %32, i32 %35, i32 %36, i8* %37, i64 %38)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %28
  %43 = load i32, i32* %13, align 4
  store i32 %43, i32* %6, align 4
  br label %55

44:                                               ; preds = %28
  %45 = load i32*, i32** %8, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = call i32 @zio_checksum_verify(i32 %50, i32* %51, i8* %52)
  store i32 %53, i32* %6, align 4
  br label %55

54:                                               ; preds = %44
  store i32 0, i32* %6, align 4
  br label %55

55:                                               ; preds = %54, %47, %42, %18
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i64 @BP_GET_PSIZE(i32*) #1

declare dso_local i32 @zio_checksum_verify(i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
