; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_index.c_get_l2p_header_body.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_index.c_get_l2p_header_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i32, i32, i32*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i8*, i32, i8* }
%struct.TYPE_16__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i64 }
%struct.TYPE_17__ = type { i64, i32 }

@SVN_ERR_FS_INDEX_CORRUPTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Index rev / pack file revision numbers do not match\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"L2P index page size is not a power of two\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Invalid number of revisions in L2P index\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Fewer L2P index pages than revisions\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"L2P index page count implausibly large\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"Corrupt L2P index for r%ld only covers r%ld:%ld\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Revision with no L2P index pages\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"L2P page table exceeded\00", align 1
@.str.8 = private unnamed_addr constant [53 x i8] c"Revisions do not cover the full L2P index page table\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"Empty L2P index page\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"Page exceeds L2P index page size\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_18__**, %struct.TYPE_16__*, %struct.TYPE_15__*, i64, i32*, i32*)* @get_l2p_header_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_l2p_header_body(%struct.TYPE_18__** %0, %struct.TYPE_16__* %1, %struct.TYPE_15__* %2, i64 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_18__**, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_19__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_18__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca %struct.TYPE_17__, align 8
  store %struct.TYPE_18__** %0, %struct.TYPE_18__*** %8, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %9, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %25, align 8
  store %struct.TYPE_19__* %26, %struct.TYPE_19__** %14, align 8
  %27 = load i32*, i32** %12, align 8
  %28 = call i8* @apr_pcalloc(i32* %27, i32 32)
  %29 = bitcast i8* %28 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %29, %struct.TYPE_18__** %20, align 8
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  store i64 %32, i64* %33, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 1
  store i32 %36, i32* %37, align 8
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %40 = load i64, i64* %11, align 8
  %41 = call i32 @auto_open_l2p_index(%struct.TYPE_16__* %38, %struct.TYPE_15__* %39, i64 %40)
  %42 = call i32 @SVN_ERR(i32 %41)
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @packed_stream_seek(i32 %45, i32 0)
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @packed_stream_get(i32* %15, i32 %49)
  %51 = call i32 @SVN_ERR(i32 %50)
  %52 = load i32, i32* %15, align 4
  %53 = sext i32 %52 to i64
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %58, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %6
  %64 = load i32, i32* @SVN_ERR_FS_INDEX_CORRUPTION, align 4
  %65 = call i32 @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %66 = call i32* @svn_error_create(i32 %64, i32* null, i32 %65)
  store i32* %66, i32** %7, align 8
  br label %357

67:                                               ; preds = %6
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @packed_stream_get(i32* %15, i32 %70)
  %72 = call i32 @SVN_ERR(i32 %71)
  %73 = load i32, i32* %15, align 4
  %74 = sext i32 %73 to i64
  %75 = inttoptr i64 %74 to i8*
  %76 = ptrtoint i8* %75 to i32
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 8
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %67
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = sub nsw i32 %89, 1
  %91 = and i32 %86, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %83, %67
  %94 = load i32, i32* @SVN_ERR_FS_INDEX_CORRUPTION, align 4
  %95 = call i32 @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %96 = call i32* @svn_error_create(i32 %94, i32* null, i32 %95)
  store i32* %96, i32** %7, align 8
  br label %357

97:                                               ; preds = %83
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @packed_stream_get(i32* %15, i32 %100)
  %102 = call i32 @SVN_ERR(i32 %101)
  %103 = load i32, i32* %15, align 4
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 4
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 1
  br i1 %109, label %110, label %123

110:                                              ; preds = %97
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = trunc i64 %116 to i32
  %118 = icmp ne i32 %113, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %110
  %120 = load i32, i32* @SVN_ERR_FS_INDEX_CORRUPTION, align 4
  %121 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %122 = call i32* @svn_error_create(i32 %120, i32* null, i32 %121)
  store i32* %122, i32** %7, align 8
  br label %357

123:                                              ; preds = %110, %97
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @packed_stream_get(i32* %15, i32 %126)
  %128 = call i32 @SVN_ERR(i32 %127)
  %129 = load i32, i32* %15, align 4
  store i32 %129, i32* %18, align 4
  %130 = load i32, i32* %18, align 4
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = icmp slt i32 %130, %133
  br i1 %134, label %135, label %139

135:                                              ; preds = %123
  %136 = load i32, i32* @SVN_ERR_FS_INDEX_CORRUPTION, align 4
  %137 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %138 = call i32* @svn_error_create(i32 %136, i32* null, i32 %137)
  store i32* %138, i32** %7, align 8
  br label %357

139:                                              ; preds = %123
  %140 = load i32, i32* %18, align 4
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = sub nsw i32 %143, %146
  %148 = sdiv i32 %147, 2
  %149 = icmp sgt i32 %140, %148
  br i1 %149, label %150, label %154

150:                                              ; preds = %139
  %151 = load i32, i32* @SVN_ERR_FS_INDEX_CORRUPTION, align 4
  %152 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %153 = call i32* @svn_error_create(i32 %151, i32* null, i32 %152)
  store i32* %153, i32** %7, align 8
  br label %357

154:                                              ; preds = %139
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = sext i32 %160 to i64
  %162 = add nsw i64 %157, %161
  store i64 %162, i64* %22, align 8
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* %11, align 8
  %167 = icmp sgt i64 %165, %166
  br i1 %167, label %172, label %168

168:                                              ; preds = %154
  %169 = load i64, i64* %22, align 8
  %170 = load i64, i64* %11, align 8
  %171 = icmp sle i64 %169, %170
  br i1 %171, label %172, label %181

172:                                              ; preds = %168, %154
  %173 = load i32, i32* @SVN_ERR_FS_INDEX_CORRUPTION, align 4
  %174 = call i32 @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  %175 = load i64, i64* %11, align 8
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* %22, align 8
  %180 = call i32* @svn_error_createf(i32 %173, i32* null, i32 %174, i64 %175, i64 %178, i64 %179)
  store i32* %180, i32** %7, align 8
  br label %357

181:                                              ; preds = %168
  %182 = load i32*, i32** %12, align 8
  %183 = load i32, i32* %18, align 4
  %184 = sext i32 %183 to i64
  %185 = mul i64 %184, 24
  %186 = trunc i64 %185 to i32
  %187 = call i8* @apr_pcalloc(i32* %182, i32 %186)
  %188 = bitcast i8* %187 to %struct.TYPE_14__*
  %189 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %189, i32 0, i32 4
  store %struct.TYPE_14__* %188, %struct.TYPE_14__** %190, align 8
  %191 = load i32*, i32** %12, align 8
  %192 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %193 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  %195 = add nsw i32 %194, 1
  %196 = sext i32 %195 to i64
  %197 = mul i64 %196, 4
  %198 = trunc i64 %197 to i32
  %199 = call i8* @apr_pcalloc(i32* %191, i32 %198)
  %200 = bitcast i8* %199 to i32*
  %201 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %202 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %201, i32 0, i32 3
  store i32* %200, i32** %202, align 8
  store i32 0, i32* %21, align 4
  %203 = load i32, i32* %21, align 4
  %204 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %205 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %204, i32 0, i32 3
  %206 = load i32*, i32** %205, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 0
  store i32 %203, i32* %207, align 4
  store i32 0, i32* %16, align 4
  br label %208

208:                                              ; preds = %246, %181
  %209 = load i32, i32* %16, align 4
  %210 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %211 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 4
  %213 = icmp slt i32 %209, %212
  br i1 %213, label %214, label %249

214:                                              ; preds = %208
  %215 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %216 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 8
  %218 = call i32 @packed_stream_get(i32* %15, i32 %217)
  %219 = call i32 @SVN_ERR(i32 %218)
  %220 = load i32, i32* %15, align 4
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %226

222:                                              ; preds = %214
  %223 = load i32, i32* @SVN_ERR_FS_INDEX_CORRUPTION, align 4
  %224 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %225 = call i32* @svn_error_create(i32 %223, i32* null, i32 %224)
  store i32* %225, i32** %7, align 8
  br label %357

226:                                              ; preds = %214
  %227 = load i32, i32* %15, align 4
  %228 = load i32, i32* %21, align 4
  %229 = add nsw i32 %228, %227
  store i32 %229, i32* %21, align 4
  %230 = load i32, i32* %21, align 4
  %231 = load i32, i32* %18, align 4
  %232 = icmp sgt i32 %230, %231
  br i1 %232, label %233, label %237

233:                                              ; preds = %226
  %234 = load i32, i32* @SVN_ERR_FS_INDEX_CORRUPTION, align 4
  %235 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %236 = call i32* @svn_error_create(i32 %234, i32* null, i32 %235)
  store i32* %236, i32** %7, align 8
  br label %357

237:                                              ; preds = %226
  %238 = load i32, i32* %21, align 4
  %239 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %240 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %239, i32 0, i32 3
  %241 = load i32*, i32** %240, align 8
  %242 = load i32, i32* %16, align 4
  %243 = add nsw i32 %242, 1
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %241, i64 %244
  store i32 %238, i32* %245, align 4
  br label %246

246:                                              ; preds = %237
  %247 = load i32, i32* %16, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %16, align 4
  br label %208

249:                                              ; preds = %208
  %250 = load i32, i32* %21, align 4
  %251 = load i32, i32* %18, align 4
  %252 = icmp ne i32 %250, %251
  br i1 %252, label %253, label %257

253:                                              ; preds = %249
  %254 = load i32, i32* @SVN_ERR_FS_INDEX_CORRUPTION, align 4
  %255 = call i32 @_(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i64 0, i64 0))
  %256 = call i32* @svn_error_create(i32 %254, i32* null, i32 %255)
  store i32* %256, i32** %7, align 8
  br label %357

257:                                              ; preds = %249
  store i32 0, i32* %17, align 4
  br label %258

258:                                              ; preds = %310, %257
  %259 = load i32, i32* %17, align 4
  %260 = load i32, i32* %18, align 4
  %261 = icmp slt i32 %259, %260
  br i1 %261, label %262, label %313

262:                                              ; preds = %258
  %263 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %264 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %263, i32 0, i32 3
  %265 = load i32, i32* %264, align 8
  %266 = call i32 @packed_stream_get(i32* %15, i32 %265)
  %267 = call i32 @SVN_ERR(i32 %266)
  %268 = load i32, i32* %15, align 4
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %270, label %274

270:                                              ; preds = %262
  %271 = load i32, i32* @SVN_ERR_FS_INDEX_CORRUPTION, align 4
  %272 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  %273 = call i32* @svn_error_create(i32 %271, i32* null, i32 %272)
  store i32* %273, i32** %7, align 8
  br label %357

274:                                              ; preds = %262
  %275 = load i32, i32* %15, align 4
  %276 = sext i32 %275 to i64
  %277 = inttoptr i64 %276 to i8*
  %278 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %279 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %278, i32 0, i32 4
  %280 = load %struct.TYPE_14__*, %struct.TYPE_14__** %279, align 8
  %281 = load i32, i32* %17, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %280, i64 %282
  %284 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %283, i32 0, i32 0
  store i8* %277, i8** %284, align 8
  %285 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %286 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %285, i32 0, i32 3
  %287 = load i32, i32* %286, align 8
  %288 = call i32 @packed_stream_get(i32* %15, i32 %287)
  %289 = call i32 @SVN_ERR(i32 %288)
  %290 = load i32, i32* %15, align 4
  %291 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %292 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 8
  %294 = icmp sgt i32 %290, %293
  br i1 %294, label %295, label %299

295:                                              ; preds = %274
  %296 = load i32, i32* @SVN_ERR_FS_INDEX_CORRUPTION, align 4
  %297 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0))
  %298 = call i32* @svn_error_create(i32 %296, i32* null, i32 %297)
  store i32* %298, i32** %7, align 8
  br label %357

299:                                              ; preds = %274
  %300 = load i32, i32* %15, align 4
  %301 = sext i32 %300 to i64
  %302 = inttoptr i64 %301 to i8*
  %303 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %304 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %303, i32 0, i32 4
  %305 = load %struct.TYPE_14__*, %struct.TYPE_14__** %304, align 8
  %306 = load i32, i32* %17, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %305, i64 %307
  %309 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %308, i32 0, i32 2
  store i8* %302, i8** %309, align 8
  br label %310

310:                                              ; preds = %299
  %311 = load i32, i32* %17, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %17, align 4
  br label %258

313:                                              ; preds = %258
  %314 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %315 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %314, i32 0, i32 3
  %316 = load i32, i32* %315, align 8
  %317 = call i32 @packed_stream_offset(i32 %316)
  store i32 %317, i32* %19, align 4
  store i32 0, i32* %17, align 4
  br label %318

318:                                              ; preds = %343, %313
  %319 = load i32, i32* %17, align 4
  %320 = load i32, i32* %18, align 4
  %321 = icmp slt i32 %319, %320
  br i1 %321, label %322, label %346

322:                                              ; preds = %318
  %323 = load i32, i32* %19, align 4
  %324 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %325 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %324, i32 0, i32 4
  %326 = load %struct.TYPE_14__*, %struct.TYPE_14__** %325, align 8
  %327 = load i32, i32* %17, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %326, i64 %328
  %330 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %329, i32 0, i32 1
  store i32 %323, i32* %330, align 8
  %331 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %332 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %331, i32 0, i32 4
  %333 = load %struct.TYPE_14__*, %struct.TYPE_14__** %332, align 8
  %334 = load i32, i32* %17, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %333, i64 %335
  %337 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %336, i32 0, i32 0
  %338 = load i8*, i8** %337, align 8
  %339 = load i32, i32* %19, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr i8, i8* %338, i64 %340
  %342 = ptrtoint i8* %341 to i32
  store i32 %342, i32* %19, align 4
  br label %343

343:                                              ; preds = %322
  %344 = load i32, i32* %17, align 4
  %345 = add nsw i32 %344, 1
  store i32 %345, i32* %17, align 4
  br label %318

346:                                              ; preds = %318
  %347 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %348 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  store %struct.TYPE_18__* %347, %struct.TYPE_18__** %348, align 8
  %349 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %350 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 8
  %352 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %353 = load i32*, i32** %13, align 8
  %354 = call i32 @svn_cache__set(i32 %351, %struct.TYPE_17__* %23, %struct.TYPE_18__* %352, i32* %353)
  %355 = call i32 @SVN_ERR(i32 %354)
  %356 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %356, i32** %7, align 8
  br label %357

357:                                              ; preds = %346, %295, %270, %253, %233, %222, %172, %150, %135, %119, %93, %63
  %358 = load i32*, i32** %7, align 8
  ret i32* %358
}

declare dso_local i8* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @auto_open_l2p_index(%struct.TYPE_16__*, %struct.TYPE_15__*, i64) #1

declare dso_local i32 @packed_stream_seek(i32, i32) #1

declare dso_local i32 @packed_stream_get(i32*, i32) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i64, i64, i64) #1

declare dso_local i32 @packed_stream_offset(i32) #1

declare dso_local i32 @svn_cache__set(i32, %struct.TYPE_17__*, %struct.TYPE_18__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
