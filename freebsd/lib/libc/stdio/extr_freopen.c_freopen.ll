; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_freopen.c_freopen.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_freopen.c_freopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32, i32, i32 (%struct.TYPE_22__*)*, i32, i32, i32, %struct.TYPE_22__*, i32, i64, %struct.TYPE_21__, %struct.TYPE_20__, i64, %struct.TYPE_19__, i32*, i64, i64 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_19__ = type { i64, i32* }

@errno = common dso_local global i32 0, align 4
@__sdidinit = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@F_GETFL = common dso_local global i32 0, align 4
@O_ACCMODE = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_EXEC = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@__SWR = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@F_SETFD = common dso_local global i32 0, align 4
@FD_CLOEXEC = common dso_local global i32 0, align 4
@__SEOF = common dso_local global i32 0, align 4
@DEFFILEMODE = common dso_local global i32 0, align 4
@STDERR_FILENO = common dso_local global i32 0, align 4
@ENFILE = common dso_local global i32 0, align 4
@EMFILE = common dso_local global i32 0, align 4
@__SMBF = common dso_local global i32 0, align 4
@F_DUP2FD_CLOEXEC = common dso_local global i32 0, align 4
@SHRT_MAX = common dso_local global i32 0, align 4
@__sread = common dso_local global i32 0, align 4
@__swrite = common dso_local global i32 0, align 4
@__sseek = common dso_local global i32 0, align 4
@__S2OAP = common dso_local global i32 0, align 4
@SEEK_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_22__* @freopen(i8* noalias %0, i8* noalias %1, %struct.TYPE_22__* noalias %2) #0 {
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_22__* %2, %struct.TYPE_22__** %7, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @__sflags(i8* %15, i32* %12)
  store i32 %16, i32* %10, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load i32, i32* @errno, align 4
  store i32 %19, i32* %13, align 4
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %21 = call i32 @fclose(%struct.TYPE_22__* %20)
  %22 = load i32, i32* %13, align 4
  store i32 %22, i32* @errno, align 4
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %4, align 8
  br label %374

23:                                               ; preds = %3
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %25 = call i32 @FLOCKFILE_CANCELSAFE(%struct.TYPE_22__* %24)
  %26 = load i32, i32* @__sdidinit, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = call i32 (...) @__sinit()
  br label %30

30:                                               ; preds = %28, %23
  %31 = load i8*, i8** %5, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %148

33:                                               ; preds = %30
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @EINVAL, align 4
  store i32 %39, i32* @errno, align 4
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %7, align 8
  br label %371

40:                                               ; preds = %33
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @F_GETFL, align 4
  %45 = call i64 (i32, i32, ...) @_fcntl(i32 %43, i32 %44)
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %9, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %40
  %49 = load i32, i32* @errno, align 4
  store i32 %49, i32* %13, align 4
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %51 = call i32 @fclose(%struct.TYPE_22__* %50)
  %52 = load i32, i32* %13, align 4
  store i32 %52, i32* @errno, align 4
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %7, align 8
  br label %371

53:                                               ; preds = %40
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @O_ACCMODE, align 4
  %56 = and i32 %54, %55
  %57 = load i32, i32* @O_RDWR, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %73

59:                                               ; preds = %53
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @O_ACCMODE, align 4
  %62 = load i32, i32* @O_EXEC, align 4
  %63 = or i32 %61, %62
  %64 = and i32 %60, %63
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* @O_ACCMODE, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %64, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %59
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %71 = call i32 @fclose(%struct.TYPE_22__* %70)
  %72 = load i32, i32* @EBADF, align 4
  store i32 %72, i32* @errno, align 4
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %7, align 8
  br label %371

73:                                               ; preds = %59, %53
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @__SWR, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %73
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %82 = call i32 @__sflush(%struct.TYPE_22__* %81)
  br label %83

83:                                               ; preds = %80, %73
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %9, align 4
  %86 = xor i32 %84, %85
  %87 = load i32, i32* @O_APPEND, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %113

90:                                               ; preds = %83
  %91 = load i32, i32* @O_APPEND, align 4
  %92 = xor i32 %91, -1
  %93 = load i32, i32* %9, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* @O_APPEND, align 4
  %97 = and i32 %95, %96
  %98 = load i32, i32* %9, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %9, align 4
  %100 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @F_SETFL, align 4
  %104 = load i32, i32* %9, align 4
  %105 = call i64 (i32, i32, ...) @_fcntl(i32 %102, i32 %103, i32 %104)
  %106 = icmp slt i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %90
  %108 = load i32, i32* @errno, align 4
  store i32 %108, i32* %13, align 4
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %110 = call i32 @fclose(%struct.TYPE_22__* %109)
  %111 = load i32, i32* %13, align 4
  store i32 %111, i32* @errno, align 4
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %7, align 8
  br label %371

112:                                              ; preds = %90
  br label %113

113:                                              ; preds = %112, %83
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* @O_TRUNC, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %113
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @ftruncate(i32 %121, i32 0)
  br label %123

123:                                              ; preds = %118, %113
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* @O_APPEND, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %132, label %128

128:                                              ; preds = %123
  %129 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %130 = load i32, i32* @SEEK_SET, align 4
  %131 = call i32 @_sseek(%struct.TYPE_22__* %129, i32 0, i32 %130)
  br label %132

132:                                              ; preds = %128, %123
  %133 = load i32, i32* %12, align 4
  %134 = load i32, i32* @O_CLOEXEC, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %132
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @F_SETFD, align 4
  %142 = load i32, i32* @FD_CLOEXEC, align 4
  %143 = call i64 (i32, i32, ...) @_fcntl(i32 %140, i32 %141, i32 %142)
  br label %144

144:                                              ; preds = %137, %132
  %145 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  store i32 %147, i32* %8, align 4
  store i32 0, i32* %11, align 4
  store i32 -1, i32* %14, align 4
  br label %225

148:                                              ; preds = %30
  %149 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %148
  %154 = load i32, i32* @__SEOF, align 4
  %155 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 8
  store i32 0, i32* %11, align 4
  store i32 -1, i32* %14, align 4
  br label %189

157:                                              ; preds = %148
  %158 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @__SWR, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %157
  %165 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %166 = call i32 @__sflush(%struct.TYPE_22__* %165)
  br label %167

167:                                              ; preds = %164, %157
  %168 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %168, i32 0, i32 3
  %170 = load i32 (%struct.TYPE_22__*)*, i32 (%struct.TYPE_22__*)** %169, align 8
  %171 = icmp ne i32 (%struct.TYPE_22__*)* %170, null
  %172 = zext i1 %171 to i32
  store i32 %172, i32* %11, align 4
  %173 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  store i32 %175, i32* %14, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %188

177:                                              ; preds = %167
  %178 = load i32, i32* %11, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %188

180:                                              ; preds = %177
  %181 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %181, i32 0, i32 3
  %183 = load i32 (%struct.TYPE_22__*)*, i32 (%struct.TYPE_22__*)** %182, align 8
  %184 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %184, i32 0, i32 7
  %186 = load %struct.TYPE_22__*, %struct.TYPE_22__** %185, align 8
  %187 = call i32 %183(%struct.TYPE_22__* %186)
  store i32 0, i32* %11, align 4
  br label %188

188:                                              ; preds = %180, %177, %167
  br label %189

189:                                              ; preds = %188, %153
  %190 = load i8*, i8** %5, align 8
  %191 = load i32, i32* %12, align 4
  %192 = load i32, i32* @DEFFILEMODE, align 4
  %193 = call i32 @_open(i8* %190, i32 %191, i32 %192)
  store i32 %193, i32* %8, align 4
  %194 = load i32, i32* %8, align 4
  %195 = icmp slt i32 %194, 0
  br i1 %195, label %196, label %223

196:                                              ; preds = %189
  %197 = load i32, i32* %11, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %223

199:                                              ; preds = %196
  %200 = load i32, i32* %14, align 4
  %201 = load i32, i32* @STDERR_FILENO, align 4
  %202 = icmp sgt i32 %200, %201
  br i1 %202, label %203, label %223

203:                                              ; preds = %199
  %204 = load i32, i32* @errno, align 4
  %205 = load i32, i32* @ENFILE, align 4
  %206 = icmp eq i32 %204, %205
  br i1 %206, label %211, label %207

207:                                              ; preds = %203
  %208 = load i32, i32* @errno, align 4
  %209 = load i32, i32* @EMFILE, align 4
  %210 = icmp eq i32 %208, %209
  br i1 %210, label %211, label %223

211:                                              ; preds = %207, %203
  %212 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %213 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %212, i32 0, i32 3
  %214 = load i32 (%struct.TYPE_22__*)*, i32 (%struct.TYPE_22__*)** %213, align 8
  %215 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %216 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %215, i32 0, i32 7
  %217 = load %struct.TYPE_22__*, %struct.TYPE_22__** %216, align 8
  %218 = call i32 %214(%struct.TYPE_22__* %217)
  store i32 0, i32* %11, align 4
  store i32 -1, i32* %14, align 4
  %219 = load i8*, i8** %5, align 8
  %220 = load i32, i32* %12, align 4
  %221 = load i32, i32* @DEFFILEMODE, align 4
  %222 = call i32 @_open(i8* %219, i32 %220, i32 %221)
  store i32 %222, i32* %8, align 4
  br label %223

223:                                              ; preds = %211, %207, %199, %196, %189
  %224 = load i32, i32* @errno, align 4
  store i32 %224, i32* %13, align 4
  br label %225

225:                                              ; preds = %223, %144
  %226 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %227 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* @__SMBF, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %239

232:                                              ; preds = %225
  %233 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %234 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %233, i32 0, i32 13
  %235 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %234, i32 0, i32 1
  %236 = load i32*, i32** %235, align 8
  %237 = bitcast i32* %236 to i8*
  %238 = call i32 @free(i8* %237)
  br label %239

239:                                              ; preds = %232, %225
  %240 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %241 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %240, i32 0, i32 16
  store i64 0, i64* %241, align 8
  %242 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %243 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %242, i32 0, i32 15
  store i64 0, i64* %243, align 8
  %244 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %245 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %244, i32 0, i32 14
  store i32* null, i32** %245, align 8
  %246 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %247 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %246, i32 0, i32 13
  %248 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %247, i32 0, i32 1
  store i32* null, i32** %248, align 8
  %249 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %250 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %249, i32 0, i32 13
  %251 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %250, i32 0, i32 0
  store i64 0, i64* %251, align 8
  %252 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %253 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %252, i32 0, i32 12
  store i64 0, i64* %253, align 8
  %254 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %255 = call i64 @HASUB(%struct.TYPE_22__* %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %260

257:                                              ; preds = %239
  %258 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %259 = call i32 @FREEUB(%struct.TYPE_22__* %258)
  br label %260

260:                                              ; preds = %257, %239
  %261 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %262 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %261, i32 0, i32 11
  %263 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %262, i32 0, i32 0
  store i64 0, i64* %263, align 8
  %264 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %265 = call i64 @HASLB(%struct.TYPE_22__* %264)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %270

267:                                              ; preds = %260
  %268 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %269 = call i32 @FREELB(%struct.TYPE_22__* %268)
  br label %270

270:                                              ; preds = %267, %260
  %271 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %272 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %271, i32 0, i32 10
  %273 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %272, i32 0, i32 0
  store i64 0, i64* %273, align 8
  %274 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %275 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %274, i32 0, i32 9
  store i64 0, i64* %275, align 8
  %276 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %277 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %276, i32 0, i32 8
  %278 = call i32 @memset(i32* %277, i32 0, i32 4)
  %279 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %280 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %279, i32 0, i32 2
  store i32 0, i32* %280, align 8
  %281 = load i32, i32* %8, align 4
  %282 = icmp slt i32 %281, 0
  br i1 %282, label %283, label %298

283:                                              ; preds = %270
  %284 = load i32, i32* %11, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %294

286:                                              ; preds = %283
  %287 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %288 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %287, i32 0, i32 3
  %289 = load i32 (%struct.TYPE_22__*)*, i32 (%struct.TYPE_22__*)** %288, align 8
  %290 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %291 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %290, i32 0, i32 7
  %292 = load %struct.TYPE_22__*, %struct.TYPE_22__** %291, align 8
  %293 = call i32 %289(%struct.TYPE_22__* %292)
  br label %294

294:                                              ; preds = %286, %283
  %295 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %296 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %295, i32 0, i32 0
  store i32 0, i32* %296, align 8
  %297 = load i32, i32* %13, align 4
  store i32 %297, i32* @errno, align 4
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %7, align 8
  br label %371

298:                                              ; preds = %270
  %299 = load i32, i32* %14, align 4
  %300 = icmp sge i32 %299, 0
  br i1 %300, label %301, label %328

301:                                              ; preds = %298
  %302 = load i32, i32* %12, align 4
  %303 = load i32, i32* @O_CLOEXEC, align 4
  %304 = and i32 %302, %303
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %311

306:                                              ; preds = %301
  %307 = load i32, i32* %8, align 4
  %308 = load i32, i32* @F_DUP2FD_CLOEXEC, align 4
  %309 = load i32, i32* %14, align 4
  %310 = call i64 (i32, i32, ...) @_fcntl(i32 %307, i32 %308, i32 %309)
  br label %315

311:                                              ; preds = %301
  %312 = load i32, i32* %8, align 4
  %313 = load i32, i32* %14, align 4
  %314 = call i64 @_dup2(i32 %312, i32 %313)
  br label %315

315:                                              ; preds = %311, %306
  %316 = phi i64 [ %310, %306 ], [ %314, %311 ]
  %317 = icmp sge i64 %316, 0
  br i1 %317, label %318, label %322

318:                                              ; preds = %315
  %319 = load i32, i32* %8, align 4
  %320 = call i32 @_close(i32 %319)
  %321 = load i32, i32* %14, align 4
  store i32 %321, i32* %8, align 4
  br label %327

322:                                              ; preds = %315
  %323 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %324 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 4
  %326 = call i32 @_close(i32 %325)
  br label %327

327:                                              ; preds = %322, %318
  br label %328

328:                                              ; preds = %327, %298
  %329 = load i32, i32* %8, align 4
  %330 = load i32, i32* @SHRT_MAX, align 4
  %331 = icmp sgt i32 %329, %330
  br i1 %331, label %332, label %336

332:                                              ; preds = %328
  %333 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %334 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %333, i32 0, i32 0
  store i32 0, i32* %334, align 8
  %335 = load i32, i32* @EMFILE, align 4
  store i32 %335, i32* @errno, align 4
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %7, align 8
  br label %371

336:                                              ; preds = %328
  %337 = load i32, i32* %10, align 4
  %338 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %339 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %338, i32 0, i32 0
  store i32 %337, i32* %339, align 8
  %340 = load i32, i32* %8, align 4
  %341 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %342 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %341, i32 0, i32 1
  store i32 %340, i32* %342, align 4
  %343 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %344 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %345 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %344, i32 0, i32 7
  store %struct.TYPE_22__* %343, %struct.TYPE_22__** %345, align 8
  %346 = load i32, i32* @__sread, align 4
  %347 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %348 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %347, i32 0, i32 6
  store i32 %346, i32* %348, align 8
  %349 = load i32, i32* @__swrite, align 4
  %350 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %351 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %350, i32 0, i32 5
  store i32 %349, i32* %351, align 4
  %352 = load i32, i32* @__sseek, align 4
  %353 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %354 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %353, i32 0, i32 4
  store i32 %352, i32* %354, align 8
  %355 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %356 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %355, i32 0, i32 3
  store i32 (%struct.TYPE_22__*)* @__sclose, i32 (%struct.TYPE_22__*)** %356, align 8
  %357 = load i32, i32* %12, align 4
  %358 = load i32, i32* @O_APPEND, align 4
  %359 = and i32 %357, %358
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %370

361:                                              ; preds = %336
  %362 = load i32, i32* @__S2OAP, align 4
  %363 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %364 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %363, i32 0, i32 2
  %365 = load i32, i32* %364, align 8
  %366 = or i32 %365, %362
  store i32 %366, i32* %364, align 8
  %367 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %368 = load i32, i32* @SEEK_END, align 4
  %369 = call i32 @_sseek(%struct.TYPE_22__* %367, i32 0, i32 %368)
  br label %370

370:                                              ; preds = %361, %336
  br label %371

371:                                              ; preds = %370, %332, %294, %107, %69, %48, %38
  %372 = call i32 (...) @FUNLOCKFILE_CANCELSAFE()
  %373 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  store %struct.TYPE_22__* %373, %struct.TYPE_22__** %4, align 8
  br label %374

374:                                              ; preds = %371, %18
  %375 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  ret %struct.TYPE_22__* %375
}

declare dso_local i32 @__sflags(i8*, i32*) #1

declare dso_local i32 @fclose(%struct.TYPE_22__*) #1

declare dso_local i32 @FLOCKFILE_CANCELSAFE(%struct.TYPE_22__*) #1

declare dso_local i32 @__sinit(...) #1

declare dso_local i64 @_fcntl(i32, i32, ...) #1

declare dso_local i32 @__sflush(%struct.TYPE_22__*) #1

declare dso_local i32 @ftruncate(i32, i32) #1

declare dso_local i32 @_sseek(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @_open(i8*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @HASUB(%struct.TYPE_22__*) #1

declare dso_local i32 @FREEUB(%struct.TYPE_22__*) #1

declare dso_local i64 @HASLB(%struct.TYPE_22__*) #1

declare dso_local i32 @FREELB(%struct.TYPE_22__*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @_dup2(i32, i32) #1

declare dso_local i32 @_close(i32) #1

declare dso_local i32 @__sclose(%struct.TYPE_22__*) #1

declare dso_local i32 @FUNLOCKFILE_CANCELSAFE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
