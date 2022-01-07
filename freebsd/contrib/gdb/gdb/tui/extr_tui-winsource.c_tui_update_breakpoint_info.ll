; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-winsource.c_tui_update_breakpoint_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-winsource.c_tui_update_breakpoint_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.breakpoint = type { i64, i64, i64, i64, i64, %struct.TYPE_9__*, i64, %struct.breakpoint* }
%struct.TYPE_9__ = type { i64 }
%struct.tui_win_info = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i64* }
%struct.TYPE_6__ = type { %struct.tui_source_info }
%struct.tui_source_info = type { i32 }
%struct.tui_source_element = type { i32, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i64, i64 }
%struct.tui_win_element = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.tui_source_element }

@breakpoint_chain = external dso_local global %struct.breakpoint*, align 8
@TUI_SRC_WIN = common dso_local global %struct.tui_win_info* null, align 8
@TUI_DISASM_WIN = common dso_local global %struct.tui_win_info* null, align 8
@bp_disabled = common dso_local global i64 0, align 8
@TUI_BP_DISABLED = common dso_local global i32 0, align 4
@TUI_BP_ENABLED = common dso_local global i32 0, align 4
@TUI_BP_HIT = common dso_local global i32 0, align 4
@TUI_BP_CONDITIONAL = common dso_local global i32 0, align 4
@bp_hardware_breakpoint = common dso_local global i64 0, align 8
@TUI_BP_HARDWARE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tui_update_breakpoint_info(%struct.tui_win_info* %0, i32 %1) #0 {
  %3 = alloca %struct.tui_win_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tui_source_info*, align 8
  %8 = alloca %struct.breakpoint*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.tui_source_element*, align 8
  store %struct.tui_win_info* %0, %struct.tui_win_info** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %11 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %12 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  store %struct.tui_source_info* %13, %struct.tui_source_info** %7, align 8
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %147, %2
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %17 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %15, %19
  br i1 %20, label %21, label %150

21:                                               ; preds = %14
  %22 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %23 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load i64*, i64** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.tui_win_element*
  %31 = getelementptr inbounds %struct.tui_win_element, %struct.tui_win_element* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  store %struct.tui_source_element* %32, %struct.tui_source_element** %10, align 8
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %21
  %36 = load %struct.tui_source_element*, %struct.tui_source_element** %10, align 8
  %37 = getelementptr inbounds %struct.tui_source_element, %struct.tui_source_element* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  br label %147

41:                                               ; preds = %35, %21
  store i32 0, i32* %9, align 4
  %42 = load %struct.breakpoint*, %struct.breakpoint** @breakpoint_chain, align 8
  store %struct.breakpoint* %42, %struct.breakpoint** %8, align 8
  br label %43

43:                                               ; preds = %132, %41
  %44 = load %struct.breakpoint*, %struct.breakpoint** %8, align 8
  %45 = icmp ne %struct.breakpoint* %44, null
  br i1 %45, label %46, label %136

46:                                               ; preds = %43
  %47 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %48 = load %struct.tui_win_info*, %struct.tui_win_info** @TUI_SRC_WIN, align 8
  %49 = icmp eq %struct.tui_win_info* %47, %48
  br i1 %49, label %50, label %73

50:                                               ; preds = %46
  %51 = load %struct.breakpoint*, %struct.breakpoint** %8, align 8
  %52 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %51, i32 0, i32 6
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %73

55:                                               ; preds = %50
  %56 = load %struct.tui_source_info*, %struct.tui_source_info** %7, align 8
  %57 = getelementptr inbounds %struct.tui_source_info, %struct.tui_source_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.breakpoint*, %struct.breakpoint** %8, align 8
  %60 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %59, i32 0, i32 6
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @strcmp(i32 %58, i64 %61)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %55
  %65 = load %struct.breakpoint*, %struct.breakpoint** %8, align 8
  %66 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.tui_source_element*, %struct.tui_source_element** %10, align 8
  %69 = getelementptr inbounds %struct.tui_source_element, %struct.tui_source_element* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %67, %71
  br i1 %72, label %88, label %73

73:                                               ; preds = %64, %55, %50, %46
  %74 = load %struct.tui_win_info*, %struct.tui_win_info** %3, align 8
  %75 = load %struct.tui_win_info*, %struct.tui_win_info** @TUI_DISASM_WIN, align 8
  %76 = icmp eq %struct.tui_win_info* %74, %75
  br i1 %76, label %77, label %131

77:                                               ; preds = %73
  %78 = load %struct.breakpoint*, %struct.breakpoint** %8, align 8
  %79 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %78, i32 0, i32 5
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.tui_source_element*, %struct.tui_source_element** %10, align 8
  %84 = getelementptr inbounds %struct.tui_source_element, %struct.tui_source_element* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %82, %86
  br i1 %87, label %88, label %131

88:                                               ; preds = %77, %64
  %89 = load %struct.breakpoint*, %struct.breakpoint** %8, align 8
  %90 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @bp_disabled, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %88
  %95 = load i32, i32* @TUI_BP_DISABLED, align 4
  %96 = load i32, i32* %9, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %9, align 4
  br label %102

98:                                               ; preds = %88
  %99 = load i32, i32* @TUI_BP_ENABLED, align 4
  %100 = load i32, i32* %9, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %9, align 4
  br label %102

102:                                              ; preds = %98, %94
  %103 = load %struct.breakpoint*, %struct.breakpoint** %8, align 8
  %104 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %103, i32 0, i32 4
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %102
  %108 = load i32, i32* @TUI_BP_HIT, align 4
  %109 = load i32, i32* %9, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %9, align 4
  br label %111

111:                                              ; preds = %107, %102
  %112 = load %struct.breakpoint*, %struct.breakpoint** %8, align 8
  %113 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %111
  %117 = load i32, i32* @TUI_BP_CONDITIONAL, align 4
  %118 = load i32, i32* %9, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %9, align 4
  br label %120

120:                                              ; preds = %116, %111
  %121 = load %struct.breakpoint*, %struct.breakpoint** %8, align 8
  %122 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @bp_hardware_breakpoint, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %120
  %127 = load i32, i32* @TUI_BP_HARDWARE, align 4
  %128 = load i32, i32* %9, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %9, align 4
  br label %130

130:                                              ; preds = %126, %120
  br label %131

131:                                              ; preds = %130, %77, %73
  br label %132

132:                                              ; preds = %131
  %133 = load %struct.breakpoint*, %struct.breakpoint** %8, align 8
  %134 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %133, i32 0, i32 7
  %135 = load %struct.breakpoint*, %struct.breakpoint** %134, align 8
  store %struct.breakpoint* %135, %struct.breakpoint** %8, align 8
  br label %43

136:                                              ; preds = %43
  %137 = load %struct.tui_source_element*, %struct.tui_source_element** %10, align 8
  %138 = getelementptr inbounds %struct.tui_source_element, %struct.tui_source_element* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* %9, align 4
  %141 = icmp ne i32 %139, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %136
  %143 = load i32, i32* %9, align 4
  %144 = load %struct.tui_source_element*, %struct.tui_source_element** %10, align 8
  %145 = getelementptr inbounds %struct.tui_source_element, %struct.tui_source_element* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  store i32 1, i32* %6, align 4
  br label %146

146:                                              ; preds = %142, %136
  br label %147

147:                                              ; preds = %146, %40
  %148 = load i32, i32* %5, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %5, align 4
  br label %14

150:                                              ; preds = %14
  %151 = load i32, i32* %6, align 4
  ret i32 %151
}

declare dso_local i64 @strcmp(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
