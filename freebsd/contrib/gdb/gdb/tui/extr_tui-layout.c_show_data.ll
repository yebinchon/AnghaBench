; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-layout.c_show_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-layout.c_show_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_16__ = type { i8* }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.tui_gen_win_info }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i8*, %struct.tui_gen_win_info* }
%struct.tui_gen_win_info = type { i32, i32 }

@TUI_CMD_WIN = common dso_local global %struct.TYPE_11__* null, align 8
@TUI_DATA_WIN = common dso_local global %struct.TYPE_16__* null, align 8
@TRUE = common dso_local global i8* null, align 8
@SRC_DATA_COMMAND = common dso_local global i32 0, align 4
@SRC_WIN = common dso_local global i32 0, align 4
@DISASSEM_WIN = common dso_local global i32 0, align 4
@tui_win_list = common dso_local global %struct.TYPE_15__** null, align 8
@LOCATOR_WIN = common dso_local global i32 0, align 4
@DONT_BOX_WINDOW = common dso_local global i32 0, align 4
@EXEC_INFO_WIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @show_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_data(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tui_gen_win_info*, align 8
  store i32 %0, i32* %2, align 4
  %8 = call i32 (...) @tui_term_height()
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** @TUI_CMD_WIN, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sub nsw i32 %8, %12
  store i32 %13, i32* %3, align 4
  %14 = call %struct.tui_gen_win_info* (...) @tui_locator_win_info_ptr()
  store %struct.tui_gen_win_info* %14, %struct.tui_gen_win_info** %7, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sdiv i32 %15, 2
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* %5, align 4
  %19 = sub nsw i32 %17, %18
  store i32 %19, i32* %4, align 4
  %20 = call i32 (...) @tui_make_all_invisible()
  %21 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %7, align 8
  %22 = call i32 @tui_make_invisible(%struct.tui_gen_win_info* %21)
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @make_data_window(%struct.TYPE_16__** @TUI_DATA_WIN, i32 %23, i32 0)
  %25 = load i8*, i8** @TRUE, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** @TUI_DATA_WIN, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* @SRC_DATA_COMMAND, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %1
  %32 = load i32, i32* @SRC_WIN, align 4
  store i32 %32, i32* %6, align 4
  br label %35

33:                                               ; preds = %1
  %34 = load i32, i32* @DISASSEM_WIN, align 4
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @tui_win_list, align 8
  %37 = load i32, i32* %6, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %36, i64 %38
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %39, align 8
  %41 = icmp eq %struct.TYPE_15__* %40, null
  br i1 %41, label %42, label %72

42:                                               ; preds = %35
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @SRC_WIN, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %42
  %47 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @tui_win_list, align 8
  %48 = load i32, i32* %6, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %47, i64 %49
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %5, align 4
  %53 = sub nsw i32 %52, 1
  %54 = call i32 @make_source_window(%struct.TYPE_15__** %50, i32 %51, i32 %53)
  br label %64

55:                                               ; preds = %42
  %56 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @tui_win_list, align 8
  %57 = load i32, i32* %6, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %56, i64 %58
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* %5, align 4
  %62 = sub nsw i32 %61, 1
  %63 = call i32 @make_disasm_window(%struct.TYPE_15__** %59, i32 %60, i32 %62)
  br label %64

64:                                               ; preds = %55, %46
  %65 = bitcast %struct.tui_gen_win_info** %7 to i8**
  %66 = load i32, i32* @LOCATOR_WIN, align 4
  %67 = call i32 (...) @tui_term_width()
  %68 = load i32, i32* %3, align 4
  %69 = sub nsw i32 %68, 1
  %70 = load i32, i32* @DONT_BOX_WINDOW, align 4
  %71 = call i32 @init_and_make_win(i8** %65, i32 %66, i32 2, i32 %67, i32 0, i32 %69, i32 %70)
  br label %147

72:                                               ; preds = %35
  %73 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @tui_win_list, align 8
  %74 = load i32, i32* %6, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %73, i64 %75
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @tui_win_list, align 8
  %80 = load i32, i32* %6, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %79, i64 %81
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %4, align 4
  %88 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @tui_win_list, align 8
  %89 = load i32, i32* %6, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %88, i64 %90
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @tui_win_list, align 8
  %97 = load i32, i32* %6, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %96, i64 %98
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 1
  %104 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %103, align 8
  %105 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %5, align 4
  %108 = sub nsw i32 %107, 1
  %109 = call i32 @init_gen_win_info(%struct.tui_gen_win_info* %78, i32 %86, i32 %87, i32 %95, i32 %106, i32 %108)
  %110 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @tui_win_list, align 8
  %111 = load i32, i32* %6, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %110, i64 %112
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 1
  %118 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %117, align 8
  %119 = load i32, i32* @EXEC_INFO_WIN, align 4
  %120 = load i32, i32* %4, align 4
  %121 = load i32, i32* %5, align 4
  %122 = sub nsw i32 %121, 1
  %123 = call i32 @init_gen_win_info(%struct.tui_gen_win_info* %118, i32 %119, i32 %120, i32 3, i32 0, i32 %122)
  %124 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @tui_win_list, align 8
  %125 = load i32, i32* %6, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %124, i64 %126
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 1
  %130 = call i32 @tui_make_visible(%struct.tui_gen_win_info* %129)
  %131 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @tui_win_list, align 8
  %132 = load i32, i32* %6, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %131, i64 %133
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 1
  %139 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %138, align 8
  %140 = call i32 @tui_make_visible(%struct.tui_gen_win_info* %139)
  %141 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %7, align 8
  %142 = load i32, i32* @LOCATOR_WIN, align 4
  %143 = call i32 (...) @tui_term_width()
  %144 = load i32, i32* %3, align 4
  %145 = sub nsw i32 %144, 1
  %146 = call i32 @init_gen_win_info(%struct.tui_gen_win_info* %141, i32 %142, i32 2, i32 %143, i32 0, i32 %145)
  br label %147

147:                                              ; preds = %72, %64
  %148 = load i8*, i8** @TRUE, align 8
  %149 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @tui_win_list, align 8
  %150 = load i32, i32* %6, align 4
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %149, i64 %151
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 0
  store i8* %148, i8** %156, align 8
  %157 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %7, align 8
  %158 = call i32 @tui_make_visible(%struct.tui_gen_win_info* %157)
  %159 = call i32 (...) @tui_show_locator_content()
  %160 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @tui_win_list, align 8
  %161 = load i32, i32* %6, align 4
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %160, i64 %162
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %163, align 8
  %165 = call i32 @tui_add_to_source_windows(%struct.TYPE_15__* %164)
  %166 = load i32, i32* %2, align 4
  %167 = call i32 @tui_set_current_layout_to(i32 %166)
  ret void
}

declare dso_local i32 @tui_term_height(...) #1

declare dso_local %struct.tui_gen_win_info* @tui_locator_win_info_ptr(...) #1

declare dso_local i32 @tui_make_all_invisible(...) #1

declare dso_local i32 @tui_make_invisible(%struct.tui_gen_win_info*) #1

declare dso_local i32 @make_data_window(%struct.TYPE_16__**, i32, i32) #1

declare dso_local i32 @make_source_window(%struct.TYPE_15__**, i32, i32) #1

declare dso_local i32 @make_disasm_window(%struct.TYPE_15__**, i32, i32) #1

declare dso_local i32 @init_and_make_win(i8**, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @tui_term_width(...) #1

declare dso_local i32 @init_gen_win_info(%struct.tui_gen_win_info*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @tui_make_visible(%struct.tui_gen_win_info*) #1

declare dso_local i32 @tui_show_locator_content(...) #1

declare dso_local i32 @tui_add_to_source_windows(%struct.TYPE_15__*) #1

declare dso_local i32 @tui_set_current_layout_to(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
