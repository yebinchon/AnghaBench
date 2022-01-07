; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_conflict-callbacks.c_find_option_by_builtin.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_conflict-callbacks.c_find_option_by_builtin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i64, i64 }
%struct.TYPE_6__ = type { i64, i32, i64 }

@svn_client_conflict_option_unspecified = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_7__**, i32*, %struct.TYPE_6__*, i32*, i32*, i32*)* @find_option_by_builtin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @find_option_by_builtin(%struct.TYPE_7__** %0, i32* %1, %struct.TYPE_6__* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__** %0, %struct.TYPE_7__*** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = load i32*, i32** %11, align 8
  %19 = call i64 @svn_client_conflict_option_get_id(i32* %18)
  store i64 %19, i64* %15, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = call i64 @svn_client_conflict_get_recommended_option_id(i32* %20)
  store i64 %21, i64* %16, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %14, align 8
  br label %23

23:                                               ; preds = %76, %6
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %79

28:                                               ; preds = %23
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %15, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %75

34:                                               ; preds = %28
  %35 = load i32*, i32** %12, align 8
  %36 = call %struct.TYPE_7__* @apr_pcalloc(i32* %35, i32 32)
  store %struct.TYPE_7__* %36, %struct.TYPE_7__** %17, align 8
  %37 = load i64, i64* %15, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 5
  store i64 %37, i64* %39, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 4
  store i64 %42, i64* %44, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = load i32*, i32** %12, align 8
  %47 = call i32 @svn_client_conflict_option_get_label(i32* %45, i32* %46)
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  %50 = load i32*, i32** %11, align 8
  %51 = load i32*, i32** %12, align 8
  %52 = call i32 @svn_client_conflict_option_get_description(i32* %50, i32* %51)
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load i64, i64* %16, align 8
  %61 = load i64, i64* @svn_client_conflict_option_unspecified, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %34
  %64 = load i64, i64* %15, align 8
  %65 = load i64, i64* %16, align 8
  %66 = icmp eq i64 %64, %65
  br label %67

67:                                               ; preds = %63, %34
  %68 = phi i1 [ false, %34 ], [ %66, %63 ]
  %69 = zext i1 %68 to i32
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %73 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %8, align 8
  store %struct.TYPE_7__* %72, %struct.TYPE_7__** %73, align 8
  %74 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %74, i32** %7, align 8
  br label %82

75:                                               ; preds = %28
  br label %76

76:                                               ; preds = %75
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 1
  store %struct.TYPE_6__* %78, %struct.TYPE_6__** %14, align 8
  br label %23

79:                                               ; preds = %23
  %80 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %8, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %80, align 8
  %81 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %81, i32** %7, align 8
  br label %82

82:                                               ; preds = %79, %67
  %83 = load i32*, i32** %7, align 8
  ret i32* %83
}

declare dso_local i64 @svn_client_conflict_option_get_id(i32*) #1

declare dso_local i64 @svn_client_conflict_get_recommended_option_id(i32*) #1

declare dso_local %struct.TYPE_7__* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @svn_client_conflict_option_get_label(i32*, i32*) #1

declare dso_local i32 @svn_client_conflict_option_get_description(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
