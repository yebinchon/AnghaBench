; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_insn.c_pt_insn_decode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_insn.c_pt_insn_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_insn = type { i32, i32, i32, i32 }
%struct.pt_insn_ext = type { i32 }
%struct.pt_image = type { i32 }
%struct.pt_asid = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@pte_bad_insn = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_insn_decode(%struct.pt_insn* %0, %struct.pt_insn_ext* %1, %struct.pt_image* %2, %struct.pt_asid* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pt_insn*, align 8
  %7 = alloca %struct.pt_insn_ext*, align 8
  %8 = alloca %struct.pt_image*, align 8
  %9 = alloca %struct.pt_asid*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pt_insn* %0, %struct.pt_insn** %6, align 8
  store %struct.pt_insn_ext* %1, %struct.pt_insn_ext** %7, align 8
  store %struct.pt_image* %2, %struct.pt_image** %8, align 8
  store %struct.pt_asid* %3, %struct.pt_asid** %9, align 8
  %12 = load %struct.pt_insn*, %struct.pt_insn** %6, align 8
  %13 = icmp ne %struct.pt_insn* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* @pte_internal, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %5, align 4
  br label %65

17:                                               ; preds = %4
  %18 = load %struct.pt_image*, %struct.pt_image** %8, align 8
  %19 = load %struct.pt_insn*, %struct.pt_insn** %6, align 8
  %20 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %19, i32 0, i32 3
  %21 = load %struct.pt_insn*, %struct.pt_insn** %6, align 8
  %22 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.pt_asid*, %struct.pt_asid** %9, align 8
  %25 = load %struct.pt_insn*, %struct.pt_insn** %6, align 8
  %26 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @pt_image_read(%struct.pt_image* %18, i32* %20, i32 %23, i32 4, %struct.pt_asid* %24, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %17
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %5, align 4
  br label %65

33:                                               ; preds = %17
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.pt_insn*, %struct.pt_insn** %6, align 8
  %36 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.pt_insn*, %struct.pt_insn** %6, align 8
  %38 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %7, align 8
  %39 = call i32 @pt_ild_decode(%struct.pt_insn* %37, %struct.pt_insn_ext* %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %63

42:                                               ; preds = %33
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @pte_bad_insn, align 4
  %45 = sub nsw i32 0, %44
  %46 = icmp ne i32 %43, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* %11, align 4
  store i32 %48, i32* %5, align 4
  br label %65

49:                                               ; preds = %42
  %50 = load %struct.pt_insn*, %struct.pt_insn** %6, align 8
  %51 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* %11, align 4
  store i32 %56, i32* %5, align 4
  br label %65

57:                                               ; preds = %49
  %58 = load %struct.pt_insn*, %struct.pt_insn** %6, align 8
  %59 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %7, align 8
  %60 = load %struct.pt_image*, %struct.pt_image** %8, align 8
  %61 = load %struct.pt_asid*, %struct.pt_asid** %9, align 8
  %62 = call i32 @pt_insn_decode_retry(%struct.pt_insn* %58, %struct.pt_insn_ext* %59, %struct.pt_image* %60, %struct.pt_asid* %61)
  store i32 %62, i32* %5, align 4
  br label %65

63:                                               ; preds = %33
  %64 = load i32, i32* %11, align 4
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %63, %57, %55, %47, %31, %14
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i32 @pt_image_read(%struct.pt_image*, i32*, i32, i32, %struct.pt_asid*, i32) #1

declare dso_local i32 @pt_ild_decode(%struct.pt_insn*, %struct.pt_insn_ext*) #1

declare dso_local i32 @pt_insn_decode_retry(%struct.pt_insn*, %struct.pt_insn_ext*, %struct.pt_image*, %struct.pt_asid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
