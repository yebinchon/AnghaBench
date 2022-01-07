; ModuleID = '/home/carl/AnghaBench/freebsd/stand/ofw/libofw/extr_ofw_disk.c_ofwd_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/ofw/libofw/extr_ofw_disk.c_ofwd_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.open_file = type { %struct.ofw_devdesc* }
%struct.ofw_devdesc = type { i32 }

@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.open_file*, i32, i8*)* @ofwd_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofwd_ioctl(%struct.open_file* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.open_file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ofw_devdesc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.open_file* %0, %struct.open_file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load %struct.open_file*, %struct.open_file** %5, align 8
  %12 = getelementptr inbounds %struct.open_file, %struct.open_file* %11, i32 0, i32 0
  %13 = load %struct.ofw_devdesc*, %struct.ofw_devdesc** %12, align 8
  store %struct.ofw_devdesc* %13, %struct.ofw_devdesc** %8, align 8
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %37 [
    i32 128, label %15
    i32 129, label %23
  ]

15:                                               ; preds = %3
  %16 = load %struct.ofw_devdesc*, %struct.ofw_devdesc** %8, align 8
  %17 = getelementptr inbounds %struct.ofw_devdesc, %struct.ofw_devdesc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @OF_block_size(i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i8*, i8** %7, align 8
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 4
  br label %39

23:                                               ; preds = %3
  %24 = load %struct.ofw_devdesc*, %struct.ofw_devdesc** %8, align 8
  %25 = getelementptr inbounds %struct.ofw_devdesc, %struct.ofw_devdesc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @OF_block_size(i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load %struct.ofw_devdesc*, %struct.ofw_devdesc** %8, align 8
  %29 = getelementptr inbounds %struct.ofw_devdesc, %struct.ofw_devdesc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @OF_blocks(i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %9, align 4
  %34 = mul i32 %32, %33
  %35 = load i8*, i8** %7, align 8
  %36 = bitcast i8* %35 to i32*
  store i32 %34, i32* %36, align 4
  br label %39

37:                                               ; preds = %3
  %38 = load i32, i32* @ENOTTY, align 4
  store i32 %38, i32* %4, align 4
  br label %40

39:                                               ; preds = %23, %15
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %39, %37
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @OF_block_size(i32) #1

declare dso_local i32 @OF_blocks(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
