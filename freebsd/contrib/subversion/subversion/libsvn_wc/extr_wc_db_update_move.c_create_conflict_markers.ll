; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_create_conflict_markers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_create_conflict_markers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i8*, i8* }

@svn_wc_operation_update = common dso_local global i64 0, align 8
@svn_wc_operation_merge = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i8*, i32*, i8*, i32*, i64, %struct.TYPE_12__*, %struct.TYPE_12__*, i8*, i64, i32*, i32*)* @create_conflict_markers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @create_conflict_markers(i32** %0, i8* %1, i32* %2, i8* %3, i32* %4, i64 %5, %struct.TYPE_12__* %6, %struct.TYPE_12__* %7, i8* %8, i64 %9, i32* %10, i32* %11) #0 {
  %13 = alloca i32**, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_12__*, align 8
  %20 = alloca %struct.TYPE_12__*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca %struct.TYPE_13__*, align 8
  %26 = alloca %struct.TYPE_13__*, align 8
  %27 = alloca i8*, align 8
  store i32** %0, i32*** %13, align 8
  store i8* %1, i8** %14, align 8
  store i32* %2, i32** %15, align 8
  store i8* %3, i8** %16, align 8
  store i32* %4, i32** %17, align 8
  store i64 %5, i64* %18, align 8
  store %struct.TYPE_12__* %6, %struct.TYPE_12__** %19, align 8
  store %struct.TYPE_12__* %7, %struct.TYPE_12__** %20, align 8
  store i8* %8, i8** %21, align 8
  store i64 %9, i64* %22, align 8
  store i32* %10, i32** %23, align 8
  store i32* %11, i32** %24, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %24, align 8
  %32 = call %struct.TYPE_13__* @svn_wc_conflict_version_dup(i32 %30, i32* %31)
  store %struct.TYPE_13__* %32, %struct.TYPE_13__** %25, align 8
  %33 = load i8*, i8** %21, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %24, align 8
  %40 = call %struct.TYPE_13__* @svn_wc_conflict_version_dup(i32 %38, i32* %39)
  store %struct.TYPE_13__* %40, %struct.TYPE_13__** %26, align 8
  %41 = load i8*, i8** %21, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load i8*, i8** %16, align 8
  %48 = call i8* @svn_relpath_skip_ancestor(i8* %46, i8* %47)
  store i8* %48, i8** %27, align 8
  %49 = load i8*, i8** %27, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %12
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load i8*, i8** %16, align 8
  %56 = call i8* @svn_relpath_skip_ancestor(i8* %54, i8* %55)
  store i8* %56, i8** %27, align 8
  br label %57

57:                                               ; preds = %51, %12
  %58 = load i8*, i8** %27, align 8
  %59 = icmp ne i8* %58, null
  %60 = zext i1 %59 to i32
  %61 = call i32 @SVN_ERR_ASSERT(i32 %60)
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = load i8*, i8** %27, align 8
  %66 = load i32*, i32** %24, align 8
  %67 = call i8* @svn_relpath_join(i8* %64, i8* %65, i32* %66)
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  %70 = load i8*, i8** %16, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  store i8* %70, i8** %72, align 8
  %73 = load i64, i64* %22, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %109

75:                                               ; preds = %57
  %76 = load i64, i64* %18, align 8
  %77 = load i64, i64* @svn_wc_operation_update, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %75
  %80 = load i32*, i32** %17, align 8
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %83 = load i32*, i32** %24, align 8
  %84 = load i32*, i32** %24, align 8
  %85 = call i32 @svn_wc__conflict_skel_set_op_update(i32* %80, %struct.TYPE_13__* %81, %struct.TYPE_13__* %82, i32* %83, i32* %84)
  %86 = call i32 @SVN_ERR(i32 %85)
  br label %108

87:                                               ; preds = %75
  %88 = load i64, i64* %18, align 8
  %89 = load i64, i64* @svn_wc_operation_merge, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %87
  %92 = load i32*, i32** %17, align 8
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %95 = load i32*, i32** %24, align 8
  %96 = load i32*, i32** %24, align 8
  %97 = call i32 @svn_wc__conflict_skel_set_op_merge(i32* %92, %struct.TYPE_13__* %93, %struct.TYPE_13__* %94, i32* %95, i32* %96)
  %98 = call i32 @SVN_ERR(i32 %97)
  br label %107

99:                                               ; preds = %87
  %100 = load i32*, i32** %17, align 8
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %103 = load i32*, i32** %24, align 8
  %104 = load i32*, i32** %24, align 8
  %105 = call i32 @svn_wc__conflict_skel_set_op_switch(i32* %100, %struct.TYPE_13__* %101, %struct.TYPE_13__* %102, i32* %103, i32* %104)
  %106 = call i32 @SVN_ERR(i32 %105)
  br label %107

107:                                              ; preds = %99, %91
  br label %108

108:                                              ; preds = %107, %79
  br label %109

109:                                              ; preds = %108, %57
  %110 = load i32**, i32*** %13, align 8
  %111 = load i32*, i32** %15, align 8
  %112 = load i8*, i8** %14, align 8
  %113 = load i32*, i32** %17, align 8
  %114 = load i32*, i32** %23, align 8
  %115 = load i32*, i32** %24, align 8
  %116 = call i32 @svn_wc__conflict_create_markers(i32** %110, i32* %111, i8* %112, i32* %113, i32* %114, i32* %115)
  %117 = call i32 @SVN_ERR(i32 %116)
  %118 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %118
}

declare dso_local %struct.TYPE_13__* @svn_wc_conflict_version_dup(i32, i32*) #1

declare dso_local i8* @svn_relpath_skip_ancestor(i8*, i8*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i8* @svn_relpath_join(i8*, i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__conflict_skel_set_op_update(i32*, %struct.TYPE_13__*, %struct.TYPE_13__*, i32*, i32*) #1

declare dso_local i32 @svn_wc__conflict_skel_set_op_merge(i32*, %struct.TYPE_13__*, %struct.TYPE_13__*, i32*, i32*) #1

declare dso_local i32 @svn_wc__conflict_skel_set_op_switch(i32*, %struct.TYPE_13__*, %struct.TYPE_13__*, i32*, i32*) #1

declare dso_local i32 @svn_wc__conflict_create_markers(i32**, i32*, i8*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
