; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_index.c_l2p_index_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_index.c_l2p_index_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32, i64 }
%struct.TYPE_26__ = type { i32, i64, %struct.TYPE_22__, i32, i8*, i64 }
%struct.TYPE_22__ = type { i64, i64 }
%struct.TYPE_27__ = type { i64, i64, i32, i8*, i64 }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, i32, i64, i32 }

@FALSE = common dso_local global i64 0, align 8
@APR_UINT32_MAX = common dso_local global i64 0, align 8
@l2p_page_access_func = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i64*, i64*, %struct.TYPE_24__*, i32*, i64, i8*, i32*)* @l2p_index_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @l2p_index_lookup(i64* %0, i64* %1, %struct.TYPE_24__* %2, i32* %3, i64 %4, i8* %5, i32* %6) #0 {
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_23__*, align 8
  %16 = alloca %struct.TYPE_26__, align 8
  %17 = alloca %struct.TYPE_27__, align 8
  %18 = alloca %struct.TYPE_25__*, align 8
  %19 = alloca %struct.TYPE_21__, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  store i64* %0, i64** %8, align 8
  store i64* %1, i64** %9, align 8
  store %struct.TYPE_24__* %2, %struct.TYPE_24__** %10, align 8
  store i32* %3, i32** %11, align 8
  store i64 %4, i64* %12, align 8
  store i8* %5, i8** %13, align 8
  store i32* %6, i32** %14, align 8
  %30 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %31, align 8
  store %struct.TYPE_23__* %32, %struct.TYPE_23__** %15, align 8
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %18, align 8
  %33 = bitcast %struct.TYPE_21__* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %33, i8 0, i64 24, i1 false)
  %34 = load i64, i64* @FALSE, align 8
  store i64 %34, i64* %20, align 8
  store i8* null, i8** %21, align 8
  %35 = load i64, i64* %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %16, i32 0, i32 5
  store i64 %35, i64* %36, align 8
  %37 = load i8*, i8** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %16, i32 0, i32 4
  store i8* %37, i8** %38, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %41 = load i32*, i32** %14, align 8
  %42 = call i32 @get_l2p_page_info(%struct.TYPE_26__* %16, i32* %39, %struct.TYPE_24__* %40, i32* %41)
  %43 = call i32 @SVN_ERR(i32 %42)
  %44 = load i64, i64* %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %17, i32 0, i32 4
  store i64 %44, i64* %45, align 8
  %46 = load i8*, i8** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %17, i32 0, i32 3
  store i8* %46, i8** %47, align 8
  %48 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %16, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %17, i32 0, i32 2
  store i32 %49, i32* %50, align 8
  %51 = load i64, i64* %12, align 8
  %52 = load i64, i64* @APR_UINT32_MAX, align 8
  %53 = icmp sle i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load i64, i64* %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 2
  store i64 %56, i64* %57, align 8
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %59 = load i64, i64* %12, align 8
  %60 = call i32 @svn_fs_x__is_packed_rev(%struct.TYPE_24__* %58, i64 %59)
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 1
  store i32 %60, i32* %61, align 4
  %62 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %16, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 0
  store i32 %63, i32* %64, align 8
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %66 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @l2p_page_access_func, align 4
  %69 = load i32*, i32** %14, align 8
  %70 = call i32 @svn_cache__get_partial(i8** %21, i64* %20, i32 %67, %struct.TYPE_21__* %19, i32 %68, %struct.TYPE_27__* %17, i32* %69)
  %71 = call i32 @SVN_ERR(i32 %70)
  %72 = load i64, i64* %20, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %194, label %74

74:                                               ; preds = %7
  %75 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %16, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %16, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = call i64 @svn_fs_x__pack_size(%struct.TYPE_24__* %77, i64 %79)
  %81 = add nsw i64 %76, %80
  store i64 %81, i64* %24, align 8
  %82 = load i32*, i32** %14, align 8
  %83 = call i32* @svn_pool_create(i32* %82)
  store i32* %83, i32** %25, align 8
  %84 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %16, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %16, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %86, %89
  %91 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %92 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = call i64 @APR_ALIGN(i64 %90, i64 %93)
  store i64 %94, i64* %27, align 8
  %95 = load i64, i64* %27, align 8
  %96 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %97 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = sub nsw i64 %95, %98
  store i64 %99, i64* %28, align 8
  %100 = load i32*, i32** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %16, i32 0, i32 2
  %102 = load i32*, i32** %14, align 8
  %103 = call i32 @get_l2p_page(%struct.TYPE_25__** %18, i32* %100, %struct.TYPE_22__* %101, i32* %102)
  %104 = call i32 @SVN_ERR(i32 %103)
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %109 = load i32*, i32** %14, align 8
  %110 = call i32 @svn_cache__set(i32 %107, %struct.TYPE_21__* %19, %struct.TYPE_25__* %108, i32* %109)
  %111 = call i32 @SVN_ERR(i32 %110)
  %112 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %113 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %114 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %117 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32*, i32** %14, align 8
  %120 = call i32 @l2p_page_get_offset(%struct.TYPE_27__* %17, %struct.TYPE_25__* %112, i32 %115, i32 %118, i32* %119)
  %121 = call i32 @SVN_ERR(i32 %120)
  %122 = load i32*, i32** %14, align 8
  %123 = call i32* @apr_array_make(i32* %122, i32 16, i32 4)
  store i32* %123, i32** %22, align 8
  %124 = load i64, i64* @FALSE, align 8
  store i64 %124, i64* %26, align 8
  %125 = load i64, i64* %12, align 8
  store i64 %125, i64* %23, align 8
  br label %126

126:                                              ; preds = %158, %74
  %127 = load i64, i64* %23, align 8
  %128 = load i64, i64* %24, align 8
  %129 = icmp slt i64 %127, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %126
  %131 = load i64, i64* %26, align 8
  %132 = icmp ne i64 %131, 0
  %133 = xor i1 %132, true
  br label %134

134:                                              ; preds = %130, %126
  %135 = phi i1 [ false, %126 ], [ %133, %130 ]
  br i1 %135, label %136, label %161

136:                                              ; preds = %134
  %137 = load i64, i64* %23, align 8
  %138 = load i64, i64* %12, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %136
  %141 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %16, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  br label %144

143:                                              ; preds = %136
  br label %144

144:                                              ; preds = %143, %140
  %145 = phi i32 [ %142, %140 ], [ -1, %143 ]
  store i32 %145, i32* %29, align 4
  %146 = load i32*, i32** %25, align 8
  %147 = call i32 @svn_pool_clear(i32* %146)
  %148 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %149 = load i32*, i32** %11, align 8
  %150 = load i64, i64* %23, align 8
  %151 = load i32*, i32** %22, align 8
  %152 = load i32, i32* %29, align 4
  %153 = load i64, i64* %28, align 8
  %154 = load i64, i64* %27, align 8
  %155 = load i32*, i32** %25, align 8
  %156 = call i32 @prefetch_l2p_pages(i64* %26, %struct.TYPE_24__* %148, i32* %149, i64 %150, i32* %151, i32 %152, i64 %153, i64 %154, i32* %155)
  %157 = call i32 @SVN_ERR(i32 %156)
  br label %158

158:                                              ; preds = %144
  %159 = load i64, i64* %23, align 8
  %160 = add nsw i64 %159, 1
  store i64 %160, i64* %23, align 8
  br label %126

161:                                              ; preds = %134
  %162 = load i64, i64* @FALSE, align 8
  store i64 %162, i64* %26, align 8
  %163 = load i64, i64* %12, align 8
  %164 = sub nsw i64 %163, 1
  store i64 %164, i64* %23, align 8
  br label %165

165:                                              ; preds = %188, %161
  %166 = load i64, i64* %23, align 8
  %167 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %16, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = icmp sge i64 %166, %168
  br i1 %169, label %170, label %174

170:                                              ; preds = %165
  %171 = load i64, i64* %26, align 8
  %172 = icmp ne i64 %171, 0
  %173 = xor i1 %172, true
  br label %174

174:                                              ; preds = %170, %165
  %175 = phi i1 [ false, %165 ], [ %173, %170 ]
  br i1 %175, label %176, label %191

176:                                              ; preds = %174
  %177 = load i32*, i32** %25, align 8
  %178 = call i32 @svn_pool_clear(i32* %177)
  %179 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %180 = load i32*, i32** %11, align 8
  %181 = load i64, i64* %23, align 8
  %182 = load i32*, i32** %22, align 8
  %183 = load i64, i64* %28, align 8
  %184 = load i64, i64* %27, align 8
  %185 = load i32*, i32** %25, align 8
  %186 = call i32 @prefetch_l2p_pages(i64* %26, %struct.TYPE_24__* %179, i32* %180, i64 %181, i32* %182, i32 -1, i64 %183, i64 %184, i32* %185)
  %187 = call i32 @SVN_ERR(i32 %186)
  br label %188

188:                                              ; preds = %176
  %189 = load i64, i64* %23, align 8
  %190 = add nsw i64 %189, -1
  store i64 %190, i64* %23, align 8
  br label %165

191:                                              ; preds = %174
  %192 = load i32*, i32** %25, align 8
  %193 = call i32 @svn_pool_destroy(i32* %192)
  br label %194

194:                                              ; preds = %191, %7
  %195 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %17, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = load i64*, i64** %8, align 8
  store i64 %196, i64* %197, align 8
  %198 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %17, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64*, i64** %9, align 8
  store i64 %199, i64* %200, align 8
  %201 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %201
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @SVN_ERR(i32) #2

declare dso_local i32 @get_l2p_page_info(%struct.TYPE_26__*, i32*, %struct.TYPE_24__*, i32*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @svn_fs_x__is_packed_rev(%struct.TYPE_24__*, i64) #2

declare dso_local i32 @svn_cache__get_partial(i8**, i64*, i32, %struct.TYPE_21__*, i32, %struct.TYPE_27__*, i32*) #2

declare dso_local i64 @svn_fs_x__pack_size(%struct.TYPE_24__*, i64) #2

declare dso_local i32* @svn_pool_create(i32*) #2

declare dso_local i64 @APR_ALIGN(i64, i64) #2

declare dso_local i32 @get_l2p_page(%struct.TYPE_25__**, i32*, %struct.TYPE_22__*, i32*) #2

declare dso_local i32 @svn_cache__set(i32, %struct.TYPE_21__*, %struct.TYPE_25__*, i32*) #2

declare dso_local i32 @l2p_page_get_offset(%struct.TYPE_27__*, %struct.TYPE_25__*, i32, i32, i32*) #2

declare dso_local i32* @apr_array_make(i32*, i32, i32) #2

declare dso_local i32 @svn_pool_clear(i32*) #2

declare dso_local i32 @prefetch_l2p_pages(i64*, %struct.TYPE_24__*, i32*, i64, i32*, i32, i64, i64, i32*) #2

declare dso_local i32 @svn_pool_destroy(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
