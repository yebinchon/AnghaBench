; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-regs.c_tui_check_register_values.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-regs.c_tui_check_register_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { %struct.tui_data_info }
%struct.tui_data_info = type { i64, %struct.TYPE_10__**, i32, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.tui_gen_win_info }
%struct.tui_gen_win_info = type { i64* }
%struct.TYPE_7__ = type { i64 }
%struct.frame_info = type { i32 }
%struct.tui_data_element = type { i32, i32 }
%struct.tui_win_element = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.tui_data_element }

@TUI_DATA_WIN = common dso_local global %struct.TYPE_12__* null, align 8
@current_gdbarch = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tui_check_register_values(%struct.frame_info* %0) #0 {
  %2 = alloca %struct.frame_info*, align 8
  %3 = alloca %struct.tui_data_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.tui_data_element*, align 8
  %7 = alloca %struct.tui_gen_win_info*, align 8
  %8 = alloca i32, align 4
  store %struct.frame_info* %0, %struct.frame_info** %2, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** @TUI_DATA_WIN, align 8
  %10 = icmp ne %struct.TYPE_12__* %9, null
  br i1 %10, label %11, label %90

11:                                               ; preds = %1
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** @TUI_DATA_WIN, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %90

17:                                               ; preds = %11
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** @TUI_DATA_WIN, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  store %struct.tui_data_info* %20, %struct.tui_data_info** %3, align 8
  %21 = load %struct.tui_data_info*, %struct.tui_data_info** %3, align 8
  %22 = getelementptr inbounds %struct.tui_data_info, %struct.tui_data_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sle i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %17
  %26 = load %struct.tui_data_info*, %struct.tui_data_info** %3, align 8
  %27 = getelementptr inbounds %struct.tui_data_info, %struct.tui_data_info* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.tui_data_info*, %struct.tui_data_info** %3, align 8
  %32 = getelementptr inbounds %struct.tui_data_info, %struct.tui_data_info* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @tui_show_registers(i32 %33)
  br label %89

35:                                               ; preds = %25, %17
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %85, %35
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = load %struct.tui_data_info*, %struct.tui_data_info** %3, align 8
  %40 = getelementptr inbounds %struct.tui_data_info, %struct.tui_data_info* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp slt i64 %38, %41
  br i1 %42, label %43, label %88

43:                                               ; preds = %36
  %44 = load %struct.tui_data_info*, %struct.tui_data_info** %3, align 8
  %45 = getelementptr inbounds %struct.tui_data_info, %struct.tui_data_info* %44, i32 0, i32 1
  %46 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %46, i64 %48
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  store %struct.tui_gen_win_info* %52, %struct.tui_gen_win_info** %7, align 8
  %53 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %7, align 8
  %54 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 0
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to %struct.tui_win_element*
  %59 = getelementptr inbounds %struct.tui_win_element, %struct.tui_win_element* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  store %struct.tui_data_element* %60, %struct.tui_data_element** %6, align 8
  %61 = load %struct.tui_data_element*, %struct.tui_data_element** %6, align 8
  %62 = getelementptr inbounds %struct.tui_data_element, %struct.tui_data_element* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* @current_gdbarch, align 4
  %65 = load %struct.frame_info*, %struct.frame_info** %2, align 8
  %66 = load %struct.tui_data_element*, %struct.tui_data_element** %6, align 8
  %67 = load %struct.tui_data_element*, %struct.tui_data_element** %6, align 8
  %68 = getelementptr inbounds %struct.tui_data_element, %struct.tui_data_element* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.tui_data_element*, %struct.tui_data_element** %6, align 8
  %71 = getelementptr inbounds %struct.tui_data_element, %struct.tui_data_element* %70, i32 0, i32 0
  %72 = call i32 @tui_get_register(i32 %64, %struct.frame_info* %65, %struct.tui_data_element* %66, i32 %69, i32* %71)
  %73 = load %struct.tui_data_element*, %struct.tui_data_element** %6, align 8
  %74 = getelementptr inbounds %struct.tui_data_element, %struct.tui_data_element* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %43
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %77, %43
  %81 = load %struct.tui_data_element*, %struct.tui_data_element** %6, align 8
  %82 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %7, align 8
  %83 = call i32 @tui_display_register(%struct.tui_data_element* %81, %struct.tui_gen_win_info* %82)
  br label %84

84:                                               ; preds = %80, %77
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %4, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %4, align 4
  br label %36

88:                                               ; preds = %36
  br label %89

89:                                               ; preds = %88, %30
  br label %90

90:                                               ; preds = %89, %11, %1
  ret void
}

declare dso_local i32 @tui_show_registers(i32) #1

declare dso_local i32 @tui_get_register(i32, %struct.frame_info*, %struct.tui_data_element*, i32, i32*) #1

declare dso_local i32 @tui_display_register(%struct.tui_data_element*, %struct.tui_gen_win_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
