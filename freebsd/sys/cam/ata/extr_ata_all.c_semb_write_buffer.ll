; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_all.c_semb_write_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_all.c_semb_write_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_ataio = type { i32 }
%struct.cam_periph = type opaque
%union.ccb = type opaque
%struct.cam_periph.0 = type opaque
%union.ccb.1 = type opaque

@CAM_DIR_OUT = common dso_local global i32 0, align 4
@CAM_DIR_NONE = common dso_local global i32 0, align 4
@ATA_SEP_ATTN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @semb_write_buffer(%struct.ccb_ataio* %0, i32 %1, void (%struct.cam_periph*, %union.ccb*)* %2, i32 %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.ccb_ataio*, align 8
  %9 = alloca i32, align 4
  %10 = alloca void (%struct.cam_periph*, %union.ccb*)*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ccb_ataio* %0, %struct.ccb_ataio** %8, align 8
  store i32 %1, i32* %9, align 4
  store void (%struct.cam_periph*, %union.ccb*)* %2, void (%struct.cam_periph*, %union.ccb*)** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %15 = load i32, i32* %13, align 4
  %16 = call i32 @min(i32 %15, i32 1020)
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* %13, align 4
  %18 = add nsw i32 %17, 3
  %19 = and i32 %18, -4
  store i32 %19, i32* %13, align 4
  %20 = load %struct.ccb_ataio*, %struct.ccb_ataio** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load void (%struct.cam_periph*, %union.ccb*)*, void (%struct.cam_periph*, %union.ccb*)** %10, align 8
  %23 = bitcast void (%struct.cam_periph*, %union.ccb*)* %22 to void (%struct.cam_periph.0*, %union.ccb.1*)*
  %24 = load i32, i32* %13, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %7
  %27 = load i32, i32* @CAM_DIR_OUT, align 4
  br label %30

28:                                               ; preds = %7
  %29 = load i32, i32* @CAM_DIR_NONE, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  %32 = load i32, i32* %11, align 4
  %33 = load i32*, i32** %12, align 8
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %14, align 4
  %36 = call i32 @cam_fill_ataio(%struct.ccb_ataio* %20, i32 %21, void (%struct.cam_periph.0*, %union.ccb.1*)* %23, i32 %31, i32 %32, i32* %33, i32 %34, i32 %35)
  %37 = load %struct.ccb_ataio*, %struct.ccb_ataio** %8, align 8
  %38 = load i32, i32* @ATA_SEP_ATTN, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %30
  %42 = load i32*, i32** %12, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  br label %46

45:                                               ; preds = %30
  br label %46

46:                                               ; preds = %45, %41
  %47 = phi i32 [ %44, %41 ], [ 0, %45 ]
  %48 = load i32, i32* %13, align 4
  %49 = sdiv i32 %48, 4
  %50 = call i32 @ata_28bit_cmd(%struct.ccb_ataio* %37, i32 %38, i32 %47, i32 128, i32 %49)
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @cam_fill_ataio(%struct.ccb_ataio*, i32, void (%struct.cam_periph.0*, %union.ccb.1*)*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @ata_28bit_cmd(%struct.ccb_ataio*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
