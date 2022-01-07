; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fman_kg.c_fman_kg_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fman_kg.c_fman_kg_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fman_kg_regs = type { i32, i32, i32, i32, i32, i32 }

@FM_EX_KG_DOUBLE_ECC = common dso_local global i32 0, align 4
@FM_EX_KG_KEYSIZE_OVERFLOW = common dso_local global i32 0, align 4
@FMAN_MAX_NUM_OF_HW_PORTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fman_kg_init(%struct.fman_kg_regs* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.fman_kg_regs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fman_kg_regs* %0, %struct.fman_kg_regs** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @FM_EX_KG_DOUBLE_ECC, align 4
  %10 = load i32, i32* @FM_EX_KG_KEYSIZE_OVERFLOW, align 4
  %11 = or i32 %9, %10
  %12 = load %struct.fman_kg_regs*, %struct.fman_kg_regs** %4, align 8
  %13 = getelementptr inbounds %struct.fman_kg_regs, %struct.fman_kg_regs* %12, i32 0, i32 5
  %14 = call i32 @iowrite32be(i32 %11, i32* %13)
  store i32 0, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @FM_EX_KG_DOUBLE_ECC, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load i32, i32* @FM_EX_KG_DOUBLE_ECC, align 4
  %21 = load i32, i32* %7, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %19, %3
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @FM_EX_KG_KEYSIZE_OVERFLOW, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32, i32* @FM_EX_KG_KEYSIZE_OVERFLOW, align 4
  %30 = load i32, i32* %7, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %28, %23
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.fman_kg_regs*, %struct.fman_kg_regs** %4, align 8
  %35 = getelementptr inbounds %struct.fman_kg_regs, %struct.fman_kg_regs* %34, i32 0, i32 4
  %36 = call i32 @iowrite32be(i32 %33, i32* %35)
  %37 = load %struct.fman_kg_regs*, %struct.fman_kg_regs** %4, align 8
  %38 = getelementptr inbounds %struct.fman_kg_regs, %struct.fman_kg_regs* %37, i32 0, i32 3
  %39 = call i32 @iowrite32be(i32 0, i32* %38)
  %40 = load %struct.fman_kg_regs*, %struct.fman_kg_regs** %4, align 8
  %41 = getelementptr inbounds %struct.fman_kg_regs, %struct.fman_kg_regs* %40, i32 0, i32 2
  %42 = call i32 @iowrite32be(i32 0, i32* %41)
  %43 = load %struct.fman_kg_regs*, %struct.fman_kg_regs** %4, align 8
  %44 = getelementptr inbounds %struct.fman_kg_regs, %struct.fman_kg_regs* %43, i32 0, i32 1
  %45 = call i32 @iowrite32be(i32 0, i32* %44)
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.fman_kg_regs*, %struct.fman_kg_regs** %4, align 8
  %48 = getelementptr inbounds %struct.fman_kg_regs, %struct.fman_kg_regs* %47, i32 0, i32 0
  %49 = call i32 @iowrite32be(i32 %46, i32* %48)
  store i32 0, i32* %8, align 4
  br label %50

50:                                               ; preds = %61, %32
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @FMAN_MAX_NUM_OF_HW_PORTS, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %50
  %55 = load %struct.fman_kg_regs*, %struct.fman_kg_regs** %4, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @clear_pe_all_scheme(%struct.fman_kg_regs* %55, i32 %56)
  %58 = load %struct.fman_kg_regs*, %struct.fman_kg_regs** %4, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @clear_pe_all_cls_plan(%struct.fman_kg_regs* %58, i32 %59)
  br label %61

61:                                               ; preds = %54
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %50

64:                                               ; preds = %50
  ret void
}

declare dso_local i32 @iowrite32be(i32, i32*) #1

declare dso_local i32 @clear_pe_all_scheme(%struct.fman_kg_regs*, i32) #1

declare dso_local i32 @clear_pe_all_cls_plan(%struct.fman_kg_regs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
