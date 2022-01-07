; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_info.c_push_dir_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_info.c_push_dir_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32* (i32)* }
%struct.TYPE_12__ = type { i64 }

@DIRENT_FIELDS = common dso_local global i32 0, align 4
@svn_depth_immediates = common dso_local global i32 0, align 4
@svn_depth_files = common dso_local global i32 0, align 4
@svn_node_file = common dso_local global i64 0, align 8
@svn_depth_infinity = common dso_local global i32 0, align 4
@svn_node_dir = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_14__*, i8*, i32* (i8*, i8*, i32*, i32*)*, i8*, i32, %struct.TYPE_13__*, i32*, i32*)* @push_dir_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @push_dir_info(i32* %0, %struct.TYPE_14__* %1, i8* %2, i32* (i8*, i8*, i32*, i32*)* %3, i8* %4, i32 %5, %struct.TYPE_13__* %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32* (i8*, i8*, i32*, i32*)*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_13__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca %struct.TYPE_12__*, align 8
  %28 = alloca %struct.TYPE_14__*, align 8
  store i32* %0, i32** %10, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %11, align 8
  store i8* %2, i8** %12, align 8
  store i32* (i8*, i8*, i32*, i32*)* %3, i32* (i8*, i8*, i32*, i32*)** %13, align 8
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store %struct.TYPE_13__* %6, %struct.TYPE_13__** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32* %8, i32** %18, align 8
  %29 = load i32*, i32** %18, align 8
  %30 = call i32* @svn_pool_create(i32* %29)
  store i32* %30, i32** %21, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = load i8*, i8** %12, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @DIRENT_FIELDS, align 4
  %37 = load i32*, i32** %18, align 8
  %38 = call i32* @svn_ra_get_dir2(i32* %31, i32** %19, i32* null, i32* null, i8* %32, i32 %35, i32 %36, i32* %37)
  %39 = call i32 @SVN_ERR(i32* %38)
  %40 = load i32*, i32** %18, align 8
  %41 = load i32*, i32** %19, align 8
  %42 = call i32* @apr_hash_first(i32* %40, i32* %41)
  store i32* %42, i32** %20, align 8
  br label %43

43:                                               ; preds = %131, %9
  %44 = load i32*, i32** %20, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %134

46:                                               ; preds = %43
  %47 = load i32*, i32** %20, align 8
  %48 = call i8* @apr_hash_this_key(i32* %47)
  store i8* %48, i8** %26, align 8
  %49 = load i32*, i32** %20, align 8
  %50 = call %struct.TYPE_12__* @apr_hash_this_val(i32* %49)
  store %struct.TYPE_12__* %50, %struct.TYPE_12__** %27, align 8
  %51 = load i32*, i32** %21, align 8
  %52 = call i32 @svn_pool_clear(i32* %51)
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 1
  %55 = load i32* (i32)*, i32* (i32)** %54, align 8
  %56 = icmp ne i32* (i32)* %55, null
  br i1 %56, label %57, label %66

57:                                               ; preds = %46
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  %60 = load i32* (i32)*, i32* (i32)** %59, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32* %60(i32 %63)
  %65 = call i32 @SVN_ERR(i32* %64)
  br label %66

66:                                               ; preds = %57, %46
  %67 = load i8*, i8** %12, align 8
  %68 = load i8*, i8** %26, align 8
  %69 = load i32*, i32** %21, align 8
  %70 = call i8* @svn_relpath_join(i8* %67, i8* %68, i32* %69)
  store i8* %70, i8** %22, align 8
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %72 = load i8*, i8** %26, align 8
  %73 = load i32*, i32** %21, align 8
  %74 = call %struct.TYPE_14__* @svn_client__pathrev_join_relpath(%struct.TYPE_14__* %71, i8* %72, i32* %73)
  store %struct.TYPE_14__* %74, %struct.TYPE_14__** %28, align 8
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  %76 = load i32*, i32** %21, align 8
  %77 = call i8* @svn_client__pathrev_fspath(%struct.TYPE_14__* %75, i32* %76)
  store i8* %77, i8** %23, align 8
  %78 = load i32*, i32** %17, align 8
  %79 = load i8*, i8** %23, align 8
  %80 = call i32* @svn_hash_gets(i32* %78, i8* %79)
  store i32* %80, i32** %24, align 8
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %82 = load i32*, i32** %24, align 8
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  %84 = load i32*, i32** %21, align 8
  %85 = call i32* @build_info_from_dirent(i32** %25, %struct.TYPE_12__* %81, i32* %82, %struct.TYPE_14__* %83, i32* %84)
  %86 = call i32 @SVN_ERR(i32* %85)
  %87 = load i32, i32* %15, align 4
  %88 = load i32, i32* @svn_depth_immediates, align 4
  %89 = icmp sge i32 %87, %88
  br i1 %89, label %100, label %90

90:                                               ; preds = %66
  %91 = load i32, i32* %15, align 4
  %92 = load i32, i32* @svn_depth_files, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %108

94:                                               ; preds = %90
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @svn_node_file, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %108

100:                                              ; preds = %94, %66
  %101 = load i32* (i8*, i8*, i32*, i32*)*, i32* (i8*, i8*, i32*, i32*)** %13, align 8
  %102 = load i8*, i8** %14, align 8
  %103 = load i8*, i8** %22, align 8
  %104 = load i32*, i32** %25, align 8
  %105 = load i32*, i32** %21, align 8
  %106 = call i32* %101(i8* %102, i8* %103, i32* %104, i32* %105)
  %107 = call i32 @SVN_ERR(i32* %106)
  br label %108

108:                                              ; preds = %100, %94, %90
  %109 = load i32, i32* %15, align 4
  %110 = load i32, i32* @svn_depth_infinity, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %130

112:                                              ; preds = %108
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @svn_node_dir, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %130

118:                                              ; preds = %112
  %119 = load i32*, i32** %10, align 8
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  %121 = load i8*, i8** %22, align 8
  %122 = load i32* (i8*, i8*, i32*, i32*)*, i32* (i8*, i8*, i32*, i32*)** %13, align 8
  %123 = load i8*, i8** %14, align 8
  %124 = load i32, i32* %15, align 4
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %126 = load i32*, i32** %17, align 8
  %127 = load i32*, i32** %21, align 8
  %128 = call i32* @push_dir_info(i32* %119, %struct.TYPE_14__* %120, i8* %121, i32* (i8*, i8*, i32*, i32*)* %122, i8* %123, i32 %124, %struct.TYPE_13__* %125, i32* %126, i32* %127)
  %129 = call i32 @SVN_ERR(i32* %128)
  br label %130

130:                                              ; preds = %118, %112, %108
  br label %131

131:                                              ; preds = %130
  %132 = load i32*, i32** %20, align 8
  %133 = call i32* @apr_hash_next(i32* %132)
  store i32* %133, i32** %20, align 8
  br label %43

134:                                              ; preds = %43
  %135 = load i32*, i32** %21, align 8
  %136 = call i32 @svn_pool_destroy(i32* %135)
  %137 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %137
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32* @svn_ra_get_dir2(i32*, i32**, i32*, i32*, i8*, i32, i32, i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local %struct.TYPE_12__* @apr_hash_this_val(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i8* @svn_relpath_join(i8*, i8*, i32*) #1

declare dso_local %struct.TYPE_14__* @svn_client__pathrev_join_relpath(%struct.TYPE_14__*, i8*, i32*) #1

declare dso_local i8* @svn_client__pathrev_fspath(%struct.TYPE_14__*, i32*) #1

declare dso_local i32* @svn_hash_gets(i32*, i8*) #1

declare dso_local i32* @build_info_from_dirent(i32**, %struct.TYPE_12__*, i32*, %struct.TYPE_14__*, i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
