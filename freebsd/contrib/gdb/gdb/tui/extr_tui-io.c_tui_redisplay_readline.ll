; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-io.c_tui_redisplay_readline.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-io.c_tui_redisplay_readline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32* }

@tui_current_key_mode = common dso_local global i64 0, align 8
@TUI_ONE_COMMAND_MODE = common dso_local global i64 0, align 8
@rl_end = common dso_local global i32 0, align 4
@TUI_SINGLE_KEY_MODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@tui_rl_saved_prompt = common dso_local global i8* null, align 8
@TUI_CMD_WIN = common dso_local global %struct.TYPE_8__* null, align 8
@rl_line_buffer = common dso_local global i64* null, align 8
@rl_point = common dso_local global i32 0, align 4
@RUBOUT = common dso_local global i8 0, align 1
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tui_redisplay_readline() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = load i64, i64* @tui_current_key_mode, align 8
  %13 = load i64, i64* @TUI_ONE_COMMAND_MODE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %0
  %16 = load i32, i32* @rl_end, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i64, i64* @TUI_SINGLE_KEY_MODE, align 8
  %20 = call i32 @tui_set_key_mode(i64 %19)
  br label %21

21:                                               ; preds = %18, %15, %0
  %22 = load i64, i64* @tui_current_key_mode, align 8
  %23 = load i64, i64* @TUI_SINGLE_KEY_MODE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %28

26:                                               ; preds = %21
  %27 = load i8*, i8** @tui_rl_saved_prompt, align 8
  store i8* %27, i8** %9, align 8
  br label %28

28:                                               ; preds = %26, %25
  store i32 -1, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** @TUI_CMD_WIN, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %8, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** @TUI_CMD_WIN, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %10, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @wmove(i32* %38, i32 %39, i32 0)
  store i32 0, i32* %1, align 4
  store i32 1, i32* %2, align 4
  store i32 0, i32* %7, align 4
  br label %41

41:                                               ; preds = %74, %28
  %42 = load i8*, i8** %9, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = load i8*, i8** %9, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 0
  br label %52

52:                                               ; preds = %44, %41
  %53 = phi i1 [ false, %41 ], [ %51, %44 ]
  br i1 %53, label %54, label %77

54:                                               ; preds = %52
  %55 = load i32*, i32** %8, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = call i32 @waddch(i32* %55, i8 zeroext %60)
  %62 = load i32*, i32** %8, align 8
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @getyx(i32* %62, i32 %63, i32 %64)
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* %1, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %54
  %70 = load i32, i32* %2, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %69, %54
  %73 = load i32, i32* %3, align 4
  store i32 %73, i32* %1, align 4
  br label %74

74:                                               ; preds = %72
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %41

77:                                               ; preds = %52
  store i32 0, i32* %7, align 4
  br label %78

78:                                               ; preds = %157, %77
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @rl_end, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %160

82:                                               ; preds = %78
  %83 = load i64*, i64** @rl_line_buffer, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = trunc i64 %87 to i8
  store i8 %88, i8* %11, align 1
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @rl_point, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %82
  %93 = load i32*, i32** %8, align 8
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @getyx(i32* %93, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %92, %82
  %98 = load i8, i8* %11, align 1
  %99 = call i64 @CTRL_CHAR(i8 zeroext %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %97
  %102 = load i8, i8* %11, align 1
  %103 = zext i8 %102 to i32
  %104 = load i8, i8* @RUBOUT, align 1
  %105 = zext i8 %104 to i32
  %106 = icmp eq i32 %103, %105
  br i1 %106, label %107, label %123

107:                                              ; preds = %101, %97
  %108 = load i32*, i32** %8, align 8
  %109 = call i32 @waddch(i32* %108, i8 zeroext 94)
  %110 = load i32*, i32** %8, align 8
  %111 = load i8, i8* %11, align 1
  %112 = call i64 @CTRL_CHAR(i8 zeroext %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %107
  %115 = load i8, i8* %11, align 1
  %116 = call signext i8 @UNCTRL(i8 zeroext %115)
  %117 = sext i8 %116 to i32
  br label %119

118:                                              ; preds = %107
  br label %119

119:                                              ; preds = %118, %114
  %120 = phi i32 [ %117, %114 ], [ 63, %118 ]
  %121 = trunc i32 %120 to i8
  %122 = call i32 @waddch(i32* %110, i8 zeroext %121)
  br label %127

123:                                              ; preds = %101
  %124 = load i32*, i32** %8, align 8
  %125 = load i8, i8* %11, align 1
  %126 = call i32 @waddch(i32* %124, i8 zeroext %125)
  br label %127

127:                                              ; preds = %123, %119
  %128 = load i8, i8* %11, align 1
  %129 = zext i8 %128 to i32
  %130 = icmp eq i32 %129, 10
  br i1 %130, label %131, label %144

131:                                              ; preds = %127
  %132 = load i32*, i32** %8, align 8
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** @TUI_CMD_WIN, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** @TUI_CMD_WIN, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @getyx(i32* %132, i32 %137, i32 %142)
  br label %144

144:                                              ; preds = %131, %127
  %145 = load i32*, i32** %8, align 8
  %146 = load i32, i32* %4, align 4
  %147 = load i32, i32* %3, align 4
  %148 = call i32 @getyx(i32* %145, i32 %146, i32 %147)
  %149 = load i32, i32* %3, align 4
  %150 = load i32, i32* %1, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %155

152:                                              ; preds = %144
  %153 = load i32, i32* %2, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %2, align 4
  br label %155

155:                                              ; preds = %152, %144
  %156 = load i32, i32* %3, align 4
  store i32 %156, i32* %1, align 4
  br label %157

157:                                              ; preds = %155
  %158 = load i32, i32* %7, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %7, align 4
  br label %78

160:                                              ; preds = %78
  %161 = load i32*, i32** %8, align 8
  %162 = call i32 @wclrtobot(i32* %161)
  %163 = load i32*, i32** %8, align 8
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** @TUI_CMD_WIN, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** @TUI_CMD_WIN, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @getyx(i32* %163, i32 %168, i32 %173)
  %175 = load i32, i32* %6, align 4
  %176 = icmp sge i32 %175, 0
  br i1 %176, label %177, label %192

177:                                              ; preds = %160
  %178 = load i32*, i32** %8, align 8
  %179 = load i32, i32* %6, align 4
  %180 = load i32, i32* %5, align 4
  %181 = call i32 @wmove(i32* %178, i32 %179, i32 %180)
  %182 = load i32, i32* %6, align 4
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** @TUI_CMD_WIN, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 2
  store i32 %182, i32* %186, align 8
  %187 = load i32, i32* %5, align 4
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** @TUI_CMD_WIN, align 8
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 1
  store i32 %187, i32* %191, align 4
  br label %192

192:                                              ; preds = %177, %160
  %193 = load i32, i32* %2, align 4
  %194 = sub nsw i32 %193, 1
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** @TUI_CMD_WIN, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = sub nsw i32 %199, %194
  store i32 %200, i32* %198, align 8
  %201 = load i32*, i32** %8, align 8
  %202 = call i32 @wrefresh(i32* %201)
  %203 = load i32, i32* @stdout, align 4
  %204 = call i32 @fflush(i32 %203)
  ret void
}

declare dso_local i32 @tui_set_key_mode(i64) #1

declare dso_local i32 @wmove(i32*, i32, i32) #1

declare dso_local i32 @waddch(i32*, i8 zeroext) #1

declare dso_local i32 @getyx(i32*, i32, i32) #1

declare dso_local i64 @CTRL_CHAR(i8 zeroext) #1

declare dso_local signext i8 @UNCTRL(i8 zeroext) #1

declare dso_local i32 @wclrtobot(i32*) #1

declare dso_local i32 @wrefresh(i32*) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
