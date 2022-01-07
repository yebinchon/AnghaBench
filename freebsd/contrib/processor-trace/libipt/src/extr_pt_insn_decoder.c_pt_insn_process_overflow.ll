; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_insn_decoder.c_pt_insn_process_overflow.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_insn_decoder.c_pt_insn_process_overflow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_insn_decoder = type { i32, i64, i64, %struct.pt_event }
%struct.pt_event = type { %struct.TYPE_4__, i64, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@pte_internal = common dso_local global i32 0, align 4
@pte_bad_context = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_insn_decoder*)* @pt_insn_process_overflow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_insn_process_overflow(%struct.pt_insn_decoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_insn_decoder*, align 8
  %4 = alloca %struct.pt_event*, align 8
  store %struct.pt_insn_decoder* %0, %struct.pt_insn_decoder** %3, align 8
  %5 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %3, align 8
  %6 = icmp ne %struct.pt_insn_decoder* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @pte_internal, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %43

10:                                               ; preds = %1
  %11 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %3, align 8
  %12 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %11, i32 0, i32 3
  store %struct.pt_event* %12, %struct.pt_event** %4, align 8
  %13 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %14 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = load i32, i32* @pte_bad_context, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %43

20:                                               ; preds = %10
  %21 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %22 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %3, align 8
  %27 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  %28 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %3, align 8
  %29 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  br label %40

30:                                               ; preds = %20
  %31 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %32 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %3, align 8
  %37 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  %38 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %3, align 8
  %39 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  br label %40

40:                                               ; preds = %30, %25
  %41 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %3, align 8
  %42 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %41, i32 0, i32 2
  store i64 0, i64* %42, align 8
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %40, %17, %7
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
