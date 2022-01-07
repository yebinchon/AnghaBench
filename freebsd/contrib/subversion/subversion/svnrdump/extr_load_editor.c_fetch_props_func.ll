; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnrdump/extr_load_editor.c_fetch_props_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnrdump/extr_load_editor.c_fetch_props_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.revision_baton = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@svn_node_file = common dso_local global i64 0, align 8
@svn_node_dir = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i8*, i8*, i64, i32*, i32*)* @fetch_props_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @fetch_props_func(i32** %0, i8* %1, i8* %2, i64 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.revision_baton*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  store i32** %0, i32*** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to %struct.revision_baton*
  store %struct.revision_baton* %17, %struct.revision_baton** %13, align 8
  %18 = load i64, i64* %10, align 8
  %19 = call i32 @SVN_IS_VALID_REVNUM(i64 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %6
  %22 = load %struct.revision_baton*, %struct.revision_baton** %13, align 8
  %23 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %24, 1
  store i64 %25, i64* %10, align 8
  br label %26

26:                                               ; preds = %21, %6
  %27 = load %struct.revision_baton*, %struct.revision_baton** %13, align 8
  %28 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** %9, align 8
  %33 = load i64, i64* %10, align 8
  %34 = load i32*, i32** %12, align 8
  %35 = call i32 @svn_ra_check_path(i32 %31, i8* %32, i64 %33, i64* %14, i32* %34)
  %36 = call i32 @SVN_ERR(i32 %35)
  %37 = load i64, i64* %14, align 8
  %38 = load i64, i64* @svn_node_file, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %26
  %41 = load %struct.revision_baton*, %struct.revision_baton** %13, align 8
  %42 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i8*, i8** %9, align 8
  %47 = load i64, i64* %10, align 8
  %48 = load i32**, i32*** %7, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = call i32 @svn_ra_get_file(i32 %45, i8* %46, i64 %47, i32* null, i32* null, i32** %48, i32* %49)
  %51 = call i32 @SVN_ERR(i32 %50)
  br label %85

52:                                               ; preds = %26
  %53 = load i64, i64* %14, align 8
  %54 = load i64, i64* @svn_node_dir, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %80

56:                                               ; preds = %52
  %57 = load %struct.revision_baton*, %struct.revision_baton** %13, align 8
  %58 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32**, i32*** %7, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = load i64, i64* %10, align 8
  %65 = load i32*, i32** %11, align 8
  %66 = call i32 @svn_ra_get_dir2(i32 %61, i32* null, i32* null, i32** %62, i8* %63, i64 %64, i32 0, i32* %65)
  %67 = call i32 @SVN_ERR(i32 %66)
  %68 = load i32**, i32*** %7, align 8
  %69 = load i32*, i32** %68, align 8
  %70 = load i32*, i32** %11, align 8
  %71 = call i32* @svn_prop_hash_to_array(i32* %69, i32* %70)
  store i32* %71, i32** %15, align 8
  %72 = load i32*, i32** %15, align 8
  %73 = load i32*, i32** %11, align 8
  %74 = call i32 @svn_categorize_props(i32* %72, i32* null, i32* null, i32** %15, i32* %73)
  %75 = call i32 @SVN_ERR(i32 %74)
  %76 = load i32*, i32** %15, align 8
  %77 = load i32*, i32** %11, align 8
  %78 = call i32* @svn_prop_array_to_hash(i32* %76, i32* %77)
  %79 = load i32**, i32*** %7, align 8
  store i32* %78, i32** %79, align 8
  br label %84

80:                                               ; preds = %52
  %81 = load i32*, i32** %11, align 8
  %82 = call i32* @apr_hash_make(i32* %81)
  %83 = load i32**, i32*** %7, align 8
  store i32* %82, i32** %83, align 8
  br label %84

84:                                               ; preds = %80, %56
  br label %85

85:                                               ; preds = %84, %40
  %86 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %86
}

declare dso_local i32 @SVN_IS_VALID_REVNUM(i64) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_check_path(i32, i8*, i64, i64*, i32*) #1

declare dso_local i32 @svn_ra_get_file(i32, i8*, i64, i32*, i32*, i32**, i32*) #1

declare dso_local i32 @svn_ra_get_dir2(i32, i32*, i32*, i32**, i8*, i64, i32, i32*) #1

declare dso_local i32* @svn_prop_hash_to_array(i32*, i32*) #1

declare dso_local i32 @svn_categorize_props(i32*, i32*, i32*, i32**, i32*) #1

declare dso_local i32* @svn_prop_array_to_hash(i32*, i32*) #1

declare dso_local i32* @apr_hash_make(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
