; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_node.c_svn_wc__internal_walk_children.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_node.c_svn_wc__internal_walk_children.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@svn_depth_empty = common dso_local global i32 0, align 4
@svn_depth_infinity = common dso_local global i32 0, align 4
@svn_node_file = common dso_local global i64 0, align 8
@svn_wc__db_status_not_present = common dso_local global i64 0, align 8
@svn_wc__db_status_excluded = common dso_local global i64 0, align 8
@svn_wc__db_status_server_excluded = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_node_dir = common dso_local global i64 0, align 8
@SVN_ERR_NODE_UNKNOWN_KIND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"'%s' has an unrecognized node kind\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__internal_walk_children(i32* %0, i8* %1, i32 %2, %struct.TYPE_4__* %3, i32 (i8*, i64, i8*, i32*)* %4, i8* %5, i32 %6, i32 %7, i8* %8, i32* %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_4__*, align 8
  %16 = alloca i32 (i8*, i64, i8*, i32*)*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i8*, align 8
  store i32* %0, i32** %12, align 8
  store i8* %1, i8** %13, align 8
  store i32 %2, i32* %14, align 4
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %15, align 8
  store i32 (i8*, i64, i8*, i32*)* %4, i32 (i8*, i64, i8*, i32*)** %16, align 8
  store i8* %5, i8** %17, align 8
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i8* %8, i8** %20, align 8
  store i32* %9, i32** %21, align 8
  store i32* null, i32** %25, align 8
  store i8* null, i8** %26, align 8
  %27 = load i32, i32* %18, align 4
  %28 = load i32, i32* @svn_depth_empty, align 4
  %29 = icmp sge i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %10
  %31 = load i32, i32* %18, align 4
  %32 = load i32, i32* @svn_depth_infinity, align 4
  %33 = icmp sle i32 %31, %32
  br label %34

34:                                               ; preds = %30, %10
  %35 = phi i1 [ false, %10 ], [ %33, %30 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @SVN_ERR_ASSERT(i32 %36)
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %39 = icmp ne %struct.TYPE_4__* %38, null
  br i1 %39, label %40, label %50

40:                                               ; preds = %34
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %47 = load i32*, i32** %21, align 8
  %48 = call i32 @svn_hash_from_cstring_keys(i32** %25, %struct.TYPE_4__* %46, i32* %47)
  %49 = call i32 @SVN_ERR(i32 %48)
  br label %50

50:                                               ; preds = %45, %40, %34
  %51 = load i32*, i32** %25, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  br label %55

54:                                               ; preds = %50
  br label %55

55:                                               ; preds = %54, %53
  %56 = phi i8** [ %26, %53 ], [ null, %54 ]
  %57 = load i32*, i32** %12, align 8
  %58 = load i8*, i8** %13, align 8
  %59 = load i32*, i32** %21, align 8
  %60 = load i32*, i32** %21, align 8
  %61 = call i32 @svn_wc__db_read_info(i64* %24, i64* %22, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i8** %56, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %57, i8* %58, i32* %59, i32* %60)
  %62 = call i32 @SVN_ERR(i32 %61)
  %63 = load i64, i64* %22, align 8
  %64 = load i64, i64* %24, align 8
  %65 = load i32, i32* %14, align 4
  %66 = call i32 @convert_db_kind_to_node_kind(i64* %23, i64 %63, i64 %64, i32 %65)
  %67 = call i32 @SVN_ERR(i32 %66)
  %68 = load i32*, i32** %25, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %78

70:                                               ; preds = %55
  %71 = load i8*, i8** %26, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %86

73:                                               ; preds = %70
  %74 = load i32*, i32** %25, align 8
  %75 = load i8*, i8** %26, align 8
  %76 = call i64 @svn_hash_gets(i32* %74, i8* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %73, %55
  %79 = load i32 (i8*, i64, i8*, i32*)*, i32 (i8*, i64, i8*, i32*)** %16, align 8
  %80 = load i8*, i8** %13, align 8
  %81 = load i64, i64* %23, align 8
  %82 = load i8*, i8** %17, align 8
  %83 = load i32*, i32** %21, align 8
  %84 = call i32 %79(i8* %80, i64 %81, i8* %82, i32* %83)
  %85 = call i32 @SVN_ERR(i32 %84)
  br label %86

86:                                               ; preds = %78, %73, %70
  %87 = load i64, i64* %22, align 8
  %88 = load i64, i64* @svn_node_file, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %102, label %90

90:                                               ; preds = %86
  %91 = load i64, i64* %24, align 8
  %92 = load i64, i64* @svn_wc__db_status_not_present, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %102, label %94

94:                                               ; preds = %90
  %95 = load i64, i64* %24, align 8
  %96 = load i64, i64* @svn_wc__db_status_excluded, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %102, label %98

98:                                               ; preds = %94
  %99 = load i64, i64* %24, align 8
  %100 = load i64, i64* @svn_wc__db_status_server_excluded, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %98, %94, %90, %86
  %103 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %103, i32** %11, align 8
  br label %128

104:                                              ; preds = %98
  %105 = load i64, i64* %22, align 8
  %106 = load i64, i64* @svn_node_dir, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %121

108:                                              ; preds = %104
  %109 = load i32*, i32** %12, align 8
  %110 = load i8*, i8** %13, align 8
  %111 = load i32, i32* %14, align 4
  %112 = load i32*, i32** %25, align 8
  %113 = load i32 (i8*, i64, i8*, i32*)*, i32 (i8*, i64, i8*, i32*)** %16, align 8
  %114 = load i8*, i8** %17, align 8
  %115 = load i32, i32* %18, align 4
  %116 = load i32, i32* %19, align 4
  %117 = load i8*, i8** %20, align 8
  %118 = load i32*, i32** %21, align 8
  %119 = call i32 @walker_helper(i32* %109, i8* %110, i32 %111, i32* %112, i32 (i8*, i64, i8*, i32*)* %113, i8* %114, i32 %115, i32 %116, i8* %117, i32* %118)
  %120 = call i32* @svn_error_trace(i32 %119)
  store i32* %120, i32** %11, align 8
  br label %128

121:                                              ; preds = %104
  %122 = load i32, i32* @SVN_ERR_NODE_UNKNOWN_KIND, align 4
  %123 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %124 = load i8*, i8** %13, align 8
  %125 = load i32*, i32** %21, align 8
  %126 = call i32 @svn_dirent_local_style(i8* %124, i32* %125)
  %127 = call i32* @svn_error_createf(i32 %122, i32* null, i32 %123, i32 %126)
  store i32* %127, i32** %11, align 8
  br label %128

128:                                              ; preds = %121, %108, %102
  %129 = load i32*, i32** %11, align 8
  ret i32* %129
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_hash_from_cstring_keys(i32**, %struct.TYPE_4__*, i32*) #1

declare dso_local i32 @svn_wc__db_read_info(i64*, i64*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i8**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @convert_db_kind_to_node_kind(i64*, i64, i64, i32) #1

declare dso_local i64 @svn_hash_gets(i32*, i8*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @walker_helper(i32*, i8*, i32, i32*, i32 (i8*, i64, i8*, i32*)*, i8*, i32, i32, i8*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
