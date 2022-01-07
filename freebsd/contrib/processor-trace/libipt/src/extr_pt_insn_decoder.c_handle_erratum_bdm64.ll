; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_insn_decoder.c_handle_erratum_bdm64.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_insn_decoder.c_handle_erratum_bdm64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_insn_decoder = type { i32, i32, i32, i32 }
%struct.pt_event = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.pt_insn = type { i32 }
%struct.pt_insn_ext = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@bdm64_max_steps = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_insn_decoder*, %struct.pt_event*, %struct.pt_insn*, %struct.pt_insn_ext*)* @handle_erratum_bdm64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_erratum_bdm64(%struct.pt_insn_decoder* %0, %struct.pt_event* %1, %struct.pt_insn* %2, %struct.pt_insn_ext* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pt_insn_decoder*, align 8
  %7 = alloca %struct.pt_event*, align 8
  %8 = alloca %struct.pt_insn*, align 8
  %9 = alloca %struct.pt_insn_ext*, align 8
  %10 = alloca i32, align 4
  store %struct.pt_insn_decoder* %0, %struct.pt_insn_decoder** %6, align 8
  store %struct.pt_event* %1, %struct.pt_event** %7, align 8
  store %struct.pt_insn* %2, %struct.pt_insn** %8, align 8
  store %struct.pt_insn_ext* %3, %struct.pt_insn_ext** %9, align 8
  %11 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %6, align 8
  %12 = icmp ne %struct.pt_insn_decoder* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %4
  %14 = load %struct.pt_event*, %struct.pt_event** %7, align 8
  %15 = icmp ne %struct.pt_event* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = load %struct.pt_insn*, %struct.pt_insn** %8, align 8
  %18 = icmp ne %struct.pt_insn* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %9, align 8
  %21 = icmp ne %struct.pt_insn_ext* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19, %16, %13, %4
  %23 = load i32, i32* @pte_internal, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %69

25:                                               ; preds = %19
  %26 = load %struct.pt_event*, %struct.pt_event** %7, align 8
  %27 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %69

33:                                               ; preds = %25
  %34 = load %struct.pt_insn*, %struct.pt_insn** %8, align 8
  %35 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %9, align 8
  %36 = call i32 @pt_insn_is_branch(%struct.pt_insn* %34, %struct.pt_insn_ext* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %69

39:                                               ; preds = %33
  %40 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %6, align 8
  %41 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.pt_event*, %struct.pt_event** %7, align 8
  %44 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %6, align 8
  %49 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %6, align 8
  %52 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %6, align 8
  %55 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %54, i32 0, i32 1
  %56 = load i32, i32* @bdm64_max_steps, align 4
  %57 = call i32 @pt_insn_range_is_contiguous(i32 %42, i32 %47, i32 %50, i32 %53, i32* %55, i32 %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %39
  store i32 0, i32* %5, align 4
  br label %69

61:                                               ; preds = %39
  %62 = load %struct.pt_event*, %struct.pt_event** %7, align 8
  %63 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %6, align 8
  %68 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  store i32 1, i32* %5, align 4
  br label %69

69:                                               ; preds = %61, %60, %38, %32, %22
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32 @pt_insn_is_branch(%struct.pt_insn*, %struct.pt_insn_ext*) #1

declare dso_local i32 @pt_insn_range_is_contiguous(i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
