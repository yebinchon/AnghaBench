; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fdisk/extr_fdisk.c_write_s0.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fdisk/extr_fdisk.c_write_s0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32*, i32* }

@iotest = common dso_local global i64 0, align 8
@NDOSPART = common dso_local global i32 0, align 4
@mboot = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@DOSPARTOFF = common dso_local global i32 0, align 4
@DOSPARTSIZE = common dso_local global i32 0, align 4
@DOSMAGICOFFSET = common dso_local global i64 0, align 8
@DOSMAGIC = common dso_local global i32 0, align 4
@secsize = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"can't write fdisk partition table\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @write_s0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_s0() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i64, i64* @iotest, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 (...) @print_s0()
  store i32 0, i32* %1, align 4
  br label %59

8:                                                ; preds = %0
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %27, %8
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @NDOSPART, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %30

13:                                               ; preds = %9
  %14 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mboot, i32 0, i32 1), align 8
  %15 = load i32, i32* @DOSPARTOFF, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @DOSPARTSIZE, align 4
  %18 = mul nsw i32 %16, %17
  %19 = add nsw i32 %15, %18
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %14, i64 %20
  %22 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mboot, i32 0, i32 2), align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = call i32 @dos_partition_enc(i32* %21, i32* %25)
  br label %27

27:                                               ; preds = %13
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %9

30:                                               ; preds = %9
  %31 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mboot, i32 0, i32 1), align 8
  %32 = load i64, i64* @DOSMAGICOFFSET, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* @DOSMAGIC, align 4
  %35 = call i32 @le16enc(i32* %33, i32 %34)
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %55, %30
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mboot, i32 0, i32 0), align 8
  %39 = load i32, i32* @secsize, align 4
  %40 = sdiv i32 %38, %39
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %58

42:                                               ; preds = %36
  %43 = load i32, i32* %2, align 4
  %44 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mboot, i32 0, i32 1), align 8
  %45 = load i32, i32* %2, align 4
  %46 = load i32, i32* @secsize, align 4
  %47 = mul nsw i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %44, i64 %48
  %50 = call i32 @write_disk(i32 %43, i32* %49)
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %54

52:                                               ; preds = %42
  %53 = call i32 @warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %59

54:                                               ; preds = %42
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %2, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %2, align 4
  br label %36

58:                                               ; preds = %36
  store i32 0, i32* %1, align 4
  br label %59

59:                                               ; preds = %58, %52, %6
  %60 = load i32, i32* %1, align 4
  ret i32 %60
}

declare dso_local i32 @print_s0(...) #1

declare dso_local i32 @dos_partition_enc(i32*, i32*) #1

declare dso_local i32 @le16enc(i32*, i32) #1

declare dso_local i32 @write_disk(i32, i32*) #1

declare dso_local i32 @warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
