; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_ra.c_svn_client__get_youngest_common_ancestor.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_ra.c_svn_client__get_youngest_common_ancestor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_client__get_youngest_common_ancestor(%struct.TYPE_9__** %0, %struct.TYPE_9__* %1, %struct.TYPE_9__* %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__**, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_9__** %0, %struct.TYPE_9__*** %9, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32* null, i32** %16, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @strcmp(i32 %23, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %7
  %30 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %9, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %30, align 8
  %31 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %31, i32** %8, align 8
  br label %81

32:                                               ; preds = %7
  %33 = load i32*, i32** %12, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %46

35:                                               ; preds = %32
  %36 = load i32*, i32** %15, align 8
  %37 = call i32* @svn_pool_create(i32* %36)
  store i32* %37, i32** %16, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %13, align 8
  %42 = load i32*, i32** %16, align 8
  %43 = load i32*, i32** %16, align 8
  %44 = call i32 @svn_client_open_ra_session2(i32** %12, i32 %40, i32* null, i32* %41, i32* %42, i32* %43)
  %45 = call i32 @SVN_ERR(i32 %44)
  br label %46

46:                                               ; preds = %35, %32
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %48 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %49 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %50 = load i32*, i32** %12, align 8
  %51 = load i32*, i32** %13, align 8
  %52 = load i32*, i32** %15, align 8
  %53 = call i32 @svn_client__get_history_as_mergeinfo(i32** %17, i32* %19, %struct.TYPE_9__* %47, i32 %48, i32 %49, i32* %50, i32* %51, i32* %52)
  %54 = call i32 @SVN_ERR(i32 %53)
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %56 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %57 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %58 = load i32*, i32** %12, align 8
  %59 = load i32*, i32** %13, align 8
  %60 = load i32*, i32** %15, align 8
  %61 = call i32 @svn_client__get_history_as_mergeinfo(i32** %18, i32* %20, %struct.TYPE_9__* %55, i32 %56, i32 %57, i32* %58, i32* %59, i32* %60)
  %62 = call i32 @SVN_ERR(i32 %61)
  %63 = load i32*, i32** %16, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %46
  %66 = load i32*, i32** %16, align 8
  %67 = call i32 @svn_pool_destroy(i32* %66)
  br label %68

68:                                               ; preds = %65, %46
  %69 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %9, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %71 = load i32*, i32** %17, align 8
  %72 = load i32, i32* %19, align 4
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %74 = load i32*, i32** %18, align 8
  %75 = load i32, i32* %20, align 4
  %76 = load i32*, i32** %14, align 8
  %77 = load i32*, i32** %15, align 8
  %78 = call i32 @svn_client__calc_youngest_common_ancestor(%struct.TYPE_9__** %69, %struct.TYPE_9__* %70, i32* %71, i32 %72, %struct.TYPE_9__* %73, i32* %74, i32 %75, i32* %76, i32* %77)
  %79 = call i32 @SVN_ERR(i32 %78)
  %80 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %80, i32** %8, align 8
  br label %81

81:                                               ; preds = %68, %29
  %82 = load i32*, i32** %8, align 8
  ret i32* %82
}

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_client_open_ra_session2(i32**, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_client__get_history_as_mergeinfo(i32**, i32*, %struct.TYPE_9__*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32 @svn_client__calc_youngest_common_ancestor(%struct.TYPE_9__**, %struct.TYPE_9__*, i32*, i32, %struct.TYPE_9__*, i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
