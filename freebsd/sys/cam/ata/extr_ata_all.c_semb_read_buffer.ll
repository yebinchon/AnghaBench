; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_all.c_semb_read_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_all.c_semb_read_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_ataio = type { i32 }
%struct.cam_periph = type opaque
%union.ccb = type opaque
%struct.cam_periph.0 = type opaque
%union.ccb.1 = type opaque

@CAM_DIR_IN = common dso_local global i32 0, align 4
@ATA_SEP_ATTN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @semb_read_buffer(%struct.ccb_ataio* %0, i32 %1, void (%struct.cam_periph*, %union.ccb*)* %2, i32 %3, i32 %4, i32* %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.ccb_ataio*, align 8
  %10 = alloca i32, align 4
  %11 = alloca void (%struct.cam_periph*, %union.ccb*)*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ccb_ataio* %0, %struct.ccb_ataio** %9, align 8
  store i32 %1, i32* %10, align 4
  store void (%struct.cam_periph*, %union.ccb*)* %2, void (%struct.cam_periph*, %union.ccb*)** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %17 = load i32, i32* %15, align 4
  %18 = call i32 @min(i32 %17, i32 1020)
  store i32 %18, i32* %15, align 4
  %19 = load i32, i32* %15, align 4
  %20 = add nsw i32 %19, 3
  %21 = and i32 %20, -4
  store i32 %21, i32* %15, align 4
  %22 = load %struct.ccb_ataio*, %struct.ccb_ataio** %9, align 8
  %23 = load i32, i32* %10, align 4
  %24 = load void (%struct.cam_periph*, %union.ccb*)*, void (%struct.cam_periph*, %union.ccb*)** %11, align 8
  %25 = bitcast void (%struct.cam_periph*, %union.ccb*)* %24 to void (%struct.cam_periph.0*, %union.ccb.1*)*
  %26 = load i32, i32* @CAM_DIR_IN, align 4
  %27 = load i32, i32* %12, align 4
  %28 = load i32*, i32** %14, align 8
  %29 = load i32, i32* %15, align 4
  %30 = load i32, i32* %16, align 4
  %31 = call i32 @cam_fill_ataio(%struct.ccb_ataio* %22, i32 %23, void (%struct.cam_periph.0*, %union.ccb.1*)* %25, i32 %26, i32 %27, i32* %28, i32 %29, i32 %30)
  %32 = load %struct.ccb_ataio*, %struct.ccb_ataio** %9, align 8
  %33 = load i32, i32* @ATA_SEP_ATTN, align 4
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %15, align 4
  %36 = sdiv i32 %35, 4
  %37 = call i32 @ata_28bit_cmd(%struct.ccb_ataio* %32, i32 %33, i32 %34, i32 0, i32 %36)
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
