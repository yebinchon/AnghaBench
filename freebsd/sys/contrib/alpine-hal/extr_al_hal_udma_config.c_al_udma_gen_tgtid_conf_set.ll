; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_udma_config.c_al_udma_gen_tgtid_conf_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_udma_config.c_al_udma_gen_tgtid_conf_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unit_regs = type { i32 }
%struct.al_udma_gen_tgtid_conf = type { i32 }

@DMA_MAX_Q = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @al_udma_gen_tgtid_conf_set(%struct.unit_regs* %0, %struct.al_udma_gen_tgtid_conf* %1) #0 {
  %3 = alloca %struct.unit_regs*, align 8
  %4 = alloca %struct.al_udma_gen_tgtid_conf*, align 8
  %5 = alloca i32, align 4
  store %struct.unit_regs* %0, %struct.unit_regs** %3, align 8
  store %struct.al_udma_gen_tgtid_conf* %1, %struct.al_udma_gen_tgtid_conf** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %15, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @DMA_MAX_Q, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %6
  %11 = load %struct.unit_regs*, %struct.unit_regs** %3, align 8
  %12 = load %struct.al_udma_gen_tgtid_conf*, %struct.al_udma_gen_tgtid_conf** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @al_udma_gen_tgtid_conf_queue_set(%struct.unit_regs* %11, %struct.al_udma_gen_tgtid_conf* %12, i32 %13)
  br label %15

15:                                               ; preds = %10
  %16 = load i32, i32* %5, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %5, align 4
  br label %6

18:                                               ; preds = %6
  ret void
}

declare dso_local i32 @al_udma_gen_tgtid_conf_queue_set(%struct.unit_regs*, %struct.al_udma_gen_tgtid_conf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
