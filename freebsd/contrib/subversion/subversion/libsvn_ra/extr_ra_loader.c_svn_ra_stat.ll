; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra/extr_ra_loader.c_svn_ra_stat.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra/extr_ra_loader.c_svn_ra_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_35__ = type { i64 }
%struct.TYPE_34__ = type { %struct.TYPE_32__* }
%struct.TYPE_32__ = type { {}* }
%struct.TYPE_36__ = type { i32, i32*, i32, i32, i32, i64 }
%struct.TYPE_33__ = type { i32 }

@SVN_ERR_RA_NOT_IMPLEMENTED = common dso_local global i64 0, align 8
@svn_node_none = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SVN_DIRENT_ALL = common dso_local global i32 0, align 4
@SVN_INVALID_FILESIZE = common dso_local global i32 0, align 4
@SVN_PROP_REVISION_DATE = common dso_local global i8* null, align 8
@SVN_PROP_REVISION_AUTHOR = common dso_local global i8* null, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_35__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_35__* @svn_ra_stat(%struct.TYPE_34__* %0, i8* %1, i32 %2, %struct.TYPE_36__** %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_34__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_36__**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_35__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_34__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_33__*, align 8
  store %struct.TYPE_34__* %0, %struct.TYPE_34__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_36__** %3, %struct.TYPE_36__*** %9, align 8
  store i32* %4, i32** %10, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @svn_relpath_is_canonical(i8* %22)
  %24 = call i32 @SVN_ERR_ASSERT(i32 %23)
  %25 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_32__*, %struct.TYPE_32__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %27, i32 0, i32 0
  %29 = bitcast {}** %28 to %struct.TYPE_35__* (%struct.TYPE_34__*, i8*, i32, %struct.TYPE_36__**, i32*)**
  %30 = load %struct.TYPE_35__* (%struct.TYPE_34__*, i8*, i32, %struct.TYPE_36__**, i32*)*, %struct.TYPE_35__* (%struct.TYPE_34__*, i8*, i32, %struct.TYPE_36__**, i32*)** %29, align 8
  %31 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %9, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = call %struct.TYPE_35__* %30(%struct.TYPE_34__* %31, i8* %32, i32 %33, %struct.TYPE_36__** %34, i32* %35)
  store %struct.TYPE_35__* %36, %struct.TYPE_35__** %11, align 8
  %37 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %38 = icmp ne %struct.TYPE_35__* %37, null
  br i1 %38, label %39, label %186

39:                                               ; preds = %5
  %40 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SVN_ERR_RA_NOT_IMPLEMENTED, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %186

45:                                               ; preds = %39
  %46 = load i32*, i32** %10, align 8
  %47 = call i32* @svn_pool_create(i32* %46)
  store i32* %47, i32** %12, align 8
  %48 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %49 = call i32 @svn_error_clear(%struct.TYPE_35__* %48)
  %50 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load i32*, i32** %12, align 8
  %54 = call %struct.TYPE_35__* @svn_ra_check_path(%struct.TYPE_34__* %50, i8* %51, i32 %52, i64* %13, i32* %53)
  %55 = call i32 @SVN_ERR(%struct.TYPE_35__* %54)
  %56 = load i64, i64* %13, align 8
  %57 = load i64, i64* @svn_node_none, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %181

59:                                               ; preds = %45
  %60 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %61 = load i32*, i32** %12, align 8
  %62 = call %struct.TYPE_35__* @svn_ra_get_repos_root2(%struct.TYPE_34__* %60, i8** %14, i32* %61)
  %63 = call i32 @SVN_ERR(%struct.TYPE_35__* %62)
  %64 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %65 = load i32*, i32** %12, align 8
  %66 = call %struct.TYPE_35__* @svn_ra_get_session_url(%struct.TYPE_34__* %64, i8** %15, i32* %65)
  %67 = call i32 @SVN_ERR(%struct.TYPE_35__* %66)
  %68 = load i8*, i8** %7, align 8
  %69 = call i32 @svn_path_is_empty(i8* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %59
  %72 = load i8*, i8** %15, align 8
  %73 = load i8*, i8** %7, align 8
  %74 = load i32*, i32** %12, align 8
  %75 = call i8* @svn_path_url_add_component2(i8* %72, i8* %73, i32* %74)
  store i8* %75, i8** %15, align 8
  br label %76

76:                                               ; preds = %71, %59
  %77 = load i8*, i8** %15, align 8
  %78 = load i8*, i8** %14, align 8
  %79 = call i64 @strcmp(i8* %77, i8* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %112

81:                                               ; preds = %76
  %82 = load i8*, i8** %15, align 8
  %83 = load i32*, i32** %12, align 8
  %84 = call i32 @svn_uri_split(i8** %18, i8** %19, i8* %82, i32* %83)
  %85 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %86 = load i8*, i8** %18, align 8
  %87 = load i32*, i32** %12, align 8
  %88 = load i32*, i32** %12, align 8
  %89 = call %struct.TYPE_35__* @svn_ra__dup_session(%struct.TYPE_34__** %16, %struct.TYPE_34__* %85, i8* %86, i32* %87, i32* %88)
  %90 = call i32 @SVN_ERR(%struct.TYPE_35__* %89)
  %91 = load %struct.TYPE_34__*, %struct.TYPE_34__** %16, align 8
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @SVN_DIRENT_ALL, align 4
  %94 = load i32*, i32** %12, align 8
  %95 = call %struct.TYPE_35__* @svn_ra_get_dir2(%struct.TYPE_34__* %91, i32** %17, i32* null, i32** null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %92, i32 %93, i32* %94)
  %96 = call i32 @SVN_ERR(%struct.TYPE_35__* %95)
  %97 = load i32*, i32** %17, align 8
  %98 = load i8*, i8** %19, align 8
  %99 = call i8* @svn_hash_gets(i32* %97, i8* %98)
  %100 = bitcast i8* %99 to %struct.TYPE_36__*
  %101 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %9, align 8
  store %struct.TYPE_36__* %100, %struct.TYPE_36__** %101, align 8
  %102 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %9, align 8
  %103 = load %struct.TYPE_36__*, %struct.TYPE_36__** %102, align 8
  %104 = icmp ne %struct.TYPE_36__* %103, null
  br i1 %104, label %105, label %111

105:                                              ; preds = %81
  %106 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %9, align 8
  %107 = load %struct.TYPE_36__*, %struct.TYPE_36__** %106, align 8
  %108 = load i32*, i32** %10, align 8
  %109 = call %struct.TYPE_36__* @svn_dirent_dup(%struct.TYPE_36__* %107, i32* %108)
  %110 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %9, align 8
  store %struct.TYPE_36__* %109, %struct.TYPE_36__** %110, align 8
  br label %111

111:                                              ; preds = %105, %81
  br label %180

112:                                              ; preds = %76
  %113 = load i32*, i32** %10, align 8
  %114 = call %struct.TYPE_36__* @apr_pcalloc(i32* %113, i32 40)
  %115 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %9, align 8
  store %struct.TYPE_36__* %114, %struct.TYPE_36__** %115, align 8
  %116 = load i64, i64* %13, align 8
  %117 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %9, align 8
  %118 = load %struct.TYPE_36__*, %struct.TYPE_36__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %118, i32 0, i32 5
  store i64 %116, i64* %119, align 8
  %120 = load i32, i32* @SVN_INVALID_FILESIZE, align 4
  %121 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %9, align 8
  %122 = load %struct.TYPE_36__*, %struct.TYPE_36__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %122, i32 0, i32 4
  store i32 %120, i32* %123, align 8
  %124 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %125 = load i32, i32* %8, align 4
  %126 = load i32*, i32** %12, align 8
  %127 = call %struct.TYPE_35__* @svn_ra_get_dir2(%struct.TYPE_34__* %124, i32** null, i32* null, i32** %20, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %125, i32 0, i32* %126)
  %128 = call i32 @SVN_ERR(%struct.TYPE_35__* %127)
  %129 = load i32*, i32** %20, align 8
  %130 = call i64 @apr_hash_count(i32* %129)
  %131 = icmp ne i64 %130, 0
  %132 = zext i1 %131 to i32
  %133 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %9, align 8
  %134 = load %struct.TYPE_36__*, %struct.TYPE_36__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %134, i32 0, i32 0
  store i32 %132, i32* %135, align 8
  %136 = load i32, i32* %8, align 4
  %137 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %9, align 8
  %138 = load %struct.TYPE_36__*, %struct.TYPE_36__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %138, i32 0, i32 3
  store i32 %136, i32* %139, align 4
  %140 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %141 = load i32, i32* %8, align 4
  %142 = load i32*, i32** %12, align 8
  %143 = call %struct.TYPE_35__* @svn_ra_rev_proplist(%struct.TYPE_34__* %140, i32 %141, i32** %20, i32* %142)
  %144 = call i32 @SVN_ERR(%struct.TYPE_35__* %143)
  %145 = load i32*, i32** %20, align 8
  %146 = load i8*, i8** @SVN_PROP_REVISION_DATE, align 8
  %147 = call i8* @svn_hash_gets(i32* %145, i8* %146)
  %148 = bitcast i8* %147 to %struct.TYPE_33__*
  store %struct.TYPE_33__* %148, %struct.TYPE_33__** %21, align 8
  %149 = load %struct.TYPE_33__*, %struct.TYPE_33__** %21, align 8
  %150 = icmp ne %struct.TYPE_33__* %149, null
  br i1 %150, label %151, label %161

151:                                              ; preds = %112
  %152 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %9, align 8
  %153 = load %struct.TYPE_36__*, %struct.TYPE_36__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %153, i32 0, i32 2
  %155 = load %struct.TYPE_33__*, %struct.TYPE_33__** %21, align 8
  %156 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32*, i32** %12, align 8
  %159 = call %struct.TYPE_35__* @svn_time_from_cstring(i32* %154, i32 %157, i32* %158)
  %160 = call i32 @SVN_ERR(%struct.TYPE_35__* %159)
  br label %161

161:                                              ; preds = %151, %112
  %162 = load i32*, i32** %20, align 8
  %163 = load i8*, i8** @SVN_PROP_REVISION_AUTHOR, align 8
  %164 = call i8* @svn_hash_gets(i32* %162, i8* %163)
  %165 = bitcast i8* %164 to %struct.TYPE_33__*
  store %struct.TYPE_33__* %165, %struct.TYPE_33__** %21, align 8
  %166 = load %struct.TYPE_33__*, %struct.TYPE_33__** %21, align 8
  %167 = icmp ne %struct.TYPE_33__* %166, null
  br i1 %167, label %168, label %174

168:                                              ; preds = %161
  %169 = load i32*, i32** %10, align 8
  %170 = load %struct.TYPE_33__*, %struct.TYPE_33__** %21, align 8
  %171 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32* @apr_pstrdup(i32* %169, i32 %172)
  br label %175

174:                                              ; preds = %161
  br label %175

175:                                              ; preds = %174, %168
  %176 = phi i32* [ %173, %168 ], [ null, %174 ]
  %177 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %9, align 8
  %178 = load %struct.TYPE_36__*, %struct.TYPE_36__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %178, i32 0, i32 1
  store i32* %176, i32** %179, align 8
  br label %180

180:                                              ; preds = %175, %111
  br label %183

181:                                              ; preds = %45
  %182 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %9, align 8
  store %struct.TYPE_36__* null, %struct.TYPE_36__** %182, align 8
  br label %183

183:                                              ; preds = %181, %180
  %184 = load i32*, i32** %12, align 8
  %185 = call i32 @svn_pool_clear(i32* %184)
  br label %189

186:                                              ; preds = %39, %5
  %187 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %188 = call i32 @SVN_ERR(%struct.TYPE_35__* %187)
  br label %189

189:                                              ; preds = %186, %183
  %190 = load %struct.TYPE_35__*, %struct.TYPE_35__** @SVN_NO_ERROR, align 8
  ret %struct.TYPE_35__* %190
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_relpath_is_canonical(i8*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_35__*) #1

declare dso_local i32 @SVN_ERR(%struct.TYPE_35__*) #1

declare dso_local %struct.TYPE_35__* @svn_ra_check_path(%struct.TYPE_34__*, i8*, i32, i64*, i32*) #1

declare dso_local %struct.TYPE_35__* @svn_ra_get_repos_root2(%struct.TYPE_34__*, i8**, i32*) #1

declare dso_local %struct.TYPE_35__* @svn_ra_get_session_url(%struct.TYPE_34__*, i8**, i32*) #1

declare dso_local i32 @svn_path_is_empty(i8*) #1

declare dso_local i8* @svn_path_url_add_component2(i8*, i8*, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @svn_uri_split(i8**, i8**, i8*, i32*) #1

declare dso_local %struct.TYPE_35__* @svn_ra__dup_session(%struct.TYPE_34__**, %struct.TYPE_34__*, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_35__* @svn_ra_get_dir2(%struct.TYPE_34__*, i32**, i32*, i32**, i8*, i32, i32, i32*) #1

declare dso_local i8* @svn_hash_gets(i32*, i8*) #1

declare dso_local %struct.TYPE_36__* @svn_dirent_dup(%struct.TYPE_36__*, i32*) #1

declare dso_local %struct.TYPE_36__* @apr_pcalloc(i32*, i32) #1

declare dso_local i64 @apr_hash_count(i32*) #1

declare dso_local %struct.TYPE_35__* @svn_ra_rev_proplist(%struct.TYPE_34__*, i32, i32**, i32*) #1

declare dso_local %struct.TYPE_35__* @svn_time_from_cstring(i32*, i32, i32*) #1

declare dso_local i32* @apr_pstrdup(i32*, i32) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
