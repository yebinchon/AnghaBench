; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_fman_tgec.c_fman_tgec_set_hash_table_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_fman_tgec.c_fman_tgec_set_hash_table_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tgec_regs = type { i32 }

@TGEC_HASH_MCAST_SHIFT = common dso_local global i32 0, align 4
@TGEC_HASH_ADR_MSK = common dso_local global i32 0, align 4
@TGEC_HASH_MCAST_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fman_tgec_set_hash_table_entry(%struct.tgec_regs* %0, i32 %1) #0 {
  %3 = alloca %struct.tgec_regs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tgec_regs* %0, %struct.tgec_regs** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @TGEC_HASH_MCAST_SHIFT, align 4
  %8 = ashr i32 %6, %7
  %9 = load i32, i32* @TGEC_HASH_ADR_MSK, align 4
  %10 = and i32 %8, %9
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @TGEC_HASH_MCAST_EN, align 4
  %13 = or i32 %11, %12
  %14 = load %struct.tgec_regs*, %struct.tgec_regs** %3, align 8
  %15 = getelementptr inbounds %struct.tgec_regs, %struct.tgec_regs* %14, i32 0, i32 0
  %16 = call i32 @iowrite32be(i32 %13, i32* %15)
  ret void
}

declare dso_local i32 @iowrite32be(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
