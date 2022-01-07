; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/cpio/extr_cmdline.c_cpio_getopt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/cpio/extr_cmdline.c_cpio_getopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8*, i32, i64 }
%struct.cpio = type { i8*, i8**, i32 }

@cpio_getopt.state = internal global i32 0, align 4
@cpio_getopt.opt_word = internal global i8* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"--\00", align 1
@short_options = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Option -%c requires an argument\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"-W \00", align 1
@cpio_longopts = common dso_local global %struct.option* null, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"Option %s%s is not supported\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"Ambiguous option %s%s (matches --%s and --%s)\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Option %s%s requires an argument\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Option %s%s does not allow an argument\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpio_getopt(%struct.cpio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpio*, align 8
  %4 = alloca %struct.option*, align 8
  %5 = alloca %struct.option*, align 8
  %6 = alloca %struct.option*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cpio* %0, %struct.cpio** %3, align 8
  store %struct.option* null, %struct.option** %5, align 8
  store %struct.option* null, %struct.option** %6, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  store i32 63, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.cpio*, %struct.cpio** %3, align 8
  %13 = getelementptr inbounds %struct.cpio, %struct.cpio* %12, i32 0, i32 0
  store i8* null, i8** %13, align 8
  %14 = load i32, i32* @cpio_getopt.state, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %1
  %17 = load %struct.cpio*, %struct.cpio** %3, align 8
  %18 = getelementptr inbounds %struct.cpio, %struct.cpio* %17, i32 0, i32 1
  %19 = load i8**, i8*** %18, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i32 1
  store i8** %20, i8*** %18, align 8
  %21 = load %struct.cpio*, %struct.cpio** %3, align 8
  %22 = getelementptr inbounds %struct.cpio, %struct.cpio* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %22, align 8
  store i32 1, i32* @cpio_getopt.state, align 4
  br label %25

25:                                               ; preds = %16, %1
  %26 = load i32, i32* @cpio_getopt.state, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %86

28:                                               ; preds = %25
  %29 = load %struct.cpio*, %struct.cpio** %3, align 8
  %30 = getelementptr inbounds %struct.cpio, %struct.cpio* %29, i32 0, i32 1
  %31 = load i8**, i8*** %30, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 0
  %33 = load i8*, i8** %32, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  store i32 -1, i32* %2, align 4
  br label %293

36:                                               ; preds = %28
  %37 = load %struct.cpio*, %struct.cpio** %3, align 8
  %38 = getelementptr inbounds %struct.cpio, %struct.cpio* %37, i32 0, i32 1
  %39 = load i8**, i8*** %38, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 0
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 45
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  store i32 -1, i32* %2, align 4
  br label %293

47:                                               ; preds = %36
  %48 = load %struct.cpio*, %struct.cpio** %3, align 8
  %49 = getelementptr inbounds %struct.cpio, %struct.cpio* %48, i32 0, i32 1
  %50 = load i8**, i8*** %49, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i64 @strcmp(i8* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %47
  %56 = load %struct.cpio*, %struct.cpio** %3, align 8
  %57 = getelementptr inbounds %struct.cpio, %struct.cpio* %56, i32 0, i32 1
  %58 = load i8**, i8*** %57, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i32 1
  store i8** %59, i8*** %57, align 8
  %60 = load %struct.cpio*, %struct.cpio** %3, align 8
  %61 = getelementptr inbounds %struct.cpio, %struct.cpio* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %61, align 8
  store i32 -1, i32* %2, align 4
  br label %293

64:                                               ; preds = %47
  %65 = load %struct.cpio*, %struct.cpio** %3, align 8
  %66 = getelementptr inbounds %struct.cpio, %struct.cpio* %65, i32 0, i32 1
  %67 = load i8**, i8*** %66, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i32 1
  store i8** %68, i8*** %66, align 8
  %69 = load i8*, i8** %67, align 8
  store i8* %69, i8** @cpio_getopt.opt_word, align 8
  %70 = load %struct.cpio*, %struct.cpio** %3, align 8
  %71 = getelementptr inbounds %struct.cpio, %struct.cpio* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %71, align 8
  %74 = load i8*, i8** @cpio_getopt.opt_word, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 1
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 45
  br i1 %78, label %79, label %82

79:                                               ; preds = %64
  store i32 3, i32* @cpio_getopt.state, align 4
  %80 = load i8*, i8** @cpio_getopt.opt_word, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 2
  store i8* %81, i8** @cpio_getopt.opt_word, align 8
  br label %85

82:                                               ; preds = %64
  store i32 2, i32* @cpio_getopt.state, align 4
  %83 = load i8*, i8** @cpio_getopt.opt_word, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** @cpio_getopt.opt_word, align 8
  br label %85

85:                                               ; preds = %82, %79
  br label %86

86:                                               ; preds = %85, %25
  %87 = load i32, i32* @cpio_getopt.state, align 4
  %88 = icmp eq i32 %87, 2
  br i1 %88, label %89, label %152

89:                                               ; preds = %86
  %90 = load i8*, i8** @cpio_getopt.opt_word, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** @cpio_getopt.opt_word, align 8
  %92 = load i8, i8* %90, align 1
  %93 = sext i8 %92 to i32
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %89
  store i32 1, i32* @cpio_getopt.state, align 4
  %97 = load %struct.cpio*, %struct.cpio** %3, align 8
  %98 = call i32 @cpio_getopt(%struct.cpio* %97)
  store i32 %98, i32* %2, align 4
  br label %293

99:                                               ; preds = %89
  %100 = load i8*, i8** @short_options, align 8
  %101 = load i32, i32* %10, align 4
  %102 = trunc i32 %101 to i8
  %103 = call i8* @strchr(i8* %100, i8 signext %102)
  store i8* %103, i8** %7, align 8
  %104 = load i8*, i8** %7, align 8
  %105 = icmp eq i8* %104, null
  br i1 %105, label %106, label %107

106:                                              ; preds = %99
  store i32 63, i32* %2, align 4
  br label %293

107:                                              ; preds = %99
  %108 = load i8*, i8** %7, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 1
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 58
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  store i32 1, i32* %11, align 4
  br label %114

114:                                              ; preds = %113, %107
  %115 = load i32, i32* %11, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %151

117:                                              ; preds = %114
  %118 = load i8*, i8** @cpio_getopt.opt_word, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 0
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %142

123:                                              ; preds = %117
  %124 = load %struct.cpio*, %struct.cpio** %3, align 8
  %125 = getelementptr inbounds %struct.cpio, %struct.cpio* %124, i32 0, i32 1
  %126 = load i8**, i8*** %125, align 8
  %127 = load i8*, i8** %126, align 8
  store i8* %127, i8** @cpio_getopt.opt_word, align 8
  %128 = load i8*, i8** @cpio_getopt.opt_word, align 8
  %129 = icmp eq i8* %128, null
  br i1 %129, label %130, label %133

130:                                              ; preds = %123
  %131 = load i32, i32* %10, align 4
  %132 = call i32 (i32, i8*, ...) @lafe_warnc(i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %131)
  store i32 63, i32* %2, align 4
  br label %293

133:                                              ; preds = %123
  %134 = load %struct.cpio*, %struct.cpio** %3, align 8
  %135 = getelementptr inbounds %struct.cpio, %struct.cpio* %134, i32 0, i32 1
  %136 = load i8**, i8*** %135, align 8
  %137 = getelementptr inbounds i8*, i8** %136, i32 1
  store i8** %137, i8*** %135, align 8
  %138 = load %struct.cpio*, %struct.cpio** %3, align 8
  %139 = getelementptr inbounds %struct.cpio, %struct.cpio* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = add nsw i32 %140, -1
  store i32 %141, i32* %139, align 8
  br label %142

142:                                              ; preds = %133, %117
  %143 = load i32, i32* %10, align 4
  %144 = icmp eq i32 %143, 87
  br i1 %144, label %145, label %146

145:                                              ; preds = %142
  store i32 3, i32* @cpio_getopt.state, align 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  br label %150

146:                                              ; preds = %142
  store i32 1, i32* @cpio_getopt.state, align 4
  %147 = load i8*, i8** @cpio_getopt.opt_word, align 8
  %148 = load %struct.cpio*, %struct.cpio** %3, align 8
  %149 = getelementptr inbounds %struct.cpio, %struct.cpio* %148, i32 0, i32 0
  store i8* %147, i8** %149, align 8
  br label %150

150:                                              ; preds = %146, %145
  br label %151

151:                                              ; preds = %150, %114
  br label %152

152:                                              ; preds = %151, %86
  %153 = load i32, i32* @cpio_getopt.state, align 4
  %154 = icmp eq i32 %153, 3
  br i1 %154, label %155, label %291

155:                                              ; preds = %152
  store i32 1, i32* @cpio_getopt.state, align 4
  %156 = load i8*, i8** @cpio_getopt.opt_word, align 8
  %157 = call i8* @strchr(i8* %156, i8 signext 61)
  store i8* %157, i8** %7, align 8
  %158 = load i8*, i8** %7, align 8
  %159 = icmp ne i8* %158, null
  br i1 %159, label %160, label %172

160:                                              ; preds = %155
  %161 = load i8*, i8** %7, align 8
  %162 = load i8*, i8** @cpio_getopt.opt_word, align 8
  %163 = ptrtoint i8* %161 to i64
  %164 = ptrtoint i8* %162 to i64
  %165 = sub i64 %163, %164
  store i64 %165, i64* %9, align 8
  %166 = load i8*, i8** %7, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 1
  %168 = ptrtoint i8* %167 to i64
  %169 = inttoptr i64 %168 to i8*
  %170 = load %struct.cpio*, %struct.cpio** %3, align 8
  %171 = getelementptr inbounds %struct.cpio, %struct.cpio* %170, i32 0, i32 0
  store i8* %169, i8** %171, align 8
  br label %175

172:                                              ; preds = %155
  %173 = load i8*, i8** @cpio_getopt.opt_word, align 8
  %174 = call i64 @strlen(i8* %173)
  store i64 %174, i64* %9, align 8
  br label %175

175:                                              ; preds = %172, %160
  %176 = load %struct.option*, %struct.option** @cpio_longopts, align 8
  store %struct.option* %176, %struct.option** %4, align 8
  br label %177

177:                                              ; preds = %215, %175
  %178 = load %struct.option*, %struct.option** %4, align 8
  %179 = getelementptr inbounds %struct.option, %struct.option* %178, i32 0, i32 0
  %180 = load i8*, i8** %179, align 8
  %181 = icmp ne i8* %180, null
  br i1 %181, label %182, label %218

182:                                              ; preds = %177
  %183 = load %struct.option*, %struct.option** %4, align 8
  %184 = getelementptr inbounds %struct.option, %struct.option* %183, i32 0, i32 0
  %185 = load i8*, i8** %184, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 0
  %187 = load i8, i8* %186, align 1
  %188 = sext i8 %187 to i32
  %189 = load i8*, i8** @cpio_getopt.opt_word, align 8
  %190 = getelementptr inbounds i8, i8* %189, i64 0
  %191 = load i8, i8* %190, align 1
  %192 = sext i8 %191 to i32
  %193 = icmp ne i32 %188, %192
  br i1 %193, label %194, label %195

194:                                              ; preds = %182
  br label %215

195:                                              ; preds = %182
  %196 = load i8*, i8** @cpio_getopt.opt_word, align 8
  %197 = load %struct.option*, %struct.option** %4, align 8
  %198 = getelementptr inbounds %struct.option, %struct.option* %197, i32 0, i32 0
  %199 = load i8*, i8** %198, align 8
  %200 = load i64, i64* %9, align 8
  %201 = call i64 @strncmp(i8* %196, i8* %199, i64 %200)
  %202 = icmp eq i64 %201, 0
  br i1 %202, label %203, label %214

203:                                              ; preds = %195
  %204 = load %struct.option*, %struct.option** %5, align 8
  store %struct.option* %204, %struct.option** %6, align 8
  %205 = load %struct.option*, %struct.option** %4, align 8
  store %struct.option* %205, %struct.option** %5, align 8
  %206 = load %struct.option*, %struct.option** %4, align 8
  %207 = getelementptr inbounds %struct.option, %struct.option* %206, i32 0, i32 0
  %208 = load i8*, i8** %207, align 8
  %209 = call i64 @strlen(i8* %208)
  %210 = load i64, i64* %9, align 8
  %211 = icmp eq i64 %209, %210
  br i1 %211, label %212, label %213

212:                                              ; preds = %203
  store %struct.option* null, %struct.option** %6, align 8
  br label %218

213:                                              ; preds = %203
  br label %214

214:                                              ; preds = %213, %195
  br label %215

215:                                              ; preds = %214, %194
  %216 = load %struct.option*, %struct.option** %4, align 8
  %217 = getelementptr inbounds %struct.option, %struct.option* %216, i32 1
  store %struct.option* %217, %struct.option** %4, align 8
  br label %177

218:                                              ; preds = %212, %177
  %219 = load %struct.option*, %struct.option** %5, align 8
  %220 = icmp eq %struct.option* %219, null
  br i1 %220, label %221, label %225

221:                                              ; preds = %218
  %222 = load i8*, i8** %8, align 8
  %223 = load i8*, i8** @cpio_getopt.opt_word, align 8
  %224 = call i32 (i32, i8*, ...) @lafe_warnc(i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %222, i8* %223)
  store i32 63, i32* %2, align 4
  br label %293

225:                                              ; preds = %218
  %226 = load %struct.option*, %struct.option** %6, align 8
  %227 = icmp ne %struct.option* %226, null
  br i1 %227, label %228, label %238

228:                                              ; preds = %225
  %229 = load i8*, i8** %8, align 8
  %230 = load i8*, i8** @cpio_getopt.opt_word, align 8
  %231 = load %struct.option*, %struct.option** %5, align 8
  %232 = getelementptr inbounds %struct.option, %struct.option* %231, i32 0, i32 0
  %233 = load i8*, i8** %232, align 8
  %234 = load %struct.option*, %struct.option** %6, align 8
  %235 = getelementptr inbounds %struct.option, %struct.option* %234, i32 0, i32 0
  %236 = load i8*, i8** %235, align 8
  %237 = call i32 (i32, i8*, ...) @lafe_warnc(i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i8* %229, i8* %230, i8* %233, i8* %236)
  store i32 63, i32* %2, align 4
  br label %293

238:                                              ; preds = %225
  %239 = load %struct.option*, %struct.option** %5, align 8
  %240 = getelementptr inbounds %struct.option, %struct.option* %239, i32 0, i32 2
  %241 = load i64, i64* %240, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %275

243:                                              ; preds = %238
  %244 = load %struct.cpio*, %struct.cpio** %3, align 8
  %245 = getelementptr inbounds %struct.cpio, %struct.cpio* %244, i32 0, i32 0
  %246 = load i8*, i8** %245, align 8
  %247 = icmp eq i8* %246, null
  br i1 %247, label %248, label %274

248:                                              ; preds = %243
  %249 = load %struct.cpio*, %struct.cpio** %3, align 8
  %250 = getelementptr inbounds %struct.cpio, %struct.cpio* %249, i32 0, i32 1
  %251 = load i8**, i8*** %250, align 8
  %252 = load i8*, i8** %251, align 8
  %253 = load %struct.cpio*, %struct.cpio** %3, align 8
  %254 = getelementptr inbounds %struct.cpio, %struct.cpio* %253, i32 0, i32 0
  store i8* %252, i8** %254, align 8
  %255 = load %struct.cpio*, %struct.cpio** %3, align 8
  %256 = getelementptr inbounds %struct.cpio, %struct.cpio* %255, i32 0, i32 0
  %257 = load i8*, i8** %256, align 8
  %258 = icmp eq i8* %257, null
  br i1 %258, label %259, label %265

259:                                              ; preds = %248
  %260 = load i8*, i8** %8, align 8
  %261 = load %struct.option*, %struct.option** %5, align 8
  %262 = getelementptr inbounds %struct.option, %struct.option* %261, i32 0, i32 0
  %263 = load i8*, i8** %262, align 8
  %264 = call i32 (i32, i8*, ...) @lafe_warnc(i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i8* %260, i8* %263)
  store i32 63, i32* %2, align 4
  br label %293

265:                                              ; preds = %248
  %266 = load %struct.cpio*, %struct.cpio** %3, align 8
  %267 = getelementptr inbounds %struct.cpio, %struct.cpio* %266, i32 0, i32 1
  %268 = load i8**, i8*** %267, align 8
  %269 = getelementptr inbounds i8*, i8** %268, i32 1
  store i8** %269, i8*** %267, align 8
  %270 = load %struct.cpio*, %struct.cpio** %3, align 8
  %271 = getelementptr inbounds %struct.cpio, %struct.cpio* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 8
  %273 = add nsw i32 %272, -1
  store i32 %273, i32* %271, align 8
  br label %274

274:                                              ; preds = %265, %243
  br label %287

275:                                              ; preds = %238
  %276 = load %struct.cpio*, %struct.cpio** %3, align 8
  %277 = getelementptr inbounds %struct.cpio, %struct.cpio* %276, i32 0, i32 0
  %278 = load i8*, i8** %277, align 8
  %279 = icmp ne i8* %278, null
  br i1 %279, label %280, label %286

280:                                              ; preds = %275
  %281 = load i8*, i8** %8, align 8
  %282 = load %struct.option*, %struct.option** %5, align 8
  %283 = getelementptr inbounds %struct.option, %struct.option* %282, i32 0, i32 0
  %284 = load i8*, i8** %283, align 8
  %285 = call i32 (i32, i8*, ...) @lafe_warnc(i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i8* %281, i8* %284)
  store i32 63, i32* %2, align 4
  br label %293

286:                                              ; preds = %275
  br label %287

287:                                              ; preds = %286, %274
  %288 = load %struct.option*, %struct.option** %5, align 8
  %289 = getelementptr inbounds %struct.option, %struct.option* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 8
  store i32 %290, i32* %2, align 4
  br label %293

291:                                              ; preds = %152
  %292 = load i32, i32* %10, align 4
  store i32 %292, i32* %2, align 4
  br label %293

293:                                              ; preds = %291, %287, %280, %259, %228, %221, %130, %106, %96, %55, %46, %35
  %294 = load i32, i32* %2, align 4
  ret i32 %294
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @lafe_warnc(i32, i8*, ...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
