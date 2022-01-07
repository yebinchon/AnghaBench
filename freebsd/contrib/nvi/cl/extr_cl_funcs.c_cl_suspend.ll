; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/cl/extr_cl_funcs.c_cl_suspend.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/cl/extr_cl_funcs.c_cl_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__*, i64, %struct.termios, i32* }
%struct.TYPE_14__ = type { i32* }
%struct.termios = type { i32 }

@stdscr = common dso_local global i32* null, align 8
@SC_EX = common dso_local global i32 0, align 4
@CL_STDIN_TTY = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@TCSASOFT = common dso_local global i32 0, align 4
@TCSADRAIN = common dso_local global i32 0, align 4
@SIGTSTP = common dso_local global i32 0, align 4
@LINES = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@CL_SCR_EX_INIT = common dso_local global i32 0, align 4
@CL_SCR_VI_INIT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@CL_SIGWINCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cl_suspend(%struct.TYPE_15__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.termios, align 4
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %9, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %17 = call %struct.TYPE_15__* @CLP(%struct.TYPE_15__* %16)
  store %struct.TYPE_15__* %17, %struct.TYPE_15__** %7, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %19 = call i32* @CLSP(%struct.TYPE_15__* %18)
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %23 = call i32* @CLSP(%struct.TYPE_15__* %22)
  br label %26

24:                                               ; preds = %2
  %25 = load i32*, i32** @stdscr, align 8
  br label %26

26:                                               ; preds = %24, %21
  %27 = phi i32* [ %23, %21 ], [ %25, %24 ]
  store i32* %27, i32** %8, align 8
  %28 = load i32*, i32** %5, align 8
  store i32 1, i32* %28, align 4
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %30 = load i32, i32* @SC_EX, align 4
  %31 = call i64 @F_ISSET(%struct.TYPE_15__* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %62

33:                                               ; preds = %26
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %35 = load i32, i32* @CL_STDIN_TTY, align 4
  %36 = call i64 @F_ISSET(%struct.TYPE_15__* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %33
  %39 = load i32, i32* @STDIN_FILENO, align 4
  %40 = call i32 @tcgetattr(i32 %39, %struct.termios* %6)
  %41 = load i32, i32* @STDIN_FILENO, align 4
  %42 = load i32, i32* @TCSASOFT, align 4
  %43 = load i32, i32* @TCSADRAIN, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 2
  %47 = call i32 @tcsetattr(i32 %41, i32 %44, %struct.termios* %46)
  br label %48

48:                                               ; preds = %38, %33
  %49 = load i32, i32* @SIGTSTP, align 4
  %50 = call i32 @kill(i32 0, i32 %49)
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %52 = load i32, i32* @CL_STDIN_TTY, align 4
  %53 = call i64 @F_ISSET(%struct.TYPE_15__* %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %48
  %56 = load i32, i32* @STDIN_FILENO, align 4
  %57 = load i32, i32* @TCSASOFT, align 4
  %58 = load i32, i32* @TCSADRAIN, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @tcsetattr(i32 %56, i32 %59, %struct.termios* %6)
  br label %61

61:                                               ; preds = %55, %48
  store i32 0, i32* %3, align 4
  br label %143

62:                                               ; preds = %26
  %63 = load i32*, i32** %8, align 8
  %64 = load i64, i64* %10, align 8
  %65 = load i64, i64* %11, align 8
  %66 = call i32 @getyx(i32* %63, i64 %64, i64 %65)
  %67 = load i32*, i32** %8, align 8
  %68 = load i64, i64* @LINES, align 8
  %69 = sub i64 %68, 1
  %70 = call i32 @wmove(i32* %67, i64 %69, i64 0)
  %71 = load i32*, i32** %8, align 8
  %72 = call i32 @wrefresh(i32* %71)
  %73 = load i32, i32* @STDIN_FILENO, align 4
  %74 = call i32 @tcgetattr(i32 %73, %struct.termios* %6)
  %75 = load i32*, i32** @stdscr, align 8
  %76 = load i32, i32* @FALSE, align 4
  %77 = call i32 @keypad(i32* %75, i32 %76)
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %79 = call i32 @cl_rename(%struct.TYPE_15__* %78, i32* null, i32 0)
  %80 = call i32 (...) @endwin()
  %81 = load i32, i32* @STDIN_FILENO, align 4
  %82 = load i32, i32* @TCSADRAIN, align 4
  %83 = load i32, i32* @TCSASOFT, align 4
  %84 = or i32 %82, %83
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 2
  %87 = call i32 @tcsetattr(i32 %81, i32 %84, %struct.termios* %86)
  %88 = load i32, i32* @SIGTSTP, align 4
  %89 = call i32 @kill(i32 0, i32 %88)
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %62
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %96 = load i32, i32* @CL_SCR_EX_INIT, align 4
  %97 = load i32, i32* @CL_SCR_VI_INIT, align 4
  %98 = or i32 %96, %97
  %99 = call i32 @F_CLR(%struct.TYPE_15__* %95, i32 %98)
  store i32 0, i32* %3, align 4
  br label %143

100:                                              ; preds = %62
  %101 = load i32*, i32** %8, align 8
  %102 = call i32 @wrefresh(i32* %101)
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %104 = load i32, i32* @CL_STDIN_TTY, align 4
  %105 = call i64 @F_ISSET(%struct.TYPE_15__* %103, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %100
  %108 = load i32, i32* @STDIN_FILENO, align 4
  %109 = load i32, i32* @TCSASOFT, align 4
  %110 = load i32, i32* @TCSADRAIN, align 4
  %111 = or i32 %109, %110
  %112 = call i32 @tcsetattr(i32 %108, i32 %111, %struct.termios* %6)
  br label %113

113:                                              ; preds = %107, %100
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = call i32 @cl_rename(%struct.TYPE_15__* %114, i32* %119, i32 1)
  %121 = load i32*, i32** @stdscr, align 8
  %122 = load i32, i32* @TRUE, align 4
  %123 = call i32 @keypad(i32* %121, i32 %122)
  %124 = load i32*, i32** %8, align 8
  %125 = load i64, i64* %10, align 8
  %126 = load i64, i64* %11, align 8
  %127 = call i32 @wmove(i32* %124, i64 %125, i64 %126)
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %129 = call i32 @cl_refresh(%struct.TYPE_15__* %128, i32 1)
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %131 = call i64 @cl_ssize(%struct.TYPE_15__* %130, i32 1, i32* null, i32* null, i32* %12)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %113
  store i32 1, i32* %3, align 4
  br label %143

134:                                              ; preds = %113
  %135 = load i32, i32* %12, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %134
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %139 = call %struct.TYPE_15__* @CLP(%struct.TYPE_15__* %138)
  %140 = load i32, i32* @CL_SIGWINCH, align 4
  %141 = call i32 @F_SET(%struct.TYPE_15__* %139, i32 %140)
  br label %142

142:                                              ; preds = %137, %134
  store i32 0, i32* %3, align 4
  br label %143

143:                                              ; preds = %142, %133, %94, %61
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local %struct.TYPE_15__* @CLP(%struct.TYPE_15__*) #1

declare dso_local i32* @CLSP(%struct.TYPE_15__*) #1

declare dso_local i64 @F_ISSET(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @tcgetattr(i32, %struct.termios*) #1

declare dso_local i32 @tcsetattr(i32, i32, %struct.termios*) #1

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @getyx(i32*, i64, i64) #1

declare dso_local i32 @wmove(i32*, i64, i64) #1

declare dso_local i32 @wrefresh(i32*) #1

declare dso_local i32 @keypad(i32*, i32) #1

declare dso_local i32 @cl_rename(%struct.TYPE_15__*, i32*, i32) #1

declare dso_local i32 @endwin(...) #1

declare dso_local i32 @F_CLR(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @cl_refresh(%struct.TYPE_15__*, i32) #1

declare dso_local i64 @cl_ssize(%struct.TYPE_15__*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @F_SET(%struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
