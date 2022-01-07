; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pam_modules/pam_passwdqc/extr_pam_passwdqc.c_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pam_modules/pam_passwdqc/extr_pam_passwdqc.c_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i64, i64, i64, i32, i64 }

@.str = private unnamed_addr constant [5 x i8] c"min=\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@INT_MAX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"max=\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"passphrase=\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"match=\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"similar=\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"permit\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"deny\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"random=\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c",only\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"enforce=\00", align 1
@F_ENFORCE_MASK = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"users\00", align 1
@F_ENFORCE_USERS = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [9 x i8] c"everyone\00", align 1
@F_ENFORCE_EVERYONE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"non-unix\00", align 1
@F_CHECK_OLDAUTHTOK = common dso_local global i32 0, align 4
@F_NON_UNIX = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [7 x i8] c"retry=\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"ask_oldauthtok\00", align 1
@F_ASK_OLDAUTHTOK_MASK = common dso_local global i32 0, align 4
@F_USE_FIRST_PASS = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [8 x i8] c"=update\00", align 1
@F_ASK_OLDAUTHTOK_UPDATE = common dso_local global i32 0, align 4
@F_ASK_OLDAUTHTOK_PRELIM = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [17 x i8] c"check_oldauthtok\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"use_first_pass\00", align 1
@F_USE_AUTHTOK = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [12 x i8] c"use_authtok\00", align 1
@PAM_ERROR_MSG = common dso_local global i32 0, align 4
@MESSAGE_MISCONFIGURED = common dso_local global i32 0, align 4
@MESSAGE_INVALID_OPTION = common dso_local global i32 0, align 4
@PAM_ABORT = common dso_local global i32 0, align 4
@PAM_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32, i8**)* @parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse(%struct.TYPE_5__* %0, i32* %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  br label %14

14:                                               ; preds = %430, %4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %435

17:                                               ; preds = %14
  %18 = load i8**, i8*** %9, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @strncmp(i8* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %92, label %22

22:                                               ; preds = %17
  %23 = load i8**, i8*** %9, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 4
  store i8* %25, i8** %10, align 8
  store i32 0, i32* %12, align 4
  br label %26

26:                                               ; preds = %83, %22
  %27 = load i32, i32* %12, align 4
  %28 = icmp slt i32 %27, 5
  br i1 %28, label %29, label %86

29:                                               ; preds = %26
  %30 = load i8*, i8** %10, align 8
  %31 = call i32 @strncmp(i8* %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i64, i64* @INT_MAX, align 8
  store i64 %34, i64* %13, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 8
  store i8* %36, i8** %10, align 8
  br label %41

37:                                               ; preds = %29
  %38 = load i8*, i8** %10, align 8
  %39 = call i64 @strtoul(i8* %38, i8** %11, i32 10)
  store i64 %39, i64* %13, align 8
  %40 = load i8*, i8** %11, align 8
  store i8* %40, i8** %10, align 8
  br label %41

41:                                               ; preds = %37, %33
  %42 = load i32, i32* %12, align 4
  %43 = icmp slt i32 %42, 4
  br i1 %43, label %44, label %51

44:                                               ; preds = %41
  %45 = load i8*, i8** %10, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %10, align 8
  %47 = load i8, i8* %45, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 44
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %86

51:                                               ; preds = %44, %41
  %52 = load i64, i64* %13, align 8
  %53 = load i64, i64* @INT_MAX, align 8
  %54 = icmp ugt i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  br label %86

56:                                               ; preds = %51
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %56
  %60 = load i64, i64* %13, align 8
  %61 = trunc i64 %60 to i32
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sub nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = icmp sgt i32 %61, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %59
  br label %86

73:                                               ; preds = %59, %56
  %74 = load i64, i64* %13, align 8
  %75 = trunc i64 %74 to i32
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  store i32 %75, i32* %82, align 4
  br label %83

83:                                               ; preds = %73
  %84 = load i32, i32* %12, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %12, align 4
  br label %26

86:                                               ; preds = %72, %55, %50, %26
  %87 = load i8*, i8** %10, align 8
  %88 = load i8, i8* %87, align 1
  %89 = icmp ne i8 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  br label %435

91:                                               ; preds = %86
  br label %430

92:                                               ; preds = %17
  %93 = load i8**, i8*** %9, align 8
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @strncmp(i8* %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %119, label %97

97:                                               ; preds = %92
  %98 = load i8**, i8*** %9, align 8
  %99 = load i8*, i8** %98, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 4
  %101 = call i64 @strtoul(i8* %100, i8** %11, i32 10)
  store i64 %101, i64* %13, align 8
  %102 = load i8*, i8** %11, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %113, label %106

106:                                              ; preds = %97
  %107 = load i64, i64* %13, align 8
  %108 = icmp ult i64 %107, 8
  br i1 %108, label %113, label %109

109:                                              ; preds = %106
  %110 = load i64, i64* %13, align 8
  %111 = load i64, i64* @INT_MAX, align 8
  %112 = icmp ugt i64 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %109, %106, %97
  br label %435

114:                                              ; preds = %109
  %115 = load i64, i64* %13, align 8
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 1
  store i64 %115, i64* %118, align 8
  br label %429

119:                                              ; preds = %92
  %120 = load i8**, i8*** %9, align 8
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @strncmp(i8* %121, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 11)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %143, label %124

124:                                              ; preds = %119
  %125 = load i8**, i8*** %9, align 8
  %126 = load i8*, i8** %125, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 11
  %128 = call i64 @strtoul(i8* %127, i8** %11, i32 10)
  store i64 %128, i64* %13, align 8
  %129 = load i8*, i8** %11, align 8
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %137, label %133

133:                                              ; preds = %124
  %134 = load i64, i64* %13, align 8
  %135 = load i64, i64* @INT_MAX, align 8
  %136 = icmp ugt i64 %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %133, %124
  br label %435

138:                                              ; preds = %133
  %139 = load i64, i64* %13, align 8
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 2
  store i64 %139, i64* %142, align 8
  br label %428

143:                                              ; preds = %119
  %144 = load i8**, i8*** %9, align 8
  %145 = load i8*, i8** %144, align 8
  %146 = call i32 @strncmp(i8* %145, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 6)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %167, label %148

148:                                              ; preds = %143
  %149 = load i8**, i8*** %9, align 8
  %150 = load i8*, i8** %149, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 6
  %152 = call i64 @strtoul(i8* %151, i8** %11, i32 10)
  store i64 %152, i64* %13, align 8
  %153 = load i8*, i8** %11, align 8
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %161, label %157

157:                                              ; preds = %148
  %158 = load i64, i64* %13, align 8
  %159 = load i64, i64* @INT_MAX, align 8
  %160 = icmp ugt i64 %158, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %157, %148
  br label %435

162:                                              ; preds = %157
  %163 = load i64, i64* %13, align 8
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 3
  store i64 %163, i64* %166, align 8
  br label %427

167:                                              ; preds = %143
  %168 = load i8**, i8*** %9, align 8
  %169 = load i8*, i8** %168, align 8
  %170 = call i32 @strncmp(i8* %169, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 8)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %195, label %172

172:                                              ; preds = %167
  %173 = load i8**, i8*** %9, align 8
  %174 = load i8*, i8** %173, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 8
  %176 = call i64 @strcmp(i8* %175, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %182, label %178

178:                                              ; preds = %172
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 4
  store i32 0, i32* %181, align 8
  br label %194

182:                                              ; preds = %172
  %183 = load i8**, i8*** %9, align 8
  %184 = load i8*, i8** %183, align 8
  %185 = getelementptr inbounds i8, i8* %184, i64 8
  %186 = call i64 @strcmp(i8* %185, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %192, label %188

188:                                              ; preds = %182
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 4
  store i32 1, i32* %191, align 8
  br label %193

192:                                              ; preds = %182
  br label %435

193:                                              ; preds = %188
  br label %194

194:                                              ; preds = %193, %178
  br label %426

195:                                              ; preds = %167
  %196 = load i8**, i8*** %9, align 8
  %197 = load i8*, i8** %196, align 8
  %198 = call i32 @strncmp(i8* %197, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 7)
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %233, label %200

200:                                              ; preds = %195
  %201 = load i8**, i8*** %9, align 8
  %202 = load i8*, i8** %201, align 8
  %203 = getelementptr inbounds i8, i8* %202, i64 7
  %204 = call i64 @strtoul(i8* %203, i8** %11, i32 10)
  store i64 %204, i64* %13, align 8
  %205 = load i8*, i8** %11, align 8
  %206 = call i64 @strcmp(i8* %205, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %218, label %208

208:                                              ; preds = %200
  %209 = load i8*, i8** %11, align 8
  %210 = getelementptr inbounds i8, i8* %209, i64 5
  store i8* %210, i8** %11, align 8
  %211 = load i64, i64* @INT_MAX, align 8
  %212 = trunc i64 %211 to i32
  %213 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 2
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 0
  %216 = load i32*, i32** %215, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 4
  store i32 %212, i32* %217, align 4
  br label %218

218:                                              ; preds = %208, %200
  %219 = load i8*, i8** %11, align 8
  %220 = load i8, i8* %219, align 1
  %221 = sext i8 %220 to i32
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %227, label %223

223:                                              ; preds = %218
  %224 = load i64, i64* %13, align 8
  %225 = load i64, i64* @INT_MAX, align 8
  %226 = icmp ugt i64 %224, %225
  br i1 %226, label %227, label %228

227:                                              ; preds = %223, %218
  br label %435

228:                                              ; preds = %223
  %229 = load i64, i64* %13, align 8
  %230 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i32 0, i32 2
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 5
  store i64 %229, i64* %232, align 8
  br label %425

233:                                              ; preds = %195
  %234 = load i8**, i8*** %9, align 8
  %235 = load i8*, i8** %234, align 8
  %236 = call i32 @strncmp(i8* %235, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 8)
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %278, label %238

238:                                              ; preds = %233
  %239 = load i32, i32* @F_ENFORCE_MASK, align 4
  %240 = xor i32 %239, -1
  %241 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = and i32 %243, %240
  store i32 %244, i32* %242, align 8
  %245 = load i8**, i8*** %9, align 8
  %246 = load i8*, i8** %245, align 8
  %247 = getelementptr inbounds i8, i8* %246, i64 8
  %248 = call i64 @strcmp(i8* %247, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %256, label %250

250:                                              ; preds = %238
  %251 = load i32, i32* @F_ENFORCE_USERS, align 4
  %252 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %253 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = or i32 %254, %251
  store i32 %255, i32* %253, align 8
  br label %277

256:                                              ; preds = %238
  %257 = load i8**, i8*** %9, align 8
  %258 = load i8*, i8** %257, align 8
  %259 = getelementptr inbounds i8, i8* %258, i64 8
  %260 = call i64 @strcmp(i8* %259, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %268, label %262

262:                                              ; preds = %256
  %263 = load i32, i32* @F_ENFORCE_EVERYONE, align 4
  %264 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %265 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = or i32 %266, %263
  store i32 %267, i32* %265, align 8
  br label %276

268:                                              ; preds = %256
  %269 = load i8**, i8*** %9, align 8
  %270 = load i8*, i8** %269, align 8
  %271 = getelementptr inbounds i8, i8* %270, i64 8
  %272 = call i64 @strcmp(i8* %271, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %275

274:                                              ; preds = %268
  br label %435

275:                                              ; preds = %268
  br label %276

276:                                              ; preds = %275, %262
  br label %277

277:                                              ; preds = %276, %250
  br label %424

278:                                              ; preds = %233
  %279 = load i8**, i8*** %9, align 8
  %280 = load i8*, i8** %279, align 8
  %281 = call i64 @strcmp(i8* %280, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %297, label %283

283:                                              ; preds = %278
  %284 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %285 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = load i32, i32* @F_CHECK_OLDAUTHTOK, align 4
  %288 = and i32 %286, %287
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %291

290:                                              ; preds = %283
  br label %435

291:                                              ; preds = %283
  %292 = load i32, i32* @F_NON_UNIX, align 4
  %293 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %294 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = or i32 %295, %292
  store i32 %296, i32* %294, align 8
  br label %423

297:                                              ; preds = %278
  %298 = load i8**, i8*** %9, align 8
  %299 = load i8*, i8** %298, align 8
  %300 = call i32 @strncmp(i8* %299, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i32 6)
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %320, label %302

302:                                              ; preds = %297
  %303 = load i8**, i8*** %9, align 8
  %304 = load i8*, i8** %303, align 8
  %305 = getelementptr inbounds i8, i8* %304, i64 6
  %306 = call i64 @strtoul(i8* %305, i8** %11, i32 10)
  store i64 %306, i64* %13, align 8
  %307 = load i8*, i8** %11, align 8
  %308 = load i8, i8* %307, align 1
  %309 = sext i8 %308 to i32
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %315, label %311

311:                                              ; preds = %302
  %312 = load i64, i64* %13, align 8
  %313 = load i64, i64* @INT_MAX, align 8
  %314 = icmp ugt i64 %312, %313
  br i1 %314, label %315, label %316

315:                                              ; preds = %311, %302
  br label %435

316:                                              ; preds = %311
  %317 = load i64, i64* %13, align 8
  %318 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %319 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %318, i32 0, i32 1
  store i64 %317, i64* %319, align 8
  br label %422

320:                                              ; preds = %297
  %321 = load i8**, i8*** %9, align 8
  %322 = load i8*, i8** %321, align 8
  %323 = call i32 @strncmp(i8* %322, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32 14)
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %366, label %325

325:                                              ; preds = %320
  %326 = load i32, i32* @F_ASK_OLDAUTHTOK_MASK, align 4
  %327 = xor i32 %326, -1
  %328 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %329 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  %331 = and i32 %330, %327
  store i32 %331, i32* %329, align 8
  %332 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %333 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 8
  %335 = load i32, i32* @F_USE_FIRST_PASS, align 4
  %336 = and i32 %334, %335
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %339

338:                                              ; preds = %325
  br label %435

339:                                              ; preds = %325
  %340 = load i8**, i8*** %9, align 8
  %341 = load i8*, i8** %340, align 8
  %342 = getelementptr inbounds i8, i8* %341, i64 14
  %343 = call i64 @strcmp(i8* %342, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0))
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %351, label %345

345:                                              ; preds = %339
  %346 = load i32, i32* @F_ASK_OLDAUTHTOK_UPDATE, align 4
  %347 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %348 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 8
  %350 = or i32 %349, %346
  store i32 %350, i32* %348, align 8
  br label %365

351:                                              ; preds = %339
  %352 = load i8**, i8*** %9, align 8
  %353 = load i8*, i8** %352, align 8
  %354 = getelementptr inbounds i8, i8* %353, i64 14
  %355 = load i8, i8* %354, align 1
  %356 = icmp ne i8 %355, 0
  br i1 %356, label %363, label %357

357:                                              ; preds = %351
  %358 = load i32, i32* @F_ASK_OLDAUTHTOK_PRELIM, align 4
  %359 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %360 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 8
  %362 = or i32 %361, %358
  store i32 %362, i32* %360, align 8
  br label %364

363:                                              ; preds = %351
  br label %435

364:                                              ; preds = %357
  br label %365

365:                                              ; preds = %364, %345
  br label %421

366:                                              ; preds = %320
  %367 = load i8**, i8*** %9, align 8
  %368 = load i8*, i8** %367, align 8
  %369 = call i64 @strcmp(i8* %368, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0))
  %370 = icmp ne i64 %369, 0
  br i1 %370, label %385, label %371

371:                                              ; preds = %366
  %372 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %373 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 8
  %375 = load i32, i32* @F_NON_UNIX, align 4
  %376 = and i32 %374, %375
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %379

378:                                              ; preds = %371
  br label %435

379:                                              ; preds = %371
  %380 = load i32, i32* @F_CHECK_OLDAUTHTOK, align 4
  %381 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %382 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 8
  %384 = or i32 %383, %380
  store i32 %384, i32* %382, align 8
  br label %420

385:                                              ; preds = %366
  %386 = load i8**, i8*** %9, align 8
  %387 = load i8*, i8** %386, align 8
  %388 = call i64 @strcmp(i8* %387, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0))
  %389 = icmp ne i64 %388, 0
  br i1 %389, label %406, label %390

390:                                              ; preds = %385
  %391 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %392 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %391, i32 0, i32 0
  %393 = load i32, i32* %392, align 8
  %394 = load i32, i32* @F_ASK_OLDAUTHTOK_MASK, align 4
  %395 = and i32 %393, %394
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %398

397:                                              ; preds = %390
  br label %435

398:                                              ; preds = %390
  %399 = load i32, i32* @F_USE_FIRST_PASS, align 4
  %400 = load i32, i32* @F_USE_AUTHTOK, align 4
  %401 = or i32 %399, %400
  %402 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %403 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %402, i32 0, i32 0
  %404 = load i32, i32* %403, align 8
  %405 = or i32 %404, %401
  store i32 %405, i32* %403, align 8
  br label %419

406:                                              ; preds = %385
  %407 = load i8**, i8*** %9, align 8
  %408 = load i8*, i8** %407, align 8
  %409 = call i64 @strcmp(i8* %408, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0))
  %410 = icmp ne i64 %409, 0
  br i1 %410, label %417, label %411

411:                                              ; preds = %406
  %412 = load i32, i32* @F_USE_AUTHTOK, align 4
  %413 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %414 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 8
  %416 = or i32 %415, %412
  store i32 %416, i32* %414, align 8
  br label %418

417:                                              ; preds = %406
  br label %435

418:                                              ; preds = %411
  br label %419

419:                                              ; preds = %418, %398
  br label %420

420:                                              ; preds = %419, %379
  br label %421

421:                                              ; preds = %420, %365
  br label %422

422:                                              ; preds = %421, %316
  br label %423

423:                                              ; preds = %422, %291
  br label %424

424:                                              ; preds = %423, %277
  br label %425

425:                                              ; preds = %424, %228
  br label %426

426:                                              ; preds = %425, %194
  br label %427

427:                                              ; preds = %426, %162
  br label %428

428:                                              ; preds = %427, %138
  br label %429

429:                                              ; preds = %428, %114
  br label %430

430:                                              ; preds = %429, %91
  %431 = load i32, i32* %8, align 4
  %432 = add nsw i32 %431, -1
  store i32 %432, i32* %8, align 4
  %433 = load i8**, i8*** %9, align 8
  %434 = getelementptr inbounds i8*, i8** %433, i32 1
  store i8** %434, i8*** %9, align 8
  br label %14

435:                                              ; preds = %417, %397, %378, %363, %338, %315, %290, %274, %227, %192, %161, %137, %113, %90, %14
  %436 = load i32, i32* %8, align 4
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %438, label %455

438:                                              ; preds = %435
  %439 = call i64 (...) @getuid()
  %440 = icmp ne i64 %439, 0
  br i1 %440, label %441, label %446

441:                                              ; preds = %438
  %442 = load i32*, i32** %7, align 8
  %443 = load i32, i32* @PAM_ERROR_MSG, align 4
  %444 = load i32, i32* @MESSAGE_MISCONFIGURED, align 4
  %445 = call i32 (i32*, i32, i32, ...) @say(i32* %442, i32 %443, i32 %444)
  br label %453

446:                                              ; preds = %438
  %447 = load i32*, i32** %7, align 8
  %448 = load i32, i32* @PAM_ERROR_MSG, align 4
  %449 = load i32, i32* @MESSAGE_INVALID_OPTION, align 4
  %450 = load i8**, i8*** %9, align 8
  %451 = load i8*, i8** %450, align 8
  %452 = call i32 (i32*, i32, i32, ...) @say(i32* %447, i32 %448, i32 %449, i8* %451)
  br label %453

453:                                              ; preds = %446, %441
  %454 = load i32, i32* @PAM_ABORT, align 4
  store i32 %454, i32* %5, align 4
  br label %457

455:                                              ; preds = %435
  %456 = load i32, i32* @PAM_SUCCESS, align 4
  store i32 %456, i32* %5, align 4
  br label %457

457:                                              ; preds = %455, %453
  %458 = load i32, i32* %5, align 4
  ret i32 %458
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @getuid(...) #1

declare dso_local i32 @say(i32*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
