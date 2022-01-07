; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_fs_fs.c_svn_fs_fs__change_rev_prop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_fs_fs.c_svn_fs_fs__change_rev_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.change_rev_prop_baton = type { i8*, i32*, i32**, i32, i32* }

@TRUE = common dso_local global i32 0, align 4
@change_rev_prop_body = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_fs__change_rev_prop(i32* %0, i32 %1, i8* %2, i32** %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.change_rev_prop_baton, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32** %3, i32*** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load i32, i32* @TRUE, align 4
  %16 = call i32 @svn_fs__check_fs(i32* %14, i32 %15)
  %17 = call i32 @SVN_ERR(i32 %16)
  %18 = load i32*, i32** %7, align 8
  %19 = getelementptr inbounds %struct.change_rev_prop_baton, %struct.change_rev_prop_baton* %13, i32 0, i32 4
  store i32* %18, i32** %19, align 8
  %20 = load i32, i32* %8, align 4
  %21 = getelementptr inbounds %struct.change_rev_prop_baton, %struct.change_rev_prop_baton* %13, i32 0, i32 3
  store i32 %20, i32* %21, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = getelementptr inbounds %struct.change_rev_prop_baton, %struct.change_rev_prop_baton* %13, i32 0, i32 0
  store i8* %22, i8** %23, align 8
  %24 = load i32**, i32*** %10, align 8
  %25 = getelementptr inbounds %struct.change_rev_prop_baton, %struct.change_rev_prop_baton* %13, i32 0, i32 2
  store i32** %24, i32*** %25, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = getelementptr inbounds %struct.change_rev_prop_baton, %struct.change_rev_prop_baton* %13, i32 0, i32 1
  store i32* %26, i32** %27, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* @change_rev_prop_body, align 4
  %30 = load i32*, i32** %12, align 8
  %31 = call i32* @svn_fs_fs__with_write_lock(i32* %28, i32 %29, %struct.change_rev_prop_baton* %13, i32* %30)
  ret i32* %31
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs__check_fs(i32*, i32) #1

declare dso_local i32* @svn_fs_fs__with_write_lock(i32*, i32, %struct.change_rev_prop_baton*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
