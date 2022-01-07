; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fman_kg.c_fman_kg_write_cls_plan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fman_kg.c_fman_kg_write_cls_plan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fman_kg_regs = type { i32* }
%struct.fman_kg_cp_regs = type { i32* }

@FM_KG_CLS_PLAN_GRPS_NUM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@FM_KG_NUM_CLS_PLAN_ENTR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fman_kg_write_cls_plan(%struct.fman_kg_regs* %0, i64 %1, i64 %2, i64 %3, %struct.fman_kg_cp_regs* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.fman_kg_regs*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.fman_kg_cp_regs*, align 8
  %12 = alloca %struct.fman_kg_cp_regs*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.fman_kg_regs* %0, %struct.fman_kg_regs** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.fman_kg_cp_regs* %4, %struct.fman_kg_cp_regs** %11, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* @FM_KG_CLS_PLAN_GRPS_NUM, align 8
  %18 = icmp sge i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %60

22:                                               ; preds = %5
  %23 = load %struct.fman_kg_regs*, %struct.fman_kg_regs** %7, align 8
  %24 = getelementptr inbounds %struct.fman_kg_regs, %struct.fman_kg_regs* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = bitcast i32* %26 to %struct.fman_kg_cp_regs*
  store %struct.fman_kg_cp_regs* %27, %struct.fman_kg_cp_regs** %12, align 8
  store i32 0, i32* %14, align 4
  br label %28

28:                                               ; preds = %47, %22
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* @FM_KG_NUM_CLS_PLAN_ENTR, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %50

32:                                               ; preds = %28
  %33 = load %struct.fman_kg_cp_regs*, %struct.fman_kg_cp_regs** %11, align 8
  %34 = getelementptr inbounds %struct.fman_kg_cp_regs, %struct.fman_kg_cp_regs* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %14, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.fman_kg_cp_regs*, %struct.fman_kg_cp_regs** %12, align 8
  %41 = getelementptr inbounds %struct.fman_kg_cp_regs, %struct.fman_kg_cp_regs* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %14, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = call i32 @iowrite32be(i32 %39, i32* %45)
  br label %47

47:                                               ; preds = %32
  %48 = load i32, i32* %14, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %14, align 4
  br label %28

50:                                               ; preds = %28
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* %10, align 8
  %54 = load i32, i32* @TRUE, align 4
  %55 = call i32 @build_ar_cls_plan(i64 %51, i64 %52, i64 %53, i32 %54)
  store i32 %55, i32* %13, align 4
  %56 = load %struct.fman_kg_regs*, %struct.fman_kg_regs** %7, align 8
  %57 = load i32, i32* %13, align 4
  %58 = call i32 @fman_kg_write_ar_wait(%struct.fman_kg_regs* %56, i32 %57)
  store i32 %58, i32* %15, align 4
  %59 = load i32, i32* %15, align 4
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %50, %19
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local i32 @iowrite32be(i32, i32*) #1

declare dso_local i32 @build_ar_cls_plan(i64, i64, i64, i32) #1

declare dso_local i32 @fman_kg_write_ar_wait(%struct.fman_kg_regs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
