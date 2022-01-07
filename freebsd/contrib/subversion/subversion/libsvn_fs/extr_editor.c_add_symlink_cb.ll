; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs/extr_editor.c_add_symlink_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs/extr_editor.c_add_symlink_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edit_baton = type { i32 }

@APR_HASH_KEY_STRING = common dso_local global i32 0, align 4
@SVN_PROP_SPECIAL = common dso_local global i32 0, align 4
@SVN_PROP_SPECIAL_VALUE = common dso_local global i32 0, align 4
@fs_contents = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i8*, i32*, i32, i32*)* @add_symlink_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @add_symlink_cb(i8* %0, i8* %1, i8* %2, i32* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.edit_baton*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = bitcast i8* %17 to %struct.edit_baton*
  store %struct.edit_baton* %18, %struct.edit_baton** %14, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = load i32*, i32** %13, align 8
  %21 = call i8* @FSPATH(i8* %19, i32* %20)
  store i8* %21, i8** %15, align 8
  %22 = load %struct.edit_baton*, %struct.edit_baton** %14, align 8
  %23 = call i32 @get_root(i32** %16, %struct.edit_baton* %22)
  %24 = call i32 @SVN_ERR(i32 %23)
  %25 = load i32, i32* %12, align 4
  %26 = call i64 @SVN_IS_VALID_REVNUM(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %6
  %29 = load i32*, i32** %16, align 8
  %30 = load i8*, i8** %15, align 8
  %31 = load i32, i32* %12, align 4
  %32 = load i32*, i32** %13, align 8
  %33 = call i32 @can_modify(i32* %29, i8* %30, i32 %31, i32* %32)
  %34 = call i32 @SVN_ERR(i32 %33)
  %35 = load i32*, i32** %16, align 8
  %36 = load i8*, i8** %15, align 8
  %37 = load i32*, i32** %13, align 8
  %38 = call i32 @svn_fs_delete(i32* %35, i8* %36, i32* %37)
  %39 = call i32 @SVN_ERR(i32 %38)
  br label %46

40:                                               ; preds = %6
  %41 = load i32*, i32** %16, align 8
  %42 = load i8*, i8** %15, align 8
  %43 = load i32*, i32** %13, align 8
  %44 = call i32 @can_create(i32* %41, i8* %42, i32* %43)
  %45 = call i32 @SVN_ERR(i32 %44)
  br label %46

46:                                               ; preds = %40, %28
  %47 = call i32 (...) @SVN__NOT_IMPLEMENTED()
  %48 = load i32*, i32** %7, align 8
  ret i32* %48
}

declare dso_local i8* @FSPATH(i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @get_root(i32**, %struct.edit_baton*) #1

declare dso_local i64 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local i32 @can_modify(i32*, i8*, i32, i32*) #1

declare dso_local i32 @svn_fs_delete(i32*, i8*, i32*) #1

declare dso_local i32 @can_create(i32*, i8*, i32*) #1

declare dso_local i32 @SVN__NOT_IMPLEMENTED(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
