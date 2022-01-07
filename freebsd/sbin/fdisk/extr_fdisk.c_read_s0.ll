; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fdisk/extr_fdisk.c_read_s0.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fdisk/extr_fdisk.c_read_s0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32*, i32 }

@secsize = common dso_local global i32 0, align 4
@mboot = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [56 x i8] c"unable to allocate buffer to read fdisk partition table\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"can't read fdisk partition table\00", align 1
@DOSMAGICOFFSET = common dso_local global i64 0, align 8
@DOSMAGIC = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"invalid fdisk partition table found\00", align 1
@NDOSPART = common dso_local global i32 0, align 4
@DOSPARTOFF = common dso_local global i32 0, align 4
@DOSPARTSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @read_s0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_s0() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @secsize, align 4
  store i32 %3, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mboot, i32 0, i32 2), align 8
  %4 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mboot, i32 0, i32 1), align 8
  %5 = icmp ne i32* %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mboot, i32 0, i32 1), align 8
  %8 = call i32 @free(i32* %7)
  br label %9

9:                                                ; preds = %6, %0
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mboot, i32 0, i32 2), align 8
  %11 = call i32* @malloc(i32 %10)
  store i32* %11, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mboot, i32 0, i32 1), align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = call i32 @warnx(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %53

15:                                               ; preds = %9
  %16 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mboot, i32 0, i32 1), align 8
  %17 = call i32 @read_disk(i32 0, i32* %16)
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = call i32 @warnx(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %53

21:                                               ; preds = %15
  %22 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mboot, i32 0, i32 1), align 8
  %23 = load i64, i64* @DOSMAGICOFFSET, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = call i64 @le16dec(i32* %24)
  %26 = load i64, i64* @DOSMAGIC, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = call i32 @warnx(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %53

30:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %49, %30
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* @NDOSPART, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %31
  %36 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mboot, i32 0, i32 1), align 8
  %37 = load i32, i32* @DOSPARTOFF, align 4
  %38 = load i32, i32* %2, align 4
  %39 = load i32, i32* @DOSPARTSIZE, align 4
  %40 = mul nsw i32 %38, %39
  %41 = add nsw i32 %37, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %36, i64 %42
  %44 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mboot, i32 0, i32 0), align 8
  %45 = load i32, i32* %2, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = call i32 @dos_partition_dec(i32* %43, i32* %47)
  br label %49

49:                                               ; preds = %35
  %50 = load i32, i32* %2, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %2, align 4
  br label %31

52:                                               ; preds = %31
  store i32 0, i32* %1, align 4
  br label %53

53:                                               ; preds = %52, %28, %19, %13
  %54 = load i32, i32* %1, align 4
  ret i32 %54
}

declare dso_local i32 @free(i32*) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @read_disk(i32, i32*) #1

declare dso_local i64 @le16dec(i32*) #1

declare dso_local i32 @dos_partition_dec(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
