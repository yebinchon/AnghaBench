; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fman_kg.c_fman_kg_write_ar_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fman_kg.c_fman_kg_write_ar_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fman_kg_regs = type { i32 }

@FM_KG_KGAR_GO = common dso_local global i32 0, align 4
@FM_PCD_KG_KGAR_ERR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fman_kg_write_ar_wait(%struct.fman_kg_regs* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fman_kg_regs*, align 8
  %5 = alloca i32, align 4
  store %struct.fman_kg_regs* %0, %struct.fman_kg_regs** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.fman_kg_regs*, %struct.fman_kg_regs** %4, align 8
  %8 = getelementptr inbounds %struct.fman_kg_regs, %struct.fman_kg_regs* %7, i32 0, i32 0
  %9 = call i32 @iowrite32be(i32 %6, i32* %8)
  br label %10

10:                                               ; preds = %17, %2
  %11 = load %struct.fman_kg_regs*, %struct.fman_kg_regs** %4, align 8
  %12 = getelementptr inbounds %struct.fman_kg_regs, %struct.fman_kg_regs* %11, i32 0, i32 0
  %13 = call i32 @ioread32be(i32* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @FM_KG_KGAR_GO, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  br label %10

18:                                               ; preds = %10
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @FM_PCD_KG_KGAR_ERR, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %27

26:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %26, %23
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @iowrite32be(i32, i32*) #1

declare dso_local i32 @ioread32be(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
