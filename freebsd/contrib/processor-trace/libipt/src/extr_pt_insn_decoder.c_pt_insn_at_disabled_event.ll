; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_insn_decoder.c_pt_insn_at_disabled_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_insn_decoder.c_pt_insn_at_disabled_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_event = type { %struct.TYPE_14__, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.pt_insn = type { i32, i32, i32 }
%struct.pt_insn_ext = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.pt_config = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@pte_internal = common dso_local global i32 0, align 4
@fallthrough = common dso_local global i32 0, align 4
@pte_bad_insn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_event*, %struct.pt_insn*, %struct.pt_insn_ext*, %struct.pt_config*)* @pt_insn_at_disabled_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_insn_at_disabled_event(%struct.pt_event* %0, %struct.pt_insn* %1, %struct.pt_insn_ext* %2, %struct.pt_config* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pt_event*, align 8
  %7 = alloca %struct.pt_insn*, align 8
  %8 = alloca %struct.pt_insn_ext*, align 8
  %9 = alloca %struct.pt_config*, align 8
  %10 = alloca i32, align 4
  store %struct.pt_event* %0, %struct.pt_event** %6, align 8
  store %struct.pt_insn* %1, %struct.pt_insn** %7, align 8
  store %struct.pt_insn_ext* %2, %struct.pt_insn_ext** %8, align 8
  store %struct.pt_config* %3, %struct.pt_config** %9, align 8
  %11 = load %struct.pt_event*, %struct.pt_event** %6, align 8
  %12 = icmp ne %struct.pt_event* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %4
  %14 = load %struct.pt_insn*, %struct.pt_insn** %7, align 8
  %15 = icmp ne %struct.pt_insn* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %8, align 8
  %18 = icmp ne %struct.pt_insn_ext* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load %struct.pt_config*, %struct.pt_config** %9, align 8
  %21 = icmp ne %struct.pt_config* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19, %16, %13, %4
  %23 = load i32, i32* @pte_internal, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %113

25:                                               ; preds = %19
  %26 = load %struct.pt_event*, %struct.pt_event** %6, align 8
  %27 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %68

30:                                               ; preds = %25
  %31 = load %struct.pt_insn*, %struct.pt_insn** %7, align 8
  %32 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %8, align 8
  %33 = call i64 @pt_insn_is_far_branch(%struct.pt_insn* %31, %struct.pt_insn_ext* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %30
  %36 = load %struct.pt_insn*, %struct.pt_insn** %7, align 8
  %37 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %8, align 8
  %38 = call i64 @pt_insn_changes_cpl(%struct.pt_insn* %36, %struct.pt_insn_ext* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = load %struct.pt_insn*, %struct.pt_insn** %7, align 8
  %42 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %8, align 8
  %43 = call i64 @pt_insn_changes_cr3(%struct.pt_insn* %41, %struct.pt_insn_ext* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40, %35, %30
  store i32 1, i32* %5, align 4
  br label %113

46:                                               ; preds = %40
  %47 = load %struct.pt_config*, %struct.pt_config** %9, align 8
  %48 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %46
  %54 = load %struct.pt_config*, %struct.pt_config** %9, align 8
  %55 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %53
  %60 = load %struct.pt_event*, %struct.pt_event** %6, align 8
  %61 = load %struct.pt_insn*, %struct.pt_insn** %7, align 8
  %62 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %8, align 8
  %63 = load %struct.pt_config*, %struct.pt_config** %9, align 8
  %64 = call i64 @pt_insn_at_skl014(%struct.pt_event* %60, %struct.pt_insn* %61, %struct.pt_insn_ext* %62, %struct.pt_config* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  store i32 1, i32* %5, align 4
  br label %113

67:                                               ; preds = %59, %53, %46
  br label %112

68:                                               ; preds = %25
  %69 = load %struct.pt_insn*, %struct.pt_insn** %7, align 8
  %70 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  switch i32 %71, label %111 [
    i32 129, label %72
    i32 130, label %72
    i32 137, label %73
    i32 131, label %73
    i32 128, label %107
    i32 134, label %107
    i32 132, label %107
    i32 133, label %107
    i32 136, label %107
    i32 135, label %108
  ]

72:                                               ; preds = %68, %68
  br label %111

73:                                               ; preds = %68, %68
  %74 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %8, align 8
  %75 = getelementptr inbounds %struct.pt_insn_ext, %struct.pt_insn_ext* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %105

80:                                               ; preds = %73
  %81 = load %struct.pt_insn*, %struct.pt_insn** %7, align 8
  %82 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %10, align 4
  %84 = load %struct.pt_insn*, %struct.pt_insn** %7, align 8
  %85 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %10, align 4
  %89 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %8, align 8
  %90 = getelementptr inbounds %struct.pt_insn_ext, %struct.pt_insn_ext* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, %93
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %10, align 4
  %97 = load %struct.pt_event*, %struct.pt_event** %6, align 8
  %98 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %96, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %80
  br label %111

104:                                              ; preds = %80
  br label %105

105:                                              ; preds = %104, %73
  %106 = load i32, i32* @fallthrough, align 4
  br label %107

107:                                              ; preds = %68, %68, %68, %68, %68, %105
  store i32 1, i32* %5, align 4
  br label %113

108:                                              ; preds = %68
  %109 = load i32, i32* @pte_bad_insn, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %5, align 4
  br label %113

111:                                              ; preds = %68, %103, %72
  br label %112

112:                                              ; preds = %111, %67
  store i32 0, i32* %5, align 4
  br label %113

113:                                              ; preds = %112, %108, %107, %66, %45, %22
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local i64 @pt_insn_is_far_branch(%struct.pt_insn*, %struct.pt_insn_ext*) #1

declare dso_local i64 @pt_insn_changes_cpl(%struct.pt_insn*, %struct.pt_insn_ext*) #1

declare dso_local i64 @pt_insn_changes_cr3(%struct.pt_insn*, %struct.pt_insn_ext*) #1

declare dso_local i64 @pt_insn_at_skl014(%struct.pt_event*, %struct.pt_insn*, %struct.pt_insn_ext*, %struct.pt_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
