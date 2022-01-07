; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_insn.c_pt_insn_decode_retry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_insn.c_pt_insn_decode_retry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_insn = type { i32, i32, i64, i32* }
%struct.pt_insn_ext = type { i32 }
%struct.pt_image = type { i32 }
%struct.pt_asid = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@pte_bad_insn = common dso_local global i32 0, align 4
@pte_nomap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_insn*, %struct.pt_insn_ext*, %struct.pt_image*, %struct.pt_asid*)* @pt_insn_decode_retry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_insn_decode_retry(%struct.pt_insn* %0, %struct.pt_insn_ext* %1, %struct.pt_image* %2, %struct.pt_asid* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pt_insn*, align 8
  %7 = alloca %struct.pt_insn_ext*, align 8
  %8 = alloca %struct.pt_image*, align 8
  %9 = alloca %struct.pt_asid*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.pt_insn* %0, %struct.pt_insn** %6, align 8
  store %struct.pt_insn_ext* %1, %struct.pt_insn_ext** %7, align 8
  store %struct.pt_image* %2, %struct.pt_image** %8, align 8
  store %struct.pt_asid* %3, %struct.pt_asid** %9, align 8
  %15 = load %struct.pt_insn*, %struct.pt_insn** %6, align 8
  %16 = icmp ne %struct.pt_insn* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @pte_internal, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %107

20:                                               ; preds = %4
  %21 = load %struct.pt_insn*, %struct.pt_insn** %6, align 8
  %22 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = sext i32 %24 to i64
  %26 = sub i64 8, %25
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %20
  %31 = load i32, i32* @pte_bad_insn, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %107

33:                                               ; preds = %20
  %34 = load %struct.pt_image*, %struct.pt_image** %8, align 8
  %35 = load %struct.pt_insn*, %struct.pt_insn** %6, align 8
  %36 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %13, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %14, align 4
  %42 = load %struct.pt_asid*, %struct.pt_asid** %9, align 8
  %43 = load %struct.pt_insn*, %struct.pt_insn** %6, align 8
  %44 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %45, %47
  %49 = call i32 @pt_image_read(%struct.pt_image* %34, i32* %12, i32* %40, i32 %41, %struct.pt_asid* %42, i64 %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp sle i32 %50, 0
  br i1 %51, label %52, label %68

52:                                               ; preds = %33
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* @pte_internal, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %107

58:                                               ; preds = %52
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @pte_nomap, align 4
  %61 = sub nsw i32 0, %60
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i32, i32* @pte_bad_insn, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %10, align 4
  br label %66

66:                                               ; preds = %63, %58
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %5, align 4
  br label %107

68:                                               ; preds = %33
  %69 = load i32, i32* %10, align 4
  %70 = load %struct.pt_insn*, %struct.pt_insn** %6, align 8
  %71 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, %69
  store i32 %73, i32* %71, align 8
  %74 = load %struct.pt_insn*, %struct.pt_insn** %6, align 8
  %75 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  store i32 %76, i32* %10, align 4
  %77 = load %struct.pt_insn*, %struct.pt_insn** %6, align 8
  %78 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %7, align 8
  %79 = call i32 @pt_ild_decode(%struct.pt_insn* %77, %struct.pt_insn_ext* %78)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %103

82:                                               ; preds = %68
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* @pte_bad_insn, align 4
  %85 = sub nsw i32 0, %84
  %86 = icmp ne i32 %83, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = load i32, i32* %11, align 4
  store i32 %88, i32* %5, align 4
  br label %107

89:                                               ; preds = %82
  %90 = load %struct.pt_insn*, %struct.pt_insn** %6, align 8
  %91 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %10, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %89
  %96 = load i32, i32* %11, align 4
  store i32 %96, i32* %5, align 4
  br label %107

97:                                               ; preds = %89
  %98 = load %struct.pt_insn*, %struct.pt_insn** %6, align 8
  %99 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %7, align 8
  %100 = load %struct.pt_image*, %struct.pt_image** %8, align 8
  %101 = load %struct.pt_asid*, %struct.pt_asid** %9, align 8
  %102 = call i32 @pt_insn_decode_retry(%struct.pt_insn* %98, %struct.pt_insn_ext* %99, %struct.pt_image* %100, %struct.pt_asid* %101)
  store i32 %102, i32* %5, align 4
  br label %107

103:                                              ; preds = %68
  %104 = load %struct.pt_insn*, %struct.pt_insn** %6, align 8
  %105 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %104, i32 0, i32 1
  store i32 1, i32* %105, align 4
  %106 = load i32, i32* %11, align 4
  store i32 %106, i32* %5, align 4
  br label %107

107:                                              ; preds = %103, %97, %95, %87, %66, %55, %30, %17
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local i32 @pt_image_read(%struct.pt_image*, i32*, i32*, i32, %struct.pt_asid*, i64) #1

declare dso_local i32 @pt_ild_decode(%struct.pt_insn*, %struct.pt_insn_ext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
