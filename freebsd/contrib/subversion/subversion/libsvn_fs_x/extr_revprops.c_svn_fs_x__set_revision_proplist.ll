; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_revprops.c_svn_fs_x__set_revision_proplist.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_revprops.c_svn_fs_x__set_revision_proplist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@svn_node_none = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_x__set_revision_proplist(%struct.TYPE_12__* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_11__*, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %10, align 4
  store i32* null, i32** %14, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** %16, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = call i32 @svn_fs_x__ensure_revision_exists(i32 %22, %struct.TYPE_12__* %23, i32* %24)
  %26 = call i32 @SVN_ERR(i32 %25)
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @svn_fs_x__batch_fsync_create(i32** %15, i32 %29, i32* %30)
  %32 = call i32 @SVN_ERR(i32 %31)
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @svn_fs_x__is_packed_revprop(%struct.TYPE_12__* %33, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %4
  %39 = load i32, i32* @TRUE, align 4
  store i32 %39, i32* %10, align 4
  br label %52

40:                                               ; preds = %4
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @svn_fs_x__path_revprops(%struct.TYPE_12__* %41, i32 %42, i32* %43)
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @svn_io_check_path(i32 %44, i64* %17, i32* %45)
  %47 = call i32 @SVN_ERR(i32 %46)
  %48 = load i64, i64* %17, align 8
  %49 = load i64, i64* @svn_node_none, align 8
  %50 = icmp ne i64 %48, %49
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %40, %38
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %52
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load i32*, i32** %7, align 8
  %59 = load i32*, i32** %15, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = load i32*, i32** %8, align 8
  %62 = call i32 @write_packed_revprop(i8** %11, i8** %12, i32** %14, %struct.TYPE_12__* %56, i32 %57, i32* %58, i32* %59, i32* %60, i32* %61)
  %63 = call i32 @SVN_ERR(i32 %62)
  br label %73

64:                                               ; preds = %52
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load i32*, i32** %7, align 8
  %68 = load i32*, i32** %15, align 8
  %69 = load i32*, i32** %8, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = call i32 @write_non_packed_revprop(i8** %11, i8** %12, %struct.TYPE_12__* %65, i32 %66, i32* %67, i32* %68, i32* %69, i32* %70)
  %72 = call i32 @SVN_ERR(i32 %71)
  br label %73

73:                                               ; preds = %64, %55
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %75 = load i32, i32* %6, align 4
  %76 = load i32*, i32** %8, align 8
  %77 = call i8* @svn_fs_x__path_rev_absolute(%struct.TYPE_12__* %74, i32 %75, i32* %76)
  store i8* %77, i8** %13, align 8
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %79 = load i8*, i8** %11, align 8
  %80 = load i8*, i8** %12, align 8
  %81 = load i8*, i8** %13, align 8
  %82 = load i32*, i32** %14, align 8
  %83 = load i32, i32* %10, align 4
  %84 = load i32*, i32** %15, align 8
  %85 = load i32*, i32** %8, align 8
  %86 = call i32 @switch_to_new_revprop(%struct.TYPE_12__* %78, i8* %79, i8* %80, i8* %81, i32* %82, i32 %83, i32* %84, i32* %85)
  %87 = call i32 @SVN_ERR(i32 %86)
  %88 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %88
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_x__ensure_revision_exists(i32, %struct.TYPE_12__*, i32*) #1

declare dso_local i32 @svn_fs_x__batch_fsync_create(i32**, i32, i32*) #1

declare dso_local i32 @svn_fs_x__is_packed_revprop(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @svn_io_check_path(i32, i64*, i32*) #1

declare dso_local i32 @svn_fs_x__path_revprops(%struct.TYPE_12__*, i32, i32*) #1

declare dso_local i32 @write_packed_revprop(i8**, i8**, i32**, %struct.TYPE_12__*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @write_non_packed_revprop(i8**, i8**, %struct.TYPE_12__*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i8* @svn_fs_x__path_rev_absolute(%struct.TYPE_12__*, i32, i32*) #1

declare dso_local i32 @switch_to_new_revprop(%struct.TYPE_12__*, i8*, i8*, i8*, i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
