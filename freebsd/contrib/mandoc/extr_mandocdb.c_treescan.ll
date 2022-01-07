; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mandocdb.c_treescan.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mandocdb.c_treescan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, i32, i8*, i32 }
%struct.mlink = type { i32, i8*, i8*, i8*, i8*, i32, i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@FTS_PHYSICAL = common dso_local global i32 0, align 4
@FTS_NOCHDIR = common dso_local global i32 0, align 4
@fts_compare = common dso_local global i32 0, align 4
@MANDOCLEVEL_SYSERR = common dso_local global i64 0, align 8
@exitcode = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"&fts_open\00", align 1
@FORM_NONE = common dso_local global i32 0, align 4
@warnings = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"&realpath\00", align 1
@basedir = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"%s: outside base directory\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"&stat\00", align 1
@MANDOC_DB = common dso_local global i8* null, align 8
@use_all = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"Extraneous file\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"gz\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"No filename suffix\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"html\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"Skip html\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"ps\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"Skip ps\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"pdf\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"Skip pdf\00", align 1
@FORM_SRC = common dso_local global i32 0, align 4
@FORM_CAT = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"Wrong filename suffix\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"Filename too long\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"Not a regular file\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"man\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"cat\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"Unknown directory part\00", align 1
@FTS_SKIP = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [26 x i8] c"Extraneous directory part\00", align 1
@HOMEBREWDIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @treescan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @treescan() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.mlink*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca [2 x i8*], align 16
  %15 = alloca i32, align 4
  %16 = load i32, i32* @PATH_MAX, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %2, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %3, align 8
  %20 = getelementptr inbounds [2 x i8*], [2 x i8*]* %14, i64 0, i64 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %20, align 16
  %21 = getelementptr inbounds [2 x i8*], [2 x i8*]* %14, i64 0, i64 1
  store i8* null, i8** %21, align 8
  %22 = getelementptr inbounds [2 x i8*], [2 x i8*]* %14, i64 0, i64 0
  %23 = load i32, i32* @FTS_PHYSICAL, align 4
  %24 = load i32, i32* @FTS_NOCHDIR, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @fts_compare, align 4
  %27 = call i32* @fts_open(i8** %22, i32 %25, i32 %26)
  store i32* %27, i32** %4, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %0
  %31 = load i64, i64* @MANDOCLEVEL_SYSERR, align 8
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* @exitcode, align 4
  %33 = call i32 (i8*, i8*, ...) @say(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  store i32 1, i32* %15, align 4
  br label %346

34:                                               ; preds = %0
  store i8* null, i8** %10, align 8
  store i8* null, i8** %9, align 8
  %35 = load i32, i32* @FORM_NONE, align 4
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %342, %255, %222, %217, %200, %171, %160, %149, %136, %104, %89, %82, %68, %58, %34
  %37 = load i32*, i32** %4, align 8
  %38 = call %struct.TYPE_4__* @fts_read(i32* %37)
  store %struct.TYPE_4__* %38, %struct.TYPE_4__** %5, align 8
  %39 = icmp ne %struct.TYPE_4__* %38, null
  br i1 %39, label %40, label %343

40:                                               ; preds = %36
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 2
  store i8* %44, i8** %13, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  switch i32 %47, label %249 [
    i32 128, label %48
    i32 129, label %84
    i32 131, label %248
    i32 130, label %248
  ]

48:                                               ; preds = %40
  %49 = load i8*, i8** %13, align 8
  %50 = call i32* @realpath(i8* %49, i8* %19)
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = load i32, i32* @warnings, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i8*, i8** %13, align 8
  %57 = call i32 (i8*, i8*, ...) @say(i8* %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %58

58:                                               ; preds = %55, %52
  br label %36

59:                                               ; preds = %48
  %60 = load i32, i32* @basedir, align 4
  %61 = call i8* @strstr(i8* %19, i32 %60)
  %62 = icmp ne i8* %61, %19
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = load i32, i32* @warnings, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = call i32 (i8*, i8*, ...) @say(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %19)
  br label %68

68:                                               ; preds = %66, %63
  br label %36

69:                                               ; preds = %59
  %70 = load i8*, i8** %13, align 8
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @stat(i8* %70, i32 %73)
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %76, label %83

76:                                               ; preds = %69
  %77 = load i32, i32* @warnings, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i8*, i8** %13, align 8
  %81 = call i32 (i8*, i8*, ...) @say(i8* %80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %82

82:                                               ; preds = %79, %76
  br label %36

83:                                               ; preds = %69
  br label %84

84:                                               ; preds = %40, %83
  %85 = load i8*, i8** %13, align 8
  %86 = load i8*, i8** @MANDOC_DB, align 8
  %87 = call i32 @strcmp(i8* %85, i8* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %84
  br label %36

90:                                               ; preds = %84
  %91 = load i32, i32* @use_all, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %105, label %93

93:                                               ; preds = %90
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = icmp slt i32 %96, 2
  br i1 %97, label %98, label %105

98:                                               ; preds = %93
  %99 = load i32, i32* @warnings, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i8*, i8** %13, align 8
  %103 = call i32 (i8*, i8*, ...) @say(i8* %102, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  br label %104

104:                                              ; preds = %101, %98
  br label %36

105:                                              ; preds = %93, %90
  store i32 0, i32* %7, align 4
  store i8* null, i8** %11, align 8
  br label %106

106:                                              ; preds = %122, %105
  %107 = load i8*, i8** %11, align 8
  %108 = icmp eq i8* %107, null
  br i1 %108, label %109, label %124

109:                                              ; preds = %106
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 3
  %112 = load i8*, i8** %111, align 8
  %113 = call i8* @strrchr(i8* %112, i8 signext 46)
  store i8* %113, i8** %11, align 8
  %114 = load i8*, i8** %11, align 8
  %115 = icmp eq i8* %114, null
  br i1 %115, label %121, label %116

116:                                              ; preds = %109
  %117 = load i8*, i8** %11, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 1
  %119 = call i32 @strcmp(i8* %118, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %116, %109
  br label %124

122:                                              ; preds = %116
  store i32 1, i32* %7, align 4
  %123 = load i8*, i8** %11, align 8
  store i8 0, i8* %123, align 1
  store i8* null, i8** %11, align 8
  br label %106

124:                                              ; preds = %121, %106
  %125 = load i8*, i8** %11, align 8
  %126 = icmp eq i8* %125, null
  br i1 %126, label %127, label %138

127:                                              ; preds = %124
  %128 = load i32, i32* @use_all, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %137, label %130

130:                                              ; preds = %127
  %131 = load i32, i32* @warnings, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = load i8*, i8** %13, align 8
  %135 = call i32 (i8*, i8*, ...) @say(i8* %134, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  br label %136

136:                                              ; preds = %133, %130
  br label %36

137:                                              ; preds = %127
  br label %208

138:                                              ; preds = %124
  %139 = load i8*, i8** %11, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %11, align 8
  %141 = call i32 @strcmp(i8* %140, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %150, label %143

143:                                              ; preds = %138
  %144 = load i32, i32* @warnings, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = load i8*, i8** %13, align 8
  %148 = call i32 (i8*, i8*, ...) @say(i8* %147, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  br label %149

149:                                              ; preds = %146, %143
  br label %36

150:                                              ; preds = %138
  %151 = load i8*, i8** %11, align 8
  %152 = call i32 @strcmp(i8* %151, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %161, label %154

154:                                              ; preds = %150
  %155 = load i32, i32* @warnings, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %154
  %158 = load i8*, i8** %13, align 8
  %159 = call i32 (i8*, i8*, ...) @say(i8* %158, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  br label %160

160:                                              ; preds = %157, %154
  br label %36

161:                                              ; preds = %150
  %162 = load i8*, i8** %11, align 8
  %163 = call i32 @strcmp(i8* %162, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %172, label %165

165:                                              ; preds = %161
  %166 = load i32, i32* @warnings, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %165
  %169 = load i8*, i8** %13, align 8
  %170 = call i32 (i8*, i8*, ...) @say(i8* %169, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  br label %171

171:                                              ; preds = %168, %165
  br label %36

172:                                              ; preds = %161
  %173 = load i32, i32* @use_all, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %201, label %175

175:                                              ; preds = %172
  %176 = load i32, i32* %8, align 4
  %177 = load i32, i32* @FORM_SRC, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %186

179:                                              ; preds = %175
  %180 = load i8*, i8** %11, align 8
  %181 = load i8*, i8** %9, align 8
  %182 = load i8*, i8** %9, align 8
  %183 = call i32 @strlen(i8* %182)
  %184 = call i32 @strncmp(i8* %180, i8* %181, i32 %183)
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %194, label %186

186:                                              ; preds = %179, %175
  %187 = load i32, i32* %8, align 4
  %188 = load i32, i32* @FORM_CAT, align 4
  %189 = icmp eq i32 %187, %188
  br i1 %189, label %190, label %201

190:                                              ; preds = %186
  %191 = load i8*, i8** %11, align 8
  %192 = call i32 @strcmp(i8* %191, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %201

194:                                              ; preds = %190, %179
  %195 = load i32, i32* @warnings, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %194
  %198 = load i8*, i8** %13, align 8
  %199 = call i32 (i8*, i8*, ...) @say(i8* %198, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0))
  br label %200

200:                                              ; preds = %197, %194
  br label %36

201:                                              ; preds = %190, %186, %172
  %202 = load i8*, i8** %11, align 8
  %203 = getelementptr inbounds i8, i8* %202, i64 -1
  store i8 0, i8* %203, align 1
  br label %204

204:                                              ; preds = %201
  br label %205

205:                                              ; preds = %204
  br label %206

206:                                              ; preds = %205
  br label %207

207:                                              ; preds = %206
  br label %208

208:                                              ; preds = %207, %137
  %209 = call %struct.mlink* @mandoc_calloc(i32 1, i32 48)
  store %struct.mlink* %209, %struct.mlink** %6, align 8
  %210 = load %struct.mlink*, %struct.mlink** %6, align 8
  %211 = getelementptr inbounds %struct.mlink, %struct.mlink* %210, i32 0, i32 6
  %212 = load i32, i32* %211, align 4
  %213 = load i8*, i8** %13, align 8
  %214 = call i32 @strlcpy(i32 %212, i8* %213, i32 4)
  %215 = sext i32 %214 to i64
  %216 = icmp uge i64 %215, 4
  br i1 %216, label %217, label %222

217:                                              ; preds = %208
  %218 = load i8*, i8** %13, align 8
  %219 = call i32 (i8*, i8*, ...) @say(i8* %218, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0))
  %220 = load %struct.mlink*, %struct.mlink** %6, align 8
  %221 = call i32 @free(%struct.mlink* %220)
  br label %36

222:                                              ; preds = %208
  %223 = load i32, i32* %8, align 4
  %224 = load %struct.mlink*, %struct.mlink** %6, align 8
  %225 = getelementptr inbounds %struct.mlink, %struct.mlink* %224, i32 0, i32 0
  store i32 %223, i32* %225, align 8
  %226 = load i8*, i8** %9, align 8
  %227 = load %struct.mlink*, %struct.mlink** %6, align 8
  %228 = getelementptr inbounds %struct.mlink, %struct.mlink* %227, i32 0, i32 1
  store i8* %226, i8** %228, align 8
  %229 = load i8*, i8** %10, align 8
  %230 = load %struct.mlink*, %struct.mlink** %6, align 8
  %231 = getelementptr inbounds %struct.mlink, %struct.mlink* %230, i32 0, i32 2
  store i8* %229, i8** %231, align 8
  %232 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 3
  %234 = load i8*, i8** %233, align 8
  %235 = load %struct.mlink*, %struct.mlink** %6, align 8
  %236 = getelementptr inbounds %struct.mlink, %struct.mlink* %235, i32 0, i32 3
  store i8* %234, i8** %236, align 8
  %237 = load i8*, i8** %11, align 8
  %238 = load %struct.mlink*, %struct.mlink** %6, align 8
  %239 = getelementptr inbounds %struct.mlink, %struct.mlink* %238, i32 0, i32 4
  store i8* %237, i8** %239, align 8
  %240 = load i32, i32* %7, align 4
  %241 = load %struct.mlink*, %struct.mlink** %6, align 8
  %242 = getelementptr inbounds %struct.mlink, %struct.mlink* %241, i32 0, i32 5
  store i32 %240, i32* %242, align 8
  %243 = load %struct.mlink*, %struct.mlink** %6, align 8
  %244 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %244, i32 0, i32 4
  %246 = load i32, i32* %245, align 8
  %247 = call i32 @mlink_add(%struct.mlink* %243, i32 %246)
  br label %36

248:                                              ; preds = %40, %40
  br label %256

249:                                              ; preds = %40
  %250 = load i32, i32* @warnings, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %255

252:                                              ; preds = %249
  %253 = load i8*, i8** %13, align 8
  %254 = call i32 (i8*, i8*, ...) @say(i8* %253, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0))
  br label %255

255:                                              ; preds = %252, %249
  br label %36

256:                                              ; preds = %248
  %257 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 4
  switch i32 %259, label %322 [
    i32 0, label %260
    i32 1, label %261
    i32 2, label %308
  ]

260:                                              ; preds = %256
  br label %342

261:                                              ; preds = %256
  %262 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %262, i32 0, i32 3
  %264 = load i8*, i8** %263, align 8
  store i8* %264, i8** %12, align 8
  %265 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 8
  %268 = icmp eq i32 %267, 130
  br i1 %268, label %269, label %271

269:                                              ; preds = %261
  %270 = load i32, i32* @FORM_NONE, align 4
  store i32 %270, i32* %8, align 4
  store i8* null, i8** %9, align 8
  br label %342

271:                                              ; preds = %261
  %272 = load i8*, i8** %12, align 8
  %273 = call i32 @strncmp(i8* %272, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i32 3)
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %279, label %275

275:                                              ; preds = %271
  %276 = load i32, i32* @FORM_SRC, align 4
  store i32 %276, i32* %8, align 4
  %277 = load i8*, i8** %12, align 8
  %278 = getelementptr inbounds i8, i8* %277, i64 3
  store i8* %278, i8** %9, align 8
  br label %290

279:                                              ; preds = %271
  %280 = load i8*, i8** %12, align 8
  %281 = call i32 @strncmp(i8* %280, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i32 3)
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %287, label %283

283:                                              ; preds = %279
  %284 = load i32, i32* @FORM_CAT, align 4
  store i32 %284, i32* %8, align 4
  %285 = load i8*, i8** %12, align 8
  %286 = getelementptr inbounds i8, i8* %285, i64 3
  store i8* %286, i8** %9, align 8
  br label %289

287:                                              ; preds = %279
  %288 = load i32, i32* @FORM_NONE, align 4
  store i32 %288, i32* %8, align 4
  store i8* null, i8** %9, align 8
  br label %289

289:                                              ; preds = %287, %283
  br label %290

290:                                              ; preds = %289, %275
  %291 = load i8*, i8** %9, align 8
  %292 = icmp ne i8* %291, null
  br i1 %292, label %296, label %293

293:                                              ; preds = %290
  %294 = load i32, i32* @use_all, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %297

296:                                              ; preds = %293, %290
  br label %342

297:                                              ; preds = %293
  %298 = load i32, i32* @warnings, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %303

300:                                              ; preds = %297
  %301 = load i8*, i8** %13, align 8
  %302 = call i32 (i8*, i8*, ...) @say(i8* %301, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i64 0, i64 0))
  br label %303

303:                                              ; preds = %300, %297
  %304 = load i32*, i32** %4, align 8
  %305 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %306 = load i32, i32* @FTS_SKIP, align 4
  %307 = call i32 @fts_set(i32* %304, %struct.TYPE_4__* %305, i32 %306)
  br label %342

308:                                              ; preds = %256
  %309 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %310 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 8
  %312 = icmp ne i32 %311, 130
  br i1 %312, label %313, label %320

313:                                              ; preds = %308
  %314 = load i8*, i8** %9, align 8
  %315 = icmp ne i8* %314, null
  br i1 %315, label %316, label %320

316:                                              ; preds = %313
  %317 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %318 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %317, i32 0, i32 3
  %319 = load i8*, i8** %318, align 8
  store i8* %319, i8** %10, align 8
  br label %321

320:                                              ; preds = %313, %308
  store i8* null, i8** %10, align 8
  br label %321

321:                                              ; preds = %320, %316
  br label %342

322:                                              ; preds = %256
  %323 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %324 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 8
  %326 = icmp eq i32 %325, 130
  br i1 %326, label %330, label %327

327:                                              ; preds = %322
  %328 = load i32, i32* @use_all, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %331

330:                                              ; preds = %327, %322
  br label %342

331:                                              ; preds = %327
  %332 = load i32, i32* @warnings, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %337

334:                                              ; preds = %331
  %335 = load i8*, i8** %13, align 8
  %336 = call i32 (i8*, i8*, ...) @say(i8* %335, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.22, i64 0, i64 0))
  br label %337

337:                                              ; preds = %334, %331
  %338 = load i32*, i32** %4, align 8
  %339 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %340 = load i32, i32* @FTS_SKIP, align 4
  %341 = call i32 @fts_set(i32* %338, %struct.TYPE_4__* %339, i32 %340)
  br label %342

342:                                              ; preds = %337, %330, %321, %303, %296, %269, %260
  br label %36

343:                                              ; preds = %36
  %344 = load i32*, i32** %4, align 8
  %345 = call i32 @fts_close(i32* %344)
  store i32 1, i32* %1, align 4
  store i32 1, i32* %15, align 4
  br label %346

346:                                              ; preds = %343, %30
  %347 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %347)
  %348 = load i32, i32* %1, align 4
  ret i32 %348
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @fts_open(i8**, i32, i32) #2

declare dso_local i32 @say(i8*, i8*, ...) #2

declare dso_local %struct.TYPE_4__* @fts_read(i32*) #2

declare dso_local i32* @realpath(i8*, i8*) #2

declare dso_local i8* @strstr(i8*, i32) #2

declare dso_local i32 @stat(i8*, i32) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i32 @strncmp(i8*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local %struct.mlink* @mandoc_calloc(i32, i32) #2

declare dso_local i32 @strlcpy(i32, i8*, i32) #2

declare dso_local i32 @free(%struct.mlink*) #2

declare dso_local i32 @mlink_add(%struct.mlink*, i32) #2

declare dso_local i32 @fts_set(i32*, %struct.TYPE_4__*, i32) #2

declare dso_local i32 @fts_close(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
