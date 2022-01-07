; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_copy.c_resolve_pinned_externals.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_copy.c_resolve_pinned_externals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@SVN_PROP_EXTERNALS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@svn_node_dir = common dso_local global i32 0, align 4
@svn_depth_infinity = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i32*, %struct.TYPE_7__*, i32*, i8*, %struct.TYPE_6__*, i32*, i32*)* @resolve_pinned_externals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @resolve_pinned_externals(i32** %0, i32* %1, %struct.TYPE_7__* %2, i32* %3, i8* %4, %struct.TYPE_6__* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_6__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i32*, align 8
  store i32** %0, i32*** %10, align 8
  store i32* %1, i32** %11, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %12, align 8
  store i32* %3, i32** %13, align 8
  store i8* %4, i8** %14, align 8
  store %struct.TYPE_6__* %5, %struct.TYPE_6__** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  store i8* null, i8** %18, align 8
  %29 = load i32*, i32** %16, align 8
  %30 = call i32* @apr_hash_make(i32* %29)
  %31 = load i32**, i32*** %10, align 8
  store i32* %30, i32** %31, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @svn_path_is_url(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %62

37:                                               ; preds = %8
  %38 = load i32*, i32** %13, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %17, align 8
  %43 = call i32 @svn_client__ensure_ra_session_url(i8** %18, i32* %38, i32 %41, i32* %42)
  %44 = call i32 @SVN_ERR(i32 %43)
  %45 = load i32*, i32** %17, align 8
  %46 = call i32* @apr_hash_make(i32* %45)
  store i32* %46, i32** %19, align 8
  %47 = load i32*, i32** %19, align 8
  %48 = load i32, i32* @SVN_PROP_EXTERNALS, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @svn_node_dir, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %13, align 8
  %57 = load i32, i32* @svn_depth_infinity, align 4
  %58 = load i32*, i32** %17, align 8
  %59 = load i32*, i32** %17, align 8
  %60 = call i32 @svn_client__remote_propget(i32* %47, i32* null, i32 %48, i32 %51, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %55, i32* %56, i32 %57, i32* %58, i32* %59)
  %61 = call i32 @SVN_ERR(i32 %60)
  br label %96

62:                                               ; preds = %8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @svn_depth_infinity, align 4
  %70 = load i32*, i32** %17, align 8
  %71 = load i32*, i32** %17, align 8
  %72 = call i32 @svn_wc__externals_gather_definitions(i32** %19, i32* null, i32 %65, i32 %68, i32 %69, i32* %70, i32* %71)
  %73 = call i32 @SVN_ERR(i32 %72)
  %74 = load i32*, i32** %17, align 8
  %75 = load i32*, i32** %19, align 8
  %76 = call i32* @apr_hash_first(i32* %74, i32* %75)
  store i32* %76, i32** %20, align 8
  br label %77

77:                                               ; preds = %92, %62
  %78 = load i32*, i32** %20, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %95

80:                                               ; preds = %77
  %81 = load i32*, i32** %20, align 8
  %82 = call i8* @apr_hash_this_key(i32* %81)
  store i8* %82, i8** %22, align 8
  %83 = load i32*, i32** %20, align 8
  %84 = call i8* @apr_hash_this_val(i32* %83)
  store i8* %84, i8** %23, align 8
  %85 = load i8*, i8** %23, align 8
  %86 = load i32*, i32** %17, align 8
  %87 = call i32* @svn_string_create(i8* %85, i32* %86)
  store i32* %87, i32** %24, align 8
  %88 = load i32*, i32** %19, align 8
  %89 = load i8*, i8** %22, align 8
  %90 = load i32*, i32** %24, align 8
  %91 = call i32 @svn_hash_sets(i32* %88, i8* %89, i32* %90)
  br label %92

92:                                               ; preds = %80
  %93 = load i32*, i32** %20, align 8
  %94 = call i32* @apr_hash_next(i32* %93)
  store i32* %94, i32** %20, align 8
  br label %77

95:                                               ; preds = %77
  br label %96

96:                                               ; preds = %95, %37
  %97 = load i32*, i32** %19, align 8
  %98 = call i64 @apr_hash_count(i32* %97)
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %111

100:                                              ; preds = %96
  %101 = load i8*, i8** %18, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %109

103:                                              ; preds = %100
  %104 = load i32*, i32** %13, align 8
  %105 = load i8*, i8** %18, align 8
  %106 = load i32*, i32** %17, align 8
  %107 = call i32 @svn_ra_reparent(i32* %104, i8* %105, i32* %106)
  %108 = call i32 @SVN_ERR(i32 %107)
  br label %109

109:                                              ; preds = %103, %100
  %110 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %110, i32** %9, align 8
  br label %183

111:                                              ; preds = %96
  %112 = load i32*, i32** %17, align 8
  %113 = call i32* @svn_pool_create(i32* %112)
  store i32* %113, i32** %21, align 8
  %114 = load i32*, i32** %17, align 8
  %115 = load i32*, i32** %19, align 8
  %116 = call i32* @apr_hash_first(i32* %114, i32* %115)
  store i32* %116, i32** %20, align 8
  br label %117

117:                                              ; preds = %167, %111
  %118 = load i32*, i32** %20, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %120, label %170

120:                                              ; preds = %117
  %121 = load i32*, i32** %20, align 8
  %122 = call i8* @apr_hash_this_key(i32* %121)
  store i8* %122, i8** %25, align 8
  %123 = load i32*, i32** %20, align 8
  %124 = call i8* @apr_hash_this_val(i32* %123)
  %125 = bitcast i8* %124 to i32*
  store i32* %125, i32** %26, align 8
  %126 = load i32*, i32** %21, align 8
  %127 = call i32 @svn_pool_clear(i32* %126)
  %128 = load i32*, i32** %26, align 8
  %129 = load i32*, i32** %11, align 8
  %130 = load i8*, i8** %14, align 8
  %131 = load i8*, i8** %25, align 8
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %133 = load i32*, i32** %16, align 8
  %134 = load i32*, i32** %21, align 8
  %135 = call i32 @pin_externals_prop(i32** %28, i32* %128, i32* %129, i8* %130, i8* %131, %struct.TYPE_6__* %132, i32* %133, i32* %134)
  %136 = call i32 @SVN_ERR(i32 %135)
  %137 = load i32*, i32** %28, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %139, label %166

139:                                              ; preds = %120
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i64 @svn_path_is_url(i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %152

145:                                              ; preds = %139
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i8*, i8** %25, align 8
  %150 = load i32*, i32** %16, align 8
  %151 = call i8* @svn_uri_skip_ancestor(i32 %148, i8* %149, i32* %150)
  store i8* %151, i8** %27, align 8
  br label %158

152:                                              ; preds = %139
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i8*, i8** %25, align 8
  %157 = call i8* @svn_dirent_skip_ancestor(i32 %155, i8* %156)
  store i8* %157, i8** %27, align 8
  br label %158

158:                                              ; preds = %152, %145
  %159 = load i8*, i8** %27, align 8
  %160 = call i32 @SVN_ERR_ASSERT(i8* %159)
  %161 = load i32**, i32*** %10, align 8
  %162 = load i32*, i32** %161, align 8
  %163 = load i8*, i8** %27, align 8
  %164 = load i32*, i32** %28, align 8
  %165 = call i32 @svn_hash_sets(i32* %162, i8* %163, i32* %164)
  br label %166

166:                                              ; preds = %158, %120
  br label %167

167:                                              ; preds = %166
  %168 = load i32*, i32** %20, align 8
  %169 = call i32* @apr_hash_next(i32* %168)
  store i32* %169, i32** %20, align 8
  br label %117

170:                                              ; preds = %117
  %171 = load i32*, i32** %21, align 8
  %172 = call i32 @svn_pool_destroy(i32* %171)
  %173 = load i8*, i8** %18, align 8
  %174 = icmp ne i8* %173, null
  br i1 %174, label %175, label %181

175:                                              ; preds = %170
  %176 = load i32*, i32** %13, align 8
  %177 = load i8*, i8** %18, align 8
  %178 = load i32*, i32** %17, align 8
  %179 = call i32 @svn_ra_reparent(i32* %176, i8* %177, i32* %178)
  %180 = call i32 @SVN_ERR(i32 %179)
  br label %181

181:                                              ; preds = %175, %170
  %182 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %182, i32** %9, align 8
  br label %183

183:                                              ; preds = %181, %109
  %184 = load i32*, i32** %9, align 8
  ret i32* %184
}

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i64 @svn_path_is_url(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_client__ensure_ra_session_url(i8**, i32*, i32, i32*) #1

declare dso_local i32 @svn_client__remote_propget(i32*, i32*, i32, i32, i8*, i32, i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @svn_wc__externals_gather_definitions(i32**, i32*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local i8* @apr_hash_this_val(i32*) #1

declare dso_local i32* @svn_string_create(i8*, i32*) #1

declare dso_local i32 @svn_hash_sets(i32*, i8*, i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i64 @apr_hash_count(i32*) #1

declare dso_local i32 @svn_ra_reparent(i32*, i8*, i32*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @pin_externals_prop(i32**, i32*, i32*, i8*, i8*, %struct.TYPE_6__*, i32*, i32*) #1

declare dso_local i8* @svn_uri_skip_ancestor(i32, i8*, i32*) #1

declare dso_local i8* @svn_dirent_skip_ancestor(i32, i8*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i8*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
