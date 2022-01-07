; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_update_working_props.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_update_working_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.working_node_version_t = type { i32* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32**, %struct.TYPE_11__**, i32**, %struct.TYPE_10__*, i8*, %struct.working_node_version_t*, %struct.working_node_version_t*, i32*, i32*)* @update_working_props to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @update_working_props(i32* %0, i32** %1, %struct.TYPE_11__** %2, i32** %3, %struct.TYPE_10__* %4, i8* %5, %struct.working_node_version_t* %6, %struct.working_node_version_t* %7, i32* %8, i32* %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i32**, align 8
  %13 = alloca %struct.TYPE_11__**, align 8
  %14 = alloca i32**, align 8
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.working_node_version_t*, align 8
  %18 = alloca %struct.working_node_version_t*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_11__*, align 8
  store i32* %0, i32** %11, align 8
  store i32** %1, i32*** %12, align 8
  store %struct.TYPE_11__** %2, %struct.TYPE_11__*** %13, align 8
  store i32** %3, i32*** %14, align 8
  store %struct.TYPE_10__* %4, %struct.TYPE_10__** %15, align 8
  store i8* %5, i8** %16, align 8
  store %struct.working_node_version_t* %6, %struct.working_node_version_t** %17, align 8
  store %struct.working_node_version_t* %7, %struct.working_node_version_t** %18, align 8
  store i32* %8, i32** %19, align 8
  store i32* %9, i32** %20, align 8
  %23 = load i32**, i32*** %14, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %27 = load i8*, i8** %16, align 8
  %28 = load i32*, i32** %19, align 8
  %29 = load i32*, i32** %20, align 8
  %30 = call i32 @svn_wc__db_read_props_internal(i32** %23, %struct.TYPE_12__* %26, i8* %27, i32* %28, i32* %29)
  %31 = call i32 @SVN_ERR(i32 %30)
  %32 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %13, align 8
  %33 = load %struct.working_node_version_t*, %struct.working_node_version_t** %18, align 8
  %34 = getelementptr inbounds %struct.working_node_version_t, %struct.working_node_version_t* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.working_node_version_t*, %struct.working_node_version_t** %17, align 8
  %37 = getelementptr inbounds %struct.working_node_version_t, %struct.working_node_version_t* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32*, i32** %19, align 8
  %40 = call i32 @svn_prop_diffs(%struct.TYPE_11__** %32, i32* %35, i32* %38, i32* %39)
  %41 = call i32 @SVN_ERR(i32 %40)
  %42 = load i32**, i32*** %12, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i8*, i8** %16, align 8
  %53 = load i32*, i32** %20, align 8
  %54 = call i32 @svn_dirent_join(i32 %51, i8* %52, i32* %53)
  %55 = load %struct.working_node_version_t*, %struct.working_node_version_t** %17, align 8
  %56 = getelementptr inbounds %struct.working_node_version_t, %struct.working_node_version_t* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.working_node_version_t*, %struct.working_node_version_t** %17, align 8
  %59 = getelementptr inbounds %struct.working_node_version_t, %struct.working_node_version_t* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32**, i32*** %14, align 8
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %13, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %63, align 8
  %65 = load i32*, i32** %19, align 8
  %66 = load i32*, i32** %20, align 8
  %67 = call i32 @svn_wc__merge_props(i32** %42, i32* %43, i32** %21, i32 %46, i32 %54, i32* %57, i32* %60, i32* %62, %struct.TYPE_11__* %64, i32* %65, i32* %66)
  %68 = call i32 @SVN_ERR(i32 %67)
  %69 = load i32*, i32** %21, align 8
  %70 = load %struct.working_node_version_t*, %struct.working_node_version_t** %18, align 8
  %71 = getelementptr inbounds %struct.working_node_version_t, %struct.working_node_version_t* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32*, i32** %20, align 8
  %74 = call i32 @svn_prop_diffs(%struct.TYPE_11__** %22, i32* %69, i32* %72, i32* %73)
  %75 = call i32 @SVN_ERR(i32 %74)
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %10
  store i32* null, i32** %21, align 8
  br label %81

81:                                               ; preds = %80, %10
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %83, align 8
  %85 = load i8*, i8** %16, align 8
  %86 = load i32*, i32** %21, align 8
  %87 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %13, align 8
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %87, align 8
  %89 = call i32 @svn_wc__has_magic_property(%struct.TYPE_11__* %88)
  %90 = load i32*, i32** %20, align 8
  %91 = call i32 @svn_wc__db_op_set_props_internal(%struct.TYPE_12__* %84, i8* %85, i32* %86, i32 %89, i32* %90)
  %92 = call i32 @SVN_ERR(i32 %91)
  %93 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %93
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_read_props_internal(i32**, %struct.TYPE_12__*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_prop_diffs(%struct.TYPE_11__**, i32*, i32*, i32*) #1

declare dso_local i32 @svn_wc__merge_props(i32**, i32*, i32**, i32, i32, i32*, i32*, i32*, %struct.TYPE_11__*, i32*, i32*) #1

declare dso_local i32 @svn_dirent_join(i32, i8*, i32*) #1

declare dso_local i32 @svn_wc__db_op_set_props_internal(%struct.TYPE_12__*, i8*, i32*, i32, i32*) #1

declare dso_local i32 @svn_wc__has_magic_property(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
