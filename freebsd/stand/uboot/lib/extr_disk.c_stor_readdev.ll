; ModuleID = '/home/carl/AnghaBench/freebsd/stand/uboot/lib/extr_disk.c_stor_readdev.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/uboot/lib/extr_disk.c_stor_readdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disk_devdesc = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"reading blk=%d size=%d @ 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"read failed, error=%d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"real size != size\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.disk_devdesc*, i64, i64, i8*)* @stor_readdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stor_readdev(%struct.disk_devdesc* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.disk_devdesc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_2__, align 4
  store %struct.disk_devdesc* %0, %struct.disk_devdesc** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i64, i64* %7, align 8
  %14 = trunc i64 %13 to i32
  %15 = load i64, i64* %8, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = ptrtoint i8* %16 to i32
  %18 = call i32 @debugf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %14, i64 %15, i32 %17)
  %19 = load %struct.disk_devdesc*, %struct.disk_devdesc** %6, align 8
  %20 = call i32 @SI(%struct.disk_devdesc* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %9, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @ub_dev_read(i32 %23, i8* %24, i64 %25, i64 %26, i64* %10)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %4
  %31 = load i32, i32* %11, align 4
  %32 = call i32 (i8*, ...) @stor_printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @EIO, align 4
  store i32 %33, i32* %5, align 4
  br label %43

34:                                               ; preds = %4
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* %8, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = call i32 (i8*, ...) @stor_printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %40 = load i32, i32* @EIO, align 4
  store i32 %40, i32* %11, align 4
  br label %41

41:                                               ; preds = %38, %34
  %42 = load i32, i32* %11, align 4
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %41, %30
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @debugf(i8*, i32, i64, i32) #1

declare dso_local i32 @ub_dev_read(i32, i8*, i64, i64, i64*) #1

declare dso_local i32 @SI(%struct.disk_devdesc*) #1

declare dso_local i32 @stor_printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
