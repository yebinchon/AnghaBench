; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_get_children_with_cached_iprops.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_get_children_with_cached_iprops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@STMT_SELECT_IPROPS_NODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"is\00", align 1
@svn_depth_empty = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_depth_files = common dso_local global i64 0, align 8
@svn_depth_immediates = common dso_local global i64 0, align 8
@STMT_SELECT_IPROPS_CHILDREN = common dso_local global i32 0, align 4
@STMT_SELECT_IPROPS_RECURSIVE = common dso_local global i32 0, align 4
@svn_node_file = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, %struct.TYPE_4__*, i8*, i64, i32*, i32*)* @get_children_with_cached_iprops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_children_with_cached_iprops(i32** %0, %struct.TYPE_4__* %1, i8* %2, i64 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  store i32** %0, i32*** %8, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %25 = load i32*, i32** %12, align 8
  %26 = call i32* @apr_hash_make(i32* %25)
  %27 = load i32**, i32*** %8, align 8
  store i32* %26, i32** %27, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @STMT_SELECT_IPROPS_NODE, align 4
  %32 = call i32 @svn_sqlite__get_statement(i32** %14, i32 %30, i32 %31)
  %33 = call i32 @SVN_ERR(i32 %32)
  %34 = load i32*, i32** %14, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** %10, align 8
  %39 = call i32 @svn_sqlite__bindf(i32* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %37, i8* %38)
  %40 = call i32 @SVN_ERR(i32 %39)
  %41 = load i32*, i32** %14, align 8
  %42 = call i32 @svn_sqlite__step(i64* %15, i32* %41)
  %43 = call i32 @SVN_ERR(i32 %42)
  %44 = load i64, i64* %15, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %6
  %47 = load i32*, i32** %14, align 8
  %48 = call i8* @svn_sqlite__column_text(i32* %47, i32 0, i32* null)
  store i8* %48, i8** %16, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i8*, i8** %16, align 8
  %53 = load i32*, i32** %12, align 8
  %54 = call i8* @svn_dirent_join(i32 %51, i8* %52, i32* %53)
  store i8* %54, i8** %17, align 8
  %55 = load i32**, i32*** %8, align 8
  %56 = load i32*, i32** %55, align 8
  %57 = load i8*, i8** %17, align 8
  %58 = load i32*, i32** %14, align 8
  %59 = load i32*, i32** %12, align 8
  %60 = call i8* @svn_sqlite__column_text(i32* %58, i32 1, i32* %59)
  %61 = call i32 @svn_hash_sets(i32* %56, i8* %57, i8* %60)
  br label %62

62:                                               ; preds = %46, %6
  %63 = load i32*, i32** %14, align 8
  %64 = call i32 @svn_sqlite__reset(i32* %63)
  %65 = call i32 @SVN_ERR(i32 %64)
  %66 = load i64, i64* %11, align 8
  %67 = load i64, i64* @svn_depth_empty, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %70, i32** %7, align 8
  br label %178

71:                                               ; preds = %62
  %72 = load i64, i64* %11, align 8
  %73 = load i64, i64* @svn_depth_files, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %79, label %75

75:                                               ; preds = %71
  %76 = load i64, i64* %11, align 8
  %77 = load i64, i64* @svn_depth_immediates, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %75, %71
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @STMT_SELECT_IPROPS_CHILDREN, align 4
  %84 = call i32 @svn_sqlite__get_statement(i32** %14, i32 %82, i32 %83)
  %85 = call i32 @SVN_ERR(i32 %84)
  br label %93

86:                                               ; preds = %75
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @STMT_SELECT_IPROPS_RECURSIVE, align 4
  %91 = call i32 @svn_sqlite__get_statement(i32** %14, i32 %89, i32 %90)
  %92 = call i32 @SVN_ERR(i32 %91)
  br label %93

93:                                               ; preds = %86, %79
  %94 = load i32*, i32** %14, align 8
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i8*, i8** %10, align 8
  %99 = call i32 @svn_sqlite__bindf(i32* %94, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %97, i8* %98)
  %100 = call i32 @SVN_ERR(i32 %99)
  %101 = load i32*, i32** %14, align 8
  %102 = call i32 @svn_sqlite__step(i64* %15, i32* %101)
  %103 = call i32 @SVN_ERR(i32 %102)
  br label %104

104:                                              ; preds = %107, %93
  %105 = load i64, i64* %15, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %126

107:                                              ; preds = %104
  %108 = load i32*, i32** %14, align 8
  %109 = call i8* @svn_sqlite__column_text(i32* %108, i32 0, i32* null)
  store i8* %109, i8** %18, align 8
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i8*, i8** %18, align 8
  %114 = load i32*, i32** %12, align 8
  %115 = call i8* @svn_dirent_join(i32 %112, i8* %113, i32* %114)
  store i8* %115, i8** %19, align 8
  %116 = load i32**, i32*** %8, align 8
  %117 = load i32*, i32** %116, align 8
  %118 = load i8*, i8** %19, align 8
  %119 = load i32*, i32** %14, align 8
  %120 = load i32*, i32** %12, align 8
  %121 = call i8* @svn_sqlite__column_text(i32* %119, i32 1, i32* %120)
  %122 = call i32 @svn_hash_sets(i32* %117, i8* %118, i8* %121)
  %123 = load i32*, i32** %14, align 8
  %124 = call i32 @svn_sqlite__step(i64* %15, i32* %123)
  %125 = call i32 @SVN_ERR(i32 %124)
  br label %104

126:                                              ; preds = %104
  %127 = load i32*, i32** %14, align 8
  %128 = call i32 @svn_sqlite__reset(i32* %127)
  %129 = call i32 @SVN_ERR(i32 %128)
  %130 = load i64, i64* %11, align 8
  %131 = load i64, i64* @svn_depth_files, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %176

133:                                              ; preds = %126
  %134 = load i32*, i32** %13, align 8
  %135 = call i32* @svn_pool_create(i32* %134)
  store i32* %135, i32** %21, align 8
  %136 = load i32*, i32** %13, align 8
  %137 = load i32**, i32*** %8, align 8
  %138 = load i32*, i32** %137, align 8
  %139 = call i32* @apr_hash_first(i32* %136, i32* %138)
  store i32* %139, i32** %20, align 8
  br label %140

140:                                              ; preds = %170, %133
  %141 = load i32*, i32** %20, align 8
  %142 = icmp ne i32* %141, null
  br i1 %142, label %143, label %173

143:                                              ; preds = %140
  %144 = load i32*, i32** %20, align 8
  %145 = call i8* @apr_hash_this_key(i32* %144)
  store i8* %145, i8** %22, align 8
  %146 = load i32*, i32** %21, align 8
  %147 = call i32 @svn_pool_clear(i32* %146)
  %148 = load i8*, i8** %10, align 8
  %149 = load i8*, i8** %22, align 8
  %150 = call i8* @svn_dirent_is_child(i8* %148, i8* %149, i32* null)
  store i8* %150, i8** %23, align 8
  %151 = load i8*, i8** %23, align 8
  %152 = icmp ne i8* %151, null
  br i1 %152, label %154, label %153

153:                                              ; preds = %143
  br label %170

154:                                              ; preds = %143
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %156 = load i8*, i8** %23, align 8
  %157 = load i32*, i32** %13, align 8
  %158 = load i32*, i32** %13, align 8
  %159 = call i32 @svn_wc__db_base_get_info_internal(i32* null, i64* %24, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, %struct.TYPE_4__* %155, i8* %156, i32* %157, i32* %158)
  %160 = call i32 @SVN_ERR(i32 %159)
  %161 = load i64, i64* %24, align 8
  %162 = load i64, i64* @svn_node_file, align 8
  %163 = icmp ne i64 %161, %162
  br i1 %163, label %164, label %169

164:                                              ; preds = %154
  %165 = load i32**, i32*** %8, align 8
  %166 = load i32*, i32** %165, align 8
  %167 = load i8*, i8** %22, align 8
  %168 = call i32 @svn_hash_sets(i32* %166, i8* %167, i8* null)
  br label %169

169:                                              ; preds = %164, %154
  br label %170

170:                                              ; preds = %169, %153
  %171 = load i32*, i32** %20, align 8
  %172 = call i32* @apr_hash_next(i32* %171)
  store i32* %172, i32** %20, align 8
  br label %140

173:                                              ; preds = %140
  %174 = load i32*, i32** %21, align 8
  %175 = call i32 @svn_pool_destroy(i32* %174)
  br label %176

176:                                              ; preds = %173, %126
  %177 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %177, i32** %7, align 8
  br label %178

178:                                              ; preds = %176, %69
  %179 = load i32*, i32** %7, align 8
  ret i32* %179
}

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32 @svn_sqlite__bindf(i32*, i8*, i32, i8*) #1

declare dso_local i32 @svn_sqlite__step(i64*, i32*) #1

declare dso_local i8* @svn_sqlite__column_text(i32*, i32, i32*) #1

declare dso_local i8* @svn_dirent_join(i32, i8*, i32*) #1

declare dso_local i32 @svn_hash_sets(i32*, i8*, i8*) #1

declare dso_local i32 @svn_sqlite__reset(i32*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i8* @svn_dirent_is_child(i8*, i8*, i32*) #1

declare dso_local i32 @svn_wc__db_base_get_info_internal(i32*, i64*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, %struct.TYPE_4__*, i8*, i32*, i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
