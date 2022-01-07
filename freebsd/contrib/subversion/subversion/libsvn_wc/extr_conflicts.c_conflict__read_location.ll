; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_conflicts.c_conflict__read_location.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_conflicts.c_conflict__read_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_5__*, i64, %struct.TYPE_5__* }

@SVN_WC__CONFLICT_SRC_SUBVERSION = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, %struct.TYPE_5__*, i32*, i32*)* @conflict__read_location to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @conflict__read_location(i32** %0, %struct.TYPE_5__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_5__*, align 8
  store i32** %0, i32*** %6, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  store %struct.TYPE_5__* %20, %struct.TYPE_5__** %17, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %22 = load i32, i32* @SVN_WC__CONFLICT_SRC_SUBVERSION, align 4
  %23 = call i32 @svn_skel__matches_atom(%struct.TYPE_5__* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %4
  %26 = load i32**, i32*** %6, align 8
  store i32* null, i32** %26, align 8
  %27 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %27, i32** %5, align 8
  br label %99

28:                                               ; preds = %4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  store %struct.TYPE_5__* %31, %struct.TYPE_5__** %17, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i8* @apr_pstrmemdup(i32* %32, i32 %35, i32 %38)
  store i8* %39, i8** %10, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  store %struct.TYPE_5__* %42, %struct.TYPE_5__** %17, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %28
  %48 = load i32*, i32** %8, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i8* @apr_pstrmemdup(i32* %48, i32 %51, i32 %54)
  store i8* %55, i8** %11, align 8
  br label %57

56:                                               ; preds = %28
  store i8* null, i8** %11, align 8
  br label %57

57:                                               ; preds = %56, %47
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  store %struct.TYPE_5__* %60, %struct.TYPE_5__** %17, align 8
  %61 = load i32*, i32** %8, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i8* @apr_pstrmemdup(i32* %61, i32 %64, i32 %67)
  store i8* %68, i8** %12, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  store %struct.TYPE_5__* %71, %struct.TYPE_5__** %17, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %73 = load i32*, i32** %9, align 8
  %74 = call i32 @svn_skel__parse_int(i64* %14, %struct.TYPE_5__* %72, i32* %73)
  %75 = call i32 @SVN_ERR(i32 %74)
  %76 = load i64, i64* %14, align 8
  store i64 %76, i64* %13, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  store %struct.TYPE_5__* %79, %struct.TYPE_5__** %17, align 8
  %80 = load i32*, i32** %9, align 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i8* @apr_pstrmemdup(i32* %80, i32 %83, i32 %86)
  store i8* %87, i8** %16, align 8
  %88 = load i8*, i8** %16, align 8
  %89 = call i32 @svn_node_kind_from_word(i8* %88)
  store i32 %89, i32* %15, align 4
  %90 = load i8*, i8** %10, align 8
  %91 = load i8*, i8** %11, align 8
  %92 = load i8*, i8** %12, align 8
  %93 = load i64, i64* %13, align 8
  %94 = load i32, i32* %15, align 4
  %95 = load i32*, i32** %8, align 8
  %96 = call i32* @svn_wc_conflict_version_create2(i8* %90, i8* %91, i8* %92, i64 %93, i32 %94, i32* %95)
  %97 = load i32**, i32*** %6, align 8
  store i32* %96, i32** %97, align 8
  %98 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %98, i32** %5, align 8
  br label %99

99:                                               ; preds = %57, %25
  %100 = load i32*, i32** %5, align 8
  ret i32* %100
}

declare dso_local i32 @svn_skel__matches_atom(%struct.TYPE_5__*, i32) #1

declare dso_local i8* @apr_pstrmemdup(i32*, i32, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_skel__parse_int(i64*, %struct.TYPE_5__*, i32*) #1

declare dso_local i32 @svn_node_kind_from_word(i8*) #1

declare dso_local i32* @svn_wc_conflict_version_create2(i8*, i8*, i8*, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
