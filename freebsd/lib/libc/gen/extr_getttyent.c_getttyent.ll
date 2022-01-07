; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_getttyent.c_getttyent.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_getttyent.c_getttyent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttyent = type { i8*, i8*, i8*, i8*, i8*, i32*, i32 }

@getttyent.tty = internal global %struct.ttyent zeroinitializer, align 8
@tf = common dso_local global i32 0, align 4
@line = common dso_local global i8* null, align 8
@lbsize = common dso_local global i64 0, align 8
@MALLOCCHUNK = common dso_local global i64 0, align 8
@zapchar = common dso_local global i8 0, align 1
@_TTYS_NOGROUP = common dso_local global i8* null, align 8
@_TTYS_DIALUP = common dso_local global i32 0, align 4
@TTY_DIALUP = common dso_local global i32 0, align 4
@_TTYS_NETWORK = common dso_local global i32 0, align 4
@TTY_NETWORK = common dso_local global i32 0, align 4
@_TTYS_OFF = common dso_local global i32 0, align 4
@TTY_ON = common dso_local global i32 0, align 4
@_TTYS_ON = common dso_local global i32 0, align 4
@_TTYS_ONIFCONSOLE = common dso_local global i32 0, align 4
@_TTYS_ONIFEXISTS = common dso_local global i32 0, align 4
@_TTYS_SECURE = common dso_local global i32 0, align 4
@TTY_SECURE = common dso_local global i32 0, align 4
@_TTYS_INSECURE = common dso_local global i32 0, align 4
@_TTYS_WINDOW = common dso_local global i32 0, align 4
@_TTYS_GROUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ttyent* @getttyent() #0 {
  %1 = alloca %struct.ttyent*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = load i32, i32* @tf, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %0
  %8 = call i32 (...) @setttyent()
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  store %struct.ttyent* null, %struct.ttyent** %1, align 8
  br label %361

11:                                               ; preds = %7, %0
  br label %12

12:                                               ; preds = %76, %11
  %13 = load i8*, i8** @line, align 8
  store i8* %13, i8** %2, align 8
  %14 = load i64, i64* @lbsize, align 8
  %15 = load i32, i32* @tf, align 4
  %16 = call i32 @fgets(i8* %13, i64 %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  store %struct.ttyent* null, %struct.ttyent** %1, align 8
  br label %361

19:                                               ; preds = %12
  br label %20

20:                                               ; preds = %55, %19
  %21 = load i8*, i8** %2, align 8
  %22 = call i8* @strchr(i8* %21, i8 signext 10)
  %23 = icmp ne i8* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @tf, align 4
  %26 = call i32 @feof(i32 %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br label %29

29:                                               ; preds = %24, %20
  %30 = phi i1 [ false, %20 ], [ %28, %24 ]
  br i1 %30, label %31, label %56

31:                                               ; preds = %29
  %32 = load i8*, i8** %2, align 8
  %33 = call i64 @strlen(i8* %32)
  store i64 %33, i64* %4, align 8
  %34 = load i64, i64* @MALLOCCHUNK, align 8
  %35 = load i64, i64* @lbsize, align 8
  %36 = add nsw i64 %35, %34
  store i64 %36, i64* @lbsize, align 8
  %37 = load i8*, i8** @line, align 8
  %38 = load i64, i64* @lbsize, align 8
  %39 = call i8* @realloc(i8* %37, i64 %38)
  store i8* %39, i8** %2, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = call i32 (...) @endttyent()
  store %struct.ttyent* null, %struct.ttyent** %1, align 8
  br label %361

43:                                               ; preds = %31
  %44 = load i8*, i8** %2, align 8
  store i8* %44, i8** @line, align 8
  %45 = load i8*, i8** @line, align 8
  %46 = load i64, i64* %4, align 8
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  %48 = load i64, i64* @lbsize, align 8
  %49 = load i64, i64* %4, align 8
  %50 = sub i64 %48, %49
  %51 = load i32, i32* @tf, align 4
  %52 = call i32 @fgets(i8* %47, i64 %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %43
  store %struct.ttyent* null, %struct.ttyent** %1, align 8
  br label %361

55:                                               ; preds = %43
  br label %20

56:                                               ; preds = %29
  br label %57

57:                                               ; preds = %62, %56
  %58 = load i8*, i8** %2, align 8
  %59 = load i8, i8* %58, align 1
  %60 = call i64 @isspace(i8 zeroext %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i8*, i8** %2, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %2, align 8
  br label %57

65:                                               ; preds = %57
  %66 = load i8*, i8** %2, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load i8*, i8** %2, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 35
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %77

76:                                               ; preds = %70, %65
  br label %12

77:                                               ; preds = %75
  store i8 0, i8* @zapchar, align 1
  %78 = load i8*, i8** %2, align 8
  store i8* %78, i8** getelementptr inbounds (%struct.ttyent, %struct.ttyent* @getttyent.tty, i32 0, i32 0), align 8
  store i32 0, i32* getelementptr inbounds (%struct.ttyent, %struct.ttyent* @getttyent.tty, i32 0, i32 6), align 8
  store i32* null, i32** getelementptr inbounds (%struct.ttyent, %struct.ttyent* @getttyent.tty, i32 0, i32 5), align 8
  %79 = load i8*, i8** @_TTYS_NOGROUP, align 8
  store i8* %79, i8** getelementptr inbounds (%struct.ttyent, %struct.ttyent* @getttyent.tty, i32 0, i32 4), align 8
  %80 = load i8*, i8** %2, align 8
  %81 = call i8* @skip(i8* %80)
  store i8* %81, i8** %2, align 8
  %82 = load i8*, i8** %2, align 8
  store i8* %82, i8** getelementptr inbounds (%struct.ttyent, %struct.ttyent* @getttyent.tty, i32 0, i32 1), align 8
  %83 = load i8, i8* %82, align 1
  %84 = icmp ne i8 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %77
  store i8* null, i8** getelementptr inbounds (%struct.ttyent, %struct.ttyent* @getttyent.tty, i32 0, i32 2), align 8
  store i8* null, i8** getelementptr inbounds (%struct.ttyent, %struct.ttyent* @getttyent.tty, i32 0, i32 1), align 8
  br label %132

86:                                               ; preds = %77
  %87 = load i8*, i8** %2, align 8
  %88 = call i8* @skip(i8* %87)
  store i8* %88, i8** %2, align 8
  %89 = load i8*, i8** %2, align 8
  store i8* %89, i8** getelementptr inbounds (%struct.ttyent, %struct.ttyent* @getttyent.tty, i32 0, i32 2), align 8
  %90 = load i8, i8* %89, align 1
  %91 = icmp ne i8 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %86
  store i8* null, i8** getelementptr inbounds (%struct.ttyent, %struct.ttyent* @getttyent.tty, i32 0, i32 2), align 8
  br label %131

93:                                               ; preds = %86
  %94 = load i8*, i8** %2, align 8
  %95 = load i32, i32* @_TTYS_DIALUP, align 4
  %96 = sext i32 %95 to i64
  %97 = inttoptr i64 %96 to i8*
  %98 = call i32 @strncmp(i8* %94, i8* %97, i64 3)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %110, label %100

100:                                              ; preds = %93
  %101 = load i8*, i8** %2, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 3
  %103 = load i8, i8* %102, align 1
  %104 = call i64 @isspace(i8 zeroext %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %100
  %107 = load i32, i32* @TTY_DIALUP, align 4
  %108 = load i32, i32* getelementptr inbounds (%struct.ttyent, %struct.ttyent* @getttyent.tty, i32 0, i32 6), align 8
  %109 = or i32 %108, %107
  store i32 %109, i32* getelementptr inbounds (%struct.ttyent, %struct.ttyent* @getttyent.tty, i32 0, i32 6), align 8
  br label %128

110:                                              ; preds = %100, %93
  %111 = load i8*, i8** %2, align 8
  %112 = load i32, i32* @_TTYS_NETWORK, align 4
  %113 = sext i32 %112 to i64
  %114 = inttoptr i64 %113 to i8*
  %115 = call i32 @strncmp(i8* %111, i8* %114, i64 3)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %127, label %117

117:                                              ; preds = %110
  %118 = load i8*, i8** %2, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 3
  %120 = load i8, i8* %119, align 1
  %121 = call i64 @isspace(i8 zeroext %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %117
  %124 = load i32, i32* @TTY_NETWORK, align 4
  %125 = load i32, i32* getelementptr inbounds (%struct.ttyent, %struct.ttyent* @getttyent.tty, i32 0, i32 6), align 8
  %126 = or i32 %125, %124
  store i32 %126, i32* getelementptr inbounds (%struct.ttyent, %struct.ttyent* @getttyent.tty, i32 0, i32 6), align 8
  br label %127

127:                                              ; preds = %123, %117, %110
  br label %128

128:                                              ; preds = %127, %106
  %129 = load i8*, i8** %2, align 8
  %130 = call i8* @skip(i8* %129)
  store i8* %130, i8** %2, align 8
  br label %131

131:                                              ; preds = %128, %92
  br label %132

132:                                              ; preds = %131, %85
  br label %133

133:                                              ; preds = %321, %132
  %134 = load i8*, i8** %2, align 8
  %135 = load i8, i8* %134, align 1
  %136 = icmp ne i8 %135, 0
  br i1 %136, label %137, label %324

137:                                              ; preds = %133
  %138 = load i8*, i8** %2, align 8
  %139 = load i32, i32* @_TTYS_OFF, align 4
  %140 = sext i32 %139 to i64
  %141 = inttoptr i64 %140 to i8*
  %142 = call i32 @strncmp(i8* %138, i8* %141, i64 3)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %155, label %144

144:                                              ; preds = %137
  %145 = load i8*, i8** %2, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 3
  %147 = load i8, i8* %146, align 1
  %148 = call i64 @isspace(i8 zeroext %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %144
  %151 = load i32, i32* @TTY_ON, align 4
  %152 = xor i32 %151, -1
  %153 = load i32, i32* getelementptr inbounds (%struct.ttyent, %struct.ttyent* @getttyent.tty, i32 0, i32 6), align 8
  %154 = and i32 %153, %152
  store i32 %154, i32* getelementptr inbounds (%struct.ttyent, %struct.ttyent* @getttyent.tty, i32 0, i32 6), align 8
  br label %320

155:                                              ; preds = %144, %137
  %156 = load i8*, i8** %2, align 8
  %157 = load i32, i32* @_TTYS_ON, align 4
  %158 = sext i32 %157 to i64
  %159 = inttoptr i64 %158 to i8*
  %160 = call i32 @strncmp(i8* %156, i8* %159, i64 3)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %172, label %162

162:                                              ; preds = %155
  %163 = load i8*, i8** %2, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 3
  %165 = load i8, i8* %164, align 1
  %166 = call i64 @isspace(i8 zeroext %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %162
  %169 = load i32, i32* @TTY_ON, align 4
  %170 = load i32, i32* getelementptr inbounds (%struct.ttyent, %struct.ttyent* @getttyent.tty, i32 0, i32 6), align 8
  %171 = or i32 %170, %169
  store i32 %171, i32* getelementptr inbounds (%struct.ttyent, %struct.ttyent* @getttyent.tty, i32 0, i32 6), align 8
  br label %319

172:                                              ; preds = %162, %155
  %173 = load i8*, i8** %2, align 8
  %174 = load i32, i32* @_TTYS_ONIFCONSOLE, align 4
  %175 = sext i32 %174 to i64
  %176 = inttoptr i64 %175 to i8*
  %177 = call i32 @strncmp(i8* %173, i8* %176, i64 3)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %190, label %179

179:                                              ; preds = %172
  %180 = load i8*, i8** %2, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 3
  %182 = load i8, i8* %181, align 1
  %183 = call i64 @isspace(i8 zeroext %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %179
  %186 = load i8*, i8** getelementptr inbounds (%struct.ttyent, %struct.ttyent* @getttyent.tty, i32 0, i32 0), align 8
  %187 = call i32 @auto_tty_status(i8* %186)
  %188 = load i32, i32* getelementptr inbounds (%struct.ttyent, %struct.ttyent* @getttyent.tty, i32 0, i32 6), align 8
  %189 = or i32 %188, %187
  store i32 %189, i32* getelementptr inbounds (%struct.ttyent, %struct.ttyent* @getttyent.tty, i32 0, i32 6), align 8
  br label %318

190:                                              ; preds = %179, %172
  %191 = load i8*, i8** %2, align 8
  %192 = load i32, i32* @_TTYS_ONIFEXISTS, align 4
  %193 = sext i32 %192 to i64
  %194 = inttoptr i64 %193 to i8*
  %195 = call i32 @strncmp(i8* %191, i8* %194, i64 3)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %208, label %197

197:                                              ; preds = %190
  %198 = load i8*, i8** %2, align 8
  %199 = getelementptr inbounds i8, i8* %198, i64 3
  %200 = load i8, i8* %199, align 1
  %201 = call i64 @isspace(i8 zeroext %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %208

203:                                              ; preds = %197
  %204 = load i8*, i8** getelementptr inbounds (%struct.ttyent, %struct.ttyent* @getttyent.tty, i32 0, i32 0), align 8
  %205 = call i32 @auto_exists_status(i8* %204)
  %206 = load i32, i32* getelementptr inbounds (%struct.ttyent, %struct.ttyent* @getttyent.tty, i32 0, i32 6), align 8
  %207 = or i32 %206, %205
  store i32 %207, i32* getelementptr inbounds (%struct.ttyent, %struct.ttyent* @getttyent.tty, i32 0, i32 6), align 8
  br label %317

208:                                              ; preds = %197, %190
  %209 = load i8*, i8** %2, align 8
  %210 = load i32, i32* @_TTYS_SECURE, align 4
  %211 = sext i32 %210 to i64
  %212 = inttoptr i64 %211 to i8*
  %213 = call i32 @strncmp(i8* %209, i8* %212, i64 3)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %225, label %215

215:                                              ; preds = %208
  %216 = load i8*, i8** %2, align 8
  %217 = getelementptr inbounds i8, i8* %216, i64 3
  %218 = load i8, i8* %217, align 1
  %219 = call i64 @isspace(i8 zeroext %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %225

221:                                              ; preds = %215
  %222 = load i32, i32* @TTY_SECURE, align 4
  %223 = load i32, i32* getelementptr inbounds (%struct.ttyent, %struct.ttyent* @getttyent.tty, i32 0, i32 6), align 8
  %224 = or i32 %223, %222
  store i32 %224, i32* getelementptr inbounds (%struct.ttyent, %struct.ttyent* @getttyent.tty, i32 0, i32 6), align 8
  br label %316

225:                                              ; preds = %215, %208
  %226 = load i8*, i8** %2, align 8
  %227 = load i32, i32* @_TTYS_INSECURE, align 4
  %228 = sext i32 %227 to i64
  %229 = inttoptr i64 %228 to i8*
  %230 = call i32 @strncmp(i8* %226, i8* %229, i64 3)
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %243, label %232

232:                                              ; preds = %225
  %233 = load i8*, i8** %2, align 8
  %234 = getelementptr inbounds i8, i8* %233, i64 3
  %235 = load i8, i8* %234, align 1
  %236 = call i64 @isspace(i8 zeroext %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %243

238:                                              ; preds = %232
  %239 = load i32, i32* @TTY_SECURE, align 4
  %240 = xor i32 %239, -1
  %241 = load i32, i32* getelementptr inbounds (%struct.ttyent, %struct.ttyent* @getttyent.tty, i32 0, i32 6), align 8
  %242 = and i32 %241, %240
  store i32 %242, i32* getelementptr inbounds (%struct.ttyent, %struct.ttyent* @getttyent.tty, i32 0, i32 6), align 8
  br label %315

243:                                              ; preds = %232, %225
  %244 = load i8*, i8** %2, align 8
  %245 = load i32, i32* @_TTYS_DIALUP, align 4
  %246 = sext i32 %245 to i64
  %247 = inttoptr i64 %246 to i8*
  %248 = call i32 @strncmp(i8* %244, i8* %247, i64 3)
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %260, label %250

250:                                              ; preds = %243
  %251 = load i8*, i8** %2, align 8
  %252 = getelementptr inbounds i8, i8* %251, i64 3
  %253 = load i8, i8* %252, align 1
  %254 = call i64 @isspace(i8 zeroext %253)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %260

256:                                              ; preds = %250
  %257 = load i32, i32* @TTY_DIALUP, align 4
  %258 = load i32, i32* getelementptr inbounds (%struct.ttyent, %struct.ttyent* @getttyent.tty, i32 0, i32 6), align 8
  %259 = or i32 %258, %257
  store i32 %259, i32* getelementptr inbounds (%struct.ttyent, %struct.ttyent* @getttyent.tty, i32 0, i32 6), align 8
  br label %314

260:                                              ; preds = %250, %243
  %261 = load i8*, i8** %2, align 8
  %262 = load i32, i32* @_TTYS_NETWORK, align 4
  %263 = sext i32 %262 to i64
  %264 = inttoptr i64 %263 to i8*
  %265 = call i32 @strncmp(i8* %261, i8* %264, i64 3)
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %277, label %267

267:                                              ; preds = %260
  %268 = load i8*, i8** %2, align 8
  %269 = getelementptr inbounds i8, i8* %268, i64 3
  %270 = load i8, i8* %269, align 1
  %271 = call i64 @isspace(i8 zeroext %270)
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %277

273:                                              ; preds = %267
  %274 = load i32, i32* @TTY_NETWORK, align 4
  %275 = load i32, i32* getelementptr inbounds (%struct.ttyent, %struct.ttyent* @getttyent.tty, i32 0, i32 6), align 8
  %276 = or i32 %275, %274
  store i32 %276, i32* getelementptr inbounds (%struct.ttyent, %struct.ttyent* @getttyent.tty, i32 0, i32 6), align 8
  br label %313

277:                                              ; preds = %267, %260
  %278 = load i8*, i8** %2, align 8
  %279 = load i32, i32* @_TTYS_WINDOW, align 4
  %280 = sext i32 %279 to i64
  %281 = inttoptr i64 %280 to i8*
  %282 = call i32 @strncmp(i8* %278, i8* %281, i64 3)
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %294, label %284

284:                                              ; preds = %277
  %285 = load i8*, i8** %2, align 8
  %286 = getelementptr inbounds i8, i8* %285, i64 3
  %287 = load i8, i8* %286, align 1
  %288 = sext i8 %287 to i32
  %289 = icmp eq i32 %288, 61
  br i1 %289, label %290, label %294

290:                                              ; preds = %284
  %291 = load i8*, i8** %2, align 8
  %292 = call i8* @value(i8* %291)
  %293 = bitcast i8* %292 to i32*
  store i32* %293, i32** getelementptr inbounds (%struct.ttyent, %struct.ttyent* @getttyent.tty, i32 0, i32 5), align 8
  br label %312

294:                                              ; preds = %284, %277
  %295 = load i8*, i8** %2, align 8
  %296 = load i32, i32* @_TTYS_GROUP, align 4
  %297 = sext i32 %296 to i64
  %298 = inttoptr i64 %297 to i8*
  %299 = call i32 @strncmp(i8* %295, i8* %298, i64 3)
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %310, label %301

301:                                              ; preds = %294
  %302 = load i8*, i8** %2, align 8
  %303 = getelementptr inbounds i8, i8* %302, i64 3
  %304 = load i8, i8* %303, align 1
  %305 = sext i8 %304 to i32
  %306 = icmp eq i32 %305, 61
  br i1 %306, label %307, label %310

307:                                              ; preds = %301
  %308 = load i8*, i8** %2, align 8
  %309 = call i8* @value(i8* %308)
  store i8* %309, i8** getelementptr inbounds (%struct.ttyent, %struct.ttyent* @getttyent.tty, i32 0, i32 4), align 8
  br label %311

310:                                              ; preds = %301, %294
  br label %324

311:                                              ; preds = %307
  br label %312

312:                                              ; preds = %311, %290
  br label %313

313:                                              ; preds = %312, %273
  br label %314

314:                                              ; preds = %313, %256
  br label %315

315:                                              ; preds = %314, %238
  br label %316

316:                                              ; preds = %315, %221
  br label %317

317:                                              ; preds = %316, %203
  br label %318

318:                                              ; preds = %317, %185
  br label %319

319:                                              ; preds = %318, %168
  br label %320

320:                                              ; preds = %319, %150
  br label %321

321:                                              ; preds = %320
  %322 = load i8*, i8** %2, align 8
  %323 = call i8* @skip(i8* %322)
  store i8* %323, i8** %2, align 8
  br label %133

324:                                              ; preds = %310, %133
  %325 = load i8, i8* @zapchar, align 1
  %326 = sext i8 %325 to i32
  %327 = icmp eq i32 %326, 35
  br i1 %327, label %333, label %328

328:                                              ; preds = %324
  %329 = load i8*, i8** %2, align 8
  %330 = load i8, i8* %329, align 1
  %331 = sext i8 %330 to i32
  %332 = icmp eq i32 %331, 35
  br i1 %332, label %333, label %347

333:                                              ; preds = %328, %324
  br label %334

334:                                              ; preds = %345, %333
  %335 = load i8*, i8** %2, align 8
  %336 = getelementptr inbounds i8, i8* %335, i32 1
  store i8* %336, i8** %2, align 8
  %337 = load i8, i8* %336, align 1
  %338 = sext i8 %337 to i32
  store i32 %338, i32* %3, align 4
  %339 = icmp eq i32 %338, 32
  br i1 %339, label %343, label %340

340:                                              ; preds = %334
  %341 = load i32, i32* %3, align 4
  %342 = icmp eq i32 %341, 9
  br label %343

343:                                              ; preds = %340, %334
  %344 = phi i1 [ true, %334 ], [ %342, %340 ]
  br i1 %344, label %345, label %346

345:                                              ; preds = %343
  br label %334

346:                                              ; preds = %343
  br label %347

347:                                              ; preds = %346, %328
  %348 = load i8*, i8** %2, align 8
  store i8* %348, i8** getelementptr inbounds (%struct.ttyent, %struct.ttyent* @getttyent.tty, i32 0, i32 3), align 8
  %349 = load i8*, i8** %2, align 8
  %350 = load i8, i8* %349, align 1
  %351 = sext i8 %350 to i32
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %353, label %354

353:                                              ; preds = %347
  store i8* null, i8** getelementptr inbounds (%struct.ttyent, %struct.ttyent* @getttyent.tty, i32 0, i32 3), align 8
  br label %354

354:                                              ; preds = %353, %347
  %355 = load i8*, i8** %2, align 8
  %356 = call i8* @strchr(i8* %355, i8 signext 10)
  store i8* %356, i8** %2, align 8
  %357 = icmp ne i8* %356, null
  br i1 %357, label %358, label %360

358:                                              ; preds = %354
  %359 = load i8*, i8** %2, align 8
  store i8 0, i8* %359, align 1
  br label %360

360:                                              ; preds = %358, %354
  store %struct.ttyent* @getttyent.tty, %struct.ttyent** %1, align 8
  br label %361

361:                                              ; preds = %360, %54, %41, %18, %10
  %362 = load %struct.ttyent*, %struct.ttyent** %1, align 8
  ret %struct.ttyent* %362
}

declare dso_local i32 @setttyent(...) #1

declare dso_local i32 @fgets(i8*, i64, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @feof(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i32 @endttyent(...) #1

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i8* @skip(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i64) #1

declare dso_local i32 @auto_tty_status(i8*) #1

declare dso_local i32 @auto_exists_status(i8*) #1

declare dso_local i8* @value(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
