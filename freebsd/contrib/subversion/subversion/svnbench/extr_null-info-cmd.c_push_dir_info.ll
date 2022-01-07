; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnbench/extr_null-info-cmd.c_push_dir_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnbench/extr_null-info-cmd.c_push_dir_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32* (i32)* }
%struct.TYPE_9__ = type { i64 }

@DIRENT_FIELDS = common dso_local global i32 0, align 4
@svn_depth_immediates = common dso_local global i32 0, align 4
@svn_depth_files = common dso_local global i32 0, align 4
@svn_node_file = common dso_local global i64 0, align 8
@svn_depth_infinity = common dso_local global i32 0, align 4
@svn_node_dir = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_11__*, i8*, i32*, i32, %struct.TYPE_10__*, i32*)* @push_dir_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @push_dir_info(i32* %0, %struct.TYPE_11__* %1, i8* %2, i32* %3, i32 %4, %struct.TYPE_10__* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.TYPE_9__*, align 8
  %21 = alloca %struct.TYPE_11__*, align 8
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.TYPE_10__* %5, %struct.TYPE_10__** %13, align 8
  store i32* %6, i32** %14, align 8
  %22 = load i32*, i32** %14, align 8
  %23 = call i32* @svn_pool_create(i32* %22)
  store i32* %23, i32** %17, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @DIRENT_FIELDS, align 4
  %30 = load i32*, i32** %14, align 8
  %31 = call i32* @svn_ra_get_dir2(i32* %24, i32** %15, i32* null, i32* null, i8* %25, i32 %28, i32 %29, i32* %30)
  %32 = call i32 @SVN_ERR(i32* %31)
  %33 = load i32*, i32** %14, align 8
  %34 = load i32*, i32** %15, align 8
  %35 = call i32* @apr_hash_first(i32* %33, i32* %34)
  store i32* %35, i32** %16, align 8
  br label %36

36:                                               ; preds = %106, %7
  %37 = load i32*, i32** %16, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %109

39:                                               ; preds = %36
  %40 = load i32*, i32** %16, align 8
  %41 = call i8* @apr_hash_this_key(i32* %40)
  store i8* %41, i8** %19, align 8
  %42 = load i32*, i32** %16, align 8
  %43 = call %struct.TYPE_9__* @apr_hash_this_val(i32* %42)
  store %struct.TYPE_9__* %43, %struct.TYPE_9__** %20, align 8
  %44 = load i32*, i32** %17, align 8
  %45 = call i32 @svn_pool_clear(i32* %44)
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load i32* (i32)*, i32* (i32)** %47, align 8
  %49 = icmp ne i32* (i32)* %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %39
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = load i32* (i32)*, i32* (i32)** %52, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32* %53(i32 %56)
  %58 = call i32 @SVN_ERR(i32* %57)
  br label %59

59:                                               ; preds = %50, %39
  %60 = load i8*, i8** %10, align 8
  %61 = load i8*, i8** %19, align 8
  %62 = load i32*, i32** %17, align 8
  %63 = call i8* @svn_relpath_join(i8* %60, i8* %61, i32* %62)
  store i8* %63, i8** %18, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %65 = load i8*, i8** %19, align 8
  %66 = load i32*, i32** %17, align 8
  %67 = call %struct.TYPE_11__* @svn_client__pathrev_join_relpath(%struct.TYPE_11__* %64, i8* %65, i32* %66)
  store %struct.TYPE_11__* %67, %struct.TYPE_11__** %21, align 8
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* @svn_depth_immediates, align 4
  %70 = icmp sge i32 %68, %69
  br i1 %70, label %81, label %71

71:                                               ; preds = %59
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* @svn_depth_files, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %71
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @svn_node_file, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %75, %59
  %82 = load i32*, i32** %11, align 8
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %81, %75, %71
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* @svn_depth_infinity, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %105

89:                                               ; preds = %85
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @svn_node_dir, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %105

95:                                               ; preds = %89
  %96 = load i32*, i32** %8, align 8
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %98 = load i8*, i8** %18, align 8
  %99 = load i32*, i32** %11, align 8
  %100 = load i32, i32* %12, align 4
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %102 = load i32*, i32** %17, align 8
  %103 = call i32* @push_dir_info(i32* %96, %struct.TYPE_11__* %97, i8* %98, i32* %99, i32 %100, %struct.TYPE_10__* %101, i32* %102)
  %104 = call i32 @SVN_ERR(i32* %103)
  br label %105

105:                                              ; preds = %95, %89, %85
  br label %106

106:                                              ; preds = %105
  %107 = load i32*, i32** %16, align 8
  %108 = call i32* @apr_hash_next(i32* %107)
  store i32* %108, i32** %16, align 8
  br label %36

109:                                              ; preds = %36
  %110 = load i32*, i32** %17, align 8
  %111 = call i32 @svn_pool_destroy(i32* %110)
  %112 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %112
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32* @svn_ra_get_dir2(i32*, i32**, i32*, i32*, i8*, i32, i32, i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local %struct.TYPE_9__* @apr_hash_this_val(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i8* @svn_relpath_join(i8*, i8*, i32*) #1

declare dso_local %struct.TYPE_11__* @svn_client__pathrev_join_relpath(%struct.TYPE_11__*, i8*, i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
