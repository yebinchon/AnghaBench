; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_insn_decoder.c_pt_insn_process_exec_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_insn_decoder.c_pt_insn_process_exec_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_insn_decoder = type { i64, i64, %struct.pt_event }
%struct.pt_event = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@ptem_unknown = common dso_local global i64 0, align 8
@pte_bad_status_update = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_insn_decoder*)* @pt_insn_process_exec_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_insn_process_exec_mode(%struct.pt_insn_decoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_insn_decoder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_event*, align 8
  store %struct.pt_insn_decoder* %0, %struct.pt_insn_decoder** %3, align 8
  %6 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %3, align 8
  %7 = icmp ne %struct.pt_insn_decoder* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @pte_internal, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %49

11:                                               ; preds = %1
  %12 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %3, align 8
  %13 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %12, i32 0, i32 2
  store %struct.pt_event* %13, %struct.pt_event** %5, align 8
  %14 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %15 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %4, align 4
  %19 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %20 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %44

23:                                               ; preds = %11
  %24 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %3, align 8
  %25 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %23
  %29 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %3, align 8
  %30 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @ptem_unknown, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %28
  %35 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %3, align 8
  %36 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = zext i32 %38 to i64
  %40 = icmp ne i64 %37, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i32, i32* @pte_bad_status_update, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %49

44:                                               ; preds = %34, %28, %23, %11
  %45 = load i32, i32* %4, align 4
  %46 = zext i32 %45 to i64
  %47 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %3, align 8
  %48 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %44, %41, %8
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
