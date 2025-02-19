; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_tree.c_fs_apply_textdelta.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_tree.c_fs_apply_textdelta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i32*, i32, i32* }

@window_consumer = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8**, i32*, i8*, i32*, i32*, i32*)* @fs_apply_textdelta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @fs_apply_textdelta(i32* %0, i8** %1, i32* %2, i8* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i32* %2, i32** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %16 = load i32*, i32** %14, align 8
  %17 = call %struct.TYPE_4__* @apr_pcalloc(i32* %16, i32 40)
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %15, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 4
  store i32* %18, i32** %20, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = load i32*, i32** %14, align 8
  %23 = call i32 @svn_fs__canonicalize_abspath(i8* %21, i32* %22)
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 8
  %26 = load i32*, i32** %14, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  store i32* %26, i32** %28, align 8
  %29 = load i32*, i32** %12, align 8
  %30 = load i32*, i32** %14, align 8
  %31 = call i8* @svn_checksum_dup(i32* %29, i32* %30)
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load i32*, i32** %13, align 8
  %35 = load i32*, i32** %14, align 8
  %36 = call i8* @svn_checksum_dup(i32* %34, i32* %35)
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %40 = load i32*, i32** %14, align 8
  %41 = call i32 @apply_textdelta(%struct.TYPE_4__* %39, i32* %40)
  %42 = call i32 @SVN_ERR(i32 %41)
  %43 = load i32, i32* @window_consumer, align 4
  %44 = load i32*, i32** %8, align 8
  store i32 %43, i32* %44, align 4
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %46 = bitcast %struct.TYPE_4__* %45 to i8*
  %47 = load i8**, i8*** %9, align 8
  store i8* %46, i8** %47, align 8
  %48 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %48
}

declare dso_local %struct.TYPE_4__* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @svn_fs__canonicalize_abspath(i8*, i32*) #1

declare dso_local i8* @svn_checksum_dup(i32*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @apply_textdelta(%struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
