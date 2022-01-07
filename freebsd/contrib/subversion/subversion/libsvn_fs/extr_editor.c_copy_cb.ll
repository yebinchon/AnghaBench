; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs/extr_editor.c_copy_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs/extr_editor.c_copy_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edit_baton = type { i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32, i8*, i32, i32*)* @copy_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @copy_cb(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.edit_baton*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to %struct.edit_baton*
  store %struct.edit_baton* %19, %struct.edit_baton** %13, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = load i32*, i32** %12, align 8
  %22 = call i8* @FSPATH(i8* %20, i32* %21)
  store i8* %22, i8** %14, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = load i32*, i32** %12, align 8
  %25 = call i8* @FSPATH(i8* %23, i32* %24)
  store i8* %25, i8** %15, align 8
  %26 = load %struct.edit_baton*, %struct.edit_baton** %13, align 8
  %27 = call i32 @get_root(i32** %16, %struct.edit_baton* %26)
  %28 = call i32 @SVN_ERR(i32 %27)
  %29 = load i32, i32* %11, align 4
  %30 = call i64 @SVN_IS_VALID_REVNUM(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %6
  %33 = load i32*, i32** %16, align 8
  %34 = load i8*, i8** %15, align 8
  %35 = load i32, i32* %11, align 4
  %36 = load i32*, i32** %12, align 8
  %37 = call i32 @can_modify(i32* %33, i8* %34, i32 %35, i32* %36)
  %38 = call i32 @SVN_ERR(i32 %37)
  %39 = load i32*, i32** %16, align 8
  %40 = load i8*, i8** %15, align 8
  %41 = load i32*, i32** %12, align 8
  %42 = call i32 @svn_fs_delete(i32* %39, i8* %40, i32* %41)
  %43 = call i32 @SVN_ERR(i32 %42)
  br label %50

44:                                               ; preds = %6
  %45 = load i32*, i32** %16, align 8
  %46 = load i8*, i8** %15, align 8
  %47 = load i32*, i32** %12, align 8
  %48 = call i32 @can_create(i32* %45, i8* %46, i32* %47)
  %49 = call i32 @SVN_ERR(i32 %48)
  br label %50

50:                                               ; preds = %44, %32
  %51 = load i32*, i32** %16, align 8
  %52 = call i32 @svn_fs_root_fs(i32* %51)
  %53 = load i32, i32* %9, align 4
  %54 = load i32*, i32** %12, align 8
  %55 = call i32 @svn_fs_revision_root(i32** %17, i32 %52, i32 %53, i32* %54)
  %56 = call i32 @SVN_ERR(i32 %55)
  %57 = load i32*, i32** %17, align 8
  %58 = load i8*, i8** %14, align 8
  %59 = load i32*, i32** %16, align 8
  %60 = load i8*, i8** %15, align 8
  %61 = load i32*, i32** %12, align 8
  %62 = call i32 @svn_fs_copy(i32* %57, i8* %58, i32* %59, i8* %60, i32* %61)
  %63 = call i32 @SVN_ERR(i32 %62)
  %64 = load i32*, i32** %17, align 8
  %65 = call i32 @svn_fs_close_root(i32* %64)
  %66 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %66
}

declare dso_local i8* @FSPATH(i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @get_root(i32**, %struct.edit_baton*) #1

declare dso_local i64 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local i32 @can_modify(i32*, i8*, i32, i32*) #1

declare dso_local i32 @svn_fs_delete(i32*, i8*, i32*) #1

declare dso_local i32 @can_create(i32*, i8*, i32*) #1

declare dso_local i32 @svn_fs_revision_root(i32**, i32, i32, i32*) #1

declare dso_local i32 @svn_fs_root_fs(i32*) #1

declare dso_local i32 @svn_fs_copy(i32*, i8*, i32*, i8*, i32*) #1

declare dso_local i32 @svn_fs_close_root(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
