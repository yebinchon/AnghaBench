; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/nvmecontrol/extr_firmware.c_update_firmware.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/nvmecontrol/extr_firmware.c_update_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_pt_command = type { i32, i64, i64, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@NVME_MAX_XFER_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"unable to malloc %d bytes\00", align 1
@NVME_OPC_FIRMWARE_IMAGE_DOWNLOAD = common dso_local global i32 0, align 4
@NVME_PASSTHROUGH_CMD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"firmware download request failed\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"firmware download request returned error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i64)* @update_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_firmware(i32 %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.nvme_pt_command, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %8, align 8
  %12 = load i64, i64* %6, align 8
  store i64 %12, i64* %9, align 8
  %13 = load i32, i32* @PAGE_SIZE, align 4
  %14 = load i64, i64* @NVME_MAX_XFER_SIZE, align 8
  %15 = call i8* @aligned_alloc(i32 %13, i64 %14)
  store i8* %15, i8** %11, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i64, i64* @NVME_MAX_XFER_SIZE, align 8
  %19 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %18)
  br label %20

20:                                               ; preds = %17, %3
  br label %21

21:                                               ; preds = %72, %20
  %22 = load i64, i64* %9, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %79

24:                                               ; preds = %21
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* @NVME_MAX_XFER_SIZE, align 8
  %27 = icmp sge i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i64, i64* @NVME_MAX_XFER_SIZE, align 8
  br label %32

30:                                               ; preds = %24
  %31 = load i64, i64* %9, align 8
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i64 [ %29, %28 ], [ %31, %30 ]
  store i64 %33, i64* %10, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = load i64, i64* %8, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i64, i64* %10, align 8
  %39 = call i32 @memcpy(i8* %34, i32* %37, i64 %38)
  %40 = call i32 @memset(%struct.nvme_pt_command* %7, i32 0, i32 56)
  %41 = load i32, i32* @NVME_OPC_FIRMWARE_IMAGE_DOWNLOAD, align 4
  %42 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %7, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load i64, i64* %10, align 8
  %45 = udiv i64 %44, 4
  %46 = sub i64 %45, 1
  %47 = call i8* @htole32(i64 %46)
  %48 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %7, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  %50 = load i64, i64* %8, align 8
  %51 = udiv i64 %50, 4
  %52 = call i8* @htole32(i64 %51)
  %53 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %7, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %7, i32 0, i32 3
  store i8* %55, i8** %56, align 8
  %57 = load i64, i64* %10, align 8
  %58 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %7, i32 0, i32 2
  store i64 %57, i64* %58, align 8
  %59 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %7, i32 0, i32 1
  store i64 0, i64* %59, align 8
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @NVME_PASSTHROUGH_CMD, align 4
  %62 = call i64 @ioctl(i32 %60, i32 %61, %struct.nvme_pt_command* %7)
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %32
  %65 = call i32 @err(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %32
  %67 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %7, i32 0, i32 0
  %68 = call i64 @nvme_completion_is_error(i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %66
  %73 = load i64, i64* %10, align 8
  %74 = load i64, i64* %9, align 8
  %75 = sub nsw i64 %74, %73
  store i64 %75, i64* %9, align 8
  %76 = load i64, i64* %10, align 8
  %77 = load i64, i64* %8, align 8
  %78 = add nsw i64 %77, %76
  store i64 %78, i64* %8, align 8
  br label %21

79:                                               ; preds = %21
  ret void
}

declare dso_local i8* @aligned_alloc(i32, i64) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

declare dso_local i32 @memset(%struct.nvme_pt_command*, i32, i32) #1

declare dso_local i8* @htole32(i64) #1

declare dso_local i64 @ioctl(i32, i32, %struct.nvme_pt_command*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @nvme_completion_is_error(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
