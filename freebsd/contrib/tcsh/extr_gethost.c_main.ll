; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_gethost.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_gethost.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INBUFSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@stdin = common dso_local global i32* null, align 8
@pname = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Usage: %s [<filename>]\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"%s: Cannot open `%s'\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"%s: \22%s\22, %d: Missing macro name\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"%s: \22%s\22, %d: Missing macro body\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"\0A#if %s\0A# define %s\0A#endif\0A\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"%s: \22%s\22, %d: Discarded\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"%s: Too many errors\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"%s: \22%s\22, %d: Unexpected token\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"#endif\0A\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"%s: \22%s\22, %d: Missing enddef\0A\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"%s: \22%s\22, %d: No defs\0A\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"#if (%s)\0A\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"# if (%s) && !defined(_%s_)\0A\00", align 1
@keyword = common dso_local global i8** null, align 8
@.str.17 = private unnamed_addr constant [21 x i8] c"# if !defined(_%s_)\0A\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"%s: \22%s\22, %d: No statement\0A\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"# define _%s_\0A\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"    %s = %s;\0A\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"# endif\0A\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"    /* %s */\0A\00", align 1
@.str.23 = private unnamed_addr constant [32 x i8] c"%s: \22%s\22, %d: Unexpected state\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %20 = load i32, i32* @INBUFSIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %6, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %7, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %24 = load i32, i32* @INBUFSIZE, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %11, align 8
  %27 = load i32, i32* @INBUFSIZE, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %12, align 8
  %30 = load i32*, i32** @stdin, align 8
  store i32* %30, i32** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %18, align 4
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i8* @strrchr(i8* %33, i8 signext 47)
  store i8* %34, i8** @pname, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %2
  %37 = load i8**, i8*** %5, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 0
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** @pname, align 8
  br label %43

40:                                               ; preds = %2
  %41 = load i8*, i8** @pname, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** @pname, align 8
  br label %43

43:                                               ; preds = %40, %36
  %44 = load i32, i32* %4, align 4
  %45 = icmp sgt i32 %44, 2
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i32, i32* @stderr, align 4
  %48 = load i8*, i8** @pname, align 8
  %49 = call i32 (i32, i8*, ...) @fprintf(i32 %47, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %48)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %262

50:                                               ; preds = %43
  %51 = load i32, i32* %4, align 4
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %53, label %65

53:                                               ; preds = %50
  %54 = load i8**, i8*** %5, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 1
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %8, align 8
  %57 = call i32* @fopen(i8* %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %57, i32** %13, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %53
  %60 = load i32, i32* @stderr, align 4
  %61 = load i8*, i8** @pname, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = call i32 (i32, i8*, ...) @fprintf(i32 %60, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %61, i8* %62)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %262

64:                                               ; preds = %53
  br label %65

65:                                               ; preds = %64, %50
  store i32 140, i32* %17, align 4
  br label %66

66:                                               ; preds = %244, %65
  %67 = trunc i64 %21 to i32
  %68 = load i32*, i32** %13, align 8
  %69 = call i8* @fgets(i8* %23, i32 %67, i32* %68)
  store i8* %69, i8** %9, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %245

71:                                               ; preds = %66
  %72 = load i32, i32* %14, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %14, align 4
  %74 = call i8* @gettoken(i8** %9, i8* %26)
  %75 = call i32 @findtoken(i8* %74)
  store i32 %75, i32* %16, align 4
  switch i32 %75, label %131 [
    i32 132, label %76
    i32 137, label %77
    i32 138, label %78
    i32 131, label %79
    i32 136, label %80
    i32 128, label %81
    i32 135, label %82
    i32 134, label %83
    i32 129, label %84
    i32 133, label %85
    i32 130, label %107
  ]

76:                                               ; preds = %71
  store i32 142, i32* %17, align 4
  br label %137

77:                                               ; preds = %71
  store i32 140, i32* %17, align 4
  br label %137

78:                                               ; preds = %71
  store i32 141, i32* %17, align 4
  br label %137

79:                                               ; preds = %71
  store i32 139, i32* %17, align 4
  br label %137

80:                                               ; preds = %71
  store i32 140, i32* %17, align 4
  br label %137

81:                                               ; preds = %71
  store i32 139, i32* %17, align 4
  br label %137

82:                                               ; preds = %71
  store i32 139, i32* %17, align 4
  br label %137

83:                                               ; preds = %71
  store i32 139, i32* %17, align 4
  br label %137

84:                                               ; preds = %71
  store i32 139, i32* %17, align 4
  br label %137

85:                                               ; preds = %71
  %86 = call i8* @gettoken(i8** %9, i8* %26)
  %87 = icmp eq i8* %86, null
  br i1 %87, label %88, label %94

88:                                               ; preds = %85
  %89 = load i32, i32* @stderr, align 4
  %90 = load i8*, i8** @pname, align 8
  %91 = load i8*, i8** %8, align 8
  %92 = load i32, i32* %14, align 4
  %93 = call i32 (i32, i8*, ...) @fprintf(i32 %89, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8* %90, i8* %91, i32 %92)
  br label %137

94:                                               ; preds = %85
  %95 = call i8* @gettoken(i8** %9, i8* %29)
  %96 = icmp eq i8* %95, null
  br i1 %96, label %97, label %103

97:                                               ; preds = %94
  %98 = load i32, i32* @stderr, align 4
  %99 = load i8*, i8** @pname, align 8
  %100 = load i8*, i8** %8, align 8
  %101 = load i32, i32* %14, align 4
  %102 = call i32 (i32, i8*, ...) @fprintf(i32 %98, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i8* %99, i8* %100, i32 %101)
  br label %137

103:                                              ; preds = %94
  %104 = load i32, i32* @stdout, align 4
  %105 = call i8* @explode(i8* %29)
  %106 = call i32 (i32, i8*, ...) @fprintf(i32 %104, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8* %105, i8* %26)
  br label %137

107:                                              ; preds = %71
  %108 = load i32, i32* %17, align 4
  %109 = icmp ne i32 %108, 142
  br i1 %109, label %110, label %128

110:                                              ; preds = %107
  %111 = load i8, i8* %26, align 16
  %112 = sext i8 %111 to i32
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %128

114:                                              ; preds = %110
  %115 = load i32, i32* @stderr, align 4
  %116 = load i8*, i8** @pname, align 8
  %117 = load i8*, i8** %8, align 8
  %118 = load i32, i32* %14, align 4
  %119 = call i32 (i32, i8*, ...) @fprintf(i32 %115, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8* %116, i8* %117, i32 %118)
  %120 = load i32, i32* %18, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %18, align 4
  %122 = icmp eq i32 %121, 30
  br i1 %122, label %123, label %127

123:                                              ; preds = %114
  %124 = load i32, i32* @stderr, align 4
  %125 = load i8*, i8** @pname, align 8
  %126 = call i32 (i32, i8*, ...) @fprintf(i32 %124, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8* %125)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %262

127:                                              ; preds = %114
  br label %137

128:                                              ; preds = %110, %107
  %129 = load i32, i32* @stdout, align 4
  %130 = call i32 (i32, i8*, ...) @fprintf(i32 %129, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* %23)
  br label %137

131:                                              ; preds = %71
  %132 = load i32, i32* @stderr, align 4
  %133 = load i8*, i8** @pname, align 8
  %134 = load i8*, i8** %8, align 8
  %135 = load i32, i32* %14, align 4
  %136 = call i32 (i32, i8*, ...) @fprintf(i32 %132, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i8* %133, i8* %134, i32 %135)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %262

137:                                              ; preds = %128, %127, %103, %97, %88, %84, %83, %82, %81, %80, %79, %78, %77, %76
  %138 = load i32, i32* %17, align 4
  switch i32 %138, label %238 [
    i32 140, label %139
    i32 139, label %146
    i32 141, label %226
    i32 142, label %233
  ]

139:                                              ; preds = %137
  %140 = load i32, i32* %15, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %139
  store i32 0, i32* %15, align 4
  %143 = load i32, i32* @stdout, align 4
  %144 = call i32 (i32, i8*, ...) @fprintf(i32 %143, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  br label %145

145:                                              ; preds = %142, %139
  br label %244

146:                                              ; preds = %137
  %147 = call i8* @gettoken(i8** %9, i8* %26)
  store i8* %147, i8** %10, align 8
  %148 = load i32, i32* %16, align 4
  %149 = icmp eq i32 %148, 131
  br i1 %149, label %150, label %174

150:                                              ; preds = %146
  %151 = load i32, i32* %15, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %150
  %154 = load i32, i32* @stderr, align 4
  %155 = load i8*, i8** @pname, align 8
  %156 = load i8*, i8** %8, align 8
  %157 = load i32, i32* %14, align 4
  %158 = call i32 (i32, i8*, ...) @fprintf(i32 %154, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0), i8* %155, i8* %156, i32 %157)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %262

159:                                              ; preds = %150
  %160 = load i8*, i8** %10, align 8
  %161 = icmp eq i8* %160, null
  br i1 %161, label %162, label %168

162:                                              ; preds = %159
  %163 = load i32, i32* @stderr, align 4
  %164 = load i8*, i8** @pname, align 8
  %165 = load i8*, i8** %8, align 8
  %166 = load i32, i32* %14, align 4
  %167 = call i32 (i32, i8*, ...) @fprintf(i32 %163, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i8* %164, i8* %165, i32 %166)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %262

168:                                              ; preds = %159
  %169 = load i32, i32* @stdout, align 4
  %170 = call i32 (i32, i8*, ...) @fprintf(i32 %169, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  %171 = load i32, i32* @stdout, align 4
  %172 = call i8* @explode(i8* %26)
  %173 = call i32 (i32, i8*, ...) @fprintf(i32 %171, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8* %172)
  store i32 1, i32* %15, align 4
  br label %225

174:                                              ; preds = %146
  %175 = load i8*, i8** %10, align 8
  %176 = icmp ne i8* %175, null
  br i1 %176, label %177, label %191

177:                                              ; preds = %174
  %178 = load i8*, i8** %10, align 8
  %179 = load i8, i8* %178, align 1
  %180 = sext i8 %179 to i32
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %191

182:                                              ; preds = %177
  %183 = load i32, i32* @stdout, align 4
  %184 = call i8* @explode(i8* %26)
  %185 = load i8**, i8*** @keyword, align 8
  %186 = load i32, i32* %16, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8*, i8** %185, i64 %187
  %189 = load i8*, i8** %188, align 8
  %190 = call i32 (i32, i8*, ...) @fprintf(i32 %183, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0), i8* %184, i8* %189)
  br label %199

191:                                              ; preds = %177, %174
  %192 = load i32, i32* @stdout, align 4
  %193 = load i8**, i8*** @keyword, align 8
  %194 = load i32, i32* %16, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8*, i8** %193, i64 %195
  %197 = load i8*, i8** %196, align 8
  %198 = call i32 (i32, i8*, ...) @fprintf(i32 %192, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0), i8* %197)
  br label %199

199:                                              ; preds = %191, %182
  %200 = call i8* @gettoken(i8** %9, i8* %29)
  %201 = icmp eq i8* %200, null
  br i1 %201, label %202, label %208

202:                                              ; preds = %199
  %203 = load i32, i32* @stderr, align 4
  %204 = load i8*, i8** @pname, align 8
  %205 = load i8*, i8** %8, align 8
  %206 = load i32, i32* %14, align 4
  %207 = call i32 (i32, i8*, ...) @fprintf(i32 %203, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0), i8* %204, i8* %205, i32 %206)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %262

208:                                              ; preds = %199
  %209 = load i32, i32* @stdout, align 4
  %210 = load i8**, i8*** @keyword, align 8
  %211 = load i32, i32* %16, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i8*, i8** %210, i64 %212
  %214 = load i8*, i8** %213, align 8
  %215 = call i32 (i32, i8*, ...) @fprintf(i32 %209, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i8* %214)
  %216 = load i32, i32* @stdout, align 4
  %217 = load i8**, i8*** @keyword, align 8
  %218 = load i32, i32* %16, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i8*, i8** %217, i64 %219
  %221 = load i8*, i8** %220, align 8
  %222 = call i32 (i32, i8*, ...) @fprintf(i32 %216, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i8* %221, i8* %29)
  %223 = load i32, i32* @stdout, align 4
  %224 = call i32 (i32, i8*, ...) @fprintf(i32 %223, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0))
  br label %225

225:                                              ; preds = %208, %168
  br label %244

226:                                              ; preds = %137
  %227 = call i8* @gettoken(i8** %9, i8* %26)
  %228 = icmp ne i8* %227, null
  br i1 %228, label %229, label %232

229:                                              ; preds = %226
  %230 = load i32, i32* @stdout, align 4
  %231 = call i32 (i32, i8*, ...) @fprintf(i32 %230, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i8* %26)
  br label %232

232:                                              ; preds = %229, %226
  br label %244

233:                                              ; preds = %137
  %234 = load i32, i32* %16, align 4
  %235 = icmp eq i32 %234, 132
  br i1 %235, label %236, label %237

236:                                              ; preds = %233
  br label %237

237:                                              ; preds = %236, %233
  br label %244

238:                                              ; preds = %137
  %239 = load i32, i32* @stderr, align 4
  %240 = load i8*, i8** @pname, align 8
  %241 = load i8*, i8** %8, align 8
  %242 = load i32, i32* %14, align 4
  %243 = call i32 (i32, i8*, ...) @fprintf(i32 %239, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.23, i64 0, i64 0), i8* %240, i8* %241, i32 %242)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %262

244:                                              ; preds = %237, %232, %225, %145
  br label %66

245:                                              ; preds = %66
  %246 = load i32, i32* %15, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %254

248:                                              ; preds = %245
  %249 = load i32, i32* @stderr, align 4
  %250 = load i8*, i8** @pname, align 8
  %251 = load i8*, i8** %8, align 8
  %252 = load i32, i32* %14, align 4
  %253 = call i32 (i32, i8*, ...) @fprintf(i32 %249, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0), i8* %250, i8* %251, i32 %252)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %262

254:                                              ; preds = %245
  %255 = load i32*, i32** %13, align 8
  %256 = load i32*, i32** @stdin, align 8
  %257 = icmp ne i32* %255, %256
  br i1 %257, label %258, label %261

258:                                              ; preds = %254
  %259 = load i32*, i32** %13, align 8
  %260 = call i32 @fclose(i32* %259)
  br label %261

261:                                              ; preds = %258, %254
  store i32 0, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %262

262:                                              ; preds = %261, %248, %238, %202, %162, %153, %131, %123, %59, %46
  %263 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %263)
  %264 = load i32, i32* %3, align 4
  ret i32 %264
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i8* @fgets(i8*, i32, i32*) #2

declare dso_local i32 @findtoken(i8*) #2

declare dso_local i8* @gettoken(i8**, i8*) #2

declare dso_local i8* @explode(i8*) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
