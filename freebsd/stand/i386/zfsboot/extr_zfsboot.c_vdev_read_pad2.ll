; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/zfsboot/extr_zfsboot.c_vdev_read_pad2.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/zfsboot/extr_zfsboot.c_vdev_read_pad2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@zap_scratch = common dso_local global i8* null, align 8
@vdev_label_t = common dso_local global i32 0, align 4
@vl_pad2 = common dso_local global i32 0, align 4
@VDEV_PAD_SIZE = common dso_local global i64 0, align 8
@ZIO_CHECKSUM_LABEL = common dso_local global i32 0, align 4
@ZIO_COMPRESS_OFF = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64)* @vdev_read_pad2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdev_read_pad2(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i8*, i8** @zap_scratch, align 8
  store i8* %11, i8** %9, align 8
  %12 = load i32, i32* @vdev_label_t, align 4
  %13 = load i32, i32* @vl_pad2, align 4
  %14 = call i32 @offsetof(i32 %12, i32 %13)
  store i32 %14, i32* %10, align 4
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @VDEV_PAD_SIZE, align 8
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i64, i64* @VDEV_PAD_SIZE, align 8
  store i64 %19, i64* %7, align 8
  br label %20

20:                                               ; preds = %18, %3
  %21 = call i32 @BP_ZERO(i32* %8)
  %22 = load i64, i64* @VDEV_PAD_SIZE, align 8
  %23 = call i32 @BP_SET_LSIZE(i32* %8, i64 %22)
  %24 = load i64, i64* @VDEV_PAD_SIZE, align 8
  %25 = call i32 @BP_SET_PSIZE(i32* %8, i64 %24)
  %26 = load i32, i32* @ZIO_CHECKSUM_LABEL, align 4
  %27 = call i32 @BP_SET_CHECKSUM(i32* %8, i32 %26)
  %28 = load i32, i32* @ZIO_COMPRESS_OFF, align 4
  %29 = call i32 @BP_SET_COMPRESS(i32* %8, i32 %28)
  %30 = call i32 @BP_IDENTITY(i32* %8)
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @DVA_SET_OFFSET(i32 %30, i32 %31)
  %33 = load i32*, i32** %5, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i64 @vdev_read_phys(i32* %33, i32* %8, i8* %34, i32 %35, i32 0)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %20
  %39 = load i32, i32* @EIO, align 4
  store i32 %39, i32* %4, align 4
  br label %45

40:                                               ; preds = %20
  %41 = load i8*, i8** %6, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @memcpy(i8* %41, i8* %42, i64 %43)
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %40, %38
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @offsetof(i32, i32) #1

declare dso_local i32 @BP_ZERO(i32*) #1

declare dso_local i32 @BP_SET_LSIZE(i32*, i64) #1

declare dso_local i32 @BP_SET_PSIZE(i32*, i64) #1

declare dso_local i32 @BP_SET_CHECKSUM(i32*, i32) #1

declare dso_local i32 @BP_SET_COMPRESS(i32*, i32) #1

declare dso_local i32 @DVA_SET_OFFSET(i32, i32) #1

declare dso_local i32 @BP_IDENTITY(i32*) #1

declare dso_local i64 @vdev_read_phys(i32*, i32*, i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
