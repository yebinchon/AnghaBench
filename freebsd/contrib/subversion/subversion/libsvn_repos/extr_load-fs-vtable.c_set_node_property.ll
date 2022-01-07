; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_load-fs-vtable.c_set_node_property.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_load-fs-vtable.c_set_node_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node_baton = type { i32, i32, %struct.revision_baton* }
%struct.revision_baton = type { i32, i32, i64, %struct.parse_baton* }
%struct.parse_baton = type { i64, i32, i32, i32 (i32, %struct.TYPE_5__*, i32)*, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_PROP_MERGEINFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Invalid svn:mergeinfo value\00", align 1
@svn_repos_notify_warning = common dso_local global i32 0, align 4
@svn_repos_notify_warning_invalid_mergeinfo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Invalid svn:mergeinfo value; leaving unchanged\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32*)* @set_node_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @set_node_property(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.node_baton*, align 8
  %9 = alloca %struct.revision_baton*, align 8
  %10 = alloca %struct.parse_baton*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.node_baton*
  store %struct.node_baton* %15, %struct.node_baton** %8, align 8
  %16 = load %struct.node_baton*, %struct.node_baton** %8, align 8
  %17 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %16, i32 0, i32 2
  %18 = load %struct.revision_baton*, %struct.revision_baton** %17, align 8
  store %struct.revision_baton* %18, %struct.revision_baton** %9, align 8
  %19 = load %struct.revision_baton*, %struct.revision_baton** %9, align 8
  %20 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %19, i32 0, i32 3
  %21 = load %struct.parse_baton*, %struct.parse_baton** %20, align 8
  store %struct.parse_baton* %21, %struct.parse_baton** %10, align 8
  %22 = load %struct.revision_baton*, %struct.revision_baton** %9, align 8
  %23 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %27, i32** %4, align 8
  br label %129

28:                                               ; preds = %3
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* @SVN_PROP_MERGEINFO, align 4
  %31 = call i64 @strcmp(i8* %29, i32 %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %113

33:                                               ; preds = %28
  %34 = load i32*, i32** %7, align 8
  %35 = load %struct.parse_baton*, %struct.parse_baton** %10, align 8
  %36 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.parse_baton*, %struct.parse_baton** %10, align 8
  %39 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.parse_baton*, %struct.parse_baton** %10, align 8
  %42 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.revision_baton*, %struct.revision_baton** %9, align 8
  %45 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.parse_baton*, %struct.parse_baton** %10, align 8
  %48 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %47, i32 0, i32 3
  %49 = load i32 (i32, %struct.TYPE_5__*, i32)*, i32 (i32, %struct.TYPE_5__*, i32)** %48, align 8
  %50 = load %struct.parse_baton*, %struct.parse_baton** %10, align 8
  %51 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.node_baton*, %struct.node_baton** %8, align 8
  %54 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.parse_baton*, %struct.parse_baton** %10, align 8
  %57 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32* @svn_repos__adjust_mergeinfo_property(i32** %11, i32* %34, i32 %37, i32 %40, i32 %43, i32 %46, i32 (i32, %struct.TYPE_5__*, i32)* %49, i32 %52, i32 %55, i32 %58)
  store i32* %59, i32** %12, align 8
  %60 = load %struct.parse_baton*, %struct.parse_baton** %10, align 8
  %61 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @svn_pool_clear(i32 %62)
  %64 = load i32*, i32** %12, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %110

66:                                               ; preds = %33
  %67 = load %struct.parse_baton*, %struct.parse_baton** %10, align 8
  %68 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load i32*, i32** %12, align 8
  %73 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %74 = call i32* @svn_error_quick_wrap(i32* %72, i32 %73)
  store i32* %74, i32** %4, align 8
  br label %129

75:                                               ; preds = %66
  %76 = load %struct.parse_baton*, %struct.parse_baton** %10, align 8
  %77 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %76, i32 0, i32 3
  %78 = load i32 (i32, %struct.TYPE_5__*, i32)*, i32 (i32, %struct.TYPE_5__*, i32)** %77, align 8
  %79 = icmp ne i32 (i32, %struct.TYPE_5__*, i32)* %78, null
  br i1 %79, label %80, label %107

80:                                               ; preds = %75
  %81 = load i32, i32* @svn_repos_notify_warning, align 4
  %82 = load %struct.parse_baton*, %struct.parse_baton** %10, align 8
  %83 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call %struct.TYPE_5__* @svn_repos_notify_create(i32 %81, i32 %84)
  store %struct.TYPE_5__* %85, %struct.TYPE_5__** %13, align 8
  %86 = load i32, i32* @svn_repos_notify_warning_invalid_mergeinfo, align 4
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = call i32 @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 4
  %92 = load %struct.parse_baton*, %struct.parse_baton** %10, align 8
  %93 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %92, i32 0, i32 3
  %94 = load i32 (i32, %struct.TYPE_5__*, i32)*, i32 (i32, %struct.TYPE_5__*, i32)** %93, align 8
  %95 = load %struct.parse_baton*, %struct.parse_baton** %10, align 8
  %96 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %99 = load %struct.parse_baton*, %struct.parse_baton** %10, align 8
  %100 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i32 %94(i32 %97, %struct.TYPE_5__* %98, i32 %101)
  %103 = load %struct.parse_baton*, %struct.parse_baton** %10, align 8
  %104 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @svn_pool_clear(i32 %105)
  br label %107

107:                                              ; preds = %80, %75
  %108 = load i32*, i32** %12, align 8
  %109 = call i32 @svn_error_clear(i32* %108)
  br label %112

110:                                              ; preds = %33
  %111 = load i32*, i32** %11, align 8
  store i32* %111, i32** %7, align 8
  br label %112

112:                                              ; preds = %110, %107
  br label %113

113:                                              ; preds = %112, %28
  %114 = load %struct.revision_baton*, %struct.revision_baton** %9, align 8
  %115 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.node_baton*, %struct.node_baton** %8, align 8
  %118 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i8*, i8** %6, align 8
  %121 = load i32*, i32** %7, align 8
  %122 = load %struct.parse_baton*, %struct.parse_baton** %10, align 8
  %123 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.node_baton*, %struct.node_baton** %8, align 8
  %126 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32* @change_node_prop(i32 %116, i32 %119, i8* %120, i32* %121, i64 %124, i32 %127)
  store i32* %128, i32** %4, align 8
  br label %129

129:                                              ; preds = %113, %71, %26
  %130 = load i32*, i32** %4, align 8
  ret i32* %130
}

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32* @svn_repos__adjust_mergeinfo_property(i32**, i32*, i32, i32, i32, i32, i32 (i32, %struct.TYPE_5__*, i32)*, i32, i32, i32) #1

declare dso_local i32 @svn_pool_clear(i32) #1

declare dso_local i32* @svn_error_quick_wrap(i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.TYPE_5__* @svn_repos_notify_create(i32, i32) #1

declare dso_local i32 @svn_error_clear(i32*) #1

declare dso_local i32* @change_node_prop(i32, i32, i8*, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
