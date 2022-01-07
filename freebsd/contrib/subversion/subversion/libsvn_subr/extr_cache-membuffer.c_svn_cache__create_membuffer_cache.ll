; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_cache-membuffer.c_svn_cache__create_membuffer_cache.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_cache-membuffer.c_svn_cache__create_membuffer_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i64, i64, %struct.TYPE_14__*, i32* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_12__, %struct.TYPE_11__, i32, i32, i64, i64, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_11__ = type { i8*, i32, i64 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i8* }

@serialize_svn_stringbuf = common dso_local global i64 0, align 8
@deserialize_svn_stringbuf = common dso_local global i64 0, align 8
@SVN_MAX_OBJECT_SIZE = common dso_local global i32 0, align 4
@SVN_ERR_INCORRECT_PARAMS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Prefix too long\00", align 1
@svn_checksum_md5 = common dso_local global i32 0, align 4
@APR_HASH_KEY_STRING = common dso_local global i32 0, align 4
@NO_INDEX = common dso_local global i64 0, align 8
@membuffer_cache_synced_vtable = common dso_local global i32 0, align 4
@membuffer_cache_vtable = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"SVN_X_DOES_NOT_MARK_THE_SPOT\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_cache__create_membuffer_cache(%struct.TYPE_16__** %0, %struct.TYPE_13__* %1, i64 %2, i64 %3, i32 %4, i8* %5, i32 %6, i32 %7, i32 %8, i32* %9, i32* %10) #0 {
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_16__**, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca %struct.TYPE_15__*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_16__*, align 8
  %28 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_16__** %0, %struct.TYPE_16__*** %13, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %14, align 8
  store i64 %2, i64* %15, align 8
  store i64 %3, i64* %16, align 8
  store i32 %4, i32* %17, align 4
  store i8* %5, i8** %18, align 8
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32* %9, i32** %22, align 8
  store i32* %10, i32** %23, align 8
  %29 = load i32*, i32** %22, align 8
  %30 = call i8* @apr_pcalloc(i32* %29, i32 40)
  %31 = bitcast i8* %30 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %31, %struct.TYPE_16__** %27, align 8
  %32 = load i32*, i32** %22, align 8
  %33 = call i8* @apr_pcalloc(i32* %32, i32 96)
  %34 = bitcast i8* %33 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %34, %struct.TYPE_14__** %28, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 7
  store %struct.TYPE_13__* %35, %struct.TYPE_13__** %37, align 8
  %38 = load i64, i64* %15, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %11
  %41 = load i64, i64* %15, align 8
  br label %44

42:                                               ; preds = %11
  %43 = load i64, i64* @serialize_svn_stringbuf, align 8
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i64 [ %41, %40 ], [ %43, %42 ]
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 6
  store i64 %45, i64* %47, align 8
  %48 = load i64, i64* %16, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i64, i64* %16, align 8
  br label %54

52:                                               ; preds = %44
  %53 = load i64, i64* @deserialize_svn_stringbuf, align 8
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i64 [ %51, %50 ], [ %53, %52 ]
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 5
  store i64 %55, i64* %57, align 8
  %58 = load i32, i32* %19, align 4
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %17, align 4
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 3
  %66 = load i32, i32* %20, align 4
  %67 = load i32*, i32** %22, align 8
  %68 = call i32 @svn_mutex__init(i32* %65, i32 %66, i32* %67)
  %69 = call i32 @SVN_ERR(i32 %68)
  %70 = load i8*, i8** %18, align 8
  %71 = call i32 @strlen(i8* %70)
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %26, align 4
  %73 = load i32, i32* %26, align 4
  %74 = call i32 @ALIGN_VALUE(i32 %73)
  store i32 %74, i32* %25, align 4
  %75 = load i32, i32* %26, align 4
  %76 = load i32, i32* @SVN_MAX_OBJECT_SIZE, align 4
  %77 = icmp sge i32 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %54
  %79 = load i32, i32* @SVN_ERR_INCORRECT_PARAMS, align 4
  %80 = call i32 @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %81 = call i32* @svn_error_create(i32 %79, i32* null, i32 %80)
  store i32* %81, i32** %12, align 8
  br label %208

82:                                               ; preds = %54
  %83 = load i32, i32* @svn_checksum_md5, align 4
  %84 = load i8*, i8** %18, align 8
  %85 = load i8*, i8** %18, align 8
  %86 = call i32 @strlen(i8* %85)
  %87 = load i32*, i32** %23, align 8
  %88 = call i32 @svn_checksum(%struct.TYPE_15__** %24, i32 %83, i8* %84, i32 %86, i32* %87)
  %89 = call i32 @SVN_ERR(i32 %88)
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @memcpy(i8* %93, i8* %96, i32 8)
  %98 = load i32, i32* %25, align 4
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 1
  store i32 %98, i32* %101, align 8
  %102 = load i32, i32* %17, align 4
  %103 = load i32, i32* @APR_HASH_KEY_STRING, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %122

105:                                              ; preds = %82
  %106 = load i32, i32* %17, align 4
  %107 = sext i32 %106 to i64
  %108 = icmp ule i64 %107, 8
  br i1 %108, label %109, label %122

109:                                              ; preds = %105
  %110 = load i32, i32* %21, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %122, label %112

112:                                              ; preds = %109
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 2
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i8*, i8** %18, align 8
  %120 = call i32 @prefix_pool_get(i64* %115, i32 %118, i8* %119)
  %121 = call i32 @SVN_ERR(i32 %120)
  br label %127

122:                                              ; preds = %109, %105, %82
  %123 = load i64, i64* @NO_INDEX, align 8
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 2
  store i64 %123, i64* %126, align 8
  br label %127

127:                                              ; preds = %122, %112
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @NO_INDEX, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %171

134:                                              ; preds = %127
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 2
  %140 = bitcast %struct.TYPE_11__* %137 to i8*
  %141 = bitcast %struct.TYPE_11__* %139 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %140, i8* align 8 %141, i64 24, i1 false)
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 1
  %145 = load i32, i32* %25, align 4
  %146 = add nsw i32 %145, 200
  %147 = load i32*, i32** %22, align 8
  %148 = call i32 @svn_membuf__create(%struct.TYPE_17__* %144, i32 %146, i32* %147)
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = inttoptr i64 %153 to i8*
  %155 = load i8*, i8** %18, align 8
  %156 = load i32, i32* %26, align 4
  %157 = call i32 @memcpy(i8* %154, i8* %155, i32 %156)
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = inttoptr i64 %162 to i8*
  %164 = load i32, i32* %26, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8, i8* %163, i64 %165
  %167 = load i32, i32* %25, align 4
  %168 = load i32, i32* %26, align 4
  %169 = sub nsw i32 %167, %168
  %170 = call i32 @memset(i8* %166, i32 0, i32 %169)
  br label %184

171:                                              ; preds = %127
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 2
  store i64 %175, i64* %179, align 8
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 1
  store i32 0, i32* %183, align 8
  br label %184

184:                                              ; preds = %171, %134
  %185 = load i32, i32* %20, align 4
  %186 = icmp ne i32 %185, 0
  %187 = zext i1 %186 to i64
  %188 = select i1 %186, i32* @membuffer_cache_synced_vtable, i32* @membuffer_cache_vtable
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %27, align 8
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 4
  store i32* %188, i32** %190, align 8
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %27, align 8
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 3
  store %struct.TYPE_14__* %191, %struct.TYPE_14__** %193, align 8
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %27, align 8
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 2
  store i64 0, i64* %195, align 8
  %196 = load %struct.TYPE_16__*, %struct.TYPE_16__** %27, align 8
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %196, i32 0, i32 1
  store i64 0, i64* %197, align 8
  %198 = call i32 @getenv(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %199 = icmp ne i32 %198, 0
  %200 = xor i1 %199, true
  %201 = xor i1 %200, true
  %202 = zext i1 %201 to i32
  %203 = load %struct.TYPE_16__*, %struct.TYPE_16__** %27, align 8
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 0
  store i32 %202, i32* %204, align 8
  %205 = load %struct.TYPE_16__*, %struct.TYPE_16__** %27, align 8
  %206 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %13, align 8
  store %struct.TYPE_16__* %205, %struct.TYPE_16__** %206, align 8
  %207 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %207, i32** %12, align 8
  br label %208

208:                                              ; preds = %184, %78
  %209 = load i32*, i32** %12, align 8
  ret i32* %209
}

declare dso_local i8* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_mutex__init(i32*, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ALIGN_VALUE(i32) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_checksum(%struct.TYPE_15__**, i32, i8*, i32, i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @prefix_pool_get(i64*, i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @svn_membuf__create(%struct.TYPE_17__*, i32, i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @getenv(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
