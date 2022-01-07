; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_index.c_l2p_index_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_index.c_l2p_index_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32, i64, i32, i64 }
%struct.TYPE_25__ = type { i32, i64, %struct.TYPE_22__, i32, i8*, i64 }
%struct.TYPE_22__ = type { i64, i64 }
%struct.TYPE_26__ = type { i64, i32, i8*, i64 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { i32, i64, i64, i32 }

@FALSE = common dso_local global i64 0, align 8
@APR_UINT32_MAX = common dso_local global i64 0, align 8
@l2p_entry_access_func = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i64*, %struct.TYPE_21__*, i32*, i64, i8*, i32*)* @l2p_index_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @l2p_index_lookup(i64* %0, %struct.TYPE_21__* %1, i32* %2, i64 %3, i8* %4, i32* %5) #0 {
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_27__*, align 8
  %14 = alloca %struct.TYPE_25__, align 8
  %15 = alloca %struct.TYPE_26__, align 8
  %16 = alloca %struct.TYPE_24__*, align 8
  %17 = alloca %struct.TYPE_23__, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  store i64* %0, i64** %7, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  store i32* %5, i32** %12, align 8
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_27__*, %struct.TYPE_27__** %29, align 8
  store %struct.TYPE_27__* %30, %struct.TYPE_27__** %13, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %16, align 8
  %31 = bitcast %struct.TYPE_23__* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %31, i8 0, i64 32, i1 false)
  %32 = load i64, i64* @FALSE, align 8
  store i64 %32, i64* %18, align 8
  store i8* null, i8** %19, align 8
  %33 = load i64, i64* %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 5
  store i64 %33, i64* %34, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 4
  store i8* %35, i8** %36, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %39 = load i32*, i32** %12, align 8
  %40 = call i32 @get_l2p_page_info(%struct.TYPE_25__* %14, i32* %37, %struct.TYPE_21__* %38, i32* %39)
  %41 = call i32 @SVN_ERR(i32 %40)
  %42 = load i64, i64* %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %15, i32 0, i32 3
  store i64 %42, i64* %43, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %15, i32 0, i32 2
  store i8* %44, i8** %45, align 8
  %46 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %15, i32 0, i32 1
  store i32 %47, i32* %48, align 8
  %49 = load i64, i64* %10, align 8
  %50 = load i64, i64* @APR_UINT32_MAX, align 8
  %51 = icmp sle i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load i64, i64* %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 2
  store i64 %54, i64* %55, align 8
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %57 = load i64, i64* %10, align 8
  %58 = call i64 @svn_fs_fs__is_packed_rev(%struct.TYPE_21__* %56, i64 %57)
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 1
  store i64 %58, i64* %59, align 8
  %60 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 0
  store i32 %61, i32* %62, align 8
  %63 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @l2p_entry_access_func, align 4
  %67 = load i32*, i32** %12, align 8
  %68 = call i32 @svn_cache__get_partial(i8** %19, i64* %18, i32 %65, %struct.TYPE_23__* %17, i32 %66, %struct.TYPE_26__* %15, i32* %67)
  %69 = call i32 @SVN_ERR(i32 %68)
  %70 = load i64, i64* %18, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %209, label %72

72:                                               ; preds = %6
  %73 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  br label %83

82:                                               ; preds = %72
  br label %83

83:                                               ; preds = %82, %78
  %84 = phi i32 [ %81, %78 ], [ 1, %82 ]
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %74, %85
  store i64 %86, i64* %22, align 8
  %87 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %89, %92
  %94 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = call i64 @APR_ALIGN(i64 %93, i64 %96)
  store i64 %97, i64* %24, align 8
  %98 = load i64, i64* %24, align 8
  %99 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %100 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = sub nsw i64 %98, %101
  store i64 %102, i64* %25, align 8
  %103 = load i32*, i32** %9, align 8
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 2
  %108 = load i32*, i32** %12, align 8
  %109 = call i32 @get_l2p_page(%struct.TYPE_24__** %16, i32* %103, %struct.TYPE_21__* %104, i64 %106, %struct.TYPE_22__* %107, i32* %108)
  %110 = call i32 @SVN_ERR(i32 %109)
  %111 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %115 = load i32*, i32** %12, align 8
  %116 = call i32 @svn_cache__set(i32 %113, %struct.TYPE_23__* %17, %struct.TYPE_24__* %114, i32* %115)
  %117 = call i32 @SVN_ERR(i32 %116)
  %118 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %119 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %120 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32*, i32** %12, align 8
  %123 = call i32 @l2p_page_get_entry(%struct.TYPE_26__* %15, %struct.TYPE_24__* %118, i32 %121, i32* %122)
  %124 = call i32 @SVN_ERR(i32 %123)
  %125 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %126 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %208

129:                                              ; preds = %83
  %130 = load i32*, i32** %12, align 8
  %131 = call i32* @svn_pool_create(i32* %130)
  store i32* %131, i32** %26, align 8
  %132 = load i32*, i32** %12, align 8
  %133 = call i32* @apr_array_make(i32* %132, i32 16, i32 4)
  store i32* %133, i32** %20, align 8
  %134 = load i64, i64* @FALSE, align 8
  store i64 %134, i64* %23, align 8
  %135 = load i64, i64* %10, align 8
  store i64 %135, i64* %21, align 8
  br label %136

136:                                              ; preds = %170, %129
  %137 = load i64, i64* %21, align 8
  %138 = load i64, i64* %22, align 8
  %139 = icmp slt i64 %137, %138
  br i1 %139, label %140, label %144

140:                                              ; preds = %136
  %141 = load i64, i64* %23, align 8
  %142 = icmp ne i64 %141, 0
  %143 = xor i1 %142, true
  br label %144

144:                                              ; preds = %140, %136
  %145 = phi i1 [ false, %136 ], [ %143, %140 ]
  br i1 %145, label %146, label %173

146:                                              ; preds = %144
  %147 = load i64, i64* %21, align 8
  %148 = load i64, i64* %10, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %153

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  br label %154

153:                                              ; preds = %146
  br label %154

154:                                              ; preds = %153, %150
  %155 = phi i32 [ %152, %150 ], [ -1, %153 ]
  store i32 %155, i32* %27, align 4
  %156 = load i32*, i32** %26, align 8
  %157 = call i32 @svn_pool_clear(i32* %156)
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %159 = load i32*, i32** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* %21, align 8
  %163 = load i32*, i32** %20, align 8
  %164 = load i32, i32* %27, align 4
  %165 = load i64, i64* %25, align 8
  %166 = load i64, i64* %24, align 8
  %167 = load i32*, i32** %26, align 8
  %168 = call i32 @prefetch_l2p_pages(i64* %23, %struct.TYPE_21__* %158, i32* %159, i64 %161, i64 %162, i32* %163, i32 %164, i64 %165, i64 %166, i32* %167)
  %169 = call i32 @SVN_ERR(i32 %168)
  br label %170

170:                                              ; preds = %154
  %171 = load i64, i64* %21, align 8
  %172 = add nsw i64 %171, 1
  store i64 %172, i64* %21, align 8
  br label %136

173:                                              ; preds = %144
  %174 = load i64, i64* @FALSE, align 8
  store i64 %174, i64* %23, align 8
  %175 = load i64, i64* %10, align 8
  %176 = sub nsw i64 %175, 1
  store i64 %176, i64* %21, align 8
  br label %177

177:                                              ; preds = %202, %173
  %178 = load i64, i64* %21, align 8
  %179 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = icmp sge i64 %178, %180
  br i1 %181, label %182, label %186

182:                                              ; preds = %177
  %183 = load i64, i64* %23, align 8
  %184 = icmp ne i64 %183, 0
  %185 = xor i1 %184, true
  br label %186

186:                                              ; preds = %182, %177
  %187 = phi i1 [ false, %177 ], [ %185, %182 ]
  br i1 %187, label %188, label %205

188:                                              ; preds = %186
  %189 = load i32*, i32** %26, align 8
  %190 = call i32 @svn_pool_clear(i32* %189)
  %191 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %192 = load i32*, i32** %9, align 8
  %193 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* %21, align 8
  %196 = load i32*, i32** %20, align 8
  %197 = load i64, i64* %25, align 8
  %198 = load i64, i64* %24, align 8
  %199 = load i32*, i32** %26, align 8
  %200 = call i32 @prefetch_l2p_pages(i64* %23, %struct.TYPE_21__* %191, i32* %192, i64 %194, i64 %195, i32* %196, i32 -1, i64 %197, i64 %198, i32* %199)
  %201 = call i32 @SVN_ERR(i32 %200)
  br label %202

202:                                              ; preds = %188
  %203 = load i64, i64* %21, align 8
  %204 = add nsw i64 %203, -1
  store i64 %204, i64* %21, align 8
  br label %177

205:                                              ; preds = %186
  %206 = load i32*, i32** %26, align 8
  %207 = call i32 @svn_pool_destroy(i32* %206)
  br label %208

208:                                              ; preds = %205, %83
  br label %209

209:                                              ; preds = %208, %6
  %210 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %15, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load i64*, i64** %7, align 8
  store i64 %211, i64* %212, align 8
  %213 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %213
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @SVN_ERR(i32) #2

declare dso_local i32 @get_l2p_page_info(%struct.TYPE_25__*, i32*, %struct.TYPE_21__*, i32*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @svn_fs_fs__is_packed_rev(%struct.TYPE_21__*, i64) #2

declare dso_local i32 @svn_cache__get_partial(i8**, i64*, i32, %struct.TYPE_23__*, i32, %struct.TYPE_26__*, i32*) #2

declare dso_local i64 @APR_ALIGN(i64, i64) #2

declare dso_local i32 @get_l2p_page(%struct.TYPE_24__**, i32*, %struct.TYPE_21__*, i64, %struct.TYPE_22__*, i32*) #2

declare dso_local i32 @svn_cache__set(i32, %struct.TYPE_23__*, %struct.TYPE_24__*, i32*) #2

declare dso_local i32 @l2p_page_get_entry(%struct.TYPE_26__*, %struct.TYPE_24__*, i32, i32*) #2

declare dso_local i32* @svn_pool_create(i32*) #2

declare dso_local i32* @apr_array_make(i32*, i32, i32) #2

declare dso_local i32 @svn_pool_clear(i32*) #2

declare dso_local i32 @prefetch_l2p_pages(i64*, %struct.TYPE_21__*, i32*, i64, i64, i32*, i32, i64, i64, i32*) #2

declare dso_local i32 @svn_pool_destroy(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
