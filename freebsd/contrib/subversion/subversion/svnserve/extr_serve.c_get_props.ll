; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnserve/extr_serve.c_get_props.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnserve/extr_serve.c_get_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@SVN_PROP_ENTRY_COMMITTED_REV = common dso_local global i32 0, align 4
@SVN_PROP_ENTRY_COMMITTED_DATE = common dso_local global i32 0, align 4
@SVN_PROP_ENTRY_LAST_AUTHOR = common dso_local global i32 0, align 4
@SVN_PROP_ENTRY_UUID = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i32**, %struct.TYPE_4__*, i32*, i8*, i32*)* @get_props to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_props(i32** %0, i32** %1, %struct.TYPE_4__* %2, i32* %3, i8* %4, i32* %5) #0 {
  %7 = alloca i32**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store i32** %0, i32*** %7, align 8
  store i32** %1, i32*** %8, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32* %5, i32** %12, align 8
  %18 = load i32**, i32*** %7, align 8
  %19 = icmp ne i32** %18, null
  br i1 %19, label %20, label %87

20:                                               ; preds = %6
  %21 = load i32**, i32*** %7, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = load i32*, i32** %12, align 8
  %25 = call i32 @svn_fs_node_proplist(i32** %21, i32* %22, i8* %23, i32* %24)
  %26 = call i32 @SVN_ERR(i32 %25)
  %27 = load i32*, i32** %10, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = load i32*, i32** %12, align 8
  %30 = call i32 @svn_repos_get_committed_info(i32* %14, i8** %15, i8** %16, i32* %27, i8* %28, i32* %29)
  %31 = call i32 @SVN_ERR(i32 %30)
  %32 = load i32*, i32** %12, align 8
  %33 = load i32, i32* %14, align 4
  %34 = call i32* @svn_string_createf(i32* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %33)
  store i32* %34, i32** %13, align 8
  %35 = load i32**, i32*** %7, align 8
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* @SVN_PROP_ENTRY_COMMITTED_REV, align 4
  %38 = load i32*, i32** %13, align 8
  %39 = call i32 @svn_hash_sets(i32* %36, i32 %37, i32* %38)
  %40 = load i8*, i8** %15, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %20
  %43 = load i8*, i8** %15, align 8
  %44 = load i32*, i32** %12, align 8
  %45 = call i32* @svn_string_create(i8* %43, i32* %44)
  br label %47

46:                                               ; preds = %20
  br label %47

47:                                               ; preds = %46, %42
  %48 = phi i32* [ %45, %42 ], [ null, %46 ]
  store i32* %48, i32** %13, align 8
  %49 = load i32**, i32*** %7, align 8
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* @SVN_PROP_ENTRY_COMMITTED_DATE, align 4
  %52 = load i32*, i32** %13, align 8
  %53 = call i32 @svn_hash_sets(i32* %50, i32 %51, i32* %52)
  %54 = load i8*, i8** %16, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %47
  %57 = load i8*, i8** %16, align 8
  %58 = load i32*, i32** %12, align 8
  %59 = call i32* @svn_string_create(i8* %57, i32* %58)
  br label %61

60:                                               ; preds = %47
  br label %61

61:                                               ; preds = %60, %56
  %62 = phi i32* [ %59, %56 ], [ null, %60 ]
  store i32* %62, i32** %13, align 8
  %63 = load i32**, i32*** %7, align 8
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* @SVN_PROP_ENTRY_LAST_AUTHOR, align 4
  %66 = load i32*, i32** %13, align 8
  %67 = call i32 @svn_hash_sets(i32* %64, i32 %65, i32* %66)
  %68 = load i32*, i32** %10, align 8
  %69 = call i32 @svn_fs_root_fs(i32* %68)
  %70 = load i32*, i32** %12, align 8
  %71 = call i32 @svn_fs_get_uuid(i32 %69, i8** %17, i32* %70)
  %72 = call i32 @SVN_ERR(i32 %71)
  %73 = load i8*, i8** %17, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %79

75:                                               ; preds = %61
  %76 = load i8*, i8** %17, align 8
  %77 = load i32*, i32** %12, align 8
  %78 = call i32* @svn_string_create(i8* %76, i32* %77)
  br label %80

79:                                               ; preds = %61
  br label %80

80:                                               ; preds = %79, %75
  %81 = phi i32* [ %78, %75 ], [ null, %79 ]
  store i32* %81, i32** %13, align 8
  %82 = load i32**, i32*** %7, align 8
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* @SVN_PROP_ENTRY_UUID, align 4
  %85 = load i32*, i32** %13, align 8
  %86 = call i32 @svn_hash_sets(i32* %83, i32 %84, i32* %85)
  br label %87

87:                                               ; preds = %80, %6
  %88 = load i32**, i32*** %8, align 8
  %89 = icmp ne i32** %88, null
  br i1 %89, label %90, label %103

90:                                               ; preds = %87
  %91 = load i32**, i32*** %8, align 8
  %92 = load i32*, i32** %10, align 8
  %93 = load i8*, i8** %11, align 8
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @authz_check_access_cb_func(i32 %96)
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %99 = load i32*, i32** %12, align 8
  %100 = load i32*, i32** %12, align 8
  %101 = call i32 @svn_repos_fs_get_inherited_props(i32** %91, i32* %92, i8* %93, i32* null, i32 %97, %struct.TYPE_4__* %98, i32* %99, i32* %100)
  %102 = call i32 @SVN_ERR(i32 %101)
  br label %103

103:                                              ; preds = %90, %87
  %104 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %104
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_node_proplist(i32**, i32*, i8*, i32*) #1

declare dso_local i32 @svn_repos_get_committed_info(i32*, i8**, i8**, i32*, i8*, i32*) #1

declare dso_local i32* @svn_string_createf(i32*, i8*, i32) #1

declare dso_local i32 @svn_hash_sets(i32*, i32, i32*) #1

declare dso_local i32* @svn_string_create(i8*, i32*) #1

declare dso_local i32 @svn_fs_get_uuid(i32, i8**, i32*) #1

declare dso_local i32 @svn_fs_root_fs(i32*) #1

declare dso_local i32 @svn_repos_fs_get_inherited_props(i32**, i32*, i8*, i32*, i32, %struct.TYPE_4__*, i32*, i32*) #1

declare dso_local i32 @authz_check_access_cb_func(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
