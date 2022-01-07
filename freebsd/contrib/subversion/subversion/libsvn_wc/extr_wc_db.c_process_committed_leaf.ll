; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_process_committed_leaf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_process_committed_leaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@svn_node_dir = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@SVN_ERR_WC_NOT_LOCKED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"No write-lock in '%s'\00", align 1
@svn_depth_empty = common dso_local global i32 0, align 4
@svn_wc__db_status_not_present = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_wc__db_status_normal = common dso_local global i64 0, align 8
@svn_wc__db_status_incomplete = common dso_local global i64 0, align 8
@svn_wc__db_status_added = common dso_local global i64 0, align 8
@svn_wc__db_status_deleted = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_8__*, i8*, i64, i64, i64, i64, i32*, i32, i32, i8*, i32*, i64, i64, i32*, i32*)* @process_committed_leaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @process_committed_leaf(i32* %0, %struct.TYPE_8__* %1, i8* %2, i64 %3, i64 %4, i64 %5, i64 %6, i32* %7, i32 %8, i32 %9, i8* %10, i32* %11, i64 %12, i64 %13, i32* %14, i32* %15) #0 {
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_8__*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32*, align 8
  %36 = alloca i8*, align 8
  %37 = alloca i64, align 8
  store i32* %0, i32** %18, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %19, align 8
  store i8* %2, i8** %20, align 8
  store i64 %3, i64* %21, align 8
  store i64 %4, i64* %22, align 8
  store i64 %5, i64* %23, align 8
  store i64 %6, i64* %24, align 8
  store i32* %7, i32** %25, align 8
  store i32 %8, i32* %26, align 4
  store i32 %9, i32* %27, align 4
  store i8* %10, i8** %28, align 8
  store i32* %11, i32** %29, align 8
  store i64 %12, i64* %30, align 8
  store i64 %13, i64* %31, align 8
  store i32* %14, i32** %32, align 8
  store i32* %15, i32** %33, align 8
  %38 = load i32, i32* %26, align 4
  store i32 %38, i32* %34, align 4
  store i32* null, i32** %35, align 8
  %39 = load i64, i64* %23, align 8
  %40 = load i64, i64* @svn_node_dir, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %16
  %43 = load i8*, i8** %20, align 8
  store i8* %43, i8** %36, align 8
  br label %48

44:                                               ; preds = %16
  %45 = load i8*, i8** %20, align 8
  %46 = load i32*, i32** %33, align 8
  %47 = call i8* @svn_relpath_dirname(i8* %45, i32* %46)
  store i8* %47, i8** %36, align 8
  br label %48

48:                                               ; preds = %44, %42
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %50 = load i8*, i8** %36, align 8
  %51 = load i32, i32* @FALSE, align 4
  %52 = load i32*, i32** %33, align 8
  %53 = call i32 @svn_wc__db_wclock_owns_lock_internal(i64* %37, %struct.TYPE_8__* %49, i8* %50, i32 %51, i32* %52)
  %54 = call i32 @SVN_ERR(i32 %53)
  %55 = load i64, i64* %37, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %48
  %58 = load i32, i32* @SVN_ERR_WC_NOT_LOCKED, align 4
  %59 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %61 = load i8*, i8** %20, align 8
  %62 = load i32*, i32** %33, align 8
  %63 = call i32 @path_for_error_message(%struct.TYPE_8__* %60, i8* %61, i32* %62)
  %64 = call i32* @svn_error_createf(i32 %58, i32* null, i32 %59, i32 %63)
  store i32* %64, i32** %17, align 8
  br label %161

65:                                               ; preds = %48
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %67 = load i8*, i8** %36, align 8
  %68 = load i32, i32* @svn_depth_empty, align 4
  %69 = load i32*, i32** %33, align 8
  %70 = call i32 @flush_entries(%struct.TYPE_8__* %66, i8* %67, i32 %68, i32* %69)
  %71 = call i32 @SVN_ERR(i32 %70)
  %72 = load i64, i64* %22, align 8
  %73 = load i64, i64* @svn_wc__db_status_not_present, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %65
  %76 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %76, i32** %17, align 8
  br label %161

77:                                               ; preds = %65
  %78 = load i64, i64* %22, align 8
  %79 = load i64, i64* @svn_wc__db_status_normal, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %93, label %81

81:                                               ; preds = %77
  %82 = load i64, i64* %22, align 8
  %83 = load i64, i64* @svn_wc__db_status_incomplete, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %93, label %85

85:                                               ; preds = %81
  %86 = load i64, i64* %22, align 8
  %87 = load i64, i64* @svn_wc__db_status_added, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %93, label %89

89:                                               ; preds = %85
  %90 = load i64, i64* %22, align 8
  %91 = load i64, i64* @svn_wc__db_status_deleted, align 8
  %92 = icmp eq i64 %90, %91
  br label %93

93:                                               ; preds = %89, %85, %81, %77
  %94 = phi i1 [ true, %85 ], [ true, %81 ], [ true, %77 ], [ %92, %89 ]
  %95 = zext i1 %94 to i32
  %96 = call i32 @SVN_ERR_ASSERT(i32 %95)
  %97 = load i64, i64* %23, align 8
  %98 = load i64, i64* @svn_node_dir, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %139

100:                                              ; preds = %93
  %101 = load i64, i64* %22, align 8
  %102 = load i64, i64* @svn_wc__db_status_deleted, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %139

104:                                              ; preds = %100
  %105 = load i32*, i32** %32, align 8
  %106 = icmp eq i32* %105, null
  br i1 %106, label %107, label %126

107:                                              ; preds = %104
  %108 = load i32*, i32** %25, align 8
  %109 = icmp ne i32* %108, null
  %110 = zext i1 %109 to i32
  %111 = call i32 @SVN_ERR_ASSERT(i32 %110)
  %112 = load i32*, i32** %25, align 8
  store i32* %112, i32** %32, align 8
  %113 = load i64, i64* %21, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %125

115:                                              ; preds = %107
  %116 = load i64, i64* %24, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %125, label %118

118:                                              ; preds = %115
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %120 = load i8*, i8** %20, align 8
  %121 = load i32*, i32** %33, align 8
  %122 = load i32*, i32** %33, align 8
  %123 = call i32 @svn_wc__db_read_info_internal(i32* null, i32* null, i32* null, i32* null, i32* null, i32* %34, i32* %27, i8** %28, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, %struct.TYPE_8__* %119, i8* %120, i32* %121, i32* %122)
  %124 = call i32 @SVN_ERR(i32 %123)
  br label %125

125:                                              ; preds = %118, %115, %107
  br label %126

126:                                              ; preds = %125, %104
  %127 = load i32*, i32** %18, align 8
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i8*, i8** %20, align 8
  %132 = load i32*, i32** %33, align 8
  %133 = call i32 @svn_dirent_join(i32 %130, i8* %131, i32* %132)
  %134 = load i64, i64* %24, align 8
  %135 = load i32*, i32** %33, align 8
  %136 = load i32*, i32** %33, align 8
  %137 = call i32 @svn_wc__wq_build_file_commit(i32** %35, i32* %127, i32 %133, i64 %134, i32* %135, i32* %136)
  %138 = call i32 @SVN_ERR(i32 %137)
  br label %139

139:                                              ; preds = %126, %100, %93
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %141 = load i8*, i8** %20, align 8
  %142 = load i32, i32* %26, align 4
  %143 = load i32, i32* %34, align 4
  %144 = load i32, i32* %27, align 4
  %145 = load i8*, i8** %28, align 8
  %146 = load i32*, i32** %32, align 8
  %147 = load i32*, i32** %29, align 8
  %148 = load i64, i64* %31, align 8
  %149 = icmp ne i64 %148, 0
  %150 = xor i1 %149, true
  %151 = zext i1 %150 to i32
  %152 = load i64, i64* %30, align 8
  %153 = icmp ne i64 %152, 0
  %154 = xor i1 %153, true
  %155 = zext i1 %154 to i32
  %156 = load i32*, i32** %35, align 8
  %157 = load i32*, i32** %33, align 8
  %158 = call i32 @commit_node(%struct.TYPE_8__* %140, i8* %141, i32 %142, i32 %143, i32 %144, i8* %145, i32* %146, i32* %147, i32 %151, i32 %155, i32* %156, i32* %157)
  %159 = call i32 @SVN_ERR(i32 %158)
  %160 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %160, i32** %17, align 8
  br label %161

161:                                              ; preds = %139, %75, %57
  %162 = load i32*, i32** %17, align 8
  ret i32* %162
}

declare dso_local i8* @svn_relpath_dirname(i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_wclock_owns_lock_internal(i64*, %struct.TYPE_8__*, i8*, i32, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @path_for_error_message(%struct.TYPE_8__*, i8*, i32*) #1

declare dso_local i32 @flush_entries(%struct.TYPE_8__*, i8*, i32, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_wc__db_read_info_internal(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i8**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, %struct.TYPE_8__*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc__wq_build_file_commit(i32**, i32*, i32, i64, i32*, i32*) #1

declare dso_local i32 @svn_dirent_join(i32, i8*, i32*) #1

declare dso_local i32 @commit_node(%struct.TYPE_8__*, i8*, i32, i32, i32, i8*, i32*, i32*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
