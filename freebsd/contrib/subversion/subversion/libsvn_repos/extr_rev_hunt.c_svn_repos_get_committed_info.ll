; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_rev_hunt.c_svn_repos_get_committed_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_rev_hunt.c_svn_repos_get_committed_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@TRUE = common dso_local global i32 0, align 4
@SVN_PROP_REVISION_DATE = common dso_local global i32 0, align 4
@SVN_PROP_REVISION_AUTHOR = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_repos_get_committed_info(i32* %0, i8** %1, i8** %2, i32* %3, i8* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_3__*, align 8
  %16 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32* %5, i32** %12, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = call i32* @svn_fs_root_fs(i32* %17)
  store i32* %18, i32** %14, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = load i32*, i32** %12, align 8
  %23 = call i32 @svn_fs_node_created_rev(i32* %19, i32* %20, i8* %21, i32* %22)
  %24 = call i32 @SVN_ERR(i32 %23)
  %25 = load i32*, i32** %14, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @TRUE, align 4
  %29 = load i32*, i32** %12, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = call i32 @svn_fs_revision_proplist2(i32** %13, i32* %25, i32 %27, i32 %28, i32* %29, i32* %30)
  %32 = call i32 @SVN_ERR(i32 %31)
  %33 = load i32*, i32** %13, align 8
  %34 = load i32, i32* @SVN_PROP_REVISION_DATE, align 4
  %35 = call %struct.TYPE_3__* @svn_hash_gets(i32* %33, i32 %34)
  store %struct.TYPE_3__* %35, %struct.TYPE_3__** %15, align 8
  %36 = load i32*, i32** %13, align 8
  %37 = load i32, i32* @SVN_PROP_REVISION_AUTHOR, align 4
  %38 = call %struct.TYPE_3__* @svn_hash_gets(i32* %36, i32 %37)
  store %struct.TYPE_3__* %38, %struct.TYPE_3__** %16, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %40 = icmp ne %struct.TYPE_3__* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %6
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  br label %46

45:                                               ; preds = %6
  br label %46

46:                                               ; preds = %45, %41
  %47 = phi i8* [ %44, %41 ], [ null, %45 ]
  %48 = load i8**, i8*** %8, align 8
  store i8* %47, i8** %48, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %50 = icmp ne %struct.TYPE_3__* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  br label %56

55:                                               ; preds = %46
  br label %56

56:                                               ; preds = %55, %51
  %57 = phi i8* [ %54, %51 ], [ null, %55 ]
  %58 = load i8**, i8*** %9, align 8
  store i8* %57, i8** %58, align 8
  %59 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %59
}

declare dso_local i32* @svn_fs_root_fs(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_node_created_rev(i32*, i32*, i8*, i32*) #1

declare dso_local i32 @svn_fs_revision_proplist2(i32**, i32*, i32, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_3__* @svn_hash_gets(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
