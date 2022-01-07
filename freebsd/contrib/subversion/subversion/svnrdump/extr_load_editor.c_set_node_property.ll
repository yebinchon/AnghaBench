; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnrdump/extr_load_editor.c_set_node_property.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnrdump/extr_load_editor.c_set_node_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node_baton = type { i32, %struct.revision_baton* }
%struct.revision_baton = type { i32*, i32, %struct.parse_baton* }
%struct.parse_baton = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32* }

@SVN_PROP_MERGEINFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Invalid svn:mergeinfo value\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
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
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.node_baton*
  store %struct.node_baton* %16, %struct.node_baton** %8, align 8
  %17 = load %struct.node_baton*, %struct.node_baton** %8, align 8
  %18 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %17, i32 0, i32 1
  %19 = load %struct.revision_baton*, %struct.revision_baton** %18, align 8
  store %struct.revision_baton* %19, %struct.revision_baton** %9, align 8
  %20 = load %struct.revision_baton*, %struct.revision_baton** %9, align 8
  %21 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %20, i32 0, i32 2
  %22 = load %struct.parse_baton*, %struct.parse_baton** %21, align 8
  store %struct.parse_baton* %22, %struct.parse_baton** %10, align 8
  %23 = load %struct.node_baton*, %struct.node_baton** %8, align 8
  %24 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %23, i32 0, i32 1
  %25 = load %struct.revision_baton*, %struct.revision_baton** %24, align 8
  %26 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %11, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %60

30:                                               ; preds = %3
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* @SVN_PROP_MERGEINFO, align 4
  %33 = call i64 @strcmp(i8* %31, i32 %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %60

35:                                               ; preds = %30
  %36 = load i32*, i32** %7, align 8
  %37 = load %struct.parse_baton*, %struct.parse_baton** %10, align 8
  %38 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.parse_baton*, %struct.parse_baton** %10, align 8
  %41 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.parse_baton*, %struct.parse_baton** %10, align 8
  %44 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.revision_baton*, %struct.revision_baton** %9, align 8
  %47 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = load i32*, i32** %11, align 8
  %51 = call i32* @svn_repos__adjust_mergeinfo_property(i32** %13, i32* %36, i32 %39, i32 %42, i32 %45, i32 %48, i32* null, i32* null, i32* %49, i32* %50)
  store i32* %51, i32** %14, align 8
  %52 = load i32*, i32** %14, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %35
  %55 = load i32*, i32** %14, align 8
  %56 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %57 = call i32* @svn_error_quick_wrap(i32* %55, i32 %56)
  store i32* %57, i32** %4, align 8
  br label %95

58:                                               ; preds = %35
  %59 = load i32*, i32** %13, align 8
  store i32* %59, i32** %7, align 8
  br label %60

60:                                               ; preds = %58, %30, %3
  %61 = load i8*, i8** %6, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = load i32*, i32** %11, align 8
  %65 = call i32 @svn_repos__normalize_prop(i32** %7, i32* null, i8* %61, i32* %62, i32* %63, i32* %64)
  %66 = call i32 @SVN_ERR(i32 %65)
  %67 = load i8*, i8** %6, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = load i32*, i32** %11, align 8
  %70 = call i32 @svn_repos__validate_prop(i8* %67, i32* %68, i32* %69)
  %71 = call i32 @SVN_ERR(i32 %70)
  %72 = load %struct.node_baton*, %struct.node_baton** %8, align 8
  %73 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %72, i32 0, i32 1
  %74 = load %struct.revision_baton*, %struct.revision_baton** %73, align 8
  %75 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = call %struct.TYPE_4__* @apr_palloc(i32* %76, i32 16)
  store %struct.TYPE_4__* %77, %struct.TYPE_4__** %12, align 8
  %78 = load i32*, i32** %11, align 8
  %79 = load i8*, i8** %6, align 8
  %80 = call i32 @apr_pstrdup(i32* %78, i8* %79)
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load i32*, i32** %7, align 8
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  store i32* %83, i32** %85, align 8
  %86 = load %struct.node_baton*, %struct.node_baton** %8, align 8
  %87 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %93 = call i32 @svn_hash_sets(i32 %88, i32 %91, %struct.TYPE_4__* %92)
  %94 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %94, i32** %4, align 8
  br label %95

95:                                               ; preds = %60, %54
  %96 = load i32*, i32** %4, align 8
  ret i32* %96
}

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32* @svn_repos__adjust_mergeinfo_property(i32**, i32*, i32, i32, i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32* @svn_error_quick_wrap(i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_repos__normalize_prop(i32**, i32*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_repos__validate_prop(i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_4__* @apr_palloc(i32*, i32) #1

declare dso_local i32 @apr_pstrdup(i32*, i8*) #1

declare dso_local i32 @svn_hash_sets(i32, i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
