; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_replay.c_svn_repos_replay2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_replay.c_svn_repos_replay2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (i8*, i64, i32*)* }
%struct.path_driver_cb_baton = type { i8*, i32*, i32, i32*, i64, i8*, i32, i32*, i32*, i8*, %struct.TYPE_5__* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@TRUE = common dso_local global i32 0, align 4
@path_driver_cb_func = common dso_local global i32 0, align 4
@fetch_kind_func = common dso_local global i32 0, align 4
@fetch_props_func = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_repos_replay2(i32* %0, i8* %1, i64 %2, i64 %3, %struct.TYPE_5__* %4, i8* %5, i32 %6, i8* %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_5__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.path_driver_cb_baton, align 8
  %23 = alloca i64, align 8
  store i32* %0, i32** %11, align 8
  store i8* %1, i8** %12, align 8
  store i64 %2, i64* %13, align 8
  store i64 %3, i64* %14, align 8
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %15, align 8
  store i8* %5, i8** %16, align 8
  store i32 %6, i32* %17, align 4
  store i8* %7, i8** %18, align 8
  store i32* %8, i32** %19, align 8
  %24 = load i32*, i32** %11, align 8
  %25 = call i64 @svn_fs_is_revision_root(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %9
  %28 = load i32*, i32** %11, align 8
  %29 = call i64 @svn_fs_revision_root_revision(i32* %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %27
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32 (i8*, i64, i32*)*, i32 (i8*, i64, i32*)** %33, align 8
  %35 = load i8*, i8** %16, align 8
  %36 = load i32*, i32** %19, align 8
  %37 = call i32 %34(i8* %35, i64 0, i32* %36)
  %38 = call i32 @SVN_ERR(i32 %37)
  %39 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %39, i32** %10, align 8
  br label %134

40:                                               ; preds = %27, %9
  %41 = load i8*, i8** %12, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  br label %54

44:                                               ; preds = %40
  %45 = load i8*, i8** %12, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 47
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i8*, i8** %12, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %12, align 8
  br label %53

53:                                               ; preds = %50, %44
  br label %54

54:                                               ; preds = %53, %43
  %55 = load i32*, i32** %11, align 8
  %56 = load i8*, i8** %12, align 8
  %57 = load i32, i32* %17, align 4
  %58 = load i8*, i8** %18, align 8
  %59 = load i32*, i32** %19, align 8
  %60 = load i32*, i32** %19, align 8
  %61 = call i32 @get_relevant_changes(i32** %20, i32** %21, i32* %55, i8* %56, i32 %57, i8* %58, i32* %59, i32* %60)
  %62 = call i32 @SVN_ERR(i32 %61)
  %63 = load i64, i64* %13, align 8
  %64 = call i32 @SVN_IS_VALID_REVNUM(i64 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %54
  store i64 0, i64* %13, align 8
  br label %67

67:                                               ; preds = %66, %54
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %69 = getelementptr inbounds %struct.path_driver_cb_baton, %struct.path_driver_cb_baton* %22, i32 0, i32 10
  store %struct.TYPE_5__* %68, %struct.TYPE_5__** %69, align 8
  %70 = load i8*, i8** %16, align 8
  %71 = getelementptr inbounds %struct.path_driver_cb_baton, %struct.path_driver_cb_baton* %22, i32 0, i32 9
  store i8* %70, i8** %71, align 8
  %72 = load i32*, i32** %11, align 8
  %73 = getelementptr inbounds %struct.path_driver_cb_baton, %struct.path_driver_cb_baton* %22, i32 0, i32 8
  store i32* %72, i32** %73, align 8
  %74 = load i32*, i32** %20, align 8
  %75 = getelementptr inbounds %struct.path_driver_cb_baton, %struct.path_driver_cb_baton* %22, i32 0, i32 7
  store i32* %74, i32** %75, align 8
  %76 = load i32, i32* %17, align 4
  %77 = getelementptr inbounds %struct.path_driver_cb_baton, %struct.path_driver_cb_baton* %22, i32 0, i32 6
  store i32 %76, i32* %77, align 8
  %78 = load i8*, i8** %18, align 8
  %79 = getelementptr inbounds %struct.path_driver_cb_baton, %struct.path_driver_cb_baton* %22, i32 0, i32 5
  store i8* %78, i8** %79, align 8
  %80 = load i8*, i8** %12, align 8
  %81 = getelementptr inbounds %struct.path_driver_cb_baton, %struct.path_driver_cb_baton* %22, i32 0, i32 0
  store i8* %80, i8** %81, align 8
  %82 = load i64, i64* %13, align 8
  %83 = getelementptr inbounds %struct.path_driver_cb_baton, %struct.path_driver_cb_baton* %22, i32 0, i32 4
  store i64 %82, i64* %83, align 8
  %84 = getelementptr inbounds %struct.path_driver_cb_baton, %struct.path_driver_cb_baton* %22, i32 0, i32 3
  store i32* null, i32** %84, align 8
  %85 = load i64, i64* %14, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %106

87:                                               ; preds = %67
  %88 = getelementptr inbounds %struct.path_driver_cb_baton, %struct.path_driver_cb_baton* %22, i32 0, i32 3
  %89 = load i32*, i32** %11, align 8
  %90 = call i32 @svn_fs_root_fs(i32* %89)
  %91 = load i32*, i32** %11, align 8
  %92 = call i64 @svn_fs_is_revision_root(i32* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %87
  %95 = load i32*, i32** %11, align 8
  %96 = call i64 @svn_fs_revision_root_revision(i32* %95)
  %97 = sub nsw i64 %96, 1
  br label %101

98:                                               ; preds = %87
  %99 = load i32*, i32** %11, align 8
  %100 = call i64 @svn_fs_txn_root_base_revision(i32* %99)
  br label %101

101:                                              ; preds = %98, %94
  %102 = phi i64 [ %97, %94 ], [ %100, %98 ]
  %103 = load i32*, i32** %19, align 8
  %104 = call i32 @svn_fs_revision_root(i32** %88, i32 %90, i64 %102, i32* %103)
  %105 = call i32 @SVN_ERR(i32 %104)
  br label %106

106:                                              ; preds = %101, %67
  %107 = load i32*, i32** %19, align 8
  %108 = call i32 @apr_array_make(i32* %107, i32 4, i32 8)
  %109 = getelementptr inbounds %struct.path_driver_cb_baton, %struct.path_driver_cb_baton* %22, i32 0, i32 2
  store i32 %108, i32* %109, align 8
  %110 = load i32*, i32** %19, align 8
  %111 = getelementptr inbounds %struct.path_driver_cb_baton, %struct.path_driver_cb_baton* %22, i32 0, i32 1
  store i32* %110, i32** %111, align 8
  %112 = load i32*, i32** %11, align 8
  %113 = call i64 @svn_fs_is_revision_root(i32* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %126

115:                                              ; preds = %106
  %116 = load i32*, i32** %11, align 8
  %117 = call i64 @svn_fs_revision_root_revision(i32* %116)
  store i64 %117, i64* %23, align 8
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i32 (i8*, i64, i32*)*, i32 (i8*, i64, i32*)** %119, align 8
  %121 = load i8*, i8** %16, align 8
  %122 = load i64, i64* %23, align 8
  %123 = load i32*, i32** %19, align 8
  %124 = call i32 %120(i8* %121, i64 %122, i32* %123)
  %125 = call i32 @SVN_ERR(i32 %124)
  br label %126

126:                                              ; preds = %115, %106
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %128 = load i8*, i8** %16, align 8
  %129 = load i32*, i32** %21, align 8
  %130 = load i32, i32* @TRUE, align 4
  %131 = load i32, i32* @path_driver_cb_func, align 4
  %132 = load i32*, i32** %19, align 8
  %133 = call i32* @svn_delta_path_driver2(%struct.TYPE_5__* %127, i8* %128, i32* %129, i32 %130, i32 %131, %struct.path_driver_cb_baton* %22, i32* %132)
  store i32* %133, i32** %10, align 8
  br label %134

134:                                              ; preds = %126, %31
  %135 = load i32*, i32** %10, align 8
  ret i32* %135
}

declare dso_local i64 @svn_fs_is_revision_root(i32*) #1

declare dso_local i64 @svn_fs_revision_root_revision(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @get_relevant_changes(i32**, i32**, i32*, i8*, i32, i8*, i32*, i32*) #1

declare dso_local i32 @SVN_IS_VALID_REVNUM(i64) #1

declare dso_local i32 @svn_fs_revision_root(i32**, i32, i64, i32*) #1

declare dso_local i32 @svn_fs_root_fs(i32*) #1

declare dso_local i64 @svn_fs_txn_root_base_revision(i32*) #1

declare dso_local i32 @apr_array_make(i32*, i32, i32) #1

declare dso_local i32* @svn_delta_path_driver2(%struct.TYPE_5__*, i8*, i32*, i32, i32, %struct.path_driver_cb_baton*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
