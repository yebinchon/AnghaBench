; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_insn_decoder.c_pt_insn_postpone_tsx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_insn_decoder.c_pt_insn_postpone_tsx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_insn_decoder = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.pt_insn = type { i32 }
%struct.pt_insn_ext = type { i32 }
%struct.pt_event = type { %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@pte_internal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_insn_decoder*, %struct.pt_insn*, %struct.pt_insn_ext*, %struct.pt_event*)* @pt_insn_postpone_tsx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_insn_postpone_tsx(%struct.pt_insn_decoder* %0, %struct.pt_insn* %1, %struct.pt_insn_ext* %2, %struct.pt_event* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pt_insn_decoder*, align 8
  %7 = alloca %struct.pt_insn*, align 8
  %8 = alloca %struct.pt_insn_ext*, align 8
  %9 = alloca %struct.pt_event*, align 8
  %10 = alloca i32, align 4
  store %struct.pt_insn_decoder* %0, %struct.pt_insn_decoder** %6, align 8
  store %struct.pt_insn* %1, %struct.pt_insn** %7, align 8
  store %struct.pt_insn_ext* %2, %struct.pt_insn_ext** %8, align 8
  store %struct.pt_event* %3, %struct.pt_event** %9, align 8
  %11 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %6, align 8
  %12 = icmp ne %struct.pt_insn_decoder* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load %struct.pt_event*, %struct.pt_event** %9, align 8
  %15 = icmp ne %struct.pt_event* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13, %4
  %17 = load i32, i32* @pte_internal, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %62

19:                                               ; preds = %13
  %20 = load %struct.pt_event*, %struct.pt_event** %9, align 8
  %21 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %62

25:                                               ; preds = %19
  %26 = load %struct.pt_insn*, %struct.pt_insn** %7, align 8
  %27 = icmp ne %struct.pt_insn* %26, null
  br i1 %27, label %28, label %50

28:                                               ; preds = %25
  %29 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %8, align 8
  %30 = icmp ne %struct.pt_insn_ext* %29, null
  br i1 %30, label %31, label %50

31:                                               ; preds = %28
  %32 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %6, align 8
  %33 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %31
  %40 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %6, align 8
  %41 = load %struct.pt_event*, %struct.pt_event** %9, align 8
  %42 = load %struct.pt_insn*, %struct.pt_insn** %7, align 8
  %43 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %8, align 8
  %44 = call i32 @handle_erratum_bdm64(%struct.pt_insn_decoder* %40, %struct.pt_event* %41, %struct.pt_insn* %42, %struct.pt_insn_ext* %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %5, align 4
  br label %62

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %49, %31, %28, %25
  %51 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %6, align 8
  %52 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.pt_event*, %struct.pt_event** %9, align 8
  %55 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %53, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  store i32 1, i32* %5, align 4
  br label %62

61:                                               ; preds = %50
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %61, %60, %47, %24, %16
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @handle_erratum_bdm64(%struct.pt_insn_decoder*, %struct.pt_event*, %struct.pt_insn*, %struct.pt_insn_ext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
