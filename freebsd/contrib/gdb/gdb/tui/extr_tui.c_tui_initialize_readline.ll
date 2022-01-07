; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui.c_tui_initialize_readline.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui.c_tui_initialize_readline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8, i64 }

@.str = private unnamed_addr constant [16 x i8] c"tui-switch-mode\00", align 1
@tui_rl_switch_mode = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"gdb-command\00", align 1
@tui_rl_command_key = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"next-keymap\00", align 1
@tui_rl_next_keymap = common dso_local global i32 0, align 4
@tui_keymap = common dso_local global i64 0, align 8
@tui_readline_standard_keymap = common dso_local global i32 0, align 4
@tui_commands = common dso_local global %struct.TYPE_2__* null, align 8
@ISKMAP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"\\C-x\00", align 1
@tui_rl_command_mode = common dso_local global i32 0, align 4
@emacs_ctlx_keymap = common dso_local global i64 0, align 8
@tui_rl_delete_other_windows = common dso_local global i32 0, align 4
@tui_rl_change_windows = common dso_local global i32 0, align 4
@tui_rl_other_window = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tui_initialize_readline() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = call i32 (...) @rl_initialize()
  %5 = load i32, i32* @tui_rl_switch_mode, align 4
  %6 = call i32 @rl_add_defun(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %5, i32 -1)
  %7 = load i32, i32* @tui_rl_command_key, align 4
  %8 = call i32 @rl_add_defun(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %7, i32 -1)
  %9 = load i32, i32* @tui_rl_next_keymap, align 4
  %10 = call i32 @rl_add_defun(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %9, i32 -1)
  %11 = call i64 (...) @rl_make_bare_keymap()
  store i64 %11, i64* @tui_keymap, align 8
  %12 = call i64 (...) @rl_make_bare_keymap()
  store i64 %12, i64* %2, align 8
  %13 = call i32 (...) @rl_get_keymap()
  store i32 %13, i32* @tui_readline_standard_keymap, align 4
  store i32 0, i32* %1, align 4
  br label %14

14:                                               ; preds = %32, %0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tui_commands, align 8
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %14
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tui_commands, align 8
  %24 = load i32, i32* %1, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i8, i8* %27, align 8
  %29 = load i32, i32* @tui_rl_command_key, align 4
  %30 = load i64, i64* @tui_keymap, align 8
  %31 = call i32 @rl_bind_key_in_map(i8 signext %28, i32 %29, i64 %30)
  br label %32

32:                                               ; preds = %22
  %33 = load i32, i32* %1, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %1, align 4
  br label %14

35:                                               ; preds = %14
  %36 = load i32, i32* @ISKMAP, align 4
  %37 = load i64, i64* %2, align 8
  %38 = inttoptr i64 %37 to i8*
  %39 = load i64, i64* @tui_keymap, align 8
  %40 = call i32 @rl_generic_bind(i32 %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %38, i64 %39)
  store i32 32, i32* %1, align 4
  br label %41

41:                                               ; preds = %83, %35
  %42 = load i32, i32* %1, align 4
  %43 = icmp slt i32 %42, 127
  br i1 %43, label %44, label %86

44:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %65, %44
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tui_commands, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %45
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tui_commands, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i8, i8* %58, align 8
  %60 = sext i8 %59 to i32
  %61 = load i32, i32* %1, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  br label %68

64:                                               ; preds = %53
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %3, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %3, align 4
  br label %45

68:                                               ; preds = %63, %45
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tui_commands, align 8
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  br label %83

77:                                               ; preds = %68
  %78 = load i32, i32* %1, align 4
  %79 = trunc i32 %78 to i8
  %80 = load i32, i32* @tui_rl_command_mode, align 4
  %81 = load i64, i64* @tui_keymap, align 8
  %82 = call i32 @rl_bind_key_in_map(i8 signext %79, i32 %80, i64 %81)
  br label %83

83:                                               ; preds = %77, %76
  %84 = load i32, i32* %1, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %1, align 4
  br label %41

86:                                               ; preds = %41
  %87 = load i32, i32* @tui_rl_switch_mode, align 4
  %88 = load i64, i64* @emacs_ctlx_keymap, align 8
  %89 = call i32 @rl_bind_key_in_map(i8 signext 97, i32 %87, i64 %88)
  %90 = load i32, i32* @tui_rl_switch_mode, align 4
  %91 = load i64, i64* %2, align 8
  %92 = call i32 @rl_bind_key_in_map(i8 signext 97, i32 %90, i64 %91)
  %93 = load i32, i32* @tui_rl_switch_mode, align 4
  %94 = load i64, i64* @emacs_ctlx_keymap, align 8
  %95 = call i32 @rl_bind_key_in_map(i8 signext 65, i32 %93, i64 %94)
  %96 = load i32, i32* @tui_rl_switch_mode, align 4
  %97 = load i64, i64* %2, align 8
  %98 = call i32 @rl_bind_key_in_map(i8 signext 65, i32 %96, i64 %97)
  %99 = call signext i8 @CTRL(i8 signext 65)
  %100 = load i32, i32* @tui_rl_switch_mode, align 4
  %101 = load i64, i64* @emacs_ctlx_keymap, align 8
  %102 = call i32 @rl_bind_key_in_map(i8 signext %99, i32 %100, i64 %101)
  %103 = call signext i8 @CTRL(i8 signext 65)
  %104 = load i32, i32* @tui_rl_switch_mode, align 4
  %105 = load i64, i64* %2, align 8
  %106 = call i32 @rl_bind_key_in_map(i8 signext %103, i32 %104, i64 %105)
  %107 = load i32, i32* @tui_rl_delete_other_windows, align 4
  %108 = load i64, i64* @emacs_ctlx_keymap, align 8
  %109 = call i32 @rl_bind_key_in_map(i8 signext 49, i32 %107, i64 %108)
  %110 = load i32, i32* @tui_rl_delete_other_windows, align 4
  %111 = load i64, i64* %2, align 8
  %112 = call i32 @rl_bind_key_in_map(i8 signext 49, i32 %110, i64 %111)
  %113 = load i32, i32* @tui_rl_change_windows, align 4
  %114 = load i64, i64* @emacs_ctlx_keymap, align 8
  %115 = call i32 @rl_bind_key_in_map(i8 signext 50, i32 %113, i64 %114)
  %116 = load i32, i32* @tui_rl_change_windows, align 4
  %117 = load i64, i64* %2, align 8
  %118 = call i32 @rl_bind_key_in_map(i8 signext 50, i32 %116, i64 %117)
  %119 = load i32, i32* @tui_rl_other_window, align 4
  %120 = load i64, i64* @emacs_ctlx_keymap, align 8
  %121 = call i32 @rl_bind_key_in_map(i8 signext 111, i32 %119, i64 %120)
  %122 = load i32, i32* @tui_rl_other_window, align 4
  %123 = load i64, i64* %2, align 8
  %124 = call i32 @rl_bind_key_in_map(i8 signext 111, i32 %122, i64 %123)
  %125 = load i32, i32* @tui_rl_next_keymap, align 4
  %126 = load i64, i64* @tui_keymap, align 8
  %127 = call i32 @rl_bind_key_in_map(i8 signext 113, i32 %125, i64 %126)
  %128 = load i32, i32* @tui_rl_next_keymap, align 4
  %129 = load i64, i64* @emacs_ctlx_keymap, align 8
  %130 = call i32 @rl_bind_key_in_map(i8 signext 115, i32 %128, i64 %129)
  %131 = load i32, i32* @tui_rl_next_keymap, align 4
  %132 = load i64, i64* %2, align 8
  %133 = call i32 @rl_bind_key_in_map(i8 signext 115, i32 %131, i64 %132)
  ret void
}

declare dso_local i32 @rl_initialize(...) #1

declare dso_local i32 @rl_add_defun(i8*, i32, i32) #1

declare dso_local i64 @rl_make_bare_keymap(...) #1

declare dso_local i32 @rl_get_keymap(...) #1

declare dso_local i32 @rl_bind_key_in_map(i8 signext, i32, i64) #1

declare dso_local i32 @rl_generic_bind(i32, i8*, i8*, i64) #1

declare dso_local signext i8 @CTRL(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
