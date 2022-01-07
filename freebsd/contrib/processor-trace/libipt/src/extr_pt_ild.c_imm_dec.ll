; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_ild.c_imm_dec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_ild.c_imm_dec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_ild = type { i64, i64, i64, i64, i32 }

@pte_internal = common dso_local global i32 0, align 4
@PTI_MAP_AMD3DNOW = common dso_local global i64 0, align 8
@pte_bad_insn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_ild*, i64)* @imm_dec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imm_dec(%struct.pt_ild* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_ild*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.pt_ild* %0, %struct.pt_ild** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.pt_ild*, %struct.pt_ild** %4, align 8
  %8 = icmp ne %struct.pt_ild* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @pte_internal, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %65

12:                                               ; preds = %2
  %13 = load %struct.pt_ild*, %struct.pt_ild** %4, align 8
  %14 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PTI_MAP_AMD3DNOW, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %36

18:                                               ; preds = %12
  %19 = load %struct.pt_ild*, %struct.pt_ild** %4, align 8
  %20 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = icmp sle i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @pte_bad_insn, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %65

27:                                               ; preds = %18
  %28 = load %struct.pt_ild*, %struct.pt_ild** %4, align 8
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @get_byte(%struct.pt_ild* %28, i64 %29)
  %31 = load %struct.pt_ild*, %struct.pt_ild** %4, align 8
  %32 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 8
  %33 = load i64, i64* %5, align 8
  %34 = add nsw i64 %33, 1
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %3, align 4
  br label %65

36:                                               ; preds = %12
  %37 = load %struct.pt_ild*, %struct.pt_ild** %4, align 8
  %38 = call i32 @set_imm_bytes(%struct.pt_ild* %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %3, align 4
  br label %65

43:                                               ; preds = %36
  %44 = load %struct.pt_ild*, %struct.pt_ild** %4, align 8
  %45 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %5, align 8
  %48 = add nsw i64 %47, %46
  store i64 %48, i64* %5, align 8
  %49 = load %struct.pt_ild*, %struct.pt_ild** %4, align 8
  %50 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %5, align 8
  %53 = add nsw i64 %52, %51
  store i64 %53, i64* %5, align 8
  %54 = load %struct.pt_ild*, %struct.pt_ild** %4, align 8
  %55 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %5, align 8
  %58 = icmp slt i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %43
  %60 = load i32, i32* @pte_bad_insn, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %65

62:                                               ; preds = %43
  %63 = load i64, i64* %5, align 8
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %62, %59, %41, %27, %24, %9
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @get_byte(%struct.pt_ild*, i64) #1

declare dso_local i32 @set_imm_bytes(%struct.pt_ild*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
