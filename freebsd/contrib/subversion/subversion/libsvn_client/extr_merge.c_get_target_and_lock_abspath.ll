; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_get_target_and_lock_abspath.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_get_target_and_lock_abspath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@svn_node_dir = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i8**, i8*, %struct.TYPE_3__*, i32*)* @get_target_and_lock_abspath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_target_and_lock_abspath(i8** %0, i8** %1, i8* %2, %struct.TYPE_3__* %3, i32* %4) #0 {
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store i8** %0, i8*** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load i8**, i8*** %6, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = load i32*, i32** %10, align 8
  %15 = call i32 @svn_dirent_get_absolute(i8** %12, i8* %13, i32* %14)
  %16 = call i32 @SVN_ERR(i32 %15)
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i8**, i8*** %6, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = load i32, i32* @FALSE, align 4
  %23 = load i32, i32* @FALSE, align 4
  %24 = load i32*, i32** %10, align 8
  %25 = call i32 @svn_wc_read_kind2(i64* %11, i32 %19, i8* %21, i32 %22, i32 %23, i32* %24)
  %26 = call i32 @SVN_ERR(i32 %25)
  %27 = load i64, i64* %11, align 8
  %28 = load i64, i64* @svn_node_dir, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %5
  %31 = load i8**, i8*** %6, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = load i8**, i8*** %7, align 8
  store i8* %32, i8** %33, align 8
  br label %40

34:                                               ; preds = %5
  %35 = load i8**, i8*** %6, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = call i8* @svn_dirent_dirname(i8* %36, i32* %37)
  %39 = load i8**, i8*** %7, align 8
  store i8* %38, i8** %39, align 8
  br label %40

40:                                               ; preds = %34, %30
  %41 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %41
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_dirent_get_absolute(i8**, i8*, i32*) #1

declare dso_local i32 @svn_wc_read_kind2(i64*, i32, i8*, i32, i32, i32*) #1

declare dso_local i8* @svn_dirent_dirname(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
