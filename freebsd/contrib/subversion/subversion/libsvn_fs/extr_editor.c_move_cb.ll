; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs/extr_editor.c_move_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs/extr_editor.c_move_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edit_baton = type { i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32, i8*, i32, i32*)* @move_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @move_cb(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4, i32* %5) #0 {
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
  %29 = load i32*, i32** %16, align 8
  %30 = load i8*, i8** %14, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load i32*, i32** %12, align 8
  %33 = call i32 @can_modify(i32* %29, i8* %30, i32 %31, i32* %32)
  %34 = call i32 @SVN_ERR(i32 %33)
  %35 = load i32, i32* %11, align 4
  %36 = call i64 @SVN_IS_VALID_REVNUM(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %6
  %39 = load i32*, i32** %16, align 8
  %40 = load i8*, i8** %15, align 8
  %41 = load i32, i32* %11, align 4
  %42 = load i32*, i32** %12, align 8
  %43 = call i32 @can_modify(i32* %39, i8* %40, i32 %41, i32* %42)
  %44 = call i32 @SVN_ERR(i32 %43)
  %45 = load i32*, i32** %16, align 8
  %46 = load i8*, i8** %15, align 8
  %47 = load i32*, i32** %12, align 8
  %48 = call i32 @svn_fs_delete(i32* %45, i8* %46, i32* %47)
  %49 = call i32 @SVN_ERR(i32 %48)
  br label %56

50:                                               ; preds = %6
  %51 = load i32*, i32** %16, align 8
  %52 = load i8*, i8** %15, align 8
  %53 = load i32*, i32** %12, align 8
  %54 = call i32 @can_create(i32* %51, i8* %52, i32* %53)
  %55 = call i32 @SVN_ERR(i32 %54)
  br label %56

56:                                               ; preds = %50, %38
  %57 = load i32*, i32** %16, align 8
  %58 = call i32 @svn_fs_root_fs(i32* %57)
  %59 = load i32, i32* %9, align 4
  %60 = load i32*, i32** %12, align 8
  %61 = call i32 @svn_fs_revision_root(i32** %17, i32 %58, i32 %59, i32* %60)
  %62 = call i32 @SVN_ERR(i32 %61)
  %63 = load i32*, i32** %17, align 8
  %64 = load i8*, i8** %14, align 8
  %65 = load i32*, i32** %16, align 8
  %66 = load i8*, i8** %15, align 8
  %67 = load i32*, i32** %12, align 8
  %68 = call i32 @svn_fs_copy(i32* %63, i8* %64, i32* %65, i8* %66, i32* %67)
  %69 = call i32 @SVN_ERR(i32 %68)
  %70 = load i32*, i32** %17, align 8
  %71 = call i32 @svn_fs_close_root(i32* %70)
  %72 = load i32*, i32** %16, align 8
  %73 = load i8*, i8** %14, align 8
  %74 = load i32*, i32** %12, align 8
  %75 = call i32 @svn_fs_delete(i32* %72, i8* %73, i32* %74)
  %76 = call i32 @SVN_ERR(i32 %75)
  %77 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %77
}

declare dso_local i8* @FSPATH(i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @get_root(i32**, %struct.edit_baton*) #1

declare dso_local i32 @can_modify(i32*, i8*, i32, i32*) #1

declare dso_local i64 @SVN_IS_VALID_REVNUM(i32) #1

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
