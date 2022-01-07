; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_repos_diff.c_fetch_props_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_repos_diff.c_fetch_props_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edit_baton = type { i32, i32 }

@svn_node_file = common dso_local global i64 0, align 8
@svn_node_dir = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i8*, i8*, i32, i32*, i32*)* @fetch_props_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @fetch_props_func(i32** %0, i8* %1, i8* %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.edit_baton*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  store i32** %0, i32*** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to %struct.edit_baton*
  store %struct.edit_baton* %17, %struct.edit_baton** %13, align 8
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @SVN_IS_VALID_REVNUM(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %6
  %22 = load %struct.edit_baton*, %struct.edit_baton** %13, align 8
  %23 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %10, align 4
  br label %25

25:                                               ; preds = %21, %6
  %26 = load %struct.edit_baton*, %struct.edit_baton** %13, align 8
  %27 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %9, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load i32*, i32** %12, align 8
  %32 = call i32 @svn_ra_check_path(i32 %28, i8* %29, i32 %30, i64* %14, i32* %31)
  %33 = call i32 @SVN_ERR(i32 %32)
  %34 = load i64, i64* %14, align 8
  %35 = load i64, i64* @svn_node_file, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %25
  %38 = load %struct.edit_baton*, %struct.edit_baton** %13, align 8
  %39 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %9, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load i32**, i32*** %7, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = call i32 @svn_ra_get_file(i32 %40, i8* %41, i32 %42, i32* null, i32* null, i32** %43, i32* %44)
  %46 = call i32 @SVN_ERR(i32 %45)
  br label %78

47:                                               ; preds = %25
  %48 = load i64, i64* %14, align 8
  %49 = load i64, i64* @svn_node_dir, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %73

51:                                               ; preds = %47
  %52 = load %struct.edit_baton*, %struct.edit_baton** %13, align 8
  %53 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32**, i32*** %7, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = load i32, i32* %10, align 4
  %58 = load i32*, i32** %11, align 8
  %59 = call i32 @svn_ra_get_dir2(i32 %54, i32* null, i32* null, i32** %55, i8* %56, i32 %57, i32 0, i32* %58)
  %60 = call i32 @SVN_ERR(i32 %59)
  %61 = load i32**, i32*** %7, align 8
  %62 = load i32*, i32** %61, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = call i32* @svn_prop_hash_to_array(i32* %62, i32* %63)
  store i32* %64, i32** %15, align 8
  %65 = load i32*, i32** %15, align 8
  %66 = load i32*, i32** %11, align 8
  %67 = call i32 @svn_categorize_props(i32* %65, i32* null, i32* null, i32** %15, i32* %66)
  %68 = call i32 @SVN_ERR(i32 %67)
  %69 = load i32*, i32** %15, align 8
  %70 = load i32*, i32** %11, align 8
  %71 = call i32* @svn_prop_array_to_hash(i32* %69, i32* %70)
  %72 = load i32**, i32*** %7, align 8
  store i32* %71, i32** %72, align 8
  br label %77

73:                                               ; preds = %47
  %74 = load i32*, i32** %11, align 8
  %75 = call i32* @apr_hash_make(i32* %74)
  %76 = load i32**, i32*** %7, align 8
  store i32* %75, i32** %76, align 8
  br label %77

77:                                               ; preds = %73, %51
  br label %78

78:                                               ; preds = %77, %37
  %79 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %79
}

declare dso_local i32 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_check_path(i32, i8*, i32, i64*, i32*) #1

declare dso_local i32 @svn_ra_get_file(i32, i8*, i32, i32*, i32*, i32**, i32*) #1

declare dso_local i32 @svn_ra_get_dir2(i32, i32*, i32*, i32**, i8*, i32, i32, i32*) #1

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
