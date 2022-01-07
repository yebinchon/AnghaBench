; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_fs-wrap.c_svn_repos_fs_get_inherited_props.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_fs-wrap.c_svn_repos_fs_get_inherited_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32 }

@TRUE = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_repos_fs_get_inherited_props(i32** %0, i32* %1, i8* %2, i8* %3, i32 (i64*, i32*, i8*, i8*, i32*)* %4, i8* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32 (i64*, i32*, i8*, i8*, i32*)*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.TYPE_4__*, align 8
  store i32** %0, i32*** %9, align 8
  store i32* %1, i32** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 (i64*, i32*, i8*, i8*, i32*)* %4, i32 (i64*, i32*, i8*, i8*, i32*)** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  %24 = load i32*, i32** %16, align 8
  %25 = call i32* @svn_pool_create(i32* %24)
  store i32* %25, i32** %17, align 8
  %26 = load i8*, i8** %11, align 8
  store i8* %26, i8** %19, align 8
  %27 = load i32*, i32** %15, align 8
  %28 = call i32* @apr_array_make(i32* %27, i32 1, i32 8)
  store i32* %28, i32** %18, align 8
  br label %29

29:                                               ; preds = %112, %8
  %30 = load i8*, i8** %19, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 47
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load i8*, i8** %19, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 0
  br label %41

41:                                               ; preds = %35, %29
  %42 = phi i1 [ false, %29 ], [ %40, %35 ]
  %43 = xor i1 %42, true
  br i1 %43, label %44, label %113

44:                                               ; preds = %41
  %45 = load i64, i64* @TRUE, align 8
  store i64 %45, i64* %20, align 8
  store i32* null, i32** %21, align 8
  %46 = load i32*, i32** %17, align 8
  %47 = call i32 @svn_pool_clear(i32* %46)
  %48 = load i8*, i8** %19, align 8
  %49 = load i32*, i32** %16, align 8
  %50 = call i8* @svn_fspath__dirname(i8* %48, i32* %49)
  store i8* %50, i8** %19, align 8
  %51 = load i32 (i64*, i32*, i8*, i8*, i32*)*, i32 (i64*, i32*, i8*, i8*, i32*)** %13, align 8
  %52 = icmp ne i32 (i64*, i32*, i8*, i8*, i32*)* %51, null
  br i1 %52, label %53, label %61

53:                                               ; preds = %44
  %54 = load i32 (i64*, i32*, i8*, i8*, i32*)*, i32 (i64*, i32*, i8*, i8*, i32*)** %13, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = load i8*, i8** %19, align 8
  %57 = load i8*, i8** %14, align 8
  %58 = load i32*, i32** %17, align 8
  %59 = call i32 %54(i64* %20, i32* %55, i8* %56, i8* %57, i32* %58)
  %60 = call i32 @SVN_ERR(i32 %59)
  br label %61

61:                                               ; preds = %53, %44
  %62 = load i64, i64* %20, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %112

64:                                               ; preds = %61
  %65 = load i8*, i8** %12, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %84

67:                                               ; preds = %64
  %68 = load i32*, i32** %10, align 8
  %69 = load i8*, i8** %19, align 8
  %70 = load i8*, i8** %12, align 8
  %71 = load i32*, i32** %15, align 8
  %72 = call i32 @svn_fs_node_prop(i32** %22, i32* %68, i8* %69, i8* %70, i32* %71)
  %73 = call i32 @SVN_ERR(i32 %72)
  %74 = load i32*, i32** %22, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %83

76:                                               ; preds = %67
  %77 = load i32*, i32** %15, align 8
  %78 = call i32* @apr_hash_make(i32* %77)
  store i32* %78, i32** %21, align 8
  %79 = load i32*, i32** %21, align 8
  %80 = load i8*, i8** %12, align 8
  %81 = load i32*, i32** %22, align 8
  %82 = call i32 @svn_hash_sets(i32* %79, i8* %80, i32* %81)
  br label %83

83:                                               ; preds = %76, %67
  br label %90

84:                                               ; preds = %64
  %85 = load i32*, i32** %10, align 8
  %86 = load i8*, i8** %19, align 8
  %87 = load i32*, i32** %15, align 8
  %88 = call i32 @svn_fs_node_proplist(i32** %21, i32* %85, i8* %86, i32* %87)
  %89 = call i32 @SVN_ERR(i32 %88)
  br label %90

90:                                               ; preds = %84, %83
  %91 = load i32*, i32** %21, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %111

93:                                               ; preds = %90
  %94 = load i32*, i32** %21, align 8
  %95 = call i64 @apr_hash_count(i32* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %111

97:                                               ; preds = %93
  %98 = load i32*, i32** %15, align 8
  %99 = call %struct.TYPE_4__* @apr_pcalloc(i32* %98, i32 16)
  store %struct.TYPE_4__* %99, %struct.TYPE_4__** %23, align 8
  %100 = load i32*, i32** %15, align 8
  %101 = load i8*, i8** %19, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 1
  %103 = call i32 @apr_pstrdup(i32* %100, i8* %102)
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 8
  %106 = load i32*, i32** %21, align 8
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  store i32* %106, i32** %108, align 8
  %109 = load i32*, i32** %18, align 8
  %110 = call i32 @svn_sort__array_insert(i32* %109, %struct.TYPE_4__** %23, i32 0)
  br label %111

111:                                              ; preds = %97, %93, %90
  br label %112

112:                                              ; preds = %111, %61
  br label %29

113:                                              ; preds = %41
  %114 = load i32*, i32** %17, align 8
  %115 = call i32 @svn_pool_destroy(i32* %114)
  %116 = load i32*, i32** %18, align 8
  %117 = load i32**, i32*** %9, align 8
  store i32* %116, i32** %117, align 8
  %118 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %118
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32* @apr_array_make(i32*, i32, i32) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i8* @svn_fspath__dirname(i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_node_prop(i32**, i32*, i8*, i8*, i32*) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @svn_hash_sets(i32*, i8*, i32*) #1

declare dso_local i32 @svn_fs_node_proplist(i32**, i32*, i8*, i32*) #1

declare dso_local i64 @apr_hash_count(i32*) #1

declare dso_local %struct.TYPE_4__* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @apr_pstrdup(i32*, i8*) #1

declare dso_local i32 @svn_sort__array_insert(i32*, %struct.TYPE_4__**, i32) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
