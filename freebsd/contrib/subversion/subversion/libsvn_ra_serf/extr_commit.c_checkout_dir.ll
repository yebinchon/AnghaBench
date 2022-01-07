; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_commit.c_checkout_dir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_commit.c_checkout_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i32, %struct.TYPE_5__*, %struct.TYPE_4__*, i32, i64 }
%struct.TYPE_5__ = type { i8*, i8* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_4__*, i32*)* @checkout_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @checkout_dir(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %6, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %17, i32** %3, align 8
  br label %97

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %53, %18
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %21 = icmp ne %struct.TYPE_4__* %20, null
  br i1 %21, label %22, label %57

22:                                               ; preds = %19
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 6
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %53

27:                                               ; preds = %22
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  store %struct.TYPE_4__* %30, %struct.TYPE_4__** %9, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 8
  %37 = call i8* @svn_relpath_skip_ancestor(i32 %33, i32 %36)
  store i8* %37, i8** %10, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @SVN_ERR_ASSERT(i8* %40)
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i8* @svn_path_url_add_component2(i8* %44, i8* %45, i32 %48)
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  %52 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %52, i32** %3, align 8
  br label %97

53:                                               ; preds = %22
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  store %struct.TYPE_4__* %56, %struct.TYPE_4__** %6, align 8
  br label %19

57:                                               ; preds = %19
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = icmp ne %struct.TYPE_4__* %60, null
  br i1 %61, label %79, label %62

62:                                               ; preds = %57
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 3
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %79, label %69

69:                                               ; preds = %62
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 3
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  store i8* %74, i8** %7, align 8
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 3
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  store i8** %78, i8*** %8, align 8
  br label %85

79:                                               ; preds = %62, %57
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  store i8* %82, i8** %7, align 8
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  store i8** %84, i8*** %8, align 8
  br label %85

85:                                               ; preds = %79, %69
  %86 = load i8**, i8*** %8, align 8
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 3
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = load i8*, i8** %7, align 8
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load i32*, i32** %5, align 8
  %95 = call i32 @retry_checkout_node(i8** %86, %struct.TYPE_5__* %89, i8* %90, i32 %93, i32* %94)
  %96 = call i32* @svn_error_trace(i32 %95)
  store i32* %96, i32** %3, align 8
  br label %97

97:                                               ; preds = %85, %27, %16
  %98 = load i32*, i32** %3, align 8
  ret i32* %98
}

declare dso_local i8* @svn_relpath_skip_ancestor(i32, i32) #1

declare dso_local i32 @SVN_ERR_ASSERT(i8*) #1

declare dso_local i8* @svn_path_url_add_component2(i8*, i8*, i32) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @retry_checkout_node(i8**, %struct.TYPE_5__*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
