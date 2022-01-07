; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_insn_decoder.c_pt_insn_decode_cached.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_insn_decoder.c_pt_insn_decode_cached.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_insn_decoder = type { i32, i32 }
%struct.pt_mapped_section = type { i32 }
%struct.pt_insn = type { i64, i32, i32 }
%struct.pt_insn_ext = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@pte_nomap = common dso_local global i32 0, align 4
@pte_bad_insn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_insn_decoder*, %struct.pt_mapped_section*, %struct.pt_insn*, %struct.pt_insn_ext*)* @pt_insn_decode_cached to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_insn_decode_cached(%struct.pt_insn_decoder* %0, %struct.pt_mapped_section* %1, %struct.pt_insn* %2, %struct.pt_insn_ext* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pt_insn_decoder*, align 8
  %7 = alloca %struct.pt_mapped_section*, align 8
  %8 = alloca %struct.pt_insn*, align 8
  %9 = alloca %struct.pt_insn_ext*, align 8
  %10 = alloca i32, align 4
  store %struct.pt_insn_decoder* %0, %struct.pt_insn_decoder** %6, align 8
  store %struct.pt_mapped_section* %1, %struct.pt_mapped_section** %7, align 8
  store %struct.pt_insn* %2, %struct.pt_insn** %8, align 8
  store %struct.pt_insn_ext* %3, %struct.pt_insn_ext** %9, align 8
  %11 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %6, align 8
  %12 = icmp ne %struct.pt_insn_decoder* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %4
  %14 = load %struct.pt_insn*, %struct.pt_insn** %8, align 8
  %15 = icmp ne %struct.pt_insn* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %9, align 8
  %18 = icmp ne %struct.pt_insn_ext* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16, %13, %4
  %20 = load i32, i32* @pte_internal, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %89

22:                                               ; preds = %16
  %23 = load %struct.pt_mapped_section*, %struct.pt_mapped_section** %7, align 8
  %24 = icmp ne %struct.pt_mapped_section* %23, null
  br i1 %24, label %34, label %25

25:                                               ; preds = %22
  %26 = load %struct.pt_insn*, %struct.pt_insn** %8, align 8
  %27 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %9, align 8
  %28 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %6, align 8
  %29 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %6, align 8
  %32 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %31, i32 0, i32 0
  %33 = call i32 @pt_insn_decode(%struct.pt_insn* %26, %struct.pt_insn_ext* %27, i32 %30, i32* %32)
  store i32 %33, i32* %5, align 4
  br label %89

34:                                               ; preds = %22
  %35 = load %struct.pt_mapped_section*, %struct.pt_mapped_section** %7, align 8
  %36 = load %struct.pt_insn*, %struct.pt_insn** %8, align 8
  %37 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.pt_insn*, %struct.pt_insn** %8, align 8
  %40 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @pt_msec_read(%struct.pt_mapped_section* %35, i32 %38, i32 4, i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %61

45:                                               ; preds = %34
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @pte_nomap, align 4
  %48 = sub nsw i32 0, %47
  %49 = icmp ne i32 %46, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %5, align 4
  br label %89

52:                                               ; preds = %45
  %53 = load %struct.pt_insn*, %struct.pt_insn** %8, align 8
  %54 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %9, align 8
  %55 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %6, align 8
  %56 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %6, align 8
  %59 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %58, i32 0, i32 0
  %60 = call i32 @pt_insn_decode(%struct.pt_insn* %53, %struct.pt_insn_ext* %54, i32 %57, i32* %59)
  store i32 %60, i32* %5, align 4
  br label %89

61:                                               ; preds = %34
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = load %struct.pt_insn*, %struct.pt_insn** %8, align 8
  %65 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load %struct.pt_insn*, %struct.pt_insn** %8, align 8
  %67 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %9, align 8
  %68 = call i32 @pt_ild_decode(%struct.pt_insn* %66, %struct.pt_insn_ext* %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %87

71:                                               ; preds = %61
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* @pte_bad_insn, align 4
  %74 = sub nsw i32 0, %73
  %75 = icmp ne i32 %72, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load i32, i32* %10, align 4
  store i32 %77, i32* %5, align 4
  br label %89

78:                                               ; preds = %71
  %79 = load %struct.pt_insn*, %struct.pt_insn** %8, align 8
  %80 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %9, align 8
  %81 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %6, align 8
  %82 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %6, align 8
  %85 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %84, i32 0, i32 0
  %86 = call i32 @pt_insn_decode(%struct.pt_insn* %79, %struct.pt_insn_ext* %80, i32 %83, i32* %85)
  store i32 %86, i32* %5, align 4
  br label %89

87:                                               ; preds = %61
  %88 = load i32, i32* %10, align 4
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %87, %78, %76, %52, %50, %25, %19
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local i32 @pt_insn_decode(%struct.pt_insn*, %struct.pt_insn_ext*, i32, i32*) #1

declare dso_local i32 @pt_msec_read(%struct.pt_mapped_section*, i32, i32, i32) #1

declare dso_local i32 @pt_ild_decode(%struct.pt_insn*, %struct.pt_insn_ext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
