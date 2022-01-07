; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/util/extr_fs_skels.c_prepend_checksum.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/util/extr_fs_skels.c_prepend_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@APR_MD5_DIGESTSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"md5\00", align 1
@APR_SHA1_DIGESTSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"sha1\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"checksum\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_3__*, i32*)* @prepend_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @prepend_checksum(i32* %0, %struct.TYPE_3__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %7, align 8
  %10 = call i32* @svn_skel__make_empty_list(i32* %9)
  store i32* %10, i32** %8, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %40 [
    i32 129, label %14
    i32 128, label %27
  ]

14:                                               ; preds = %3
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @APR_MD5_DIGESTSIZE, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = call i32* @svn_skel__mem_atom(i32 %17, i32 %18, i32* %19)
  %21 = load i32*, i32** %8, align 8
  %22 = call i32 @svn_skel__prepend(i32* %20, i32* %21)
  %23 = load i32*, i32** %7, align 8
  %24 = call i32* @svn_skel__str_atom(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %23)
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @svn_skel__prepend(i32* %24, i32* %25)
  br label %42

27:                                               ; preds = %3
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @APR_SHA1_DIGESTSIZE, align 4
  %32 = load i32*, i32** %7, align 8
  %33 = call i32* @svn_skel__mem_atom(i32 %30, i32 %31, i32* %32)
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @svn_skel__prepend(i32* %33, i32* %34)
  %36 = load i32*, i32** %7, align 8
  %37 = call i32* @svn_skel__str_atom(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %36)
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 @svn_skel__prepend(i32* %37, i32* %38)
  br label %42

40:                                               ; preds = %3
  %41 = call i32* @skel_err(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i32* %41, i32** %4, align 8
  br label %47

42:                                               ; preds = %27, %14
  %43 = load i32*, i32** %8, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @svn_skel__prepend(i32* %43, i32* %44)
  %46 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %46, i32** %4, align 8
  br label %47

47:                                               ; preds = %42, %40
  %48 = load i32*, i32** %4, align 8
  ret i32* %48
}

declare dso_local i32* @svn_skel__make_empty_list(i32*) #1

declare dso_local i32 @svn_skel__prepend(i32*, i32*) #1

declare dso_local i32* @svn_skel__mem_atom(i32, i32, i32*) #1

declare dso_local i32* @svn_skel__str_atom(i8*, i32*) #1

declare dso_local i32* @skel_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
