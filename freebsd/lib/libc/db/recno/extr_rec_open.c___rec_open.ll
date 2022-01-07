; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/db/recno/extr_rec_open.c___rec_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/db/recno/extr_rec_open.c___rec_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64, i8, i32, i64 (%struct.TYPE_22__*, i32)*, i64, i64, i64, i64, i32, i32, i32* }
%struct.TYPE_21__ = type { i32, i64, i8, i32*, i32, i32, i32 }
%struct.TYPE_24__ = type { i32, i32*, i32*, i32, i64, i64, i32, i64 }
%struct.stat = type { i64 }

@O_CLOEXEC = common dso_local global i32 0, align 4
@R_FIXEDLEN = common dso_local global i32 0, align 4
@R_NOKEY = common dso_local global i32 0, align 4
@R_SNAPSHOT = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@R_FIXLEN = common dso_local global i32 0, align 4
@R_RECNO = common dso_local global i32 0, align 4
@R_EOF = common dso_local global i32 0, align 4
@R_INMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@ESPIPE = common dso_local global i32 0, align 4
@O_ACCMODE = common dso_local global i32 0, align 4
@R_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@R_CLOSEFP = common dso_local global i32 0, align 4
@__rec_close = common dso_local global i32 0, align 4
@__rec_delete = common dso_local global i32 0, align 4
@__rec_fd = common dso_local global i32 0, align 4
@__rec_get = common dso_local global i32 0, align 4
@__rec_put = common dso_local global i32 0, align 4
@__rec_seq = common dso_local global i32 0, align 4
@__rec_sync = common dso_local global i32 0, align 4
@P_ROOT = common dso_local global i32 0, align 4
@P_TYPE = common dso_local global i32 0, align 4
@P_BLEAF = common dso_local global i32 0, align 4
@P_RLEAF = common dso_local global i32 0, align 4
@MPOOL_DIRTY = common dso_local global i32 0, align 4
@MAX_REC_NUMBER = common dso_local global i32 0, align 4
@RET_ERROR = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i64 0, align 8
@MAP_PRIVATE = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@R_MEMMAPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_23__* @__rec_open(i8* %0, i32 %1, i32 %2, %struct.TYPE_21__* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_22__*, align 8
  %13 = alloca %struct.TYPE_24__, align 8
  %14 = alloca %struct.TYPE_23__*, align 8
  %15 = alloca %struct.TYPE_22__*, align 8
  %16 = alloca %struct.stat, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_21__* %3, %struct.TYPE_21__** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %5
  %22 = load i8*, i8** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @O_CLOEXEC, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @_open(i8* %22, i32 %25, i32 %26)
  store i32 %27, i32* %17, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %6, align 8
  br label %304

30:                                               ; preds = %21, %5
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %14, align 8
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %32 = icmp ne %struct.TYPE_21__* %31, null
  br i1 %32, label %33, label %72

33:                                               ; preds = %30
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @R_FIXEDLEN, align 4
  %38 = load i32, i32* @R_NOKEY, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @R_SNAPSHOT, align 4
  %41 = or i32 %39, %40
  %42 = xor i32 %41, -1
  %43 = and i32 %36, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %33
  br label %287

46:                                               ; preds = %33
  %47 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 7
  store i64 0, i64* %47, align 8
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 6
  store i32 %50, i32* %51, align 8
  %52 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 5
  store i64 0, i64* %52, align 8
  %53 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 4
  store i64 0, i64* %53, align 8
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 3
  store i32 %56, i32* %57, align 8
  %58 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 2
  store i32* null, i32** %58, align 8
  %59 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 1
  store i32* null, i32** %59, align 8
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 0
  store i32 %62, i32* %63, align 8
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 3
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* @S_IRUSR, align 4
  %68 = load i32, i32* @S_IWUSR, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* %11, align 4
  %71 = call %struct.TYPE_23__* @__bt_open(i32* %66, i32 128, i32 %69, %struct.TYPE_24__* %13, i32 %70)
  store %struct.TYPE_23__* %71, %struct.TYPE_23__** %14, align 8
  br label %78

72:                                               ; preds = %30
  %73 = load i32, i32* @S_IRUSR, align 4
  %74 = load i32, i32* @S_IWUSR, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* %11, align 4
  %77 = call %struct.TYPE_23__* @__bt_open(i32* null, i32 128, i32 %75, %struct.TYPE_24__* null, i32 %76)
  store %struct.TYPE_23__* %77, %struct.TYPE_23__** %14, align 8
  br label %78

78:                                               ; preds = %72, %46
  %79 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %80 = icmp eq %struct.TYPE_23__* %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  br label %289

82:                                               ; preds = %78
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %83, i32 0, i32 7
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %84, align 8
  store %struct.TYPE_22__* %85, %struct.TYPE_22__** %12, align 8
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %87 = icmp ne %struct.TYPE_21__* %86, null
  br i1 %87, label %88, label %116

88:                                               ; preds = %82
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @R_FIXEDLEN, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %110

95:                                               ; preds = %88
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %97 = load i32, i32* @R_FIXLEN, align 4
  %98 = call i32 @F_SET(%struct.TYPE_22__* %96, i32 %97)
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 0
  store i64 %101, i64* %103, align 8
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %95
  br label %287

109:                                              ; preds = %95
  br label %110

110:                                              ; preds = %109, %88
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 2
  %113 = load i8, i8* %112, align 8
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 1
  store i8 %113, i8* %115, align 8
  br label %119

116:                                              ; preds = %82
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 0, i32 1
  store i8 10, i8* %118, align 8
  br label %119

119:                                              ; preds = %116, %110
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %121 = load i32, i32* @R_RECNO, align 4
  %122 = call i32 @F_SET(%struct.TYPE_22__* %120, i32 %121)
  %123 = load i8*, i8** %7, align 8
  %124 = icmp eq i8* %123, null
  br i1 %124, label %125, label %131

125:                                              ; preds = %119
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %127 = load i32, i32* @R_EOF, align 4
  %128 = load i32, i32* @R_INMEM, align 4
  %129 = or i32 %127, %128
  %130 = call i32 @F_SET(%struct.TYPE_22__* %126, i32 %129)
  br label %135

131:                                              ; preds = %119
  %132 = load i32, i32* %17, align 4
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %134 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %133, i32 0, i32 2
  store i32 %132, i32* %134, align 4
  br label %135

135:                                              ; preds = %131, %125
  %136 = load i8*, i8** %7, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %138, label %202

138:                                              ; preds = %135
  store i32 0, i32* @errno, align 4
  %139 = load i32, i32* %17, align 4
  %140 = load i32, i32* @SEEK_CUR, align 4
  %141 = call i32 @lseek(i32 %139, i32 0, i32 %140)
  %142 = icmp eq i32 %141, -1
  br i1 %142, label %143, label %176

143:                                              ; preds = %138
  %144 = load i32, i32* @errno, align 4
  %145 = load i32, i32* @ESPIPE, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %176

147:                                              ; preds = %143
  %148 = load i32, i32* %8, align 4
  %149 = load i32, i32* @O_ACCMODE, align 4
  %150 = and i32 %148, %149
  switch i32 %150, label %155 [
    i32 129, label %151
  ]

151:                                              ; preds = %147
  %152 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %153 = load i32, i32* @R_RDONLY, align 4
  %154 = call i32 @F_SET(%struct.TYPE_22__* %152, i32 %153)
  br label %156

155:                                              ; preds = %147
  br label %287

156:                                              ; preds = %151
  br label %157

157:                                              ; preds = %199, %156
  %158 = load i32, i32* %17, align 4
  %159 = call i32* @fdopen(i32 %158, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %160 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %161 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %160, i32 0, i32 10
  store i32* %159, i32** %161, align 8
  %162 = icmp eq i32* %159, null
  br i1 %162, label %163, label %164

163:                                              ; preds = %157
  br label %289

164:                                              ; preds = %157
  %165 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %166 = load i32, i32* @R_CLOSEFP, align 4
  %167 = call i32 @F_SET(%struct.TYPE_22__* %165, i32 %166)
  %168 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %169 = load i32, i32* @R_FIXLEN, align 4
  %170 = call i64 @F_ISSET(%struct.TYPE_22__* %168, i32 %169)
  %171 = icmp ne i64 %170, 0
  %172 = zext i1 %171 to i64
  %173 = select i1 %171, i64 (%struct.TYPE_22__*, i32)* @__rec_fpipe, i64 (%struct.TYPE_22__*, i32)* @__rec_vpipe
  %174 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %175 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %174, i32 0, i32 3
  store i64 (%struct.TYPE_22__*, i32)* %173, i64 (%struct.TYPE_22__*, i32)** %175, align 8
  br label %201

176:                                              ; preds = %143, %138
  %177 = load i32, i32* %8, align 4
  %178 = load i32, i32* @O_ACCMODE, align 4
  %179 = and i32 %177, %178
  switch i32 %179, label %185 [
    i32 129, label %180
    i32 128, label %184
  ]

180:                                              ; preds = %176
  %181 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %182 = load i32, i32* @R_RDONLY, align 4
  %183 = call i32 @F_SET(%struct.TYPE_22__* %181, i32 %182)
  br label %186

184:                                              ; preds = %176
  br label %186

185:                                              ; preds = %176
  br label %287

186:                                              ; preds = %184, %180
  %187 = load i32, i32* %17, align 4
  %188 = call i64 @_fstat(i32 %187, %struct.stat* %16)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %186
  br label %289

191:                                              ; preds = %186
  %192 = getelementptr inbounds %struct.stat, %struct.stat* %16, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = icmp eq i64 %193, 0
  br i1 %194, label %195, label %199

195:                                              ; preds = %191
  %196 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %197 = load i32, i32* @R_EOF, align 4
  %198 = call i32 @F_SET(%struct.TYPE_22__* %196, i32 %197)
  br label %200

199:                                              ; preds = %191
  br label %157

200:                                              ; preds = %195
  br label %201

201:                                              ; preds = %200, %164
  br label %202

202:                                              ; preds = %201, %135
  %203 = load i32, i32* @__rec_close, align 4
  %204 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %205 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %204, i32 0, i32 6
  store i32 %203, i32* %205, align 8
  %206 = load i32, i32* @__rec_delete, align 4
  %207 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %208 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %207, i32 0, i32 5
  store i32 %206, i32* %208, align 4
  %209 = load i32, i32* @__rec_fd, align 4
  %210 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %211 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %210, i32 0, i32 4
  store i32 %209, i32* %211, align 8
  %212 = load i32, i32* @__rec_get, align 4
  %213 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %214 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %213, i32 0, i32 3
  store i32 %212, i32* %214, align 4
  %215 = load i32, i32* @__rec_put, align 4
  %216 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %217 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %216, i32 0, i32 2
  store i32 %215, i32* %217, align 8
  %218 = load i32, i32* @__rec_seq, align 4
  %219 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %220 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %219, i32 0, i32 1
  store i32 %218, i32* %220, align 4
  %221 = load i32, i32* @__rec_sync, align 4
  %222 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %223 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %222, i32 0, i32 0
  store i32 %221, i32* %223, align 8
  %224 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %225 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %224, i32 0, i32 9
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* @P_ROOT, align 4
  %228 = call %struct.TYPE_22__* @mpool_get(i32 %226, i32 %227, i32 0)
  store %struct.TYPE_22__* %228, %struct.TYPE_22__** %15, align 8
  %229 = icmp eq %struct.TYPE_22__* %228, null
  br i1 %229, label %230, label %231

230:                                              ; preds = %202
  br label %289

231:                                              ; preds = %202
  %232 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %233 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %232, i32 0, i32 8
  %234 = load i32, i32* %233, align 8
  %235 = load i32, i32* @P_TYPE, align 4
  %236 = and i32 %234, %235
  %237 = load i32, i32* @P_BLEAF, align 4
  %238 = icmp eq i32 %236, %237
  br i1 %238, label %239, label %252

239:                                              ; preds = %231
  %240 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %241 = load i32, i32* @P_TYPE, align 4
  %242 = call i32 @F_CLR(%struct.TYPE_22__* %240, i32 %241)
  %243 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %244 = load i32, i32* @P_RLEAF, align 4
  %245 = call i32 @F_SET(%struct.TYPE_22__* %243, i32 %244)
  %246 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %247 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %246, i32 0, i32 9
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %250 = load i32, i32* @MPOOL_DIRTY, align 4
  %251 = call i32 @mpool_put(i32 %248, %struct.TYPE_22__* %249, i32 %250)
  br label %258

252:                                              ; preds = %231
  %253 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %254 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %253, i32 0, i32 9
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %257 = call i32 @mpool_put(i32 %255, %struct.TYPE_22__* %256, i32 0)
  br label %258

258:                                              ; preds = %252, %239
  %259 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %260 = icmp ne %struct.TYPE_21__* %259, null
  br i1 %260, label %261, label %285

261:                                              ; preds = %258
  %262 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %263 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = load i32, i32* @R_SNAPSHOT, align 4
  %266 = and i32 %264, %265
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %285

268:                                              ; preds = %261
  %269 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %270 = load i32, i32* @R_EOF, align 4
  %271 = load i32, i32* @R_INMEM, align 4
  %272 = or i32 %270, %271
  %273 = call i64 @F_ISSET(%struct.TYPE_22__* %269, i32 %272)
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %285, label %275

275:                                              ; preds = %268
  %276 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %277 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %276, i32 0, i32 3
  %278 = load i64 (%struct.TYPE_22__*, i32)*, i64 (%struct.TYPE_22__*, i32)** %277, align 8
  %279 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %280 = load i32, i32* @MAX_REC_NUMBER, align 4
  %281 = call i64 %278(%struct.TYPE_22__* %279, i32 %280)
  %282 = load i64, i64* @RET_ERROR, align 8
  %283 = icmp eq i64 %281, %282
  br i1 %283, label %284, label %285

284:                                              ; preds = %275
  br label %289

285:                                              ; preds = %275, %268, %261, %258
  %286 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  store %struct.TYPE_23__* %286, %struct.TYPE_23__** %6, align 8
  br label %304

287:                                              ; preds = %185, %155, %108, %45
  %288 = load i32, i32* @EINVAL, align 4
  store i32 %288, i32* @errno, align 4
  br label %289

289:                                              ; preds = %287, %284, %230, %190, %163, %81
  %290 = load i32, i32* @errno, align 4
  store i32 %290, i32* %18, align 4
  %291 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %292 = icmp ne %struct.TYPE_23__* %291, null
  br i1 %292, label %293, label %296

293:                                              ; preds = %289
  %294 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %295 = call i32 @__bt_close(%struct.TYPE_23__* %294)
  br label %296

296:                                              ; preds = %293, %289
  %297 = load i8*, i8** %7, align 8
  %298 = icmp ne i8* %297, null
  br i1 %298, label %299, label %302

299:                                              ; preds = %296
  %300 = load i32, i32* %17, align 4
  %301 = call i32 @_close(i32 %300)
  br label %302

302:                                              ; preds = %299, %296
  %303 = load i32, i32* %18, align 4
  store i32 %303, i32* @errno, align 4
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %6, align 8
  br label %304

304:                                              ; preds = %302, %285, %29
  %305 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  ret %struct.TYPE_23__* %305
}

declare dso_local i32 @_open(i8*, i32, i32) #1

declare dso_local %struct.TYPE_23__* @__bt_open(i32*, i32, i32, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @F_SET(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32* @fdopen(i32, i8*) #1

declare dso_local i64 @F_ISSET(%struct.TYPE_22__*, i32) #1

declare dso_local i64 @__rec_fpipe(%struct.TYPE_22__*, i32) #1

declare dso_local i64 @__rec_vpipe(%struct.TYPE_22__*, i32) #1

declare dso_local i64 @_fstat(i32, %struct.stat*) #1

declare dso_local %struct.TYPE_22__* @mpool_get(i32, i32, i32) #1

declare dso_local i32 @F_CLR(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @mpool_put(i32, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @__bt_close(%struct.TYPE_23__*) #1

declare dso_local i32 @_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
