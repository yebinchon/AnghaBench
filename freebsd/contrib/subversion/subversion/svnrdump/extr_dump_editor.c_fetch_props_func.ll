; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnrdump/extr_dump_editor.c_fetch_props_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnrdump/extr_dump_editor.c_fetch_props_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dump_edit_baton = type { i32, i64 }

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
  %13 = alloca %struct.dump_edit_baton*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  store i32** %0, i32*** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to %struct.dump_edit_baton*
  store %struct.dump_edit_baton* %17, %struct.dump_edit_baton** %13, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 47
  br i1 %22, label %23, label %26

23:                                               ; preds = %6
  %24 = load i8*, i8** %9, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  store i8* %25, i8** %9, align 8
  br label %26

26:                                               ; preds = %23, %6
  %27 = load i64, i64* %10, align 8
  %28 = call i32 @SVN_IS_VALID_REVNUM(i64 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  %31 = load %struct.dump_edit_baton*, %struct.dump_edit_baton** %13, align 8
  %32 = getelementptr inbounds %struct.dump_edit_baton, %struct.dump_edit_baton* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %33, 1
  store i64 %34, i64* %10, align 8
  br label %35

35:                                               ; preds = %30, %26
  %36 = load %struct.dump_edit_baton*, %struct.dump_edit_baton** %13, align 8
  %37 = getelementptr inbounds %struct.dump_edit_baton, %struct.dump_edit_baton* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = load i64, i64* %10, align 8
  %41 = load i32*, i32** %12, align 8
  %42 = call i32 @svn_ra_check_path(i32 %38, i8* %39, i64 %40, i64* %14, i32* %41)
  %43 = call i32 @SVN_ERR(i32 %42)
  %44 = load i64, i64* %14, align 8
  %45 = load i64, i64* @svn_node_file, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %35
  %48 = load %struct.dump_edit_baton*, %struct.dump_edit_baton** %13, align 8
  %49 = getelementptr inbounds %struct.dump_edit_baton, %struct.dump_edit_baton* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = load i64, i64* %10, align 8
  %53 = load i32**, i32*** %7, align 8
  %54 = load i32*, i32** %11, align 8
  %55 = call i32 @svn_ra_get_file(i32 %50, i8* %51, i64 %52, i32* null, i32* null, i32** %53, i32* %54)
  %56 = call i32 @SVN_ERR(i32 %55)
  br label %88

57:                                               ; preds = %35
  %58 = load i64, i64* %14, align 8
  %59 = load i64, i64* @svn_node_dir, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %83

61:                                               ; preds = %57
  %62 = load %struct.dump_edit_baton*, %struct.dump_edit_baton** %13, align 8
  %63 = getelementptr inbounds %struct.dump_edit_baton, %struct.dump_edit_baton* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32**, i32*** %7, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = load i64, i64* %10, align 8
  %68 = load i32*, i32** %11, align 8
  %69 = call i32 @svn_ra_get_dir2(i32 %64, i32* null, i32* null, i32** %65, i8* %66, i64 %67, i32 0, i32* %68)
  %70 = call i32 @SVN_ERR(i32 %69)
  %71 = load i32**, i32*** %7, align 8
  %72 = load i32*, i32** %71, align 8
  %73 = load i32*, i32** %11, align 8
  %74 = call i32* @svn_prop_hash_to_array(i32* %72, i32* %73)
  store i32* %74, i32** %15, align 8
  %75 = load i32*, i32** %15, align 8
  %76 = load i32*, i32** %11, align 8
  %77 = call i32 @svn_categorize_props(i32* %75, i32* null, i32* null, i32** %15, i32* %76)
  %78 = call i32 @SVN_ERR(i32 %77)
  %79 = load i32*, i32** %15, align 8
  %80 = load i32*, i32** %11, align 8
  %81 = call i32* @svn_prop_array_to_hash(i32* %79, i32* %80)
  %82 = load i32**, i32*** %7, align 8
  store i32* %81, i32** %82, align 8
  br label %87

83:                                               ; preds = %57
  %84 = load i32*, i32** %11, align 8
  %85 = call i32* @apr_hash_make(i32* %84)
  %86 = load i32**, i32*** %7, align 8
  store i32* %85, i32** %86, align 8
  br label %87

87:                                               ; preds = %83, %61
  br label %88

88:                                               ; preds = %87, %47
  %89 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %89
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
