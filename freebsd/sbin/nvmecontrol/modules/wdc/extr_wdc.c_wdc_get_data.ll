; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/nvmecontrol/modules/wdc/extr_wdc.c_wdc_get_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/nvmecontrol/modules/wdc/extr_wdc.c_wdc_get_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_pt_command = type { i64, i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8*, i8*, i8* }

@NVME_PASSTHROUGH_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"wdc_get_data request failed\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"wdc_get_data request returned error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, i32*, i64)* @wdc_get_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wdc_get_data(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.nvme_pt_command, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i64 %6, i64* %14, align 8
  %16 = call i32 @memset(%struct.nvme_pt_command* %15, i32 0, i32 56)
  %17 = load i32, i32* %9, align 4
  %18 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %15, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* %10, align 4
  %21 = sext i32 %20 to i64
  %22 = udiv i64 %21, 4
  %23 = trunc i64 %22 to i32
  %24 = call i8* @htole32(i32 %23)
  %25 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %15, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 3
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* %11, align 4
  %28 = sext i32 %27 to i64
  %29 = udiv i64 %28, 4
  %30 = trunc i64 %29 to i32
  %31 = call i8* @htole32(i32 %30)
  %32 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %15, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  store i8* %31, i8** %33, align 8
  %34 = load i32, i32* %12, align 4
  %35 = call i8* @htole32(i32 %34)
  %36 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %15, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load i32*, i32** %13, align 8
  %39 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %15, i32 0, i32 3
  store i32* %38, i32** %39, align 8
  %40 = load i64, i64* %14, align 8
  %41 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %15, i32 0, i32 0
  store i64 %40, i64* %41, align 8
  %42 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %15, i32 0, i32 1
  store i32 1, i32* %42, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @NVME_PASSTHROUGH_CMD, align 4
  %45 = call i64 @ioctl(i32 %43, i32 %44, %struct.nvme_pt_command* %15)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %7
  %48 = call i32 @err(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %7
  %50 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %15, i32 0, i32 2
  %51 = call i64 @nvme_completion_is_error(i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = call i32 @errx(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %49
  ret void
}

declare dso_local i32 @memset(%struct.nvme_pt_command*, i32, i32) #1

declare dso_local i8* @htole32(i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.nvme_pt_command*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @nvme_completion_is_error(i32*) #1

declare dso_local i32 @errx(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
