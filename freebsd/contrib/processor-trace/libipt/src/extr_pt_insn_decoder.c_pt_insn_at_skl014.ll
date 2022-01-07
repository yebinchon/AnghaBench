; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_insn_decoder.c_pt_insn_at_skl014.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_insn_decoder.c_pt_insn_at_skl014.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_event = type { i32 }
%struct.pt_insn = type { i32, i32, i32 }
%struct.pt_insn_ext = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.pt_config = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_event*, %struct.pt_insn*, %struct.pt_insn_ext*, %struct.pt_config*)* @pt_insn_at_skl014 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_insn_at_skl014(%struct.pt_event* %0, %struct.pt_insn* %1, %struct.pt_insn_ext* %2, %struct.pt_config* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pt_event*, align 8
  %7 = alloca %struct.pt_insn*, align 8
  %8 = alloca %struct.pt_insn_ext*, align 8
  %9 = alloca %struct.pt_config*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pt_event* %0, %struct.pt_event** %6, align 8
  store %struct.pt_insn* %1, %struct.pt_insn** %7, align 8
  store %struct.pt_insn_ext* %2, %struct.pt_insn_ext** %8, align 8
  store %struct.pt_config* %3, %struct.pt_config** %9, align 8
  %12 = load %struct.pt_event*, %struct.pt_event** %6, align 8
  %13 = icmp ne %struct.pt_event* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %4
  %15 = load %struct.pt_insn*, %struct.pt_insn** %7, align 8
  %16 = icmp ne %struct.pt_insn* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %8, align 8
  %19 = icmp ne %struct.pt_insn_ext* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load %struct.pt_config*, %struct.pt_config** %9, align 8
  %22 = icmp ne %struct.pt_config* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %20, %17, %14, %4
  %24 = load i32, i32* @pte_internal, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %75

26:                                               ; preds = %20
  %27 = load %struct.pt_event*, %struct.pt_event** %6, align 8
  %28 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %75

32:                                               ; preds = %26
  %33 = load %struct.pt_insn*, %struct.pt_insn** %7, align 8
  %34 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %73 [
    i32 129, label %36
    i32 128, label %36
  ]

36:                                               ; preds = %32, %32
  %37 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %8, align 8
  %38 = getelementptr inbounds %struct.pt_insn_ext, %struct.pt_insn_ext* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %36
  br label %74

44:                                               ; preds = %36
  %45 = load %struct.pt_insn*, %struct.pt_insn** %7, align 8
  %46 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %10, align 4
  %48 = load %struct.pt_insn*, %struct.pt_insn** %7, align 8
  %49 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %10, align 4
  %53 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %8, align 8
  %54 = getelementptr inbounds %struct.pt_insn_ext, %struct.pt_insn_ext* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* %10, align 4
  %60 = load %struct.pt_config*, %struct.pt_config** %9, align 8
  %61 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %60, i32 0, i32 0
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @pt_filter_addr_check(i32* %61, i32 %62)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp sle i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %44
  %67 = load i32, i32* %11, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load i32, i32* %11, align 4
  store i32 %70, i32* %5, align 4
  br label %75

71:                                               ; preds = %66
  store i32 1, i32* %5, align 4
  br label %75

72:                                               ; preds = %44
  br label %74

73:                                               ; preds = %32
  br label %74

74:                                               ; preds = %73, %72, %43
  store i32 0, i32* %5, align 4
  br label %75

75:                                               ; preds = %74, %71, %69, %31, %23
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32 @pt_filter_addr_check(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
