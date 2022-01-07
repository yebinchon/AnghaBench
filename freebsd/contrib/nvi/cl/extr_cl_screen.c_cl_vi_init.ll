; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/cl/extr_cl_screen.c_cl_vi_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/cl/extr_cl_screen.c_cl_vi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32* }
%struct.TYPE_18__ = type { %struct.TYPE_19__, %struct.TYPE_16__, i32 }
%struct.TYPE_19__ = type { i32, i8**, i32 }
%struct.TYPE_16__ = type { i32 }

@CL_SCR_VI_INIT = common dso_local global i32 0, align 4
@CL_STDIN_TTY = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@M_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"016|Vi's standard input and output must be a terminal\00", align 1
@O_TERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"LINES\00", align 1
@O_LINES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"COLUMNS\00", align 1
@O_COLUMNS = common dso_local global i32 0, align 4
@cur_term = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@M_SYSERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"%s: unknown terminal type\00", align 1
@stdscr = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@TI_SENT = common dso_local global i32 0, align 4
@SIGTSTP = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"tcgetattr\00", align 1
@IXON = common dso_local global i32 0, align 4
@IXOFF = common dso_local global i32 0, align 4
@ISIG = common dso_local global i32 0, align 4
@_POSIX_VDISABLE = common dso_local global i8* null, align 8
@VQUIT = common dso_local global i64 0, align 8
@VSUSP = common dso_local global i64 0, align 8
@TCSASOFT = common dso_local global i32 0, align 4
@TCSADRAIN = common dso_local global i32 0, align 4
@EINTR = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [10 x i8] c"tcsetattr\00", align 1
@VDISCARD = common dso_local global i64 0, align 8
@VDSUSP = common dso_local global i64 0, align 8
@VLNEXT = common dso_local global i64 0, align 8
@VSTATUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*)* @cl_vi_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cl_vi_init(%struct.TYPE_17__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %5, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %14 = call %struct.TYPE_18__* @CLP(%struct.TYPE_17__* %13)
  store %struct.TYPE_18__* %14, %struct.TYPE_18__** %4, align 8
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %16 = load i32, i32* @CL_SCR_VI_INIT, align 4
  %17 = call i64 @F_ISSET(%struct.TYPE_18__* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %179

20:                                               ; preds = %1
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %22 = load i32, i32* @CL_STDIN_TTY, align 4
  %23 = call i64 @F_ISSET(%struct.TYPE_18__* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32, i32* @STDOUT_FILENO, align 4
  %27 = call i32 @isatty(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25, %20
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %31 = load i32, i32* @M_ERR, align 4
  %32 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @msgq(%struct.TYPE_17__* %30, i32 %31, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %203

33:                                               ; preds = %25
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %35 = load i32, i32* @O_TERM, align 4
  %36 = call i64 @opts_empty(%struct.TYPE_17__* %34, i32 %35, i32 0)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 1, i32* %2, align 4
  br label %203

39:                                               ; preds = %33
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %41 = load i32, i32* @O_TERM, align 4
  %42 = call i8* @O_STR(%struct.TYPE_17__* %40, i32 %41)
  store i8* %42, i8** %9, align 8
  %43 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %43, i8** %8, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = call i32 @cl_putenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %44, i32 0)
  %46 = call i8* @getenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i8* %46, i8** %7, align 8
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %48 = load i32, i32* @O_LINES, align 4
  %49 = call i64 @O_VAL(%struct.TYPE_17__* %47, i32 %48)
  %50 = trunc i64 %49 to i32
  %51 = call i32 @cl_putenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* null, i32 %50)
  %52 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i8* %52, i8** %6, align 8
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %54 = load i32, i32* @O_COLUMNS, align 4
  %55 = call i64 @O_VAL(%struct.TYPE_17__* %53, i32 %54)
  %56 = trunc i64 %55 to i32
  %57 = call i32 @cl_putenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* null, i32 %56)
  %58 = load i32, i32* @cur_term, align 4
  %59 = call i32 @del_curterm(i32 %58)
  store i64 0, i64* @errno, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = load i32, i32* @stdout, align 4
  %62 = load i32, i32* @stdin, align 4
  %63 = call i32* @newterm(i8* %60, i32 %61, i32 %62)
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %79

65:                                               ; preds = %39
  %66 = load i64, i64* @errno, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %70 = load i32, i32* @M_SYSERR, align 4
  %71 = load i8*, i8** %9, align 8
  %72 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @msgq(%struct.TYPE_17__* %69, i32 %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %71)
  br label %78

73:                                               ; preds = %65
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %75 = load i32, i32* @M_ERR, align 4
  %76 = load i8*, i8** %9, align 8
  %77 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @msgq(%struct.TYPE_17__* %74, i32 %75, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* %76)
  br label %78

78:                                               ; preds = %73, %68
  store i32 1, i32* %2, align 4
  br label %203

79:                                               ; preds = %39
  %80 = load i8*, i8** %8, align 8
  %81 = icmp eq i8* %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = call i32 @unsetenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82, %79
  %85 = load i8*, i8** %7, align 8
  %86 = icmp eq i8* %85, null
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = call i32 @unsetenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %84
  %90 = load i8*, i8** %6, align 8
  %91 = icmp eq i8* %90, null
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = call i32 @unsetenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92, %89
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %99 = call i32 @sig_init(i32* %97, %struct.TYPE_17__* %98)
  %100 = call i32 (...) @noecho()
  %101 = call i32 (...) @nonl()
  %102 = call i32 (...) @raw()
  %103 = load i32, i32* @stdscr, align 4
  %104 = call i32 @idlok(i32 %103, i32 1)
  %105 = load i32, i32* @stdscr, align 4
  %106 = load i32, i32* @TRUE, align 4
  %107 = call i32 @keypad(i32 %105, i32 %106)
  %108 = load i32, i32* @TI_SENT, align 4
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* @SIGTSTP, align 4
  %112 = load i32, i32* @SIG_DFL, align 4
  %113 = call i32 @signal(i32 %111, i32 %112)
  %114 = load i32, i32* @STDIN_FILENO, align 4
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 0
  %117 = call i64 @tcgetattr(i32 %114, %struct.TYPE_19__* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %94
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %121 = load i32, i32* @M_SYSERR, align 4
  %122 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @msgq(%struct.TYPE_17__* %120, i32 %121, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  br label %197

123:                                              ; preds = %94
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @IXON, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %123
  %132 = load i32, i32* @IXON, align 4
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = or i32 %136, %132
  store i32 %137, i32* %135, align 8
  br label %138

138:                                              ; preds = %131, %123
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @IXOFF, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %153

146:                                              ; preds = %138
  %147 = load i32, i32* @IXOFF, align 4
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = or i32 %151, %147
  store i32 %152, i32* %150, align 8
  br label %153

153:                                              ; preds = %146, %138
  %154 = load i32, i32* @ISIG, align 4
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = or i32 %158, %154
  store i32 %159, i32* %157, align 8
  %160 = load i8*, i8** @_POSIX_VDISABLE, align 8
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 1
  %164 = load i8**, i8*** %163, align 8
  %165 = load i64, i64* @VQUIT, align 8
  %166 = getelementptr inbounds i8*, i8** %164, i64 %165
  store i8* %160, i8** %166, align 8
  %167 = load i8*, i8** @_POSIX_VDISABLE, align 8
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %169, i32 0, i32 1
  %171 = load i8**, i8*** %170, align 8
  %172 = load i64, i64* @VSUSP, align 8
  %173 = getelementptr inbounds i8*, i8** %171, i64 %172
  store i8* %167, i8** %173, align 8
  %174 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %175 = call i64 @cl_term_init(%struct.TYPE_17__* %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %153
  br label %197

178:                                              ; preds = %153
  br label %179

179:                                              ; preds = %192, %178, %19
  %180 = load i32, i32* @STDIN_FILENO, align 4
  %181 = load i32, i32* @TCSASOFT, align 4
  %182 = load i32, i32* @TCSADRAIN, align 4
  %183 = or i32 %181, %182
  %184 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %184, i32 0, i32 0
  %186 = call i64 @tcsetattr(i32 %180, i32 %183, %struct.TYPE_19__* %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %202

188:                                              ; preds = %179
  %189 = load i64, i64* @errno, align 8
  %190 = load i64, i64* @EINTR, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %193

192:                                              ; preds = %188
  br label %179

193:                                              ; preds = %188
  %194 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %195 = load i32, i32* @M_SYSERR, align 4
  %196 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @msgq(%struct.TYPE_17__* %194, i32 %195, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  br label %197

197:                                              ; preds = %193, %177, %119
  %198 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %198, i32 0, i32 0
  %200 = load i32*, i32** %199, align 8
  %201 = call i32 @cl_vi_end(i32* %200)
  store i32 1, i32* %2, align 4
  br label %203

202:                                              ; preds = %179
  store i32 0, i32* %2, align 4
  br label %203

203:                                              ; preds = %202, %197, %78, %38, %29
  %204 = load i32, i32* %2, align 4
  ret i32 %204
}

declare dso_local %struct.TYPE_18__* @CLP(%struct.TYPE_17__*) #1

declare dso_local i64 @F_ISSET(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @isatty(i32) #1

declare dso_local i32 @msgq(%struct.TYPE_17__*, i32, i8*, ...) #1

declare dso_local i64 @opts_empty(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i8* @O_STR(%struct.TYPE_17__*, i32) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @cl_putenv(i8*, i8*, i32) #1

declare dso_local i64 @O_VAL(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @del_curterm(i32) #1

declare dso_local i32* @newterm(i8*, i32, i32) #1

declare dso_local i32 @unsetenv(i8*) #1

declare dso_local i32 @sig_init(i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @noecho(...) #1

declare dso_local i32 @nonl(...) #1

declare dso_local i32 @raw(...) #1

declare dso_local i32 @idlok(i32, i32) #1

declare dso_local i32 @keypad(i32, i32) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i64 @tcgetattr(i32, %struct.TYPE_19__*) #1

declare dso_local i64 @cl_term_init(%struct.TYPE_17__*) #1

declare dso_local i64 @tcsetattr(i32, i32, %struct.TYPE_19__*) #1

declare dso_local i32 @cl_vi_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
