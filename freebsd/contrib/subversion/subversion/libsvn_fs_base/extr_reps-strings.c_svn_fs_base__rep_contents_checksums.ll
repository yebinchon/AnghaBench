; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_reps-strings.c_svn_fs_base__rep_contents_checksums.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_reps-strings.c_svn_fs_base__rep_contents_checksums.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_base__rep_contents_checksums(i32** %0, i32** %1, i32* %2, i8* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_3__*, align 8
  store i32** %0, i32*** %7, align 8
  store i32** %1, i32*** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = load i32*, i32** %11, align 8
  %17 = load i32*, i32** %12, align 8
  %18 = call i32 @svn_fs_bdb__read_rep(%struct.TYPE_3__** %13, i32* %14, i8* %15, i32* %16, i32* %17)
  %19 = call i32 @SVN_ERR(i32 %18)
  %20 = load i32**, i32*** %7, align 8
  %21 = icmp ne i32** %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %6
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %12, align 8
  %27 = call i32* @svn_checksum_dup(i32 %25, i32* %26)
  %28 = load i32**, i32*** %7, align 8
  store i32* %27, i32** %28, align 8
  br label %29

29:                                               ; preds = %22, %6
  %30 = load i32**, i32*** %8, align 8
  %31 = icmp ne i32** %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %12, align 8
  %37 = call i32* @svn_checksum_dup(i32 %35, i32* %36)
  %38 = load i32**, i32*** %8, align 8
  store i32* %37, i32** %38, align 8
  br label %39

39:                                               ; preds = %32, %29
  %40 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %40
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_bdb__read_rep(%struct.TYPE_3__**, i32*, i8*, i32*, i32*) #1

declare dso_local i32* @svn_checksum_dup(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
