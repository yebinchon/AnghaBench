; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_ild.c_pt_instruction_length_decode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_ild.c_pt_instruction_length_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_ild = type { i32, i32, i64, i64, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@pte_internal = common dso_local global i32 0, align 4
@PTI_MAP_INVALID = common dso_local global i32 0, align 4
@pte_bad_insn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_ild*)* @pt_instruction_length_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_instruction_length_decode(%struct.pt_ild* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_ild*, align 8
  store %struct.pt_ild* %0, %struct.pt_ild** %3, align 8
  %4 = load %struct.pt_ild*, %struct.pt_ild** %3, align 8
  %5 = icmp ne %struct.pt_ild* %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* @pte_internal, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %2, align 4
  br label %34

9:                                                ; preds = %1
  %10 = load %struct.pt_ild*, %struct.pt_ild** %3, align 8
  %11 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %10, i32 0, i32 6
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i64 0, i64* %12, align 8
  %13 = load %struct.pt_ild*, %struct.pt_ild** %3, align 8
  %14 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %13, i32 0, i32 5
  store i64 0, i64* %14, align 8
  %15 = load %struct.pt_ild*, %struct.pt_ild** %3, align 8
  %16 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %15, i32 0, i32 4
  store i64 0, i64* %16, align 8
  %17 = load %struct.pt_ild*, %struct.pt_ild** %3, align 8
  %18 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %17, i32 0, i32 3
  store i64 0, i64* %18, align 8
  %19 = load %struct.pt_ild*, %struct.pt_ild** %3, align 8
  %20 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %19, i32 0, i32 2
  store i64 0, i64* %20, align 8
  %21 = load i32, i32* @PTI_MAP_INVALID, align 4
  %22 = load %struct.pt_ild*, %struct.pt_ild** %3, align 8
  %23 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.pt_ild*, %struct.pt_ild** %3, align 8
  %25 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %9
  %29 = load i32, i32* @pte_bad_insn, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %34

31:                                               ; preds = %9
  %32 = load %struct.pt_ild*, %struct.pt_ild** %3, align 8
  %33 = call i32 @decode(%struct.pt_ild* %32)
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %31, %28, %6
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @decode(%struct.pt_ild*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
