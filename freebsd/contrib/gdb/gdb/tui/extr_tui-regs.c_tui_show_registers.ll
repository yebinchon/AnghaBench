; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-regs.c_tui_show_registers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-regs.c_tui_show_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { %struct.tui_data_info }
%struct.tui_data_info = type { i32, %struct.reggroup*, %struct.TYPE_11__**, i32 }
%struct.reggroup = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.tui_gen_win_info }
%struct.tui_gen_win_info = type { i64* }
%struct.TYPE_8__ = type { i32 }
%struct.tui_win_element = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@TUI_FAILURE = common dso_local global i32 0, align 4
@TUI_DATA_WIN = common dso_local global %struct.TYPE_14__* null, align 8
@DATA_NAME = common dso_local global i32 0, align 4
@general_reggroup = common dso_local global %struct.reggroup* null, align 8
@TRUE = common dso_local global i32 0, align 4
@target_has_registers = common dso_local global i64 0, align 8
@target_has_stack = common dso_local global i64 0, align 8
@target_has_memory = common dso_local global i64 0, align 8
@current_gdbarch = common dso_local global i32 0, align 4
@NO_REGS_STRING = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tui_show_registers(%struct.reggroup* %0) #0 {
  %2 = alloca %struct.reggroup*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.tui_data_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tui_gen_win_info*, align 8
  %7 = alloca %struct.tui_win_element*, align 8
  store %struct.reggroup* %0, %struct.reggroup** %2, align 8
  %8 = load i32, i32* @TUI_FAILURE, align 4
  store i32 %8, i32* %3, align 4
  %9 = call i32 (...) @tui_enable()
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** @TUI_DATA_WIN, align 8
  %11 = icmp eq %struct.TYPE_14__* %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** @TUI_DATA_WIN, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %12, %1
  %19 = load i32, i32* @DATA_NAME, align 4
  %20 = call i32 @tui_set_layout_for_display_command(i32 %19)
  br label %21

21:                                               ; preds = %18, %12
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** @TUI_DATA_WIN, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  store %struct.tui_data_info* %24, %struct.tui_data_info** %4, align 8
  %25 = load %struct.reggroup*, %struct.reggroup** %2, align 8
  %26 = icmp eq %struct.reggroup* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load %struct.reggroup*, %struct.reggroup** @general_reggroup, align 8
  store %struct.reggroup* %28, %struct.reggroup** %2, align 8
  br label %29

29:                                               ; preds = %27, %21
  %30 = load i32, i32* @TRUE, align 4
  %31 = load %struct.tui_data_info*, %struct.tui_data_info** %4, align 8
  %32 = getelementptr inbounds %struct.tui_data_info, %struct.tui_data_info* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  %33 = load i64, i64* @target_has_registers, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %29
  %36 = load i64, i64* @target_has_stack, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %35
  %39 = load i64, i64* @target_has_memory, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %38
  %42 = load i32, i32* @current_gdbarch, align 4
  %43 = load %struct.reggroup*, %struct.reggroup** %2, align 8
  %44 = call i32 (...) @get_current_frame()
  %45 = load %struct.reggroup*, %struct.reggroup** %2, align 8
  %46 = load %struct.tui_data_info*, %struct.tui_data_info** %4, align 8
  %47 = getelementptr inbounds %struct.tui_data_info, %struct.tui_data_info* %46, i32 0, i32 1
  %48 = load %struct.reggroup*, %struct.reggroup** %47, align 8
  %49 = icmp eq %struct.reggroup* %45, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @tui_show_register_group(i32 %42, %struct.reggroup* %43, i32 %44, i32 %50)
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %41, %38, %35, %29
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @TUI_FAILURE, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = load %struct.tui_data_info*, %struct.tui_data_info** %4, align 8
  %58 = getelementptr inbounds %struct.tui_data_info, %struct.tui_data_info* %57, i32 0, i32 1
  store %struct.reggroup* null, %struct.reggroup** %58, align 8
  %59 = load i32, i32* @NO_REGS_STRING, align 4
  %60 = call i32 @tui_erase_data_content(i32 %59)
  br label %97

61:                                               ; preds = %52
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %89, %61
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.tui_data_info*, %struct.tui_data_info** %4, align 8
  %65 = getelementptr inbounds %struct.tui_data_info, %struct.tui_data_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %92

68:                                               ; preds = %62
  %69 = load %struct.tui_data_info*, %struct.tui_data_info** %4, align 8
  %70 = getelementptr inbounds %struct.tui_data_info, %struct.tui_data_info* %69, i32 0, i32 2
  %71 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %71, i64 %73
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  store %struct.tui_gen_win_info* %77, %struct.tui_gen_win_info** %6, align 8
  %78 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %6, align 8
  %79 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %78, i32 0, i32 0
  %80 = load i64*, i64** %79, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 0
  %82 = load i64, i64* %81, align 8
  %83 = inttoptr i64 %82 to %struct.tui_win_element*
  store %struct.tui_win_element* %83, %struct.tui_win_element** %7, align 8
  %84 = load i32, i32* @FALSE, align 4
  %85 = load %struct.tui_win_element*, %struct.tui_win_element** %7, align 8
  %86 = getelementptr inbounds %struct.tui_win_element, %struct.tui_win_element* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  store i32 %84, i32* %88, align 4
  br label %89

89:                                               ; preds = %68
  %90 = load i32, i32* %5, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %5, align 4
  br label %62

92:                                               ; preds = %62
  %93 = load %struct.reggroup*, %struct.reggroup** %2, align 8
  %94 = load %struct.tui_data_info*, %struct.tui_data_info** %4, align 8
  %95 = getelementptr inbounds %struct.tui_data_info, %struct.tui_data_info* %94, i32 0, i32 1
  store %struct.reggroup* %93, %struct.reggroup** %95, align 8
  %96 = call i32 (...) @tui_display_all_data()
  br label %97

97:                                               ; preds = %92, %56
  ret void
}

declare dso_local i32 @tui_enable(...) #1

declare dso_local i32 @tui_set_layout_for_display_command(i32) #1

declare dso_local i32 @tui_show_register_group(i32, %struct.reggroup*, i32, i32) #1

declare dso_local i32 @get_current_frame(...) #1

declare dso_local i32 @tui_erase_data_content(i32) #1

declare dso_local i32 @tui_display_all_data(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
