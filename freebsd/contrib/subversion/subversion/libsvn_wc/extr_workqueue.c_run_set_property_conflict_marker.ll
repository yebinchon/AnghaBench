; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_workqueue.c_run_set_property_conflict_marker.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_workqueue.c_run_set_property_conflict_marker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, %struct.TYPE_10__*, i8*, i32, i8*, i32*)* @run_set_property_conflict_marker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @run_set_property_conflict_marker(i32* %0, i32* %1, %struct.TYPE_10__* %2, i8* %3, i32 %4, i8* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.TYPE_10__*, align 8
  %20 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i32* %6, i32** %14, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 3
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  store %struct.TYPE_10__* %25, %struct.TYPE_10__** %15, align 8
  store i8* null, i8** %18, align 8
  %26 = load i32*, i32** %14, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i8* @apr_pstrmemdup(i32* %26, i32 %29, i64 %32)
  store i8* %33, i8** %16, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = load i8*, i8** %16, align 8
  %37 = load i32*, i32** %14, align 8
  %38 = load i32*, i32** %14, align 8
  %39 = call i32 @svn_wc__db_from_relpath(i8** %17, i32* %34, i8* %35, i8* %36, i32* %37, i32* %38)
  %40 = call i32 @SVN_ERR(i32 %39)
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  store %struct.TYPE_10__* %43, %struct.TYPE_10__** %15, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %7
  %49 = load i32*, i32** %14, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i8* @apr_pstrmemdup(i32* %49, i32 %52, i64 %55)
  br label %58

57:                                               ; preds = %7
  br label %58

58:                                               ; preds = %57, %48
  %59 = phi i8* [ %56, %48 ], [ null, %57 ]
  store i8* %59, i8** %16, align 8
  %60 = load i8*, i8** %16, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %70

62:                                               ; preds = %58
  %63 = load i32*, i32** %9, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = load i8*, i8** %16, align 8
  %66 = load i32*, i32** %14, align 8
  %67 = load i32*, i32** %14, align 8
  %68 = call i32 @svn_wc__db_from_relpath(i8** %18, i32* %63, i8* %64, i8* %65, i32* %66, i32* %67)
  %69 = call i32 @SVN_ERR(i32 %68)
  br label %70

70:                                               ; preds = %62, %58
  %71 = load i32*, i32** %9, align 8
  %72 = load i8*, i8** %17, align 8
  %73 = load i32*, i32** %14, align 8
  %74 = load i32*, i32** %14, align 8
  %75 = call i32 @svn_wc__db_read_conflict(%struct.TYPE_10__** %19, i32* null, i32* null, i32* %71, i8* %72, i32* %73, i32* %74)
  %76 = call i32 @SVN_ERR(i32 %75)
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %78 = icmp ne %struct.TYPE_10__* %77, null
  br i1 %78, label %87, label %79

79:                                               ; preds = %70
  %80 = load i32*, i32** %14, align 8
  %81 = call %struct.TYPE_10__* @svn_wc__conflict_skel_create(i32* %80)
  store %struct.TYPE_10__* %81, %struct.TYPE_10__** %19, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %83 = load i32*, i32** %14, align 8
  %84 = load i32*, i32** %14, align 8
  %85 = call i32 @svn_wc__conflict_skel_set_op_update(%struct.TYPE_10__* %82, i32* null, i32* null, i32* %83, i32* %84)
  %86 = call i32 @SVN_ERR(i32 %85)
  br label %87

87:                                               ; preds = %79, %70
  %88 = load i32*, i32** %14, align 8
  %89 = call i32* @apr_hash_make(i32* %88)
  store i32* %89, i32** %20, align 8
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %91 = load i32*, i32** %9, align 8
  %92 = load i8*, i8** %17, align 8
  %93 = load i8*, i8** %18, align 8
  %94 = load i32*, i32** %20, align 8
  %95 = load i32*, i32** %14, align 8
  %96 = load i32*, i32** %14, align 8
  %97 = call i32 @svn_wc__conflict_skel_add_prop_conflict(%struct.TYPE_10__* %90, i32* %91, i8* %92, i8* %93, i32* null, i32* null, i32* null, i32* %94, i32* %95, i32* %96)
  %98 = call i32 @SVN_ERR(i32 %97)
  %99 = load i32*, i32** %9, align 8
  %100 = load i8*, i8** %17, align 8
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %102 = load i32*, i32** %14, align 8
  %103 = call i32 @svn_wc__db_op_mark_conflict(i32* %99, i8* %100, %struct.TYPE_10__* %101, i32* null, i32* %102)
  %104 = call i32 @SVN_ERR(i32 %103)
  %105 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %105
}

declare dso_local i8* @apr_pstrmemdup(i32*, i32, i64) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_from_relpath(i8**, i32*, i8*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_read_conflict(%struct.TYPE_10__**, i32*, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_10__* @svn_wc__conflict_skel_create(i32*) #1

declare dso_local i32 @svn_wc__conflict_skel_set_op_update(%struct.TYPE_10__*, i32*, i32*, i32*, i32*) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @svn_wc__conflict_skel_add_prop_conflict(%struct.TYPE_10__*, i32*, i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_op_mark_conflict(i32*, i8*, %struct.TYPE_10__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
