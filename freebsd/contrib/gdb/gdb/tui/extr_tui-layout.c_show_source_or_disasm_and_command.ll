; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-layout.c_show_source_or_disasm_and_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-layout.c_show_source_or_disasm_and_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.tui_gen_win_info, i32 }
%struct.tui_gen_win_info = type { i32, i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.tui_win_info = type { %struct.TYPE_7__, %struct.tui_gen_win_info, i8* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, %struct.tui_gen_win_info* }

@TUI_CMD_WIN = common dso_local global %struct.TYPE_9__* null, align 8
@SRC_COMMAND = common dso_local global i32 0, align 4
@TUI_SRC_WIN = common dso_local global %struct.tui_win_info* null, align 8
@TUI_DISASM_WIN = common dso_local global %struct.tui_win_info* null, align 8
@LOCATOR_WIN = common dso_local global i32 0, align 4
@DONT_BOX_WINDOW = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@EXEC_INFO_WIN = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @show_source_or_disasm_and_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_source_or_disasm_and_command(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tui_win_info**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.tui_gen_win_info*, align 8
  store i32 %0, i32* %2, align 4
  %7 = call i32 (...) @tui_current_layout()
  %8 = load i32, i32* %2, align 4
  %9 = icmp ne i32 %7, %8
  br i1 %9, label %10, label %181

10:                                               ; preds = %1
  %11 = call %struct.tui_gen_win_info* (...) @tui_locator_win_info_ptr()
  store %struct.tui_gen_win_info* %11, %struct.tui_gen_win_info** %6, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** @TUI_CMD_WIN, align 8
  %13 = icmp ne %struct.TYPE_9__* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** @TUI_CMD_WIN, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %5, align 4
  br label %22

19:                                               ; preds = %10
  %20 = call i32 (...) @tui_term_height()
  %21 = sdiv i32 %20, 3
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %19, %14
  %23 = call i32 (...) @tui_term_height()
  %24 = load i32, i32* %5, align 4
  %25 = sub nsw i32 %23, %24
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* @SRC_COMMAND, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store %struct.tui_win_info** @TUI_SRC_WIN, %struct.tui_win_info*** %3, align 8
  br label %31

30:                                               ; preds = %22
  store %struct.tui_win_info** @TUI_DISASM_WIN, %struct.tui_win_info*** %3, align 8
  br label %31

31:                                               ; preds = %30, %29
  %32 = load %struct.tui_win_info**, %struct.tui_win_info*** %3, align 8
  %33 = load %struct.tui_win_info*, %struct.tui_win_info** %32, align 8
  %34 = icmp eq %struct.tui_win_info* %33, null
  br i1 %34, label %35, label %57

35:                                               ; preds = %31
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* @SRC_COMMAND, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load %struct.tui_win_info**, %struct.tui_win_info*** %3, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sub nsw i32 %41, 1
  %43 = call i32 @make_source_window(%struct.tui_win_info** %40, i32 %42, i32 0)
  br label %49

44:                                               ; preds = %35
  %45 = load %struct.tui_win_info**, %struct.tui_win_info*** %3, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sub nsw i32 %46, 1
  %48 = call i32 @make_disasm_window(%struct.tui_win_info** %45, i32 %47, i32 0)
  br label %49

49:                                               ; preds = %44, %39
  %50 = bitcast %struct.tui_gen_win_info** %6 to i8**
  %51 = load i32, i32* @LOCATOR_WIN, align 4
  %52 = call i32 (...) @tui_term_width()
  %53 = load i32, i32* %4, align 4
  %54 = sub nsw i32 %53, 1
  %55 = load i32, i32* @DONT_BOX_WINDOW, align 4
  %56 = call i32 @init_and_make_win(i8** %50, i32 %51, i32 2, i32 %52, i32 0, i32 %54, i32 %55)
  br label %119

57:                                               ; preds = %31
  %58 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %6, align 8
  %59 = load i32, i32* @LOCATOR_WIN, align 4
  %60 = call i32 (...) @tui_term_width()
  %61 = load i32, i32* %4, align 4
  %62 = sub nsw i32 %61, 1
  %63 = call i32 @init_gen_win_info(%struct.tui_gen_win_info* %58, i32 %59, i32 2, i32 %60, i32 0, i32 %62)
  %64 = load i8*, i8** @TRUE, align 8
  %65 = load %struct.tui_win_info**, %struct.tui_win_info*** %3, align 8
  %66 = load %struct.tui_win_info*, %struct.tui_win_info** %65, align 8
  %67 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  store i8* %64, i8** %69, align 8
  %70 = load %struct.tui_win_info**, %struct.tui_win_info*** %3, align 8
  %71 = load %struct.tui_win_info*, %struct.tui_win_info** %70, align 8
  %72 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %71, i32 0, i32 1
  %73 = load %struct.tui_win_info**, %struct.tui_win_info*** %3, align 8
  %74 = load %struct.tui_win_info*, %struct.tui_win_info** %73, align 8
  %75 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sub nsw i32 %78, 1
  %80 = load %struct.tui_win_info**, %struct.tui_win_info*** %3, align 8
  %81 = load %struct.tui_win_info*, %struct.tui_win_info** %80, align 8
  %82 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.tui_win_info**, %struct.tui_win_info*** %3, align 8
  %86 = load %struct.tui_win_info*, %struct.tui_win_info** %85, align 8
  %87 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %89, align 8
  %91 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @init_gen_win_info(%struct.tui_gen_win_info* %72, i32 %77, i32 %79, i32 %84, i32 %92, i32 0)
  %94 = load %struct.tui_win_info**, %struct.tui_win_info*** %3, align 8
  %95 = load %struct.tui_win_info*, %struct.tui_win_info** %94, align 8
  %96 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %98, align 8
  %100 = load i32, i32* @EXEC_INFO_WIN, align 4
  %101 = load i32, i32* %4, align 4
  %102 = sub nsw i32 %101, 1
  %103 = call i32 @init_gen_win_info(%struct.tui_gen_win_info* %99, i32 %100, i32 %102, i32 3, i32 0, i32 0)
  %104 = load i8*, i8** @TRUE, align 8
  %105 = load %struct.tui_win_info**, %struct.tui_win_info*** %3, align 8
  %106 = load %struct.tui_win_info*, %struct.tui_win_info** %105, align 8
  %107 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %106, i32 0, i32 2
  store i8* %104, i8** %107, align 8
  %108 = load %struct.tui_win_info**, %struct.tui_win_info*** %3, align 8
  %109 = load %struct.tui_win_info*, %struct.tui_win_info** %108, align 8
  %110 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %109, i32 0, i32 1
  %111 = call i32 @tui_make_visible(%struct.tui_gen_win_info* %110)
  %112 = load %struct.tui_win_info**, %struct.tui_win_info*** %3, align 8
  %113 = load %struct.tui_win_info*, %struct.tui_win_info** %112, align 8
  %114 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  %117 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %116, align 8
  %118 = call i32 @tui_make_visible(%struct.tui_gen_win_info* %117)
  br label %119

119:                                              ; preds = %57, %49
  %120 = load %struct.tui_win_info**, %struct.tui_win_info*** %3, align 8
  %121 = load %struct.tui_win_info*, %struct.tui_win_info** %120, align 8
  %122 = icmp ne %struct.tui_win_info* %121, null
  br i1 %122, label %123, label %178

123:                                              ; preds = %119
  %124 = load i8*, i8** @TRUE, align 8
  %125 = load %struct.tui_win_info**, %struct.tui_win_info*** %3, align 8
  %126 = load %struct.tui_win_info*, %struct.tui_win_info** %125, align 8
  %127 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  store i8* %124, i8** %129, align 8
  %130 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %6, align 8
  %131 = call i32 @tui_make_visible(%struct.tui_gen_win_info* %130)
  %132 = call i32 (...) @tui_show_locator_content()
  %133 = load %struct.tui_win_info**, %struct.tui_win_info*** %3, align 8
  %134 = load %struct.tui_win_info*, %struct.tui_win_info** %133, align 8
  %135 = call i32 @tui_show_source_content(%struct.tui_win_info* %134)
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** @TUI_CMD_WIN, align 8
  %137 = icmp eq %struct.TYPE_9__* %136, null
  br i1 %137, label %138, label %145

138:                                              ; preds = %123
  %139 = load i32, i32* %5, align 4
  %140 = load i32, i32* %4, align 4
  %141 = call i32 @make_command_window(%struct.TYPE_9__** @TUI_CMD_WIN, i32 %139, i32 %140)
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** @TUI_CMD_WIN, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  %144 = call i32 @tui_refresh_win(%struct.tui_gen_win_info* %143)
  br label %177

145:                                              ; preds = %123
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** @TUI_CMD_WIN, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** @TUI_CMD_WIN, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** @TUI_CMD_WIN, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** @TUI_CMD_WIN, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** @TUI_CMD_WIN, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** @TUI_CMD_WIN, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @init_gen_win_info(%struct.tui_gen_win_info* %147, i32 %151, i32 %155, i32 %159, i32 %164, i32 %169)
  %171 = load i32, i32* @FALSE, align 4
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** @TUI_CMD_WIN, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 1
  store i32 %171, i32* %173, align 4
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** @TUI_CMD_WIN, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 0
  %176 = call i32 @tui_make_visible(%struct.tui_gen_win_info* %175)
  br label %177

177:                                              ; preds = %145, %138
  br label %178

178:                                              ; preds = %177, %119
  %179 = load i32, i32* %2, align 4
  %180 = call i32 @tui_set_current_layout_to(i32 %179)
  br label %181

181:                                              ; preds = %178, %1
  ret void
}

declare dso_local i32 @tui_current_layout(...) #1

declare dso_local %struct.tui_gen_win_info* @tui_locator_win_info_ptr(...) #1

declare dso_local i32 @tui_term_height(...) #1

declare dso_local i32 @make_source_window(%struct.tui_win_info**, i32, i32) #1

declare dso_local i32 @make_disasm_window(%struct.tui_win_info**, i32, i32) #1

declare dso_local i32 @init_and_make_win(i8**, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @tui_term_width(...) #1

declare dso_local i32 @init_gen_win_info(%struct.tui_gen_win_info*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @tui_make_visible(%struct.tui_gen_win_info*) #1

declare dso_local i32 @tui_show_locator_content(...) #1

declare dso_local i32 @tui_show_source_content(%struct.tui_win_info*) #1

declare dso_local i32 @make_command_window(%struct.TYPE_9__**, i32, i32) #1

declare dso_local i32 @tui_refresh_win(%struct.tui_gen_win_info*) #1

declare dso_local i32 @tui_set_current_layout_to(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
