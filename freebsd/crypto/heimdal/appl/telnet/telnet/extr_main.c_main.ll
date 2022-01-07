; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@prompt = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"rlog\00", align 1
@_POSIX_VDISABLE = common dso_local global i8 0, align 1
@rlogin = common dso_local global i8 0, align 1
@autologin = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"78DEKLS:X:abcde:fFk:l:n:rxG\00", align 1
@eight = common dso_local global i32 0, align 4
@binary = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"DISPLAY\00", align 1
@escape = common dso_local global i8 0, align 1
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [49 x i8] c"%s: Warning: -S ignored, no parsetos() support.\0A\00", align 1
@skiprc = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [51 x i8] c"%s: Warning: -%c ignored, no Kerberos V5 support.\0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"%s: Warning: -k ignored, no Kerberos V4 support.\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"%s: Warning: -K ignored\0A\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"%s: Warning: -x ignored, no ENCRYPT support.\0A\00", align 1
@optind = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [3 x i8] c"-l\00", align 1
@toplevel = common dso_local global i32 0, align 4
@forward_option = common dso_local global i32 0, align 4
@wantencryption = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [7 x i8*], align 16
  %10 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i8**, i8*** %5, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 0
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @setprogname(i8* %13)
  %15 = call i32 (...) @tninit()
  %16 = call i32 (...) @TerminalSaveState()
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i8* @strrchr(i8* %19, i8 signext 47)
  store i8* %20, i8** @prompt, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i8*, i8** @prompt, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** @prompt, align 8
  br label %29

25:                                               ; preds = %2
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 0
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** @prompt, align 8
  br label %29

29:                                               ; preds = %25, %22
  store i8* null, i8** %7, align 8
  %30 = load i8*, i8** @prompt, align 8
  %31 = call i64 @strncmp(i8* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %37

34:                                               ; preds = %29
  %35 = load i8, i8* @_POSIX_VDISABLE, align 1
  %36 = sext i8 %35 to i32
  br label %37

37:                                               ; preds = %34, %33
  %38 = phi i32 [ 126, %33 ], [ %36, %34 ]
  %39 = trunc i32 %38 to i8
  store i8 %39, i8* @rlogin, align 1
  store i32 -1, i32* @autologin, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %42, label %51

42:                                               ; preds = %37
  %43 = load i8**, i8*** %5, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 1
  %45 = load i8*, i8** %44, align 8
  %46 = call i64 @strcmp(i8* %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = call i32 @print_version(i32* null)
  %50 = call i32 @exit(i32 0) #4
  unreachable

51:                                               ; preds = %42, %37
  %52 = load i32, i32* %4, align 4
  %53 = icmp eq i32 %52, 2
  br i1 %53, label %54, label %62

54:                                               ; preds = %51
  %55 = load i8**, i8*** %5, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 1
  %57 = load i8*, i8** %56, align 8
  %58 = call i64 @strcmp(i8* %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = call i32 @usage(i32 0)
  br label %62

62:                                               ; preds = %60, %54, %51
  br label %63

63:                                               ; preds = %126, %62
  %64 = load i32, i32* %4, align 4
  %65 = load i8**, i8*** %5, align 8
  %66 = call i32 @getopt(i32 %64, i8** %65, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  store i32 %66, i32* %6, align 4
  %67 = icmp ne i32 %66, -1
  br i1 %67, label %68, label %127

68:                                               ; preds = %63
  %69 = load i32, i32* %6, align 4
  switch i32 %69, label %124 [
    i32 56, label %70
    i32 55, label %71
    i32 98, label %72
    i32 68, label %73
    i32 69, label %80
    i32 75, label %82
    i32 76, label %83
    i32 83, label %86
    i32 88, label %90
    i32 97, label %91
    i32 99, label %92
    i32 100, label %93
    i32 101, label %94
    i32 102, label %97
    i32 70, label %97
    i32 71, label %97
    i32 107, label %102
    i32 108, label %106
    i32 110, label %115
    i32 114, label %118
    i32 120, label %119
    i32 63, label %123
  ]

70:                                               ; preds = %68
  store i32 3, i32* @eight, align 4
  br label %126

71:                                               ; preds = %68
  store i32 0, i32* @eight, align 4
  br label %126

72:                                               ; preds = %68
  store i32 3, i32* @binary, align 4
  br label %126

73:                                               ; preds = %68
  %74 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i8* %74, i8** %8, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i8*, i8** %8, align 8
  %78 = call i32 @env_define(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %77)
  br label %79

79:                                               ; preds = %76, %73
  br label %126

80:                                               ; preds = %68
  %81 = load i8, i8* @_POSIX_VDISABLE, align 1
  store i8 %81, i8* @escape, align 1
  store i8 %81, i8* @rlogin, align 1
  br label %126

82:                                               ; preds = %68
  br label %126

83:                                               ; preds = %68
  %84 = load i32, i32* @eight, align 4
  %85 = or i32 %84, 2
  store i32 %85, i32* @eight, align 4
  br label %126

86:                                               ; preds = %68
  %87 = load i32, i32* @stderr, align 4
  %88 = load i8*, i8** @prompt, align 8
  %89 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %87, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i8* %88)
  br label %126

90:                                               ; preds = %68
  br label %126

91:                                               ; preds = %68
  store i32 1, i32* @autologin, align 4
  br label %126

92:                                               ; preds = %68
  store i32 1, i32* @skiprc, align 4
  br label %126

93:                                               ; preds = %68
  store i32 1, i32* @debug, align 4
  br label %126

94:                                               ; preds = %68
  %95 = load i8*, i8** @optarg, align 8
  %96 = call i32 @set_escape_char(i8* %95)
  br label %126

97:                                               ; preds = %68, %68, %68
  %98 = load i32, i32* @stderr, align 4
  %99 = load i8*, i8** @prompt, align 8
  %100 = load i32, i32* %6, align 4
  %101 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %98, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i8* %99, i32 %100)
  br label %126

102:                                              ; preds = %68
  %103 = load i32, i32* @stderr, align 4
  %104 = load i8*, i8** @prompt, align 8
  %105 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %103, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i8* %104)
  br label %126

106:                                              ; preds = %68
  %107 = load i32, i32* @autologin, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %106
  %110 = load i32, i32* @stderr, align 4
  %111 = load i8*, i8** @prompt, align 8
  %112 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %110, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i8* %111)
  store i32 -1, i32* @autologin, align 4
  br label %113

113:                                              ; preds = %109, %106
  %114 = load i8*, i8** @optarg, align 8
  store i8* %114, i8** %7, align 8
  br label %126

115:                                              ; preds = %68
  %116 = load i8*, i8** @optarg, align 8
  %117 = call i32 @SetNetTrace(i8* %116)
  br label %126

118:                                              ; preds = %68
  store i8 126, i8* @rlogin, align 1
  br label %126

119:                                              ; preds = %68
  %120 = load i32, i32* @stderr, align 4
  %121 = load i8*, i8** @prompt, align 8
  %122 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %120, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0), i8* %121)
  br label %126

123:                                              ; preds = %68
  br label %124

124:                                              ; preds = %68, %123
  %125 = call i32 @usage(i32 1)
  br label %126

126:                                              ; preds = %124, %119, %118, %115, %113, %102, %97, %94, %93, %92, %91, %90, %86, %83, %82, %80, %79, %72, %71, %70
  br label %63

127:                                              ; preds = %63
  %128 = load i32, i32* @autologin, align 4
  %129 = icmp eq i32 %128, -1
  br i1 %129, label %130, label %131

130:                                              ; preds = %127
  br label %131

131:                                              ; preds = %130, %127
  %132 = load i32, i32* @autologin, align 4
  %133 = icmp eq i32 %132, -1
  br i1 %133, label %134, label %142

134:                                              ; preds = %131
  %135 = load i8, i8* @rlogin, align 1
  %136 = sext i8 %135 to i32
  %137 = load i8, i8* @_POSIX_VDISABLE, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp eq i32 %136, %138
  %140 = zext i1 %139 to i64
  %141 = select i1 %139, i32 0, i32 1
  store i32 %141, i32* @autologin, align 4
  br label %142

142:                                              ; preds = %134, %131
  %143 = load i64, i64* @optind, align 8
  %144 = load i32, i32* %4, align 4
  %145 = sext i32 %144 to i64
  %146 = sub nsw i64 %145, %143
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %4, align 4
  %148 = load i64, i64* @optind, align 8
  %149 = load i8**, i8*** %5, align 8
  %150 = getelementptr inbounds i8*, i8** %149, i64 %148
  store i8** %150, i8*** %5, align 8
  %151 = load i32, i32* %4, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %205

153:                                              ; preds = %142
  %154 = getelementptr inbounds [7 x i8*], [7 x i8*]* %9, i64 0, i64 0
  store i8** %154, i8*** %10, align 8
  %155 = load i32, i32* %4, align 4
  %156 = icmp sgt i32 %155, 2
  br i1 %156, label %157, label %159

157:                                              ; preds = %153
  %158 = call i32 @usage(i32 1)
  br label %159

159:                                              ; preds = %157, %153
  %160 = load i8*, i8** @prompt, align 8
  %161 = load i8**, i8*** %10, align 8
  %162 = getelementptr inbounds i8*, i8** %161, i32 1
  store i8** %162, i8*** %10, align 8
  store i8* %160, i8** %161, align 8
  %163 = load i8*, i8** %7, align 8
  %164 = icmp ne i8* %163, null
  br i1 %164, label %165, label %171

165:                                              ; preds = %159
  %166 = load i8**, i8*** %10, align 8
  %167 = getelementptr inbounds i8*, i8** %166, i32 1
  store i8** %167, i8*** %10, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8** %166, align 8
  %168 = load i8*, i8** %7, align 8
  %169 = load i8**, i8*** %10, align 8
  %170 = getelementptr inbounds i8*, i8** %169, i32 1
  store i8** %170, i8*** %10, align 8
  store i8* %168, i8** %169, align 8
  br label %171

171:                                              ; preds = %165, %159
  %172 = load i8**, i8*** %5, align 8
  %173 = getelementptr inbounds i8*, i8** %172, i64 0
  %174 = load i8*, i8** %173, align 8
  %175 = load i8**, i8*** %10, align 8
  %176 = getelementptr inbounds i8*, i8** %175, i32 1
  store i8** %176, i8*** %10, align 8
  store i8* %174, i8** %175, align 8
  %177 = load i32, i32* %4, align 4
  %178 = icmp sgt i32 %177, 1
  br i1 %178, label %179, label %185

179:                                              ; preds = %171
  %180 = load i8**, i8*** %5, align 8
  %181 = getelementptr inbounds i8*, i8** %180, i64 1
  %182 = load i8*, i8** %181, align 8
  %183 = load i8**, i8*** %10, align 8
  %184 = getelementptr inbounds i8*, i8** %183, i32 1
  store i8** %184, i8*** %10, align 8
  store i8* %182, i8** %183, align 8
  br label %185

185:                                              ; preds = %179, %171
  %186 = load i8**, i8*** %10, align 8
  store i8* null, i8** %186, align 8
  %187 = load i32, i32* @toplevel, align 4
  %188 = call i64 @setjmp(i32 %187) #5
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %185
  %191 = call i32 @Exit(i32 0)
  br label %192

192:                                              ; preds = %190, %185
  %193 = load i8**, i8*** %10, align 8
  %194 = getelementptr inbounds [7 x i8*], [7 x i8*]* %9, i64 0, i64 0
  %195 = ptrtoint i8** %193 to i64
  %196 = ptrtoint i8** %194 to i64
  %197 = sub i64 %195, %196
  %198 = sdiv exact i64 %197, 8
  %199 = trunc i64 %198 to i32
  %200 = getelementptr inbounds [7 x i8*], [7 x i8*]* %9, i64 0, i64 0
  %201 = call i32 @tn(i32 %199, i8** %200)
  %202 = icmp eq i32 %201, 1
  br i1 %202, label %203, label %204

203:                                              ; preds = %192
  store i32 0, i32* %3, align 4
  br label %210

204:                                              ; preds = %192
  store i32 1, i32* %3, align 4
  br label %210

205:                                              ; preds = %142
  %206 = load i32, i32* @toplevel, align 4
  %207 = call i64 @setjmp(i32 %206) #5
  br label %208

208:                                              ; preds = %208, %205
  %209 = call i32 @command(i32 1, i32 0, i32 0)
  br label %208

210:                                              ; preds = %204, %203
  %211 = load i32, i32* %3, align 4
  ret i32 %211
}

declare dso_local i32 @setprogname(i8*) #1

declare dso_local i32 @tninit(...) #1

declare dso_local i32 @TerminalSaveState(...) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @print_version(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @env_define(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i32 @set_escape_char(i8*) #1

declare dso_local i32 @SetNetTrace(i8*) #1

; Function Attrs: returns_twice
declare dso_local i64 @setjmp(i32) #3

declare dso_local i32 @Exit(i32) #1

declare dso_local i32 @tn(i32, i8**) #1

declare dso_local i32 @command(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }
attributes #5 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
