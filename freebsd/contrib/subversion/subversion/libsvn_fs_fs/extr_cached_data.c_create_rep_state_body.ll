; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_cached_data.c_create_rep_state_body.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_cached_data.c_create_rep_state_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_35__ = type { i32, i32, i32, i32, i32, %struct.TYPE_33__*, i32*, i32*, i32*, i32, i32 }
%struct.TYPE_33__ = type { i32, %struct.TYPE_30__*, %struct.TYPE_31__*, i32* }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_32__ = type { i64, i32 }
%struct.TYPE_34__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_31__ = type { %struct.TYPE_37__* }
%struct.TYPE_37__ = type { i32, i32, i64, i32*, i32*, i32* }
%struct.TYPE_36__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@SVN_DELTA_WINDOW_SIZE = common dso_local global i32 0, align 4
@APR_SIZE_MAX = common dso_local global i32 0, align 4
@SVN_FS_FS__ITEM_TYPE_ANY_REP = common dso_local global i32 0, align 4
@svn_fs_fs__rep_plain = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_35__**, %struct.TYPE_32__**, %struct.TYPE_33__**, %struct.TYPE_34__*, %struct.TYPE_31__*, i32*, i32*)* @create_rep_state_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @create_rep_state_body(%struct.TYPE_35__** %0, %struct.TYPE_32__** %1, %struct.TYPE_33__** %2, %struct.TYPE_34__* %3, %struct.TYPE_31__* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_35__**, align 8
  %10 = alloca %struct.TYPE_32__**, align 8
  %11 = alloca %struct.TYPE_33__**, align 8
  %12 = alloca %struct.TYPE_34__*, align 8
  %13 = alloca %struct.TYPE_31__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_37__*, align 8
  %17 = alloca %struct.TYPE_35__*, align 8
  %18 = alloca %struct.TYPE_32__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_36__, align 4
  %23 = alloca %struct.TYPE_33__*, align 8
  %24 = alloca i32, align 4
  store %struct.TYPE_35__** %0, %struct.TYPE_35__*** %9, align 8
  store %struct.TYPE_32__** %1, %struct.TYPE_32__*** %10, align 8
  store %struct.TYPE_33__** %2, %struct.TYPE_33__*** %11, align 8
  store %struct.TYPE_34__* %3, %struct.TYPE_34__** %12, align 8
  store %struct.TYPE_31__* %4, %struct.TYPE_31__** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %25 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %26 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_37__*, %struct.TYPE_37__** %26, align 8
  store %struct.TYPE_37__* %27, %struct.TYPE_37__** %16, align 8
  %28 = load i32*, i32** %14, align 8
  %29 = call i8* @apr_pcalloc(i32* %28, i32 64)
  %30 = bitcast i8* %29 to %struct.TYPE_35__*
  store %struct.TYPE_35__* %30, %struct.TYPE_35__** %17, align 8
  %31 = load i32, i32* @FALSE, align 4
  store i32 %31, i32* %19, align 4
  %32 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %11, align 8
  %33 = icmp ne %struct.TYPE_33__** %32, null
  br i1 %33, label %34, label %85

34:                                               ; preds = %7
  %35 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %11, align 8
  %36 = load %struct.TYPE_33__*, %struct.TYPE_33__** %35, align 8
  %37 = icmp ne %struct.TYPE_33__* %36, null
  br i1 %37, label %38, label %85

38:                                               ; preds = %34
  %39 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %11, align 8
  %40 = load %struct.TYPE_33__*, %struct.TYPE_33__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_30__*, %struct.TYPE_30__** %41, align 8
  %43 = icmp ne %struct.TYPE_30__* %42, null
  br i1 %43, label %44, label %85

44:                                               ; preds = %38
  %45 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %11, align 8
  %46 = load %struct.TYPE_33__*, %struct.TYPE_33__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @SVN_IS_VALID_REVNUM(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %85

51:                                               ; preds = %44
  %52 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %11, align 8
  %53 = load %struct.TYPE_33__*, %struct.TYPE_33__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %57 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %85

60:                                               ; preds = %51
  %61 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %65 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %85

68:                                               ; preds = %60
  %69 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %11, align 8
  %70 = load %struct.TYPE_33__*, %struct.TYPE_33__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %74 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = sdiv i32 %72, %75
  %77 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %81 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = sdiv i32 %79, %82
  %84 = icmp eq i32 %76, %83
  br label %85

85:                                               ; preds = %68, %60, %51, %44, %38, %34, %7
  %86 = phi i1 [ false, %60 ], [ false, %51 ], [ false, %44 ], [ false, %38 ], [ false, %34 ], [ false, %7 ], [ %84, %68 ]
  %87 = zext i1 %86 to i32
  store i32 %87, i32* %21, align 4
  %88 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %22, i32 0, i32 0
  store i32 %90, i32* %91, align 4
  %92 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %22, i32 0, i32 1
  store i32 %94, i32* %95, align 4
  %96 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_35__*, %struct.TYPE_35__** %17, align 8
  %100 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %99, i32 0, i32 10
  store i32 %98, i32* %100, align 4
  %101 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_35__*, %struct.TYPE_35__** %17, align 8
  %105 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_35__*, %struct.TYPE_35__** %17, align 8
  %110 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %109, i32 0, i32 9
  store i32 %108, i32* %110, align 8
  %111 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %112 = call i64 @use_block_read(%struct.TYPE_31__* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %85
  %115 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %116 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %115, i32 0, i32 5
  %117 = load i32*, i32** %116, align 8
  br label %119

118:                                              ; preds = %85
  br label %119

119:                                              ; preds = %118, %114
  %120 = phi i32* [ %117, %114 ], [ null, %118 ]
  %121 = load %struct.TYPE_35__*, %struct.TYPE_35__** %17, align 8
  %122 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %121, i32 0, i32 8
  store i32* %120, i32** %122, align 8
  %123 = load %struct.TYPE_35__*, %struct.TYPE_35__** %17, align 8
  %124 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %123, i32 0, i32 1
  store i32 -1, i32* %124, align 4
  %125 = load %struct.TYPE_35__*, %struct.TYPE_35__** %17, align 8
  %126 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %125, i32 0, i32 2
  store i32 -1, i32* %126, align 8
  %127 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @SVN_DELTA_WINDOW_SIZE, align 4
  %131 = add nsw i32 %129, %130
  %132 = mul nsw i32 4, %131
  store i32 %132, i32* %20, align 4
  %133 = load i32, i32* %20, align 4
  %134 = load i32, i32* @APR_SIZE_MAX, align 4
  %135 = call i32 @MIN(i32 %133, i32 %134)
  store i32 %135, i32* %20, align 4
  %136 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %137 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %136, i32 0, i32 4
  %138 = load i32*, i32** %137, align 8
  %139 = icmp ne i32* %138, null
  br i1 %139, label %140, label %151

140:                                              ; preds = %119
  %141 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %142 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %141, i32 0, i32 4
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %20, align 4
  %145 = call i64 @svn_cache__is_cachable(i32* %143, i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %140
  %148 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %149 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %148, i32 0, i32 4
  %150 = load i32*, i32** %149, align 8
  br label %152

151:                                              ; preds = %140, %119
  br label %152

152:                                              ; preds = %151, %147
  %153 = phi i32* [ %150, %147 ], [ null, %151 ]
  %154 = load %struct.TYPE_35__*, %struct.TYPE_35__** %17, align 8
  %155 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %154, i32 0, i32 7
  store i32* %153, i32** %155, align 8
  %156 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %157 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %156, i32 0, i32 3
  %158 = load i32*, i32** %157, align 8
  %159 = icmp ne i32* %158, null
  br i1 %159, label %160, label %171

160:                                              ; preds = %152
  %161 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %162 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %161, i32 0, i32 3
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %20, align 4
  %165 = call i64 @svn_cache__is_cachable(i32* %163, i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %160
  %168 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %169 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %168, i32 0, i32 3
  %170 = load i32*, i32** %169, align 8
  br label %172

171:                                              ; preds = %160, %152
  br label %172

172:                                              ; preds = %171, %167
  %173 = phi i32* [ %170, %167 ], [ null, %171 ]
  %174 = load %struct.TYPE_35__*, %struct.TYPE_35__** %17, align 8
  %175 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %174, i32 0, i32 6
  store i32* %173, i32** %175, align 8
  %176 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %177 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %193

180:                                              ; preds = %172
  %181 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %182 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %181, i32 0, i32 3
  %183 = call i32 @svn_fs_fs__id_txn_used(i32* %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %193, label %185

185:                                              ; preds = %180
  %186 = bitcast %struct.TYPE_32__** %18 to i8**
  %187 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %188 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %187, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  %190 = load i32*, i32** %14, align 8
  %191 = call i32 @svn_cache__get(i8** %186, i32* %19, i64 %189, %struct.TYPE_36__* %22, i32* %190)
  %192 = call i32 @SVN_ERR(i32 %191)
  br label %193

193:                                              ; preds = %185, %180, %172
  %194 = load i32, i32* %21, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %201

196:                                              ; preds = %193
  %197 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %11, align 8
  %198 = load %struct.TYPE_33__*, %struct.TYPE_33__** %197, align 8
  %199 = load %struct.TYPE_35__*, %struct.TYPE_35__** %17, align 8
  %200 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %199, i32 0, i32 5
  store %struct.TYPE_33__* %198, %struct.TYPE_33__** %200, align 8
  br label %225

201:                                              ; preds = %193
  %202 = load i32*, i32** %14, align 8
  %203 = call i8* @apr_pcalloc(i32* %202, i32 32)
  %204 = bitcast i8* %203 to %struct.TYPE_33__*
  store %struct.TYPE_33__* %204, %struct.TYPE_33__** %23, align 8
  %205 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %206 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.TYPE_33__*, %struct.TYPE_33__** %23, align 8
  %209 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %208, i32 0, i32 0
  store i32 %207, i32* %209, align 8
  %210 = load i32*, i32** %14, align 8
  %211 = load %struct.TYPE_33__*, %struct.TYPE_33__** %23, align 8
  %212 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %211, i32 0, i32 3
  store i32* %210, i32** %212, align 8
  %213 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %214 = load %struct.TYPE_33__*, %struct.TYPE_33__** %23, align 8
  %215 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %214, i32 0, i32 2
  store %struct.TYPE_31__* %213, %struct.TYPE_31__** %215, align 8
  %216 = load %struct.TYPE_33__*, %struct.TYPE_33__** %23, align 8
  %217 = load %struct.TYPE_35__*, %struct.TYPE_35__** %17, align 8
  %218 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %217, i32 0, i32 5
  store %struct.TYPE_33__* %216, %struct.TYPE_33__** %218, align 8
  %219 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %11, align 8
  %220 = icmp ne %struct.TYPE_33__** %219, null
  br i1 %220, label %221, label %224

221:                                              ; preds = %201
  %222 = load %struct.TYPE_33__*, %struct.TYPE_33__** %23, align 8
  %223 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %11, align 8
  store %struct.TYPE_33__* %222, %struct.TYPE_33__** %223, align 8
  br label %224

224:                                              ; preds = %221, %201
  br label %225

225:                                              ; preds = %224, %196
  %226 = load i32, i32* %19, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %330, label %228

228:                                              ; preds = %225
  %229 = load i32, i32* %21, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %261

231:                                              ; preds = %228
  %232 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %11, align 8
  %233 = load %struct.TYPE_33__*, %struct.TYPE_33__** %232, align 8
  %234 = load %struct.TYPE_35__*, %struct.TYPE_35__** %17, align 8
  %235 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %234, i32 0, i32 5
  store %struct.TYPE_33__* %233, %struct.TYPE_33__** %235, align 8
  %236 = load %struct.TYPE_35__*, %struct.TYPE_35__** %17, align 8
  %237 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %236, i32 0, i32 5
  %238 = load %struct.TYPE_33__*, %struct.TYPE_33__** %237, align 8
  %239 = call i32 @auto_open_shared_file(%struct.TYPE_33__* %238)
  %240 = call i32 @SVN_ERR(i32 %239)
  %241 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %242 = load %struct.TYPE_35__*, %struct.TYPE_35__** %17, align 8
  %243 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %242, i32 0, i32 5
  %244 = load %struct.TYPE_33__*, %struct.TYPE_33__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %244, i32 0, i32 1
  %246 = load %struct.TYPE_30__*, %struct.TYPE_30__** %245, align 8
  %247 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %248 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %251 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 4
  %253 = load i32*, i32** %15, align 8
  %254 = call i32 @svn_fs_fs__item_offset(i32* %24, %struct.TYPE_31__* %241, %struct.TYPE_30__* %246, i32 %249, i32* null, i32 %252, i32* %253)
  %255 = call i32 @SVN_ERR(i32 %254)
  %256 = load %struct.TYPE_35__*, %struct.TYPE_35__** %17, align 8
  %257 = load i32, i32* %24, align 4
  %258 = load i32*, i32** %15, align 8
  %259 = call i32 @rs_aligned_seek(%struct.TYPE_35__* %256, i32* null, i32 %257, i32* %258)
  %260 = call i32 @SVN_ERR(i32 %259)
  br label %271

261:                                              ; preds = %228
  %262 = load %struct.TYPE_35__*, %struct.TYPE_35__** %17, align 8
  %263 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %262, i32 0, i32 5
  %264 = load %struct.TYPE_33__*, %struct.TYPE_33__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %264, i32 0, i32 1
  %266 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %267 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %268 = load i32*, i32** %14, align 8
  %269 = call i32 @open_and_seek_representation(%struct.TYPE_30__** %265, %struct.TYPE_31__* %266, %struct.TYPE_34__* %267, i32* %268)
  %270 = call i32 @SVN_ERR(i32 %269)
  br label %271

271:                                              ; preds = %261, %231
  %272 = load %struct.TYPE_35__*, %struct.TYPE_35__** %17, align 8
  %273 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %272, i32 0, i32 5
  %274 = load %struct.TYPE_33__*, %struct.TYPE_33__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %274, i32 0, i32 1
  %276 = load %struct.TYPE_30__*, %struct.TYPE_30__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = load i32*, i32** %14, align 8
  %280 = load i32*, i32** %15, align 8
  %281 = call i32 @svn_fs_fs__read_rep_header(%struct.TYPE_32__** %18, i32 %278, i32* %279, i32* %280)
  %282 = call i32 @SVN_ERR(i32 %281)
  %283 = load %struct.TYPE_35__*, %struct.TYPE_35__** %17, align 8
  %284 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %283, i32 0, i32 2
  %285 = load %struct.TYPE_35__*, %struct.TYPE_35__** %17, align 8
  %286 = load i32*, i32** %14, align 8
  %287 = call i32 @get_file_offset(i32* %284, %struct.TYPE_35__* %285, i32* %286)
  %288 = call i32 @SVN_ERR(i32 %287)
  %289 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %290 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %289, i32 0, i32 3
  %291 = call i32 @svn_fs_fs__id_txn_used(i32* %290)
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %329, label %293

293:                                              ; preds = %271
  %294 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %295 = call i64 @use_block_read(%struct.TYPE_31__* %294)
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %314

297:                                              ; preds = %293
  %298 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %299 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %300 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %303 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %302, i32 0, i32 2
  %304 = load i32, i32* %303, align 4
  %305 = load %struct.TYPE_35__*, %struct.TYPE_35__** %17, align 8
  %306 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %305, i32 0, i32 5
  %307 = load %struct.TYPE_33__*, %struct.TYPE_33__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %307, i32 0, i32 1
  %309 = load %struct.TYPE_30__*, %struct.TYPE_30__** %308, align 8
  %310 = load i32*, i32** %14, align 8
  %311 = load i32*, i32** %15, align 8
  %312 = call i32 @block_read(i32* null, %struct.TYPE_31__* %298, i32 %301, i32 %304, %struct.TYPE_30__* %309, i32* %310, i32* %311)
  %313 = call i32 @SVN_ERR(i32 %312)
  br label %328

314:                                              ; preds = %293
  %315 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %316 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %315, i32 0, i32 2
  %317 = load i64, i64* %316, align 8
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %327

319:                                              ; preds = %314
  %320 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %321 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %320, i32 0, i32 2
  %322 = load i64, i64* %321, align 8
  %323 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %324 = load i32*, i32** %15, align 8
  %325 = call i32 @svn_cache__set(i64 %322, %struct.TYPE_36__* %22, %struct.TYPE_32__* %323, i32* %324)
  %326 = call i32 @SVN_ERR(i32 %325)
  br label %327

327:                                              ; preds = %319, %314
  br label %328

328:                                              ; preds = %327, %297
  br label %329

329:                                              ; preds = %328, %271
  br label %330

330:                                              ; preds = %329, %225
  %331 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %332 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %333 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 4
  %335 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %336 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %335, i32 0, i32 2
  %337 = load i32, i32* %336, align 4
  %338 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %339 = load i32, i32* @SVN_FS_FS__ITEM_TYPE_ANY_REP, align 4
  %340 = load i32*, i32** %15, align 8
  %341 = call i32 @dbg_log_access(%struct.TYPE_31__* %331, i32 %334, i32 %337, %struct.TYPE_32__* %338, i32 %339, i32* %340)
  %342 = call i32 @SVN_ERR(i32 %341)
  %343 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %344 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %343, i32 0, i32 1
  %345 = load i32, i32* %344, align 8
  %346 = load %struct.TYPE_35__*, %struct.TYPE_35__** %17, align 8
  %347 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %346, i32 0, i32 4
  store i32 %345, i32* %347, align 8
  %348 = load %struct.TYPE_35__*, %struct.TYPE_35__** %17, align 8
  %349 = load %struct.TYPE_35__**, %struct.TYPE_35__*** %9, align 8
  store %struct.TYPE_35__* %348, %struct.TYPE_35__** %349, align 8
  %350 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %351 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %10, align 8
  store %struct.TYPE_32__* %350, %struct.TYPE_32__** %351, align 8
  %352 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %353 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %352, i32 0, i32 0
  %354 = load i64, i64* %353, align 8
  %355 = load i64, i64* @svn_fs_fs__rep_plain, align 8
  %356 = icmp eq i64 %354, %355
  br i1 %356, label %357, label %359

357:                                              ; preds = %330
  %358 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %358, i32** %8, align 8
  br label %363

359:                                              ; preds = %330
  %360 = load %struct.TYPE_35__*, %struct.TYPE_35__** %17, align 8
  %361 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %360, i32 0, i32 3
  store i32 4, i32* %361, align 4
  %362 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %362, i32** %8, align 8
  br label %363

363:                                              ; preds = %359, %357
  %364 = load i32*, i32** %8, align 8
  ret i32* %364
}

declare dso_local i8* @apr_pcalloc(i32*, i32) #1

declare dso_local i64 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local i64 @use_block_read(%struct.TYPE_31__*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i64 @svn_cache__is_cachable(i32*, i32) #1

declare dso_local i32 @svn_fs_fs__id_txn_used(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_cache__get(i8**, i32*, i64, %struct.TYPE_36__*, i32*) #1

declare dso_local i32 @auto_open_shared_file(%struct.TYPE_33__*) #1

declare dso_local i32 @svn_fs_fs__item_offset(i32*, %struct.TYPE_31__*, %struct.TYPE_30__*, i32, i32*, i32, i32*) #1

declare dso_local i32 @rs_aligned_seek(%struct.TYPE_35__*, i32*, i32, i32*) #1

declare dso_local i32 @open_and_seek_representation(%struct.TYPE_30__**, %struct.TYPE_31__*, %struct.TYPE_34__*, i32*) #1

declare dso_local i32 @svn_fs_fs__read_rep_header(%struct.TYPE_32__**, i32, i32*, i32*) #1

declare dso_local i32 @get_file_offset(i32*, %struct.TYPE_35__*, i32*) #1

declare dso_local i32 @block_read(i32*, %struct.TYPE_31__*, i32, i32, %struct.TYPE_30__*, i32*, i32*) #1

declare dso_local i32 @svn_cache__set(i64, %struct.TYPE_36__*, %struct.TYPE_32__*, i32*) #1

declare dso_local i32 @dbg_log_access(%struct.TYPE_31__*, i32, i32, %struct.TYPE_32__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
