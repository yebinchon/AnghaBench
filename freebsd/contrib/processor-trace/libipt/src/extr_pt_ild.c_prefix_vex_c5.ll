; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_ild.c_prefix_vex_c5.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_ild.c_prefix_vex_c5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_ild = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@pte_internal = common dso_local global i32 0, align 4
@pte_bad_insn = common dso_local global i32 0, align 4
@PTI_MAP_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_ild*, i64, i64)* @prefix_vex_c5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prefix_vex_c5(%struct.pt_ild* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_ild*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.pt_ild* %0, %struct.pt_ild** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = load %struct.pt_ild*, %struct.pt_ild** %5, align 8
  %12 = icmp ne %struct.pt_ild* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @pte_internal, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %73

16:                                               ; preds = %3
  %17 = load %struct.pt_ild*, %struct.pt_ild** %5, align 8
  %18 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* %6, align 8
  %22 = add nsw i64 %21, 1
  %23 = icmp sle i64 %20, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load i32, i32* @pte_bad_insn, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %73

27:                                               ; preds = %16
  %28 = load %struct.pt_ild*, %struct.pt_ild** %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = add nsw i64 %29, 1
  %31 = call i64 @get_byte(%struct.pt_ild* %28, i64 %30)
  store i64 %31, i64* %9, align 8
  %32 = load %struct.pt_ild*, %struct.pt_ild** %5, align 8
  %33 = call i32 @mode_64b(%struct.pt_ild* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %27
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @bits_match(i64 %36, i32 192, i32 192)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load %struct.pt_ild*, %struct.pt_ild** %5, align 8
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @opcode_dec(%struct.pt_ild* %40, i64 %41)
  store i32 %42, i32* %4, align 4
  br label %73

43:                                               ; preds = %35, %27
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* %6, align 8
  %46 = add nsw i64 %45, 3
  %47 = icmp slt i64 %44, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* @pte_bad_insn, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %73

51:                                               ; preds = %43
  %52 = load %struct.pt_ild*, %struct.pt_ild** %5, align 8
  %53 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store i32 1, i32* %55, align 4
  %56 = load i64, i64* %9, align 8
  %57 = and i64 %56, 128
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %51
  %60 = load %struct.pt_ild*, %struct.pt_ild** %5, align 8
  %61 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  store i32 1, i32* %63, align 4
  br label %64

64:                                               ; preds = %59, %51
  %65 = load i32, i32* @PTI_MAP_1, align 4
  %66 = load %struct.pt_ild*, %struct.pt_ild** %5, align 8
  %67 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 8
  %68 = load i64, i64* %6, align 8
  %69 = add nsw i64 %68, 2
  store i64 %69, i64* %6, align 8
  %70 = load %struct.pt_ild*, %struct.pt_ild** %5, align 8
  %71 = load i64, i64* %6, align 8
  %72 = call i32 @prefix_vex_done(%struct.pt_ild* %70, i64 %71)
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %64, %48, %39, %24, %13
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i64 @get_byte(%struct.pt_ild*, i64) #1

declare dso_local i32 @mode_64b(%struct.pt_ild*) #1

declare dso_local i32 @bits_match(i64, i32, i32) #1

declare dso_local i32 @opcode_dec(%struct.pt_ild*, i64) #1

declare dso_local i32 @prefix_vex_done(%struct.pt_ild*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
