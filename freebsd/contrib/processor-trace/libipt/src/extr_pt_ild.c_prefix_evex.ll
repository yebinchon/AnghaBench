; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_ild.c_prefix_evex.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_ild.c_prefix_evex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_ild = type { i64, i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@pte_internal = common dso_local global i32 0, align 4
@pte_bad_insn = common dso_local global i32 0, align 4
@PTI_MAP_3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_ild*, i64, i64)* @prefix_evex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prefix_evex(%struct.pt_ild* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_ild*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.pt_ild* %0, %struct.pt_ild** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load %struct.pt_ild*, %struct.pt_ild** %5, align 8
  %14 = icmp ne %struct.pt_ild* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @pte_internal, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %97

18:                                               ; preds = %3
  %19 = load %struct.pt_ild*, %struct.pt_ild** %5, align 8
  %20 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* %6, align 8
  %24 = add nsw i64 %23, 1
  %25 = icmp sle i64 %22, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load i32, i32* @pte_bad_insn, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %97

29:                                               ; preds = %18
  %30 = load %struct.pt_ild*, %struct.pt_ild** %5, align 8
  %31 = load i64, i64* %6, align 8
  %32 = add nsw i64 %31, 1
  %33 = call i64 @get_byte(%struct.pt_ild* %30, i64 %32)
  store i64 %33, i64* %9, align 8
  %34 = load %struct.pt_ild*, %struct.pt_ild** %5, align 8
  %35 = call i32 @mode_64b(%struct.pt_ild* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %29
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @bits_match(i64 %38, i32 192, i32 192)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load %struct.pt_ild*, %struct.pt_ild** %5, align 8
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @opcode_dec(%struct.pt_ild* %42, i64 %43)
  store i32 %44, i32* %4, align 4
  br label %97

45:                                               ; preds = %37, %29
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* %6, align 8
  %48 = add nsw i64 %47, 5
  %49 = icmp slt i64 %46, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* @pte_bad_insn, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %97

53:                                               ; preds = %45
  %54 = load %struct.pt_ild*, %struct.pt_ild** %5, align 8
  %55 = load i64, i64* %6, align 8
  %56 = add nsw i64 %55, 2
  %57 = call i64 @get_byte(%struct.pt_ild* %54, i64 %56)
  store i64 %57, i64* %10, align 8
  %58 = load %struct.pt_ild*, %struct.pt_ild** %5, align 8
  %59 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  %62 = load i64, i64* %9, align 8
  %63 = and i64 %62, 128
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %53
  %66 = load %struct.pt_ild*, %struct.pt_ild** %5, align 8
  %67 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  store i32 1, i32* %69, align 4
  br label %70

70:                                               ; preds = %65, %53
  %71 = load i64, i64* %10, align 8
  %72 = and i64 %71, 128
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %70
  %75 = load %struct.pt_ild*, %struct.pt_ild** %5, align 8
  %76 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 2
  store i32 1, i32* %78, align 8
  br label %79

79:                                               ; preds = %74, %70
  %80 = load i64, i64* %9, align 8
  %81 = and i64 %80, 3
  store i64 %81, i64* %11, align 8
  %82 = load i64, i64* %11, align 8
  %83 = load %struct.pt_ild*, %struct.pt_ild** %5, align 8
  %84 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %83, i32 0, i32 2
  store i64 %82, i64* %84, align 8
  %85 = load i64, i64* %11, align 8
  %86 = load i64, i64* @PTI_MAP_3, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %79
  %89 = load %struct.pt_ild*, %struct.pt_ild** %5, align 8
  %90 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %89, i32 0, i32 1
  store i32 1, i32* %90, align 8
  br label %91

91:                                               ; preds = %88, %79
  %92 = load i64, i64* %6, align 8
  %93 = add nsw i64 %92, 4
  store i64 %93, i64* %6, align 8
  %94 = load %struct.pt_ild*, %struct.pt_ild** %5, align 8
  %95 = load i64, i64* %6, align 8
  %96 = call i32 @prefix_vex_done(%struct.pt_ild* %94, i64 %95)
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %91, %50, %41, %26, %15
  %98 = load i32, i32* %4, align 4
  ret i32 %98
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
