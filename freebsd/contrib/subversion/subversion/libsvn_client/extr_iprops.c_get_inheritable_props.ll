; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_iprops.c_get_inheritable_props.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_iprops.c_get_inheritable_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SVN_ERR_FS_NOT_FOUND = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_12__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_12__* (i32**, i8*, i32, i32, i32*, %struct.TYPE_13__*, i32*, i32*)* @get_inheritable_props to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_12__* @get_inheritable_props(i32** %0, i8* %1, i32 %2, i32 %3, i32* %4, %struct.TYPE_13__* %5, i32* %6, i32* %7) #0 {
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_13__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca %struct.TYPE_12__*, align 8
  store i32** %0, i32*** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store %struct.TYPE_13__* %5, %struct.TYPE_13__** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %29 = load i32*, i32** %17, align 8
  %30 = call i32* @svn_pool_create(i32* %29)
  store i32* %30, i32** %20, align 8
  store i32* null, i32** %21, align 8
  %31 = load i32*, i32** %16, align 8
  %32 = call i32* @apr_hash_make(i32* %31)
  %33 = load i32**, i32*** %10, align 8
  store i32* %32, i32** %33, align 8
  %34 = load i32, i32* %12, align 4
  %35 = call i32 @SVN_IS_VALID_REVNUM(i32 %34)
  %36 = call i32 @SVN_ERR_ASSERT(i32 %35)
  %37 = load i32, i32* %13, align 4
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %11, align 8
  %42 = load i32*, i32** %17, align 8
  %43 = load i32*, i32** %20, align 8
  %44 = call i32 @svn_wc__get_cached_iprop_children(i32** %18, i32 %37, i32 %40, i8* %41, i32* %42, i32* %43)
  %45 = call i32 @SVN_ERR(i32 %44)
  %46 = load i32*, i32** %18, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = call i32 @svn_hash_gets(i32* %46, i8* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %68, label %50

50:                                               ; preds = %8
  %51 = load i8*, i8** %11, align 8
  %52 = load i32*, i32** %14, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %54 = load i32*, i32** %20, align 8
  %55 = call i32 @need_to_cache_iprops(i64* %22, i8* %51, i32* %52, %struct.TYPE_13__* %53, i32* %54)
  %56 = call i32 @SVN_ERR(i32 %55)
  %57 = load i64, i64* %22, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %50
  %60 = load i32*, i32** %17, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = call i8* @apr_pstrdup(i32* %60, i8* %61)
  store i8* %62, i8** %23, align 8
  %63 = load i32*, i32** %18, align 8
  %64 = load i8*, i8** %23, align 8
  %65 = load i8*, i8** %23, align 8
  %66 = call i32 @svn_hash_sets(i32* %63, i8* %64, i8* %65)
  br label %67

67:                                               ; preds = %59, %50
  br label %68

68:                                               ; preds = %67, %8
  %69 = load i32*, i32** %17, align 8
  %70 = load i32*, i32** %18, align 8
  %71 = call i32* @apr_hash_first(i32* %69, i32* %70)
  store i32* %71, i32** %19, align 8
  br label %72

72:                                               ; preds = %145, %68
  %73 = load i32*, i32** %19, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %148

75:                                               ; preds = %72
  %76 = load i32*, i32** %19, align 8
  %77 = call i8* @apr_hash_this_key(i32* %76)
  store i8* %77, i8** %24, align 8
  %78 = load i32*, i32** %19, align 8
  %79 = call i8* @apr_hash_this_val(i32* %78)
  store i8* %79, i8** %25, align 8
  %80 = load i32*, i32** %20, align 8
  %81 = call i32 @svn_pool_clear(i32* %80)
  %82 = load i8*, i8** %25, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %75
  br label %145

87:                                               ; preds = %75
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i8*, i8** %24, align 8
  %92 = load i32*, i32** %20, align 8
  %93 = load i32*, i32** %20, align 8
  %94 = call i32 @svn_wc__node_get_url(i8** %26, i32 %90, i8* %91, i32* %92, i32* %93)
  %95 = call i32 @SVN_ERR(i32 %94)
  %96 = load i32*, i32** %14, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %104

98:                                               ; preds = %87
  %99 = load i32*, i32** %14, align 8
  %100 = load i8*, i8** %26, align 8
  %101 = load i32*, i32** %17, align 8
  %102 = call i32 @svn_ra_reparent(i32* %99, i8* %100, i32* %101)
  %103 = call i32 @SVN_ERR(i32 %102)
  br label %117

104:                                              ; preds = %87
  %105 = load i32*, i32** %21, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %110, label %107

107:                                              ; preds = %104
  %108 = load i32*, i32** %17, align 8
  %109 = call i32* @svn_pool_create(i32* %108)
  store i32* %109, i32** %21, align 8
  br label %110

110:                                              ; preds = %107, %104
  %111 = load i8*, i8** %26, align 8
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %113 = load i32*, i32** %21, align 8
  %114 = load i32*, i32** %20, align 8
  %115 = call i32 @svn_client_open_ra_session2(i32** %14, i8* %111, i32* null, %struct.TYPE_13__* %112, i32* %113, i32* %114)
  %116 = call i32 @SVN_ERR(i32 %115)
  br label %117

117:                                              ; preds = %110, %98
  %118 = load i32*, i32** %14, align 8
  %119 = load i32, i32* %12, align 4
  %120 = load i32*, i32** %16, align 8
  %121 = load i32*, i32** %20, align 8
  %122 = call %struct.TYPE_12__* @svn_ra_get_inherited_props(i32* %118, i8** %27, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %119, i32* %120, i32* %121)
  store %struct.TYPE_12__* %122, %struct.TYPE_12__** %28, align 8
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %124 = icmp ne %struct.TYPE_12__* %123, null
  br i1 %124, label %125, label %137

125:                                              ; preds = %117
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @SVN_ERR_FS_NOT_FOUND, align 8
  %130 = icmp ne i64 %128, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %125
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %133 = call %struct.TYPE_12__* @svn_error_trace(%struct.TYPE_12__* %132)
  store %struct.TYPE_12__* %133, %struct.TYPE_12__** %9, align 8
  br label %158

134:                                              ; preds = %125
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %136 = call i32 @svn_error_clear(%struct.TYPE_12__* %135)
  br label %145

137:                                              ; preds = %117
  %138 = load i32**, i32*** %10, align 8
  %139 = load i32*, i32** %138, align 8
  %140 = load i32*, i32** %16, align 8
  %141 = load i8*, i8** %24, align 8
  %142 = call i8* @apr_pstrdup(i32* %140, i8* %141)
  %143 = load i8*, i8** %27, align 8
  %144 = call i32 @svn_hash_sets(i32* %139, i8* %142, i8* %143)
  br label %145

145:                                              ; preds = %137, %134, %86
  %146 = load i32*, i32** %19, align 8
  %147 = call i32* @apr_hash_next(i32* %146)
  store i32* %147, i32** %19, align 8
  br label %72

148:                                              ; preds = %72
  %149 = load i32*, i32** %20, align 8
  %150 = call i32 @svn_pool_destroy(i32* %149)
  %151 = load i32*, i32** %21, align 8
  %152 = icmp ne i32* %151, null
  br i1 %152, label %153, label %156

153:                                              ; preds = %148
  %154 = load i32*, i32** %21, align 8
  %155 = call i32 @svn_pool_destroy(i32* %154)
  br label %156

156:                                              ; preds = %153, %148
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_12__* %157, %struct.TYPE_12__** %9, align 8
  br label %158

158:                                              ; preds = %156, %131
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  ret %struct.TYPE_12__* %159
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__get_cached_iprop_children(i32**, i32, i32, i8*, i32*, i32*) #1

declare dso_local i32 @svn_hash_gets(i32*, i8*) #1

declare dso_local i32 @need_to_cache_iprops(i64*, i8*, i32*, %struct.TYPE_13__*, i32*) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

declare dso_local i32 @svn_hash_sets(i32*, i8*, i8*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local i8* @apr_hash_this_val(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @svn_wc__node_get_url(i8**, i32, i8*, i32*, i32*) #1

declare dso_local i32 @svn_ra_reparent(i32*, i8*, i32*) #1

declare dso_local i32 @svn_client_open_ra_session2(i32**, i8*, i32*, %struct.TYPE_13__*, i32*, i32*) #1

declare dso_local %struct.TYPE_12__* @svn_ra_get_inherited_props(i32*, i8**, i8*, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_12__* @svn_error_trace(%struct.TYPE_12__*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_12__*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
