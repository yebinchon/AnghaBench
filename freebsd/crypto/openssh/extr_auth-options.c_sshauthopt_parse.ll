; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth-options.c_sshauthopt_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth-options.c_sshauthopt_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshauthopt = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i8**, i32, i32, i32, i32, i32, i32*, i32*, i32* }

@.str = private unnamed_addr constant [14 x i8] c"unknown error\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"restrict\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"cert-authority\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"port-forwarding\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"agent-forwarding\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"x11-forwarding\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"pty\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"user-rc\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"command\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"multiple \22command\22 clauses\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"principals\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"multiple \22principals\22 clauses\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"from\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"multiple \22from\22 clauses\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"expiry-time\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"invalid expires time\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"environment\00", align 1
@INT_MAX = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [29 x i8] c"too many environment strings\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"invalid environment string\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"permitopen\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"permitlisten\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"tunnel\00", align 1
@SSH_TUNID_ERR = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [19 x i8] c"invalid tun device\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"unknown key option\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"unexpected end-of-options\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"memory allocation failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sshauthopt* @sshauthopt_parse(i8* %0, i8** %1) #0 {
  %3 = alloca %struct.sshauthopt*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sshauthopt*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store %struct.sshauthopt* null, %struct.sshauthopt** %11, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %14 = load i8**, i8*** %5, align 8
  %15 = icmp ne i8** %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i8**, i8*** %5, align 8
  store i8* null, i8** %17, align 8
  br label %18

18:                                               ; preds = %16, %2
  %19 = call %struct.sshauthopt* (...) @sshauthopt_new_with_keys_defaults()
  store %struct.sshauthopt* %19, %struct.sshauthopt** %11, align 8
  %20 = icmp eq %struct.sshauthopt* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  br label %384

22:                                               ; preds = %18
  %23 = load i8*, i8** %4, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load %struct.sshauthopt*, %struct.sshauthopt** %11, align 8
  store %struct.sshauthopt* %26, %struct.sshauthopt** %3, align 8
  br label %394

27:                                               ; preds = %22
  br label %28

28:                                               ; preds = %376, %27
  %29 = load i8*, i8** %4, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = load i8*, i8** %4, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 32
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load i8*, i8** %4, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 9
  br label %43

43:                                               ; preds = %38, %33, %28
  %44 = phi i1 [ false, %33 ], [ false, %28 ], [ %42, %38 ]
  br i1 %44, label %45, label %377

45:                                               ; preds = %43
  %46 = call i32 @opt_flag(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 0, i8** %4)
  store i32 %46, i32* %10, align 4
  %47 = icmp ne i32 %46, -1
  br i1 %47, label %48, label %61

48:                                               ; preds = %45
  %49 = load %struct.sshauthopt*, %struct.sshauthopt** %11, align 8
  %50 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = load %struct.sshauthopt*, %struct.sshauthopt** %11, align 8
  %52 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %51, i32 0, i32 1
  store i32 0, i32* %52, align 4
  %53 = load %struct.sshauthopt*, %struct.sshauthopt** %11, align 8
  %54 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %53, i32 0, i32 2
  store i32 0, i32* %54, align 8
  %55 = load %struct.sshauthopt*, %struct.sshauthopt** %11, align 8
  %56 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %55, i32 0, i32 3
  store i32 0, i32* %56, align 4
  %57 = load %struct.sshauthopt*, %struct.sshauthopt** %11, align 8
  %58 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %57, i32 0, i32 4
  store i32 0, i32* %58, align 8
  %59 = load %struct.sshauthopt*, %struct.sshauthopt** %11, align 8
  %60 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %59, i32 0, i32 5
  store i32 0, i32* %60, align 4
  br label %346

61:                                               ; preds = %45
  %62 = call i32 @opt_flag(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 0, i8** %4)
  store i32 %62, i32* %10, align 4
  %63 = icmp ne i32 %62, -1
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.sshauthopt*, %struct.sshauthopt** %11, align 8
  %67 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %66, i32 0, i32 6
  store i32 %65, i32* %67, align 8
  br label %345

68:                                               ; preds = %61
  %69 = call i32 @opt_flag(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 1, i8** %4)
  store i32 %69, i32* %10, align 4
  %70 = icmp ne i32 %69, -1
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = load i32, i32* %10, align 4
  %73 = icmp eq i32 %72, 1
  %74 = zext i1 %73 to i32
  %75 = load %struct.sshauthopt*, %struct.sshauthopt** %11, align 8
  %76 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  br label %344

77:                                               ; preds = %68
  %78 = call i32 @opt_flag(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 1, i8** %4)
  store i32 %78, i32* %10, align 4
  %79 = icmp ne i32 %78, -1
  br i1 %79, label %80, label %86

80:                                               ; preds = %77
  %81 = load i32, i32* %10, align 4
  %82 = icmp eq i32 %81, 1
  %83 = zext i1 %82 to i32
  %84 = load %struct.sshauthopt*, %struct.sshauthopt** %11, align 8
  %85 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  br label %343

86:                                               ; preds = %77
  %87 = call i32 @opt_flag(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 1, i8** %4)
  store i32 %87, i32* %10, align 4
  %88 = icmp ne i32 %87, -1
  br i1 %88, label %89, label %95

89:                                               ; preds = %86
  %90 = load i32, i32* %10, align 4
  %91 = icmp eq i32 %90, 1
  %92 = zext i1 %91 to i32
  %93 = load %struct.sshauthopt*, %struct.sshauthopt** %11, align 8
  %94 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %93, i32 0, i32 3
  store i32 %92, i32* %94, align 4
  br label %342

95:                                               ; preds = %86
  %96 = call i32 @opt_flag(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 1, i8** %4)
  store i32 %96, i32* %10, align 4
  %97 = icmp ne i32 %96, -1
  br i1 %97, label %98, label %104

98:                                               ; preds = %95
  %99 = load i32, i32* %10, align 4
  %100 = icmp eq i32 %99, 1
  %101 = zext i1 %100 to i32
  %102 = load %struct.sshauthopt*, %struct.sshauthopt** %11, align 8
  %103 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %102, i32 0, i32 4
  store i32 %101, i32* %103, align 8
  br label %341

104:                                              ; preds = %95
  %105 = call i32 @opt_flag(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 1, i8** %4)
  store i32 %105, i32* %10, align 4
  %106 = icmp ne i32 %105, -1
  br i1 %106, label %107, label %113

107:                                              ; preds = %104
  %108 = load i32, i32* %10, align 4
  %109 = icmp eq i32 %108, 1
  %110 = zext i1 %109 to i32
  %111 = load %struct.sshauthopt*, %struct.sshauthopt** %11, align 8
  %112 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %111, i32 0, i32 5
  store i32 %110, i32* %112, align 4
  br label %340

113:                                              ; preds = %104
  %114 = call i64 @opt_match(i8** %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %133

116:                                              ; preds = %113
  %117 = load %struct.sshauthopt*, %struct.sshauthopt** %11, align 8
  %118 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %117, i32 0, i32 17
  %119 = load i32*, i32** %118, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i8** %12, align 8
  br label %385

122:                                              ; preds = %116
  %123 = call i8* @opt_dequote(i8** %4, i8** %12)
  %124 = bitcast i8* %123 to i32*
  %125 = load %struct.sshauthopt*, %struct.sshauthopt** %11, align 8
  %126 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %125, i32 0, i32 17
  store i32* %124, i32** %126, align 8
  %127 = load %struct.sshauthopt*, %struct.sshauthopt** %11, align 8
  %128 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %127, i32 0, i32 17
  %129 = load i32*, i32** %128, align 8
  %130 = icmp eq i32* %129, null
  br i1 %130, label %131, label %132

131:                                              ; preds = %122
  br label %385

132:                                              ; preds = %122
  br label %339

133:                                              ; preds = %113
  %134 = call i64 @opt_match(i8** %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %153

136:                                              ; preds = %133
  %137 = load %struct.sshauthopt*, %struct.sshauthopt** %11, align 8
  %138 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %137, i32 0, i32 16
  %139 = load i32*, i32** %138, align 8
  %140 = icmp ne i32* %139, null
  br i1 %140, label %141, label %142

141:                                              ; preds = %136
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i8** %12, align 8
  br label %385

142:                                              ; preds = %136
  %143 = call i8* @opt_dequote(i8** %4, i8** %12)
  %144 = bitcast i8* %143 to i32*
  %145 = load %struct.sshauthopt*, %struct.sshauthopt** %11, align 8
  %146 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %145, i32 0, i32 16
  store i32* %144, i32** %146, align 8
  %147 = load %struct.sshauthopt*, %struct.sshauthopt** %11, align 8
  %148 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %147, i32 0, i32 16
  %149 = load i32*, i32** %148, align 8
  %150 = icmp eq i32* %149, null
  br i1 %150, label %151, label %152

151:                                              ; preds = %142
  br label %385

152:                                              ; preds = %142
  br label %338

153:                                              ; preds = %133
  %154 = call i64 @opt_match(i8** %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %173

156:                                              ; preds = %153
  %157 = load %struct.sshauthopt*, %struct.sshauthopt** %11, align 8
  %158 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %157, i32 0, i32 15
  %159 = load i32*, i32** %158, align 8
  %160 = icmp ne i32* %159, null
  br i1 %160, label %161, label %162

161:                                              ; preds = %156
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i8** %12, align 8
  br label %385

162:                                              ; preds = %156
  %163 = call i8* @opt_dequote(i8** %4, i8** %12)
  %164 = bitcast i8* %163 to i32*
  %165 = load %struct.sshauthopt*, %struct.sshauthopt** %11, align 8
  %166 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %165, i32 0, i32 15
  store i32* %164, i32** %166, align 8
  %167 = load %struct.sshauthopt*, %struct.sshauthopt** %11, align 8
  %168 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %167, i32 0, i32 15
  %169 = load i32*, i32** %168, align 8
  %170 = icmp eq i32* %169, null
  br i1 %170, label %171, label %172

171:                                              ; preds = %162
  br label %385

172:                                              ; preds = %162
  br label %337

173:                                              ; preds = %153
  %174 = call i64 @opt_match(i8** %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0))
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %208

176:                                              ; preds = %173
  %177 = call i8* @opt_dequote(i8** %4, i8** %12)
  store i8* %177, i8** %7, align 8
  %178 = icmp eq i8* %177, null
  br i1 %178, label %179, label %180

179:                                              ; preds = %176
  br label %385

180:                                              ; preds = %176
  %181 = load i8*, i8** %7, align 8
  %182 = call i64 @parse_absolute_time(i8* %181, i64* %13)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %187, label %184

184:                                              ; preds = %180
  %185 = load i64, i64* %13, align 8
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %184, %180
  %188 = load i8*, i8** %7, align 8
  %189 = call i32 @free(i8* %188)
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i8** %12, align 8
  br label %385

190:                                              ; preds = %184
  %191 = load i8*, i8** %7, align 8
  %192 = call i32 @free(i8* %191)
  %193 = load %struct.sshauthopt*, %struct.sshauthopt** %11, align 8
  %194 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %193, i32 0, i32 7
  %195 = load i64, i64* %194, align 8
  %196 = icmp eq i64 %195, 0
  br i1 %196, label %203, label %197

197:                                              ; preds = %190
  %198 = load i64, i64* %13, align 8
  %199 = load %struct.sshauthopt*, %struct.sshauthopt** %11, align 8
  %200 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %199, i32 0, i32 7
  %201 = load i64, i64* %200, align 8
  %202 = icmp slt i64 %198, %201
  br i1 %202, label %203, label %207

203:                                              ; preds = %197, %190
  %204 = load i64, i64* %13, align 8
  %205 = load %struct.sshauthopt*, %struct.sshauthopt** %11, align 8
  %206 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %205, i32 0, i32 7
  store i64 %204, i64* %206, align 8
  br label %207

207:                                              ; preds = %203, %197
  br label %336

208:                                              ; preds = %173
  %209 = call i64 @opt_match(i8** %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0))
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %287

211:                                              ; preds = %208
  %212 = load %struct.sshauthopt*, %struct.sshauthopt** %11, align 8
  %213 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %212, i32 0, i32 8
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @INT_MAX, align 8
  %216 = icmp sgt i64 %214, %215
  br i1 %216, label %217, label %218

217:                                              ; preds = %211
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0), i8** %12, align 8
  br label %385

218:                                              ; preds = %211
  %219 = call i8* @opt_dequote(i8** %4, i8** %12)
  store i8* %219, i8** %7, align 8
  %220 = icmp eq i8* %219, null
  br i1 %220, label %221, label %222

221:                                              ; preds = %218
  br label %385

222:                                              ; preds = %218
  %223 = load i8*, i8** %7, align 8
  %224 = call i8* @strchr(i8* %223, i8 signext 61)
  store i8* %224, i8** %9, align 8
  %225 = icmp eq i8* %224, null
  br i1 %225, label %226, label %229

226:                                              ; preds = %222
  %227 = load i8*, i8** %7, align 8
  %228 = call i32 @free(i8* %227)
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i64 0, i64 0), i8** %12, align 8
  br label %385

229:                                              ; preds = %222
  %230 = load i8*, i8** %7, align 8
  store i8* %230, i8** %8, align 8
  br label %231

231:                                              ; preds = %250, %229
  %232 = load i8*, i8** %8, align 8
  %233 = load i8*, i8** %9, align 8
  %234 = icmp ult i8* %232, %233
  br i1 %234, label %235, label %253

235:                                              ; preds = %231
  %236 = load i8*, i8** %8, align 8
  %237 = load i8, i8* %236, align 1
  %238 = sext i8 %237 to i32
  %239 = call i32 @isalnum(i32 %238) #3
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %249, label %241

241:                                              ; preds = %235
  %242 = load i8*, i8** %8, align 8
  %243 = load i8, i8* %242, align 1
  %244 = sext i8 %243 to i32
  %245 = icmp ne i32 %244, 95
  br i1 %245, label %246, label %249

246:                                              ; preds = %241
  %247 = load i8*, i8** %7, align 8
  %248 = call i32 @free(i8* %247)
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i64 0, i64 0), i8** %12, align 8
  br label %385

249:                                              ; preds = %241, %235
  br label %250

250:                                              ; preds = %249
  %251 = load i8*, i8** %8, align 8
  %252 = getelementptr inbounds i8, i8* %251, i32 1
  store i8* %252, i8** %8, align 8
  br label %231

253:                                              ; preds = %231
  %254 = load %struct.sshauthopt*, %struct.sshauthopt** %11, align 8
  %255 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %254, i32 0, i32 9
  %256 = load i8**, i8*** %255, align 8
  store i8** %256, i8*** %6, align 8
  %257 = load %struct.sshauthopt*, %struct.sshauthopt** %11, align 8
  %258 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %257, i32 0, i32 9
  %259 = load i8**, i8*** %258, align 8
  %260 = load %struct.sshauthopt*, %struct.sshauthopt** %11, align 8
  %261 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %260, i32 0, i32 8
  %262 = load i64, i64* %261, align 8
  %263 = load %struct.sshauthopt*, %struct.sshauthopt** %11, align 8
  %264 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %263, i32 0, i32 8
  %265 = load i64, i64* %264, align 8
  %266 = add nsw i64 %265, 1
  %267 = call i8** @recallocarray(i8** %259, i64 %262, i64 %266, i32 8)
  %268 = load %struct.sshauthopt*, %struct.sshauthopt** %11, align 8
  %269 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %268, i32 0, i32 9
  store i8** %267, i8*** %269, align 8
  %270 = icmp eq i8** %267, null
  br i1 %270, label %271, label %277

271:                                              ; preds = %253
  %272 = load i8*, i8** %7, align 8
  %273 = call i32 @free(i8* %272)
  %274 = load i8**, i8*** %6, align 8
  %275 = load %struct.sshauthopt*, %struct.sshauthopt** %11, align 8
  %276 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %275, i32 0, i32 9
  store i8** %274, i8*** %276, align 8
  br label %384

277:                                              ; preds = %253
  %278 = load i8*, i8** %7, align 8
  %279 = load %struct.sshauthopt*, %struct.sshauthopt** %11, align 8
  %280 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %279, i32 0, i32 9
  %281 = load i8**, i8*** %280, align 8
  %282 = load %struct.sshauthopt*, %struct.sshauthopt** %11, align 8
  %283 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %282, i32 0, i32 8
  %284 = load i64, i64* %283, align 8
  %285 = add nsw i64 %284, 1
  store i64 %285, i64* %283, align 8
  %286 = getelementptr inbounds i8*, i8** %281, i64 %284
  store i8* %278, i8** %286, align 8
  br label %335

287:                                              ; preds = %208
  %288 = call i64 @opt_match(i8** %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0))
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %299

290:                                              ; preds = %287
  %291 = load %struct.sshauthopt*, %struct.sshauthopt** %11, align 8
  %292 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %291, i32 0, i32 14
  %293 = load %struct.sshauthopt*, %struct.sshauthopt** %11, align 8
  %294 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %293, i32 0, i32 13
  %295 = call i64 @handle_permit(i8** %4, i32 0, i32* %292, i32* %294, i8** %12)
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %298

297:                                              ; preds = %290
  br label %385

298:                                              ; preds = %290
  br label %334

299:                                              ; preds = %287
  %300 = call i64 @opt_match(i8** %4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0))
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %311

302:                                              ; preds = %299
  %303 = load %struct.sshauthopt*, %struct.sshauthopt** %11, align 8
  %304 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %303, i32 0, i32 12
  %305 = load %struct.sshauthopt*, %struct.sshauthopt** %11, align 8
  %306 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %305, i32 0, i32 11
  %307 = call i64 @handle_permit(i8** %4, i32 1, i32* %304, i32* %306, i8** %12)
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %310

309:                                              ; preds = %302
  br label %385

310:                                              ; preds = %302
  br label %333

311:                                              ; preds = %299
  %312 = call i64 @opt_match(i8** %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0))
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %332

314:                                              ; preds = %311
  %315 = call i8* @opt_dequote(i8** %4, i8** %12)
  store i8* %315, i8** %7, align 8
  %316 = icmp eq i8* %315, null
  br i1 %316, label %317, label %318

317:                                              ; preds = %314
  br label %385

318:                                              ; preds = %314
  %319 = load i8*, i8** %7, align 8
  %320 = call i32 @a2tun(i8* %319, i32* null)
  %321 = load %struct.sshauthopt*, %struct.sshauthopt** %11, align 8
  %322 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %321, i32 0, i32 10
  store i32 %320, i32* %322, align 8
  %323 = load i8*, i8** %7, align 8
  %324 = call i32 @free(i8* %323)
  %325 = load %struct.sshauthopt*, %struct.sshauthopt** %11, align 8
  %326 = getelementptr inbounds %struct.sshauthopt, %struct.sshauthopt* %325, i32 0, i32 10
  %327 = load i32, i32* %326, align 8
  %328 = load i32, i32* @SSH_TUNID_ERR, align 4
  %329 = icmp eq i32 %327, %328
  br i1 %329, label %330, label %331

330:                                              ; preds = %318
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i64 0, i64 0), i8** %12, align 8
  br label %385

331:                                              ; preds = %318
  br label %332

332:                                              ; preds = %331, %311
  br label %333

333:                                              ; preds = %332, %310
  br label %334

334:                                              ; preds = %333, %298
  br label %335

335:                                              ; preds = %334, %277
  br label %336

336:                                              ; preds = %335, %207
  br label %337

337:                                              ; preds = %336, %172
  br label %338

338:                                              ; preds = %337, %152
  br label %339

339:                                              ; preds = %338, %132
  br label %340

340:                                              ; preds = %339, %107
  br label %341

341:                                              ; preds = %340, %98
  br label %342

342:                                              ; preds = %341, %89
  br label %343

343:                                              ; preds = %342, %80
  br label %344

344:                                              ; preds = %343, %71
  br label %345

345:                                              ; preds = %344, %64
  br label %346

346:                                              ; preds = %345, %48
  %347 = load i8*, i8** %4, align 8
  %348 = load i8, i8* %347, align 1
  %349 = sext i8 %348 to i32
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %361, label %351

351:                                              ; preds = %346
  %352 = load i8*, i8** %4, align 8
  %353 = load i8, i8* %352, align 1
  %354 = sext i8 %353 to i32
  %355 = icmp eq i32 %354, 32
  br i1 %355, label %361, label %356

356:                                              ; preds = %351
  %357 = load i8*, i8** %4, align 8
  %358 = load i8, i8* %357, align 1
  %359 = sext i8 %358 to i32
  %360 = icmp eq i32 %359, 9
  br i1 %360, label %361, label %362

361:                                              ; preds = %356, %351, %346
  br label %377

362:                                              ; preds = %356
  %363 = load i8*, i8** %4, align 8
  %364 = load i8, i8* %363, align 1
  %365 = sext i8 %364 to i32
  %366 = icmp ne i32 %365, 44
  br i1 %366, label %367, label %368

367:                                              ; preds = %362
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i64 0, i64 0), i8** %12, align 8
  br label %385

368:                                              ; preds = %362
  %369 = load i8*, i8** %4, align 8
  %370 = getelementptr inbounds i8, i8* %369, i32 1
  store i8* %370, i8** %4, align 8
  %371 = load i8*, i8** %4, align 8
  %372 = load i8, i8* %371, align 1
  %373 = sext i8 %372 to i32
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %375, label %376

375:                                              ; preds = %368
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24, i64 0, i64 0), i8** %12, align 8
  br label %385

376:                                              ; preds = %368
  br label %28

377:                                              ; preds = %361, %43
  %378 = load i8**, i8*** %5, align 8
  %379 = icmp ne i8** %378, null
  br i1 %379, label %380, label %382

380:                                              ; preds = %377
  %381 = load i8**, i8*** %5, align 8
  store i8* null, i8** %381, align 8
  br label %382

382:                                              ; preds = %380, %377
  %383 = load %struct.sshauthopt*, %struct.sshauthopt** %11, align 8
  store %struct.sshauthopt* %383, %struct.sshauthopt** %3, align 8
  br label %394

384:                                              ; preds = %271, %21
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i64 0, i64 0), i8** %12, align 8
  br label %385

385:                                              ; preds = %384, %375, %367, %330, %317, %309, %297, %246, %226, %221, %217, %187, %179, %171, %161, %151, %141, %131, %121
  %386 = load %struct.sshauthopt*, %struct.sshauthopt** %11, align 8
  %387 = call i32 @sshauthopt_free(%struct.sshauthopt* %386)
  %388 = load i8**, i8*** %5, align 8
  %389 = icmp ne i8** %388, null
  br i1 %389, label %390, label %393

390:                                              ; preds = %385
  %391 = load i8*, i8** %12, align 8
  %392 = load i8**, i8*** %5, align 8
  store i8* %391, i8** %392, align 8
  br label %393

393:                                              ; preds = %390, %385
  store %struct.sshauthopt* null, %struct.sshauthopt** %3, align 8
  br label %394

394:                                              ; preds = %393, %382, %25
  %395 = load %struct.sshauthopt*, %struct.sshauthopt** %3, align 8
  ret %struct.sshauthopt* %395
}

declare dso_local %struct.sshauthopt* @sshauthopt_new_with_keys_defaults(...) #1

declare dso_local i32 @opt_flag(i8*, i32, i8**) #1

declare dso_local i64 @opt_match(i8**, i8*) #1

declare dso_local i8* @opt_dequote(i8**, i8**) #1

declare dso_local i64 @parse_absolute_time(i8*, i64*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isalnum(i32) #2

declare dso_local i8** @recallocarray(i8**, i64, i64, i32) #1

declare dso_local i64 @handle_permit(i8**, i32, i32*, i32*, i8**) #1

declare dso_local i32 @a2tun(i8*, i32*) #1

declare dso_local i32 @sshauthopt_free(%struct.sshauthopt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
