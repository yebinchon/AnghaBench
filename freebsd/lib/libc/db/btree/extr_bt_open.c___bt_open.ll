; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/db/btree/extr_bt_open.c___bt_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/db/btree/extr_bt_open.c___bt_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_14__*, i32*, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_14__*, i32, i32*, i32*, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32*, i32* }
%struct.stat = type { i32, i64 }
%struct.TYPE_16__ = type { i64, i32, i32, i32, i32, i32 }

@R_DUP = common dso_local global i32 0, align 4
@MINPSIZE = common dso_local global i32 0, align 4
@MAX_PAGE_OFFSET = common dso_local global i32 0, align 4
@DEFMINKEYPAGE = common dso_local global i8* null, align 8
@__bt_defcmp = common dso_local global i8* null, align 8
@__bt_defpfx = common dso_local global i8* null, align 8
@BIG_ENDIAN = common dso_local global i32 0, align 4
@LITTLE_ENDIAN = common dso_local global i32 0, align 4
@NOT = common dso_local global i32 0, align 4
@B_NEEDSWAP = common dso_local global i32 0, align 4
@DB_BTREE = common dso_local global i32 0, align 4
@__bt_close = common dso_local global i32 0, align 4
@__bt_delete = common dso_local global i32 0, align 4
@__bt_fd = common dso_local global i32 0, align 4
@__bt_get = common dso_local global i32 0, align 4
@__bt_put = common dso_local global i32 0, align 4
@__bt_seq = common dso_local global i32 0, align 4
@__bt_sync = common dso_local global i32 0, align 4
@O_ACCMODE = common dso_local global i32 0, align 4
@B_RDONLY = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@B_INMEM = common dso_local global i32 0, align 4
@BTREEMAGIC = common dso_local global i64 0, align 8
@BTREEVERSION = common dso_local global i64 0, align 8
@SAVEMETA = common dso_local global i32 0, align 4
@B_NODUPS = common dso_local global i32 0, align 4
@P_INVALID = common dso_local global i32 0, align 4
@B_METADIRTY = common dso_local global i32 0, align 4
@MINCACHE = common dso_local global i32 0, align 4
@BTDATAOFF = common dso_local global i32 0, align 4
@NOVFLSIZE = common dso_local global i32 0, align 4
@__bt_pgin = common dso_local global i32 0, align 4
@__bt_pgout = common dso_local global i32 0, align 4
@RET_ERROR = common dso_local global i64 0, align 8
@DB_LOCK = common dso_local global i32 0, align 4
@B_DB_LOCK = common dso_local global i32 0, align 4
@DB_SHMEM = common dso_local global i32 0, align 4
@B_DB_SHMEM = common dso_local global i32 0, align 4
@DB_TXN = common dso_local global i32 0, align 4
@B_DB_TXN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EFTYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_14__* @__bt_open(i8* %0, i32 %1, i32 %2, %struct.TYPE_15__* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.stat, align 8
  %13 = alloca %struct.TYPE_16__, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca %struct.TYPE_15__, align 8
  %16 = alloca %struct.TYPE_14__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %14, align 8
  %21 = call i32 (...) @byteorder()
  store i32 %21, i32* %19, align 4
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %23 = icmp ne %struct.TYPE_15__* %22, null
  br i1 %23, label %24, label %95

24:                                               ; preds = %5
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %26 = bitcast %struct.TYPE_15__* %15 to i8*
  %27 = bitcast %struct.TYPE_15__* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 %27, i64 40, i1 false)
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @R_DUP, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %29, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  br label %524

35:                                               ; preds = %24
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @MINPSIZE, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %56, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @MAX_PAGE_OFFSET, align 4
  %48 = add nsw i32 %47, 1
  %49 = icmp sgt i32 %46, %48
  br i1 %49, label %56, label %50

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = and i64 %53, 3
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50, %44, %39
  br label %524

57:                                               ; preds = %50, %35
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %63, 2
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %524

66:                                               ; preds = %61
  br label %71

67:                                               ; preds = %57
  %68 = load i8*, i8** @DEFMINKEYPAGE, align 8
  %69 = ptrtoint i8* %68 to i32
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 2
  store i32 %69, i32* %70, align 8
  br label %71

71:                                               ; preds = %67, %66
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 6
  %73 = load i32*, i32** %72, align 8
  %74 = icmp eq i32* %73, null
  br i1 %74, label %75, label %87

75:                                               ; preds = %71
  %76 = load i8*, i8** @__bt_defcmp, align 8
  %77 = bitcast i8* %76 to i32*
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 6
  store i32* %77, i32** %78, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 5
  %80 = load i32*, i32** %79, align 8
  %81 = icmp eq i32* %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %75
  %83 = load i8*, i8** @__bt_defpfx, align 8
  %84 = bitcast i8* %83 to i32*
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 5
  store i32* %84, i32** %85, align 8
  br label %86

86:                                               ; preds = %82, %75
  br label %87

87:                                               ; preds = %86, %71
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = load i32, i32* %19, align 4
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 3
  store i32 %92, i32* %93, align 4
  br label %94

94:                                               ; preds = %91, %87
  br label %110

95:                                               ; preds = %5
  %96 = load i8*, i8** @__bt_defcmp, align 8
  %97 = bitcast i8* %96 to i32*
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 6
  store i32* %97, i32** %98, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 4
  store i32 0, i32* %99, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  store i32 0, i32* %100, align 8
  %101 = load i32, i32* %19, align 4
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 3
  store i32 %101, i32* %102, align 4
  %103 = load i8*, i8** @DEFMINKEYPAGE, align 8
  %104 = ptrtoint i8* %103 to i32
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 2
  store i32 %104, i32* %105, align 8
  %106 = load i8*, i8** @__bt_defpfx, align 8
  %107 = bitcast i8* %106 to i32*
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 5
  store i32* %107, i32** %108, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  store i32 0, i32* %109, align 4
  br label %110

110:                                              ; preds = %95, %94
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @BIG_ENDIAN, align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %115, label %121

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @LITTLE_ENDIAN, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  br label %524

121:                                              ; preds = %115, %110
  %122 = call i64 @calloc(i32 1, i32 120)
  %123 = inttoptr i64 %122 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %123, %struct.TYPE_14__** %14, align 8
  %124 = icmp eq %struct.TYPE_14__* %123, null
  br i1 %124, label %125, label %126

125:                                              ; preds = %121
  br label %528

126:                                              ; preds = %121
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 0
  store i32 -1, i32* %128, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 4
  %133 = load i32, i32* @NOT, align 4
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 20
  store i32 %133, i32* %135, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 6
  %137 = load i32*, i32** %136, align 8
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 19
  store i32* %137, i32** %139, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 5
  %141 = load i32*, i32** %140, align 8
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 18
  store i32* %141, i32** %143, align 8
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 2
  store i32 -1, i32* %145, align 8
  %146 = call i64 @calloc(i32 1, i32 120)
  %147 = inttoptr i64 %146 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %147, %struct.TYPE_14__** %16, align 8
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 7
  store %struct.TYPE_14__* %147, %struct.TYPE_14__** %149, align 8
  %150 = icmp eq %struct.TYPE_14__* %147, null
  br i1 %150, label %151, label %152

151:                                              ; preds = %126
  br label %528

152:                                              ; preds = %126
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %19, align 4
  %157 = icmp ne i32 %155, %156
  br i1 %157, label %158, label %162

158:                                              ; preds = %152
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %160 = load i32, i32* @B_NEEDSWAP, align 4
  %161 = call i32 @F_SET(%struct.TYPE_14__* %159, i32 %160)
  br label %162

162:                                              ; preds = %158, %152
  %163 = load i32, i32* @DB_BTREE, align 4
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 17
  store i32 %163, i32* %165, align 8
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 16
  store %struct.TYPE_14__* %166, %struct.TYPE_14__** %168, align 8
  %169 = load i32, i32* @__bt_close, align 4
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 15
  store i32 %169, i32* %171, align 8
  %172 = load i32, i32* @__bt_delete, align 4
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 14
  store i32 %172, i32* %174, align 4
  %175 = load i32, i32* @__bt_fd, align 4
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 13
  store i32 %175, i32* %177, align 8
  %178 = load i32, i32* @__bt_get, align 4
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 12
  store i32 %178, i32* %180, align 4
  %181 = load i32, i32* @__bt_put, align 4
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i32 0, i32 11
  store i32 %181, i32* %183, align 8
  %184 = load i32, i32* @__bt_seq, align 4
  %185 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 10
  store i32 %184, i32* %186, align 4
  %187 = load i32, i32* @__bt_sync, align 4
  %188 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i32 0, i32 9
  store i32 %187, i32* %189, align 8
  %190 = load i8*, i8** %7, align 8
  %191 = icmp ne i8* %190, null
  br i1 %191, label %192, label %215

192:                                              ; preds = %162
  %193 = load i32, i32* %8, align 4
  %194 = load i32, i32* @O_ACCMODE, align 4
  %195 = and i32 %193, %194
  switch i32 %195, label %202 [
    i32 130, label %196
    i32 129, label %200
    i32 128, label %201
  ]

196:                                              ; preds = %192
  %197 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %198 = load i32, i32* @B_RDONLY, align 4
  %199 = call i32 @F_SET(%struct.TYPE_14__* %197, i32 %198)
  br label %203

200:                                              ; preds = %192
  br label %203

201:                                              ; preds = %192
  br label %202

202:                                              ; preds = %192, %201
  br label %524

203:                                              ; preds = %200, %196
  %204 = load i8*, i8** %7, align 8
  %205 = load i32, i32* %8, align 4
  %206 = load i32, i32* @O_CLOEXEC, align 4
  %207 = or i32 %205, %206
  %208 = load i32, i32* %9, align 4
  %209 = call i32 @_open(i8* %204, i32 %207, i32 %208)
  %210 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i32 0, i32 0
  store i32 %209, i32* %211, align 8
  %212 = icmp slt i32 %209, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %203
  br label %528

214:                                              ; preds = %203
  br label %231

215:                                              ; preds = %162
  %216 = load i32, i32* %8, align 4
  %217 = load i32, i32* @O_ACCMODE, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 129
  br i1 %219, label %220, label %221

220:                                              ; preds = %215
  br label %524

221:                                              ; preds = %215
  %222 = call i32 (...) @tmp()
  %223 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %223, i32 0, i32 0
  store i32 %222, i32* %224, align 8
  %225 = icmp eq i32 %222, -1
  br i1 %225, label %226, label %227

226:                                              ; preds = %221
  br label %528

227:                                              ; preds = %221
  %228 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %229 = load i32, i32* @B_INMEM, align 4
  %230 = call i32 @F_SET(%struct.TYPE_14__* %228, i32 %229)
  br label %231

231:                                              ; preds = %227, %214
  %232 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %233 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = call i64 @_fstat(i32 %234, %struct.stat* %12)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %231
  br label %528

238:                                              ; preds = %231
  %239 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 1
  %240 = load i64, i64* %239, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %340

242:                                              ; preds = %238
  %243 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %244 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = call i32 @_read(i32 %245, %struct.TYPE_16__* %13, i32 32)
  store i32 %246, i32* %18, align 4
  %247 = icmp slt i32 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %242
  br label %528

249:                                              ; preds = %242
  %250 = load i32, i32* %18, align 4
  %251 = sext i32 %250 to i64
  %252 = icmp ne i64 %251, 32
  br i1 %252, label %253, label %254

253:                                              ; preds = %249
  br label %526

254:                                              ; preds = %249
  %255 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* @BTREEMAGIC, align 8
  %258 = icmp eq i64 %256, %257
  br i1 %258, label %259, label %263

259:                                              ; preds = %254
  %260 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %261 = load i32, i32* @B_NEEDSWAP, align 4
  %262 = call i32 @F_CLR(%struct.TYPE_14__* %260, i32 %261)
  br label %286

263:                                              ; preds = %254
  %264 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %265 = load i32, i32* @B_NEEDSWAP, align 4
  %266 = call i32 @F_SET(%struct.TYPE_14__* %264, i32 %265)
  %267 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = trunc i64 %268 to i32
  %270 = call i32 @M_32_SWAP(i32 %269)
  %271 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  %272 = load i32, i32* %271, align 8
  %273 = call i32 @M_32_SWAP(i32 %272)
  %274 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 2
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @M_32_SWAP(i32 %275)
  %277 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 3
  %278 = load i32, i32* %277, align 8
  %279 = call i32 @M_32_SWAP(i32 %278)
  %280 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 4
  %281 = load i32, i32* %280, align 4
  %282 = call i32 @M_32_SWAP(i32 %281)
  %283 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 5
  %284 = load i32, i32* %283, align 8
  %285 = call i32 @M_32_SWAP(i32 %284)
  br label %286

286:                                              ; preds = %263, %259
  %287 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = load i64, i64* @BTREEMAGIC, align 8
  %290 = icmp ne i64 %288, %289
  br i1 %290, label %297, label %291

291:                                              ; preds = %286
  %292 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  %293 = load i32, i32* %292, align 8
  %294 = sext i32 %293 to i64
  %295 = load i64, i64* @BTREEVERSION, align 8
  %296 = icmp ne i64 %294, %295
  br i1 %296, label %297, label %298

297:                                              ; preds = %291, %286
  br label %526

298:                                              ; preds = %291
  %299 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 2
  %300 = load i32, i32* %299, align 4
  %301 = load i32, i32* @MINPSIZE, align 4
  %302 = icmp slt i32 %300, %301
  br i1 %302, label %315, label %303

303:                                              ; preds = %298
  %304 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 2
  %305 = load i32, i32* %304, align 4
  %306 = load i32, i32* @MAX_PAGE_OFFSET, align 4
  %307 = add nsw i32 %306, 1
  %308 = icmp sgt i32 %305, %307
  br i1 %308, label %315, label %309

309:                                              ; preds = %303
  %310 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 2
  %311 = load i32, i32* %310, align 4
  %312 = sext i32 %311 to i64
  %313 = and i64 %312, 3
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %316

315:                                              ; preds = %309, %303, %298
  br label %526

316:                                              ; preds = %309
  %317 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 5
  %318 = load i32, i32* %317, align 8
  %319 = load i32, i32* @SAVEMETA, align 4
  %320 = xor i32 %319, -1
  %321 = and i32 %318, %320
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %324

323:                                              ; preds = %316
  br label %526

324:                                              ; preds = %316
  %325 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 2
  %326 = load i32, i32* %325, align 4
  %327 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  store i32 %326, i32* %327, align 4
  %328 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %329 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 5
  %330 = load i32, i32* %329, align 8
  %331 = call i32 @F_SET(%struct.TYPE_14__* %328, i32 %330)
  %332 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 3
  %333 = load i32, i32* %332, align 8
  %334 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %335 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %334, i32 0, i32 3
  store i32 %333, i32* %335, align 4
  %336 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 4
  %337 = load i32, i32* %336, align 4
  %338 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %339 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %338, i32 0, i32 4
  store i32 %337, i32* %339, align 8
  br label %385

340:                                              ; preds = %238
  %341 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  %342 = load i32, i32* %341, align 4
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %344, label %366

344:                                              ; preds = %340
  %345 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 0
  %346 = load i32, i32* %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  store i32 %346, i32* %347, align 4
  %348 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  %349 = load i32, i32* %348, align 4
  %350 = load i32, i32* @MINPSIZE, align 4
  %351 = icmp slt i32 %349, %350
  br i1 %351, label %352, label %355

352:                                              ; preds = %344
  %353 = load i32, i32* @MINPSIZE, align 4
  %354 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  store i32 %353, i32* %354, align 4
  br label %355

355:                                              ; preds = %352, %344
  %356 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  %357 = load i32, i32* %356, align 4
  %358 = load i32, i32* @MAX_PAGE_OFFSET, align 4
  %359 = add nsw i32 %358, 1
  %360 = icmp sgt i32 %357, %359
  br i1 %360, label %361, label %365

361:                                              ; preds = %355
  %362 = load i32, i32* @MAX_PAGE_OFFSET, align 4
  %363 = add nsw i32 %362, 1
  %364 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  store i32 %363, i32* %364, align 4
  br label %365

365:                                              ; preds = %361, %355
  br label %366

366:                                              ; preds = %365, %340
  %367 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %368 = load i32, i32* %367, align 8
  %369 = load i32, i32* @R_DUP, align 4
  %370 = and i32 %368, %369
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %376, label %372

372:                                              ; preds = %366
  %373 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %374 = load i32, i32* @B_NODUPS, align 4
  %375 = call i32 @F_SET(%struct.TYPE_14__* %373, i32 %374)
  br label %376

376:                                              ; preds = %372, %366
  %377 = load i32, i32* @P_INVALID, align 4
  %378 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %379 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %378, i32 0, i32 3
  store i32 %377, i32* %379, align 4
  %380 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %381 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %380, i32 0, i32 4
  store i32 0, i32* %381, align 8
  %382 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %383 = load i32, i32* @B_METADIRTY, align 4
  %384 = call i32 @F_SET(%struct.TYPE_14__* %382, i32 %383)
  br label %385

385:                                              ; preds = %376, %324
  %386 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  %387 = load i32, i32* %386, align 4
  %388 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %389 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %388, i32 0, i32 5
  store i32 %387, i32* %389, align 4
  %390 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 4
  %391 = load i32, i32* %390, align 8
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %413

393:                                              ; preds = %385
  %394 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 4
  %395 = load i32, i32* %394, align 8
  %396 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  %397 = load i32, i32* %396, align 4
  %398 = sub nsw i32 %397, 1
  %399 = and i32 %395, %398
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %413

401:                                              ; preds = %393
  %402 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 4
  %403 = load i32, i32* %402, align 8
  %404 = xor i32 %403, -1
  %405 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  %406 = load i32, i32* %405, align 4
  %407 = sub nsw i32 %406, 1
  %408 = and i32 %404, %407
  %409 = add nsw i32 %408, 1
  %410 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 4
  %411 = load i32, i32* %410, align 8
  %412 = add nsw i32 %411, %409
  store i32 %412, i32* %410, align 8
  br label %413

413:                                              ; preds = %401, %393, %385
  %414 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 4
  %415 = load i32, i32* %414, align 8
  %416 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  %417 = load i32, i32* %416, align 4
  %418 = load i32, i32* @MINCACHE, align 4
  %419 = mul nsw i32 %417, %418
  %420 = icmp slt i32 %415, %419
  br i1 %420, label %421, label %427

421:                                              ; preds = %413
  %422 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  %423 = load i32, i32* %422, align 4
  %424 = load i32, i32* @MINCACHE, align 4
  %425 = mul nsw i32 %423, %424
  %426 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 4
  store i32 %425, i32* %426, align 8
  br label %427

427:                                              ; preds = %421, %413
  %428 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 4
  %429 = load i32, i32* %428, align 8
  %430 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %431 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %430, i32 0, i32 5
  %432 = load i32, i32* %431, align 4
  %433 = call i32 @howmany(i32 %429, i32 %432)
  store i32 %433, i32* %17, align 4
  %434 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %435 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %434, i32 0, i32 5
  %436 = load i32, i32* %435, align 4
  %437 = load i32, i32* @BTDATAOFF, align 4
  %438 = sub nsw i32 %436, %437
  %439 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 2
  %440 = load i32, i32* %439, align 8
  %441 = sdiv i32 %438, %440
  %442 = sext i32 %441 to i64
  %443 = call i64 @NBLEAFDBT(i32 0, i32 0)
  %444 = add i64 4, %443
  %445 = sub i64 %442, %444
  %446 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %447 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %446, i32 0, i32 6
  store i64 %445, i64* %447, align 8
  %448 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %449 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %448, i32 0, i32 6
  %450 = load i64, i64* %449, align 8
  %451 = load i32, i32* @NOVFLSIZE, align 4
  %452 = load i32, i32* @NOVFLSIZE, align 4
  %453 = call i64 @NBLEAFDBT(i32 %451, i32 %452)
  %454 = add i64 %453, 4
  %455 = icmp ult i64 %450, %454
  br i1 %455, label %456, label %463

456:                                              ; preds = %427
  %457 = load i32, i32* @NOVFLSIZE, align 4
  %458 = load i32, i32* @NOVFLSIZE, align 4
  %459 = call i64 @NBLEAFDBT(i32 %457, i32 %458)
  %460 = add i64 %459, 4
  %461 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %462 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %461, i32 0, i32 6
  store i64 %460, i64* %462, align 8
  br label %463

463:                                              ; preds = %456, %427
  %464 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %465 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %464, i32 0, i32 0
  %466 = load i32, i32* %465, align 8
  %467 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %468 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %467, i32 0, i32 5
  %469 = load i32, i32* %468, align 4
  %470 = load i32, i32* %17, align 4
  %471 = call i32* @mpool_open(i32* null, i32 %466, i32 %469, i32 %470)
  %472 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %473 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %472, i32 0, i32 8
  store i32* %471, i32** %473, align 8
  %474 = icmp eq i32* %471, null
  br i1 %474, label %475, label %476

475:                                              ; preds = %463
  br label %528

476:                                              ; preds = %463
  %477 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %478 = load i32, i32* @B_INMEM, align 4
  %479 = call i32 @F_ISSET(%struct.TYPE_14__* %477, i32 %478)
  %480 = icmp ne i32 %479, 0
  br i1 %480, label %489, label %481

481:                                              ; preds = %476
  %482 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %483 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %482, i32 0, i32 8
  %484 = load i32*, i32** %483, align 8
  %485 = load i32, i32* @__bt_pgin, align 4
  %486 = load i32, i32* @__bt_pgout, align 4
  %487 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %488 = call i32 @mpool_filter(i32* %484, i32 %485, i32 %486, %struct.TYPE_14__* %487)
  br label %489

489:                                              ; preds = %481, %476
  %490 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %491 = call i64 @nroot(%struct.TYPE_14__* %490)
  %492 = load i64, i64* @RET_ERROR, align 8
  %493 = icmp eq i64 %491, %492
  br i1 %493, label %494, label %495

494:                                              ; preds = %489
  br label %528

495:                                              ; preds = %489
  %496 = load i32, i32* %11, align 4
  %497 = load i32, i32* @DB_LOCK, align 4
  %498 = and i32 %496, %497
  %499 = icmp ne i32 %498, 0
  br i1 %499, label %500, label %504

500:                                              ; preds = %495
  %501 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %502 = load i32, i32* @B_DB_LOCK, align 4
  %503 = call i32 @F_SET(%struct.TYPE_14__* %501, i32 %502)
  br label %504

504:                                              ; preds = %500, %495
  %505 = load i32, i32* %11, align 4
  %506 = load i32, i32* @DB_SHMEM, align 4
  %507 = and i32 %505, %506
  %508 = icmp ne i32 %507, 0
  br i1 %508, label %509, label %513

509:                                              ; preds = %504
  %510 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %511 = load i32, i32* @B_DB_SHMEM, align 4
  %512 = call i32 @F_SET(%struct.TYPE_14__* %510, i32 %511)
  br label %513

513:                                              ; preds = %509, %504
  %514 = load i32, i32* %11, align 4
  %515 = load i32, i32* @DB_TXN, align 4
  %516 = and i32 %514, %515
  %517 = icmp ne i32 %516, 0
  br i1 %517, label %518, label %522

518:                                              ; preds = %513
  %519 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %520 = load i32, i32* @B_DB_TXN, align 4
  %521 = call i32 @F_SET(%struct.TYPE_14__* %519, i32 %520)
  br label %522

522:                                              ; preds = %518, %513
  %523 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  store %struct.TYPE_14__* %523, %struct.TYPE_14__** %6, align 8
  br label %557

524:                                              ; preds = %220, %202, %120, %65, %56, %34
  %525 = load i32, i32* @EINVAL, align 4
  store i32 %525, i32* @errno, align 4
  br label %528

526:                                              ; preds = %323, %315, %297, %253
  %527 = load i32, i32* @EFTYPE, align 4
  store i32 %527, i32* @errno, align 4
  br label %528

528:                                              ; preds = %526, %524, %494, %475, %248, %237, %226, %213, %151, %125
  %529 = load i32, i32* @errno, align 4
  store i32 %529, i32* %20, align 4
  %530 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %531 = icmp ne %struct.TYPE_14__* %530, null
  br i1 %531, label %532, label %555

532:                                              ; preds = %528
  %533 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %534 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %533, i32 0, i32 7
  %535 = load %struct.TYPE_14__*, %struct.TYPE_14__** %534, align 8
  %536 = icmp ne %struct.TYPE_14__* %535, null
  br i1 %536, label %537, label %542

537:                                              ; preds = %532
  %538 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %539 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %538, i32 0, i32 7
  %540 = load %struct.TYPE_14__*, %struct.TYPE_14__** %539, align 8
  %541 = call i32 @free(%struct.TYPE_14__* %540)
  br label %542

542:                                              ; preds = %537, %532
  %543 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %544 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %543, i32 0, i32 0
  %545 = load i32, i32* %544, align 8
  %546 = icmp ne i32 %545, -1
  br i1 %546, label %547, label %552

547:                                              ; preds = %542
  %548 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %549 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %548, i32 0, i32 0
  %550 = load i32, i32* %549, align 8
  %551 = call i32 @_close(i32 %550)
  br label %552

552:                                              ; preds = %547, %542
  %553 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %554 = call i32 @free(%struct.TYPE_14__* %553)
  br label %555

555:                                              ; preds = %552, %528
  %556 = load i32, i32* %20, align 4
  store i32 %556, i32* @errno, align 4
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %6, align 8
  br label %557

557:                                              ; preds = %555, %522
  %558 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  ret %struct.TYPE_14__* %558
}

declare dso_local i32 @byteorder(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @F_SET(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @_open(i8*, i32, i32) #1

declare dso_local i32 @tmp(...) #1

declare dso_local i64 @_fstat(i32, %struct.stat*) #1

declare dso_local i32 @_read(i32, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @F_CLR(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @M_32_SWAP(i32) #1

declare dso_local i32 @howmany(i32, i32) #1

declare dso_local i64 @NBLEAFDBT(i32, i32) #1

declare dso_local i32* @mpool_open(i32*, i32, i32, i32) #1

declare dso_local i32 @F_ISSET(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @mpool_filter(i32*, i32, i32, %struct.TYPE_14__*) #1

declare dso_local i64 @nroot(%struct.TYPE_14__*) #1

declare dso_local i32 @free(%struct.TYPE_14__*) #1

declare dso_local i32 @_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
