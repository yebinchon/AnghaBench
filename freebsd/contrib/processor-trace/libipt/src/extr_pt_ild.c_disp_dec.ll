; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_ild.c_disp_dec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_ild.c_disp_dec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_ild = type { i64, i64, i64 }

@pte_internal = common dso_local global i32 0, align 4
@pte_bad_insn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_ild*, i64)* @disp_dec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @disp_dec(%struct.pt_ild* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_ild*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.pt_ild* %0, %struct.pt_ild** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.pt_ild*, %struct.pt_ild** %4, align 8
  %9 = icmp ne %struct.pt_ild* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @pte_internal, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %50

13:                                               ; preds = %2
  %14 = load %struct.pt_ild*, %struct.pt_ild** %4, align 8
  %15 = call i32 @compute_disp_dec(%struct.pt_ild* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %3, align 4
  br label %50

20:                                               ; preds = %13
  %21 = load %struct.pt_ild*, %struct.pt_ild** %4, align 8
  %22 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load %struct.pt_ild*, %struct.pt_ild** %4, align 8
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @imm_dec(%struct.pt_ild* %27, i64 %28)
  store i32 %29, i32* %3, align 4
  br label %50

30:                                               ; preds = %20
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* %6, align 8
  %33 = add nsw i64 %31, %32
  %34 = load %struct.pt_ild*, %struct.pt_ild** %4, align 8
  %35 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %33, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i32, i32* @pte_bad_insn, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %50

41:                                               ; preds = %30
  %42 = load i64, i64* %5, align 8
  %43 = load %struct.pt_ild*, %struct.pt_ild** %4, align 8
  %44 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %43, i32 0, i32 2
  store i64 %42, i64* %44, align 8
  %45 = load %struct.pt_ild*, %struct.pt_ild** %4, align 8
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* %6, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @imm_dec(%struct.pt_ild* %45, i64 %48)
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %41, %38, %26, %18, %10
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @compute_disp_dec(%struct.pt_ild*) #1

declare dso_local i32 @imm_dec(%struct.pt_ild*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
