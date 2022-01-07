; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fman_kg.c_fman_kg_build_cls_plan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fman_kg.c_fman_kg_build_cls_plan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fman_kg_cls_plan_params = type { i32, i32* }
%struct.fman_kg_cp_regs = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fman_kg_build_cls_plan(%struct.fman_kg_cls_plan_params* %0, %struct.fman_kg_cp_regs* %1) #0 {
  %3 = alloca %struct.fman_kg_cls_plan_params*, align 8
  %4 = alloca %struct.fman_kg_cp_regs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fman_kg_cls_plan_params* %0, %struct.fman_kg_cls_plan_params** %3, align 8
  store %struct.fman_kg_cp_regs* %1, %struct.fman_kg_cp_regs** %4, align 8
  %8 = load %struct.fman_kg_cp_regs*, %struct.fman_kg_cp_regs** %4, align 8
  %9 = call i32 @memset(%struct.fman_kg_cp_regs* %8, i32 0, i32 8)
  %10 = load %struct.fman_kg_cls_plan_params*, %struct.fman_kg_cls_plan_params** %3, align 8
  %11 = getelementptr inbounds %struct.fman_kg_cls_plan_params, %struct.fman_kg_cls_plan_params* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %41, %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %44

16:                                               ; preds = %13
  %17 = load i32, i32* %7, align 4
  %18 = ashr i32 128, %17
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %41

24:                                               ; preds = %16
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %5, align 4
  %27 = xor i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load %struct.fman_kg_cls_plan_params*, %struct.fman_kg_cls_plan_params** %3, align 8
  %29 = getelementptr inbounds %struct.fman_kg_cls_plan_params, %struct.fman_kg_cls_plan_params* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.fman_kg_cp_regs*, %struct.fman_kg_cp_regs** %4, align 8
  %36 = getelementptr inbounds %struct.fman_kg_cp_regs, %struct.fman_kg_cp_regs* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 %34, i32* %40, align 4
  br label %41

41:                                               ; preds = %24, %23
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %13

44:                                               ; preds = %13
  ret i32 0
}

declare dso_local i32 @memset(%struct.fman_kg_cp_regs*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
