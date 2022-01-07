; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra/extr_compat.c_svn_ra__get_inherited_props_walk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra/extr_compat.c_svn_ra__get_inherited_props_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64 }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_21__* (%struct.TYPE_19__*, i32*, i32*, i32**, i8*, i32, i32, i32*)* }
%struct.TYPE_20__ = type { i32*, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SVN_DIRENT_ALL = common dso_local global i32 0, align 4
@SVN_ERR_RA_NOT_AUTHORIZED = common dso_local global i64 0, align 8
@SVN_ERR_RA_DAV_FORBIDDEN = common dso_local global i64 0, align 8
@svn_prop_regular_kind = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_21__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_21__* @svn_ra__get_inherited_props_walk(%struct.TYPE_19__* %0, i8* %1, i32 %2, i32** %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_21__*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32** %3, i32*** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %26 = load i32*, i32** %13, align 8
  %27 = call i32* @svn_pool_create(i32* %26)
  store i32* %27, i32** %17, align 8
  %28 = load i32*, i32** %12, align 8
  %29 = call i32* @apr_array_make(i32* %28, i32 1, i32 8)
  %30 = load i32**, i32*** %11, align 8
  store i32* %29, i32** %30, align 8
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %32 = load i32*, i32** %13, align 8
  %33 = call i32 @svn_ra_get_repos_root2(%struct.TYPE_19__* %31, i8** %14, i32* %32)
  %34 = call i32 @SVN_ERR(i32 %33)
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %36 = load i32*, i32** %13, align 8
  %37 = call i32 @svn_ra_get_session_url(%struct.TYPE_19__* %35, i8** %15, i32* %36)
  %38 = call i32 @SVN_ERR(i32 %37)
  %39 = load i8*, i8** %15, align 8
  store i8* %39, i8** %16, align 8
  br label %40

40:                                               ; preds = %141, %82, %6
  %41 = load i8*, i8** %14, align 8
  %42 = load i8*, i8** %16, align 8
  %43 = call i64 @strcmp(i8* %41, i8* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %142

45:                                               ; preds = %40
  %46 = load i32*, i32** %12, align 8
  %47 = call i32* @apr_hash_make(i32* %46)
  store i32* %47, i32** %20, align 8
  %48 = load i32*, i32** %17, align 8
  %49 = call i32 @svn_pool_clear(i32* %48)
  %50 = load i8*, i8** %16, align 8
  %51 = load i32*, i32** %13, align 8
  %52 = call i8* @svn_uri_dirname(i8* %50, i32* %51)
  store i8* %52, i8** %16, align 8
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %54 = load i8*, i8** %16, align 8
  %55 = load i32*, i32** %17, align 8
  %56 = call i32 @svn_ra_reparent(%struct.TYPE_19__* %53, i8* %54, i32* %55)
  %57 = call i32 @SVN_ERR(i32 %56)
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_21__* (%struct.TYPE_19__*, i32*, i32*, i32**, i8*, i32, i32, i32*)*, %struct.TYPE_21__* (%struct.TYPE_19__*, i32*, i32*, i32**, i8*, i32, i32, i32*)** %61, align 8
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @SVN_DIRENT_ALL, align 4
  %66 = load i32*, i32** %17, align 8
  %67 = call %struct.TYPE_21__* %62(%struct.TYPE_19__* %63, i32* null, i32* null, i32** %19, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %65, i32* %66)
  store %struct.TYPE_21__* %67, %struct.TYPE_21__** %21, align 8
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %69 = icmp ne %struct.TYPE_21__* %68, null
  br i1 %69, label %70, label %88

70:                                               ; preds = %45
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @SVN_ERR_RA_NOT_AUTHORIZED, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %82, label %76

76:                                               ; preds = %70
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @SVN_ERR_RA_DAV_FORBIDDEN, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %76, %70
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %84 = call i32 @svn_error_clear(%struct.TYPE_21__* %83)
  br label %40

85:                                               ; preds = %76
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %87 = call %struct.TYPE_21__* @svn_error_trace(%struct.TYPE_21__* %86)
  store %struct.TYPE_21__* %87, %struct.TYPE_21__** %7, align 8
  br label %151

88:                                               ; preds = %45
  %89 = load i32*, i32** %13, align 8
  %90 = load i32*, i32** %19, align 8
  %91 = call i32* @apr_hash_first(i32* %89, i32* %90)
  store i32* %91, i32** %18, align 8
  br label %92

92:                                               ; preds = %119, %88
  %93 = load i32*, i32** %18, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %122

95:                                               ; preds = %92
  %96 = load i32*, i32** %18, align 8
  %97 = call i8* @apr_hash_this_key(i32* %96)
  store i8* %97, i8** %22, align 8
  %98 = load i32*, i32** %18, align 8
  %99 = call i32 @apr_hash_this_key_len(i32* %98)
  store i32 %99, i32* %23, align 4
  %100 = load i32*, i32** %18, align 8
  %101 = call i32* @apr_hash_this_val(i32* %100)
  store i32* %101, i32** %24, align 8
  %102 = load i8*, i8** %22, align 8
  %103 = call i64 @svn_property_kind2(i8* %102)
  %104 = load i64, i64* @svn_prop_regular_kind, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %118

106:                                              ; preds = %95
  %107 = load i32*, i32** %12, align 8
  %108 = load i8*, i8** %22, align 8
  %109 = call i8* @apr_pstrdup(i32* %107, i8* %108)
  store i8* %109, i8** %22, align 8
  %110 = load i32*, i32** %24, align 8
  %111 = load i32*, i32** %12, align 8
  %112 = call i32* @svn_string_dup(i32* %110, i32* %111)
  store i32* %112, i32** %24, align 8
  %113 = load i32*, i32** %20, align 8
  %114 = load i8*, i8** %22, align 8
  %115 = load i32, i32* %23, align 4
  %116 = load i32*, i32** %24, align 8
  %117 = call i32 @apr_hash_set(i32* %113, i8* %114, i32 %115, i32* %116)
  br label %118

118:                                              ; preds = %106, %95
  br label %119

119:                                              ; preds = %118
  %120 = load i32*, i32** %18, align 8
  %121 = call i32* @apr_hash_next(i32* %120)
  store i32* %121, i32** %18, align 8
  br label %92

122:                                              ; preds = %92
  %123 = load i32*, i32** %20, align 8
  %124 = call i64 @apr_hash_count(i32* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %141

126:                                              ; preds = %122
  %127 = load i32*, i32** %12, align 8
  %128 = call %struct.TYPE_20__* @apr_palloc(i32* %127, i32 16)
  store %struct.TYPE_20__* %128, %struct.TYPE_20__** %25, align 8
  %129 = load i8*, i8** %14, align 8
  %130 = load i8*, i8** %16, align 8
  %131 = load i32*, i32** %12, align 8
  %132 = call i32 @svn_uri_skip_ancestor(i8* %129, i8* %130, i32* %131)
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %25, align 8
  %134 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 8
  %135 = load i32*, i32** %20, align 8
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %25, align 8
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 0
  store i32* %135, i32** %137, align 8
  %138 = load i32**, i32*** %11, align 8
  %139 = load i32*, i32** %138, align 8
  %140 = call i32 @svn_sort__array_insert(i32* %139, %struct.TYPE_20__** %25, i32 0)
  br label %141

141:                                              ; preds = %126, %122
  br label %40

142:                                              ; preds = %40
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %144 = load i8*, i8** %15, align 8
  %145 = load i32*, i32** %13, align 8
  %146 = call i32 @svn_ra_reparent(%struct.TYPE_19__* %143, i8* %144, i32* %145)
  %147 = call i32 @SVN_ERR(i32 %146)
  %148 = load i32*, i32** %17, align 8
  %149 = call i32 @svn_pool_destroy(i32* %148)
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_21__* %150, %struct.TYPE_21__** %7, align 8
  br label %151

151:                                              ; preds = %142, %85
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  ret %struct.TYPE_21__* %152
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32* @apr_array_make(i32*, i32, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_get_repos_root2(%struct.TYPE_19__*, i8**, i32*) #1

declare dso_local i32 @svn_ra_get_session_url(%struct.TYPE_19__*, i8**, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i8* @svn_uri_dirname(i8*, i32*) #1

declare dso_local i32 @svn_ra_reparent(%struct.TYPE_19__*, i8*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_21__* @svn_error_trace(%struct.TYPE_21__*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local i32 @apr_hash_this_key_len(i32*) #1

declare dso_local i32* @apr_hash_this_val(i32*) #1

declare dso_local i64 @svn_property_kind2(i8*) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

declare dso_local i32* @svn_string_dup(i32*, i32*) #1

declare dso_local i32 @apr_hash_set(i32*, i8*, i32, i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i64 @apr_hash_count(i32*) #1

declare dso_local %struct.TYPE_20__* @apr_palloc(i32*, i32) #1

declare dso_local i32 @svn_uri_skip_ancestor(i8*, i8*, i32*) #1

declare dso_local i32 @svn_sort__array_insert(i32*, %struct.TYPE_20__**, i32) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
