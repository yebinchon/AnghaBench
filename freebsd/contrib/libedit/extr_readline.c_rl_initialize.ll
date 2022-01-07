; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libedit/extr_readline.c_rl_initialize.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libedit/extr_readline.c_rl_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termios = type { i32 }

@e = common dso_local global i32* null, align 8
@h = common dso_local global i32* null, align 8
@rl_instream = common dso_local global i64 0, align 8
@stdin = common dso_local global i64 0, align 8
@rl_outstream = common dso_local global i64 0, align 8
@stdout = common dso_local global i64 0, align 8
@ECHO = common dso_local global i32 0, align 4
@rl_readline_name = common dso_local global i32 0, align 4
@stderr = common dso_local global i64 0, align 8
@NO_RESET = common dso_local global i32 0, align 4
@EL_EDITMODE = common dso_local global i32 0, align 4
@H_SETSIZE = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@history_length = common dso_local global i64 0, align 8
@max_input_history = common dso_local global i32 0, align 4
@EL_HIST = common dso_local global i32 0, align 4
@EL_RESIZE = common dso_local global i32 0, align 4
@rl_line_buffer = common dso_local global i32 0, align 4
@rl_getc_function = common dso_local global i64 0, align 8
@EL_GETCFN = common dso_local global i32 0, align 4
@_getc_function = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EL_PROMPT_ESC = common dso_local global i32 0, align 4
@_get_prompt = common dso_local global i32 0, align 4
@RL_PROMPT_START_IGNORE = common dso_local global i32 0, align 4
@EL_SIGNAL = common dso_local global i32 0, align 4
@rl_catch_signals = common dso_local global i32 0, align 4
@EL_EDITOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"emacs\00", align 1
@rl_terminal_name = common dso_local global i32* null, align 8
@EL_TERMINAL = common dso_local global i32 0, align 4
@EL_ADDFN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"rl_complete\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"ReadLine compatible completion function\00", align 1
@_el_rl_complete = common dso_local global i32* null, align 8
@EL_BIND = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"^I\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"rl_tstp\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"ReadLine compatible suspend function\00", align 1
@_el_rl_tstp = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [3 x i8] c"^Z\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"^R\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"em-inc-search-prev\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"\\e[1~\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"ed-move-to-beg\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"\\e[4~\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"ed-move-to-end\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"\\e[7~\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"\\e[8~\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"\\e[H\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"\\e[F\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"\\e[3~\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"ed-delete-next-char\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"\\e[2~\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"ed-quoted-insert\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"\\e[1;5C\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"em-next-word\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"\\e[1;5D\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"ed-prev-word\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"\\e[5C\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"\\e[5D\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"\\e\\e[C\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"\\e\\e[D\00", align 1
@TCSADRAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rl_initialize() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.termios, align 4
  store i32 1, i32* %3, align 4
  %5 = load i32*, i32** @e, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load i32*, i32** @e, align 8
  %9 = call i32 @el_end(i32* %8)
  br label %10

10:                                               ; preds = %7, %0
  %11 = load i32*, i32** @h, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i32*, i32** @h, align 8
  %15 = call i32 @history_end(i32* %14)
  br label %16

16:                                               ; preds = %13, %10
  %17 = load i64, i64* @rl_instream, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = load i64, i64* @stdin, align 8
  store i64 %20, i64* @rl_instream, align 8
  br label %21

21:                                               ; preds = %19, %16
  %22 = load i64, i64* @rl_outstream, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = load i64, i64* @stdout, align 8
  store i64 %25, i64* @rl_outstream, align 8
  br label %26

26:                                               ; preds = %24, %21
  %27 = load i64, i64* @rl_instream, align 8
  %28 = call i32 @fileno(i64 %27)
  %29 = call i32 @tcgetattr(i32 %28, %struct.termios* %4)
  %30 = icmp ne i32 %29, -1
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.termios, %struct.termios* %4, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @ECHO, align 4
  %35 = and i32 %33, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %31, %26
  %39 = load i32, i32* @rl_readline_name, align 4
  %40 = load i64, i64* @rl_instream, align 8
  %41 = load i64, i64* @rl_outstream, align 8
  %42 = load i64, i64* @stderr, align 8
  %43 = load i64, i64* @rl_instream, align 8
  %44 = call i32 @fileno(i64 %43)
  %45 = load i64, i64* @rl_outstream, align 8
  %46 = call i32 @fileno(i64 %45)
  %47 = load i64, i64* @stderr, align 8
  %48 = call i32 @fileno(i64 %47)
  %49 = load i32, i32* @NO_RESET, align 4
  %50 = call i32* @el_init_internal(i32 %39, i64 %40, i64 %41, i64 %42, i32 %44, i32 %46, i32 %48, i32 %49)
  store i32* %50, i32** @e, align 8
  %51 = load i32, i32* %3, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %38
  %54 = load i32*, i32** @e, align 8
  %55 = load i32, i32* @EL_EDITMODE, align 4
  %56 = call i32 (i32*, i32, ...) @el_set(i32* %54, i32 %55, i32 0)
  br label %57

57:                                               ; preds = %53, %38
  %58 = call i32* (...) @history_init()
  store i32* %58, i32** @h, align 8
  %59 = load i32*, i32** @e, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i32*, i32** @h, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %61, %57
  store i32 -1, i32* %1, align 4
  br label %185

65:                                               ; preds = %61
  %66 = load i32*, i32** @h, align 8
  %67 = load i32, i32* @H_SETSIZE, align 4
  %68 = load i32, i32* @INT_MAX, align 4
  %69 = call i32 @history(i32* %66, i32* %2, i32 %67, i32 %68)
  store i64 0, i64* @history_length, align 8
  %70 = load i32, i32* @INT_MAX, align 4
  store i32 %70, i32* @max_input_history, align 4
  %71 = load i32*, i32** @e, align 8
  %72 = load i32, i32* @EL_HIST, align 4
  %73 = load i32*, i32** @h, align 8
  %74 = call i32 (i32*, i32, ...) @el_set(i32* %71, i32 %72, i32 (i32*, i32*, i32, i32)* @history, i32* %73)
  %75 = load i32*, i32** @e, align 8
  %76 = load i32, i32* @EL_RESIZE, align 4
  %77 = call i32 (i32*, i32, ...) @el_set(i32* %75, i32 %76, i32 (i32*, i32*)* @_resize_fun, i32* @rl_line_buffer)
  %78 = load i64, i64* @rl_getc_function, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %65
  %81 = load i32*, i32** @e, align 8
  %82 = load i32, i32* @EL_GETCFN, align 4
  %83 = load i32, i32* @_getc_function, align 4
  %84 = call i32 (i32*, i32, ...) @el_set(i32* %81, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %80, %65
  %86 = call i32 @rl_set_prompt(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %87 = icmp eq i32 %86, -1
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = load i32*, i32** @h, align 8
  %90 = call i32 @history_end(i32* %89)
  %91 = load i32*, i32** @e, align 8
  %92 = call i32 @el_end(i32* %91)
  store i32 -1, i32* %1, align 4
  br label %185

93:                                               ; preds = %85
  %94 = load i32*, i32** @e, align 8
  %95 = load i32, i32* @EL_PROMPT_ESC, align 4
  %96 = load i32, i32* @_get_prompt, align 4
  %97 = load i32, i32* @RL_PROMPT_START_IGNORE, align 4
  %98 = call i32 (i32*, i32, ...) @el_set(i32* %94, i32 %95, i32 %96, i32 %97)
  %99 = load i32*, i32** @e, align 8
  %100 = load i32, i32* @EL_SIGNAL, align 4
  %101 = load i32, i32* @rl_catch_signals, align 4
  %102 = call i32 (i32*, i32, ...) @el_set(i32* %99, i32 %100, i32 %101)
  %103 = load i32*, i32** @e, align 8
  %104 = load i32, i32* @EL_EDITOR, align 4
  %105 = call i32 (i32*, i32, ...) @el_set(i32* %103, i32 %104, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %106 = load i32*, i32** @rl_terminal_name, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %113

108:                                              ; preds = %93
  %109 = load i32*, i32** @e, align 8
  %110 = load i32, i32* @EL_TERMINAL, align 4
  %111 = load i32*, i32** @rl_terminal_name, align 8
  %112 = call i32 (i32*, i32, ...) @el_set(i32* %109, i32 %110, i32* %111)
  br label %117

113:                                              ; preds = %93
  %114 = load i32*, i32** @e, align 8
  %115 = load i32, i32* @EL_TERMINAL, align 4
  %116 = call i32 @el_get(i32* %114, i32 %115, i32** @rl_terminal_name)
  br label %117

117:                                              ; preds = %113, %108
  %118 = load i32*, i32** @e, align 8
  %119 = load i32, i32* @EL_ADDFN, align 4
  %120 = load i32*, i32** @_el_rl_complete, align 8
  %121 = call i32 (i32*, i32, ...) @el_set(i32* %118, i32 %119, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32* %120)
  %122 = load i32*, i32** @e, align 8
  %123 = load i32, i32* @EL_BIND, align 4
  %124 = call i32 (i32*, i32, ...) @el_set(i32* %122, i32 %123, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* null)
  %125 = load i32*, i32** @e, align 8
  %126 = load i32, i32* @EL_ADDFN, align 4
  %127 = load i32*, i32** @_el_rl_tstp, align 8
  %128 = call i32 (i32*, i32, ...) @el_set(i32* %125, i32 %126, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32* %127)
  %129 = load i32*, i32** @e, align 8
  %130 = load i32, i32* @EL_BIND, align 4
  %131 = call i32 (i32*, i32, ...) @el_set(i32* %129, i32 %130, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* null)
  %132 = load i32*, i32** @e, align 8
  %133 = load i32, i32* @EL_BIND, align 4
  %134 = call i32 (i32*, i32, ...) @el_set(i32* %132, i32 %133, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i8* null)
  %135 = load i32*, i32** @e, align 8
  %136 = load i32, i32* @EL_BIND, align 4
  %137 = call i32 (i32*, i32, ...) @el_set(i32* %135, i32 %136, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i8* null)
  %138 = load i32*, i32** @e, align 8
  %139 = load i32, i32* @EL_BIND, align 4
  %140 = call i32 (i32*, i32, ...) @el_set(i32* %138, i32 %139, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i8* null)
  %141 = load i32*, i32** @e, align 8
  %142 = load i32, i32* @EL_BIND, align 4
  %143 = call i32 (i32*, i32, ...) @el_set(i32* %141, i32 %142, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i8* null)
  %144 = load i32*, i32** @e, align 8
  %145 = load i32, i32* @EL_BIND, align 4
  %146 = call i32 (i32*, i32, ...) @el_set(i32* %144, i32 %145, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i8* null)
  %147 = load i32*, i32** @e, align 8
  %148 = load i32, i32* @EL_BIND, align 4
  %149 = call i32 (i32*, i32, ...) @el_set(i32* %147, i32 %148, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i8* null)
  %150 = load i32*, i32** @e, align 8
  %151 = load i32, i32* @EL_BIND, align 4
  %152 = call i32 (i32*, i32, ...) @el_set(i32* %150, i32 %151, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i8* null)
  %153 = load i32*, i32** @e, align 8
  %154 = load i32, i32* @EL_BIND, align 4
  %155 = call i32 (i32*, i32, ...) @el_set(i32* %153, i32 %154, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i8* null)
  %156 = load i32*, i32** @e, align 8
  %157 = load i32, i32* @EL_BIND, align 4
  %158 = call i32 (i32*, i32, ...) @el_set(i32* %156, i32 %157, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0), i8* null)
  %159 = load i32*, i32** @e, align 8
  %160 = load i32, i32* @EL_BIND, align 4
  %161 = call i32 (i32*, i32, ...) @el_set(i32* %159, i32 %160, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0), i8* null)
  %162 = load i32*, i32** @e, align 8
  %163 = load i32, i32* @EL_BIND, align 4
  %164 = call i32 (i32*, i32, ...) @el_set(i32* %162, i32 %163, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0), i8* null)
  %165 = load i32*, i32** @e, align 8
  %166 = load i32, i32* @EL_BIND, align 4
  %167 = call i32 (i32*, i32, ...) @el_set(i32* %165, i32 %166, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0), i8* null)
  %168 = load i32*, i32** @e, align 8
  %169 = load i32, i32* @EL_BIND, align 4
  %170 = call i32 (i32*, i32, ...) @el_set(i32* %168, i32 %169, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0), i8* null)
  %171 = load i32*, i32** @e, align 8
  %172 = load i32, i32* @EL_BIND, align 4
  %173 = call i32 (i32*, i32, ...) @el_set(i32* %171, i32 %172, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0), i8* null)
  %174 = load i32*, i32** @e, align 8
  %175 = load i32, i32* @EL_BIND, align 4
  %176 = call i32 (i32*, i32, ...) @el_set(i32* %174, i32 %175, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0), i8* null)
  %177 = load i32*, i32** @e, align 8
  %178 = call i32 @el_source(i32* %177, i32* null)
  %179 = load i32*, i32** @e, align 8
  %180 = call i32 @_resize_fun(i32* %179, i32* @rl_line_buffer)
  %181 = call i32 (...) @_rl_update_pos()
  %182 = load i32*, i32** @e, align 8
  %183 = load i32, i32* @TCSADRAIN, align 4
  %184 = call i32 @tty_end(i32* %182, i32 %183)
  store i32 0, i32* %1, align 4
  br label %185

185:                                              ; preds = %117, %88, %64
  %186 = load i32, i32* %1, align 4
  ret i32 %186
}

declare dso_local i32 @el_end(i32*) #1

declare dso_local i32 @history_end(i32*) #1

declare dso_local i32 @tcgetattr(i32, %struct.termios*) #1

declare dso_local i32 @fileno(i64) #1

declare dso_local i32* @el_init_internal(i32, i64, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @el_set(i32*, i32, ...) #1

declare dso_local i32* @history_init(...) #1

declare dso_local i32 @history(i32*, i32*, i32, i32) #1

declare dso_local i32 @_resize_fun(i32*, i32*) #1

declare dso_local i32 @rl_set_prompt(i8*) #1

declare dso_local i32 @el_get(i32*, i32, i32**) #1

declare dso_local i32 @el_source(i32*, i32*) #1

declare dso_local i32 @_rl_update_pos(...) #1

declare dso_local i32 @tty_end(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
