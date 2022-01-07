; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-win.c_tui_set_focus.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-win.c_tui_set_focus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tui_win_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.tui_gen_win_info = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"NEXT\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"PREV\00", align 1
@.str.2 = private unnamed_addr constant [81 x i8] c"Invalid window specified. \0AThe window name specified must be valid and visible.\0A\00", align 1
@TUI_CMD_WIN = common dso_local global %struct.tui_win_info* null, align 8
@TUI_DATA_WIN = common dso_local global %struct.TYPE_6__* null, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"Focus set to %s window.\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Incorrect Number of Arguments.\0A%s\00", align 1
@FOCUS_USAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @tui_set_focus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tui_set_focus(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tui_win_info*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %92

10:                                               ; preds = %2
  %11 = load i8*, i8** %3, align 8
  %12 = call i64 @xstrdup(i8* %11)
  %13 = inttoptr i64 %12 to i8*
  store i8* %13, i8** %5, align 8
  store %struct.tui_win_info* null, %struct.tui_win_info** %7, align 8
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %30, %10
  %15 = load i32, i32* %6, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @strlen(i8* %16)
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %14
  %20 = load i8*, i8** %3, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = call signext i8 @toupper(i8 signext %24)
  %26 = load i8*, i8** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  store i8 %25, i8* %29, align 1
  br label %30

30:                                               ; preds = %19
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %14

33:                                               ; preds = %14
  %34 = load i8*, i8** %5, align 8
  %35 = call i64 @subset_compare(i8* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = call i64 (...) @tui_win_with_focus()
  %39 = call %struct.tui_win_info* @tui_next_win(i64 %38)
  store %struct.tui_win_info* %39, %struct.tui_win_info** %7, align 8
  br label %51

40:                                               ; preds = %33
  %41 = load i8*, i8** %5, align 8
  %42 = call i64 @subset_compare(i8* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = call i64 (...) @tui_win_with_focus()
  %46 = call %struct.tui_win_info* @tui_prev_win(i64 %45)
  store %struct.tui_win_info* %46, %struct.tui_win_info** %7, align 8
  br label %50

47:                                               ; preds = %40
  %48 = load i8*, i8** %5, align 8
  %49 = call %struct.tui_win_info* @tui_partial_win_by_name(i8* %48)
  store %struct.tui_win_info* %49, %struct.tui_win_info** %7, align 8
  br label %50

50:                                               ; preds = %47, %44
  br label %51

51:                                               ; preds = %50, %37
  %52 = load %struct.tui_win_info*, %struct.tui_win_info** %7, align 8
  %53 = icmp eq %struct.tui_win_info* %52, null
  br i1 %53, label %60, label %54

54:                                               ; preds = %51
  %55 = load %struct.tui_win_info*, %struct.tui_win_info** %7, align 8
  %56 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %54, %51
  %61 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.2, i64 0, i64 0))
  br label %74

62:                                               ; preds = %54
  %63 = load %struct.tui_win_info*, %struct.tui_win_info** %7, align 8
  %64 = call i32 @tui_set_win_focus_to(%struct.tui_win_info* %63)
  %65 = load %struct.tui_win_info*, %struct.tui_win_info** @TUI_CMD_WIN, align 8
  %66 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.tui_win_info*, %struct.tui_win_info** %7, align 8
  %70 = load %struct.tui_win_info*, %struct.tui_win_info** @TUI_CMD_WIN, align 8
  %71 = icmp ne %struct.tui_win_info* %69, %70
  %72 = zext i1 %71 to i32
  %73 = call i32 @keypad(i32 %68, i32 %72)
  br label %74

74:                                               ; preds = %62, %60
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** @TUI_DATA_WIN, align 8
  %76 = icmp ne %struct.TYPE_6__* %75, null
  br i1 %76, label %77, label %85

77:                                               ; preds = %74
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** @TUI_DATA_WIN, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = call i32 (...) @tui_refresh_data_win()
  br label %85

85:                                               ; preds = %83, %77, %74
  %86 = load i8*, i8** %5, align 8
  %87 = call i32 @xfree(i8* %86)
  %88 = call i64 (...) @tui_win_with_focus()
  %89 = inttoptr i64 %88 to %struct.tui_gen_win_info*
  %90 = call i32 @tui_win_name(%struct.tui_gen_win_info* %89)
  %91 = call i32 @printf_filtered(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %90)
  br label %95

92:                                               ; preds = %2
  %93 = load i32, i32* @FOCUS_USAGE, align 4
  %94 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %92, %85
  ret void
}

declare dso_local i64 @xstrdup(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local signext i8 @toupper(i8 signext) #1

declare dso_local i64 @subset_compare(i8*, i8*) #1

declare dso_local %struct.tui_win_info* @tui_next_win(i64) #1

declare dso_local i64 @tui_win_with_focus(...) #1

declare dso_local %struct.tui_win_info* @tui_prev_win(i64) #1

declare dso_local %struct.tui_win_info* @tui_partial_win_by_name(i8*) #1

declare dso_local i32 @warning(i8*, ...) #1

declare dso_local i32 @tui_set_win_focus_to(%struct.tui_win_info*) #1

declare dso_local i32 @keypad(i32, i32) #1

declare dso_local i32 @tui_refresh_data_win(...) #1

declare dso_local i32 @xfree(i8*) #1

declare dso_local i32 @printf_filtered(i8*, i32) #1

declare dso_local i32 @tui_win_name(%struct.tui_gen_win_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
