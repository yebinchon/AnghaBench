; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-command.c_tui_dispatch_ctrl_char.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-command.c_tui_dispatch_ctrl_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tui_win_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@TUI_CMD_WIN = common dso_local global %struct.tui_win_info* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"XTERM\00", align 1
@ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tui_dispatch_ctrl_char(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.tui_win_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %12 = call %struct.tui_win_info* (...) @tui_win_with_focus()
  store %struct.tui_win_info* %12, %struct.tui_win_info** %4, align 8
  %13 = load %struct.tui_win_info*, %struct.tui_win_info** @TUI_CMD_WIN, align 8
  %14 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %5, align 8
  %17 = load %struct.tui_win_info*, %struct.tui_win_info** %4, align 8
  %18 = icmp eq %struct.tui_win_info* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %1
  %20 = load %struct.tui_win_info*, %struct.tui_win_info** %4, align 8
  %21 = load %struct.tui_win_info*, %struct.tui_win_info** @TUI_CMD_WIN, align 8
  %22 = icmp eq %struct.tui_win_info* %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19, %1
  %24 = load i32, i32* %3, align 4
  store i32 %24, i32* %2, align 4
  br label %122

25:                                               ; preds = %19
  store i32 0, i32* %6, align 4
  %26 = load i32, i32* %3, align 4
  store i32 %26, i32* %7, align 4
  %27 = call i64 @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %28 = inttoptr i64 %27 to i8*
  store i8* %28, i8** %9, align 8
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %53, %25
  %30 = load i8*, i8** %9, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  %33 = load i8*, i8** %9, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br label %40

40:                                               ; preds = %32, %29
  %41 = phi i1 [ false, %29 ], [ %39, %32 ]
  br i1 %41, label %42, label %56

42:                                               ; preds = %40
  %43 = load i8*, i8** %9, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = call signext i8 @toupper(i8 signext %47)
  %49 = load i8*, i8** %9, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  store i8 %48, i8* %52, align 1
  br label %53

53:                                               ; preds = %42
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %29

56:                                               ; preds = %40
  %57 = load i8*, i8** %9, align 8
  %58 = call i64 @strcmp(i8* %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %96

60:                                               ; preds = %56
  %61 = load i32, i32* %3, align 4
  %62 = call i64 @key_is_start_sequence(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %96

64:                                               ; preds = %60
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %65

65:                                               ; preds = %93, %64
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @key_is_end_sequence(i32 %66)
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  br i1 %69, label %70, label %94

70:                                               ; preds = %65
  %71 = load i32*, i32** %5, align 8
  %72 = call i64 @wgetch(i32* %71)
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* @ERR, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = load i32, i32* %3, align 4
  store i32 %78, i32* %2, align 4
  br label %122

79:                                               ; preds = %70
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %79
  br label %94

83:                                               ; preds = %79
  %84 = load i32, i32* %11, align 4
  %85 = icmp eq i32 %84, 53
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  store i32 132, i32* %10, align 4
  br label %93

87:                                               ; preds = %83
  %88 = load i32, i32* %11, align 4
  %89 = icmp eq i32 %88, 54
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  store i32 133, i32* %10, align 4
  br label %92

91:                                               ; preds = %87
  store i32 0, i32* %2, align 4
  br label %122

92:                                               ; preds = %90
  br label %93

93:                                               ; preds = %92, %86
  br label %65

94:                                               ; preds = %82, %65
  %95 = load i32, i32* %10, align 4
  store i32 %95, i32* %7, align 4
  br label %96

96:                                               ; preds = %94, %60, %56
  %97 = load i32, i32* %7, align 4
  switch i32 %97, label %118 [
    i32 133, label %98
    i32 132, label %101
    i32 135, label %104
    i32 130, label %104
    i32 128, label %107
    i32 129, label %107
    i32 131, label %110
    i32 134, label %113
    i32 12, label %116
  ]

98:                                               ; preds = %96
  %99 = load %struct.tui_win_info*, %struct.tui_win_info** %4, align 8
  %100 = call i32 @tui_scroll_forward(%struct.tui_win_info* %99, i32 0)
  br label %120

101:                                              ; preds = %96
  %102 = load %struct.tui_win_info*, %struct.tui_win_info** %4, align 8
  %103 = call i32 @tui_scroll_backward(%struct.tui_win_info* %102, i32 0)
  br label %120

104:                                              ; preds = %96, %96
  %105 = load %struct.tui_win_info*, %struct.tui_win_info** %4, align 8
  %106 = call i32 @tui_scroll_forward(%struct.tui_win_info* %105, i32 1)
  br label %120

107:                                              ; preds = %96, %96
  %108 = load %struct.tui_win_info*, %struct.tui_win_info** %4, align 8
  %109 = call i32 @tui_scroll_backward(%struct.tui_win_info* %108, i32 1)
  br label %120

110:                                              ; preds = %96
  %111 = load %struct.tui_win_info*, %struct.tui_win_info** %4, align 8
  %112 = call i32 @tui_scroll_left(%struct.tui_win_info* %111, i32 1)
  br label %120

113:                                              ; preds = %96
  %114 = load %struct.tui_win_info*, %struct.tui_win_info** %4, align 8
  %115 = call i32 @tui_scroll_right(%struct.tui_win_info* %114, i32 1)
  br label %120

116:                                              ; preds = %96
  %117 = call i32 (...) @tui_refresh_all_win()
  br label %120

118:                                              ; preds = %96
  %119 = load i32, i32* %7, align 4
  store i32 %119, i32* %6, align 4
  br label %120

120:                                              ; preds = %118, %116, %113, %110, %107, %104, %101, %98
  %121 = load i32, i32* %6, align 4
  store i32 %121, i32* %2, align 4
  br label %122

122:                                              ; preds = %120, %91, %77, %23
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local %struct.tui_win_info* @tui_win_with_focus(...) #1

declare dso_local i64 @getenv(i8*) #1

declare dso_local signext i8 @toupper(i8 signext) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @key_is_start_sequence(i32) #1

declare dso_local i32 @key_is_end_sequence(i32) #1

declare dso_local i64 @wgetch(i32*) #1

declare dso_local i32 @tui_scroll_forward(%struct.tui_win_info*, i32) #1

declare dso_local i32 @tui_scroll_backward(%struct.tui_win_info*, i32) #1

declare dso_local i32 @tui_scroll_left(%struct.tui_win_info*, i32) #1

declare dso_local i32 @tui_scroll_right(%struct.tui_win_info*, i32) #1

declare dso_local i32 @tui_refresh_all_win(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
