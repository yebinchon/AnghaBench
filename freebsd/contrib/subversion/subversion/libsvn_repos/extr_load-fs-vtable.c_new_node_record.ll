; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_load-fs-vtable.c_new_node_record.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_load-fs-vtable.c_new_node_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.revision_baton = type { i64, i32, i64, %struct.parse_baton* }
%struct.parse_baton = type { i32, i32, i32 (i32, %struct.TYPE_4__*, i32)* }
%struct.TYPE_4__ = type { i32 }
%struct.node_baton = type { i32, i32 }

@SVN_ERR_STREAM_MALFORMED_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"Malformed dumpstream: Revision 0 must not contain node records\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_ERR_STREAM_UNRECOGNIZED_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Unrecognized node-action on node '%s'\00", align 1
@svn_repos_notify_load_node_start = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i32*, i8*, i32*)* @new_node_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @new_node_record(i8** %0, i32* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.revision_baton*, align 8
  %11 = alloca %struct.parse_baton*, align 8
  %12 = alloca %struct.node_baton*, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  store i8** %0, i8*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = bitcast i8* %14 to %struct.revision_baton*
  store %struct.revision_baton* %15, %struct.revision_baton** %10, align 8
  %16 = load %struct.revision_baton*, %struct.revision_baton** %10, align 8
  %17 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %16, i32 0, i32 3
  %18 = load %struct.parse_baton*, %struct.parse_baton** %17, align 8
  store %struct.parse_baton* %18, %struct.parse_baton** %11, align 8
  %19 = load %struct.revision_baton*, %struct.revision_baton** %10, align 8
  %20 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %4
  %24 = load i32, i32* @SVN_ERR_STREAM_MALFORMED_DATA, align 4
  %25 = call i32 @_(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  %26 = call i32* @svn_error_create(i32 %24, i32* null, i32 %25)
  store i32* %26, i32** %5, align 8
  br label %131

27:                                               ; preds = %4
  %28 = load i32*, i32** %7, align 8
  %29 = load %struct.revision_baton*, %struct.revision_baton** %10, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = call i32 @make_node_baton(%struct.node_baton** %12, i32* %28, %struct.revision_baton* %29, i32* %30)
  %32 = call i32 @SVN_ERR(i32 %31)
  %33 = load %struct.revision_baton*, %struct.revision_baton** %10, align 8
  %34 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %27
  %38 = load %struct.node_baton*, %struct.node_baton** %12, align 8
  %39 = bitcast %struct.node_baton* %38 to i8*
  %40 = load i8**, i8*** %6, align 8
  store i8* %39, i8** %40, align 8
  %41 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %41, i32** %5, align 8
  br label %131

42:                                               ; preds = %27
  %43 = load %struct.node_baton*, %struct.node_baton** %12, align 8
  %44 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %45, 130
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load %struct.node_baton*, %struct.node_baton** %12, align 8
  %49 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp sgt i32 %50, 128
  br i1 %51, label %52, label %59

52:                                               ; preds = %47, %42
  %53 = load i32, i32* @SVN_ERR_STREAM_UNRECOGNIZED_DATA, align 4
  %54 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %55 = load %struct.node_baton*, %struct.node_baton** %12, align 8
  %56 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32* @svn_error_createf(i32 %53, i32* null, i32 %54, i32 %57)
  store i32* %58, i32** %5, align 8
  br label %131

59:                                               ; preds = %47
  %60 = load %struct.parse_baton*, %struct.parse_baton** %11, align 8
  %61 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %60, i32 0, i32 2
  %62 = load i32 (i32, %struct.TYPE_4__*, i32)*, i32 (i32, %struct.TYPE_4__*, i32)** %61, align 8
  %63 = icmp ne i32 (i32, %struct.TYPE_4__*, i32)* %62, null
  br i1 %63, label %64, label %90

64:                                               ; preds = %59
  %65 = load i32, i32* @svn_repos_notify_load_node_start, align 4
  %66 = load %struct.parse_baton*, %struct.parse_baton** %11, align 8
  %67 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call %struct.TYPE_4__* @svn_repos_notify_create(i32 %65, i32 %68)
  store %struct.TYPE_4__* %69, %struct.TYPE_4__** %13, align 8
  %70 = load %struct.node_baton*, %struct.node_baton** %12, align 8
  %71 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load %struct.parse_baton*, %struct.parse_baton** %11, align 8
  %76 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %75, i32 0, i32 2
  %77 = load i32 (i32, %struct.TYPE_4__*, i32)*, i32 (i32, %struct.TYPE_4__*, i32)** %76, align 8
  %78 = load %struct.parse_baton*, %struct.parse_baton** %11, align 8
  %79 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %82 = load %struct.parse_baton*, %struct.parse_baton** %11, align 8
  %83 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 %77(i32 %80, %struct.TYPE_4__* %81, i32 %84)
  %86 = load %struct.parse_baton*, %struct.parse_baton** %11, align 8
  %87 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @svn_pool_clear(i32 %88)
  br label %90

90:                                               ; preds = %64, %59
  %91 = load %struct.node_baton*, %struct.node_baton** %12, align 8
  %92 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  switch i32 %93, label %126 [
    i32 130, label %94
    i32 129, label %95
    i32 131, label %105
    i32 128, label %111
  ]

94:                                               ; preds = %90
  br label %126

95:                                               ; preds = %90
  %96 = load %struct.revision_baton*, %struct.revision_baton** %10, align 8
  %97 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.node_baton*, %struct.node_baton** %12, align 8
  %100 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32*, i32** %9, align 8
  %103 = call i32 @svn_fs_delete(i32 %98, i32 %101, i32* %102)
  %104 = call i32 @SVN_ERR(i32 %103)
  br label %126

105:                                              ; preds = %90
  %106 = load %struct.node_baton*, %struct.node_baton** %12, align 8
  %107 = load %struct.revision_baton*, %struct.revision_baton** %10, align 8
  %108 = load i32*, i32** %9, align 8
  %109 = call i32 @maybe_add_with_history(%struct.node_baton* %106, %struct.revision_baton* %107, i32* %108)
  %110 = call i32 @SVN_ERR(i32 %109)
  br label %126

111:                                              ; preds = %90
  %112 = load %struct.revision_baton*, %struct.revision_baton** %10, align 8
  %113 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.node_baton*, %struct.node_baton** %12, align 8
  %116 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32*, i32** %9, align 8
  %119 = call i32 @svn_fs_delete(i32 %114, i32 %117, i32* %118)
  %120 = call i32 @SVN_ERR(i32 %119)
  %121 = load %struct.node_baton*, %struct.node_baton** %12, align 8
  %122 = load %struct.revision_baton*, %struct.revision_baton** %10, align 8
  %123 = load i32*, i32** %9, align 8
  %124 = call i32 @maybe_add_with_history(%struct.node_baton* %121, %struct.revision_baton* %122, i32* %123)
  %125 = call i32 @SVN_ERR(i32 %124)
  br label %126

126:                                              ; preds = %90, %111, %105, %95, %94
  %127 = load %struct.node_baton*, %struct.node_baton** %12, align 8
  %128 = bitcast %struct.node_baton* %127 to i8*
  %129 = load i8**, i8*** %6, align 8
  store i8* %128, i8** %129, align 8
  %130 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %130, i32** %5, align 8
  br label %131

131:                                              ; preds = %126, %52, %37, %23
  %132 = load i32*, i32** %5, align 8
  ret i32* %132
}

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @make_node_baton(%struct.node_baton**, i32*, %struct.revision_baton*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local %struct.TYPE_4__* @svn_repos_notify_create(i32, i32) #1

declare dso_local i32 @svn_pool_clear(i32) #1

declare dso_local i32 @svn_fs_delete(i32, i32, i32*) #1

declare dso_local i32 @maybe_add_with_history(%struct.node_baton*, %struct.revision_baton*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
