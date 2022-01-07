; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_insn_decoder.c_pt_insn_tick.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_insn_decoder.c_pt_insn_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_insn_decoder = type { i32, %struct.pt_event, i32, i32 }
%struct.pt_event = type { i64, i32, i8*, i8*, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@pte_internal = common dso_local global i32 0, align 4
@pte_no_time = common dso_local global i32 0, align 4
@ptev_tick = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_insn_decoder*, i64)* @pt_insn_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_insn_tick(%struct.pt_insn_decoder* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_insn_decoder*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pt_event*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.pt_insn_decoder* %0, %struct.pt_insn_decoder** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %4, align 8
  %12 = icmp ne %struct.pt_insn_decoder* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @pte_internal, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %83

16:                                               ; preds = %2
  %17 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %4, align 8
  %18 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @pte_internal, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %83

24:                                               ; preds = %16
  %25 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %4, align 8
  %26 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %83

30:                                               ; preds = %24
  %31 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %4, align 8
  %32 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %31, i32 0, i32 2
  %33 = call i32 @pt_qry_time(i32* %32, i64* %7, i8** %8, i8** %9)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %30
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @pte_no_time, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp ne i32 %37, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %3, align 4
  br label %83

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %43, %30
  %45 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %4, align 8
  %46 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %45, i32 0, i32 1
  store %struct.pt_event* %46, %struct.pt_event** %6, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load %struct.pt_event*, %struct.pt_event** %6, align 8
  %49 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %47, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %83

53:                                               ; preds = %44
  %54 = load %struct.pt_event*, %struct.pt_event** %6, align 8
  %55 = call i32 @memset(%struct.pt_event* %54, i32 0, i32 48)
  %56 = load i32, i32* @ptev_tick, align 4
  %57 = load %struct.pt_event*, %struct.pt_event** %6, align 8
  %58 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %57, i32 0, i32 5
  store i32 %56, i32* %58, align 8
  %59 = load i64, i64* %5, align 8
  %60 = load %struct.pt_event*, %struct.pt_event** %6, align 8
  %61 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store i64 %59, i64* %63, align 8
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @pte_no_time, align 4
  %66 = sub nsw i32 0, %65
  %67 = icmp ne i32 %64, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %53
  %69 = load %struct.pt_event*, %struct.pt_event** %6, align 8
  %70 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %69, i32 0, i32 1
  store i32 1, i32* %70, align 8
  br label %71

71:                                               ; preds = %68, %53
  %72 = load i64, i64* %7, align 8
  %73 = load %struct.pt_event*, %struct.pt_event** %6, align 8
  %74 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = load %struct.pt_event*, %struct.pt_event** %6, align 8
  %77 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %76, i32 0, i32 3
  store i8* %75, i8** %77, align 8
  %78 = load i8*, i8** %9, align 8
  %79 = load %struct.pt_event*, %struct.pt_event** %6, align 8
  %80 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %79, i32 0, i32 2
  store i8* %78, i8** %80, align 8
  %81 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %4, align 8
  %82 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %81, i32 0, i32 0
  store i32 1, i32* %82, align 8
  store i32 1, i32* %3, align 4
  br label %83

83:                                               ; preds = %71, %52, %41, %29, %21, %13
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @pt_qry_time(i32*, i64*, i8**, i8**) #1

declare dso_local i32 @memset(%struct.pt_event*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
