; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-io.c_tui_getc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-io.c_tui_getc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i32* }

@TUI_CMD_WIN = common dso_local global %struct.TYPE_8__* null, align 8
@rl_end = common dso_local global i64 0, align 8
@KEY_BACKSPACE = common dso_local global i32 0, align 4
@GDB_READABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tui_getc(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** @TUI_CMD_WIN, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  store i32* %9, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @wgetch(i32* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @tui_handle_resize_during_io(i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %14, 10
  br i1 %15, label %16, label %49

16:                                               ; preds = %1
  %17 = load i64, i64* @rl_end, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %16
  %20 = load i32*, i32** %5, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** @TUI_CMD_WIN, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @wmove(i32* %20, i32 %25, i64 0)
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @wclrtoeol(i32* %27)
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @wrefresh(i32* %29)
  %31 = call i32 @napms(i32 20)
  br label %48

32:                                               ; preds = %16
  %33 = load i32*, i32** %5, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** @TUI_CMD_WIN, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** @TUI_CMD_WIN, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @wmove(i32* %33, i32 %38, i64 %43)
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @waddch(i32* %45, i32 %46)
  br label %48

48:                                               ; preds = %32, %19
  br label %49

49:                                               ; preds = %48, %1
  %50 = load i32, i32* %4, align 4
  %51 = call i64 @key_is_command_char(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @tui_dispatch_ctrl_char(i32 %54)
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %53, %49
  %57 = load i32, i32* %4, align 4
  %58 = icmp eq i32 %57, 10
  br i1 %58, label %65, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %4, align 4
  %61 = icmp eq i32 %60, 13
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %4, align 4
  %64 = icmp eq i32 %63, 12
  br i1 %64, label %65, label %70

65:                                               ; preds = %62, %59, %56
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** @TUI_CMD_WIN, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  store i64 0, i64* %69, align 8
  br label %70

70:                                               ; preds = %65, %62
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @KEY_BACKSPACE, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  store i32 8, i32* %2, align 4
  br label %77

75:                                               ; preds = %70
  %76 = load i32, i32* %4, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %75, %74
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @wgetch(i32*) #1

declare dso_local i32 @tui_handle_resize_during_io(i32) #1

declare dso_local i32 @wmove(i32*, i32, i64) #1

declare dso_local i32 @wclrtoeol(i32*) #1

declare dso_local i32 @wrefresh(i32*) #1

declare dso_local i32 @napms(i32) #1

declare dso_local i32 @waddch(i32*, i32) #1

declare dso_local i64 @key_is_command_char(i32) #1

declare dso_local i32 @tui_dispatch_ctrl_char(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
