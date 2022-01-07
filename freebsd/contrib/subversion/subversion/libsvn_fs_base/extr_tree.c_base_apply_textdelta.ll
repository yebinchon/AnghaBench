; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_base_apply_textdelta.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_base_apply_textdelta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i8*, i8*, i8*, i32*, %struct.TYPE_7__* }

@txn_body_apply_textdelta = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@window_consumer = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8**, %struct.TYPE_7__*, i8*, i32*, i32*, i32*)* @base_apply_textdelta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @base_apply_textdelta(i32* %0, i8** %1, %struct.TYPE_7__* %2, i8* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %8, align 8
  store i8** %1, i8*** %9, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %16 = load i32*, i32** %14, align 8
  %17 = call %struct.TYPE_6__* @apr_pcalloc(i32* %16, i32 40)
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %15, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 4
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %20, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  %24 = load i32*, i32** %14, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 3
  store i32* %24, i32** %26, align 8
  %27 = load i32*, i32** %12, align 8
  %28 = load i32*, i32** %14, align 8
  %29 = call i8* @svn_checksum_dup(i32* %27, i32* %28)
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  store i8* %29, i8** %31, align 8
  %32 = load i32*, i32** %13, align 8
  %33 = load i32*, i32** %14, align 8
  %34 = call i8* @svn_checksum_dup(i32* %32, i32* %33)
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @txn_body_apply_textdelta, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %42 = load i32, i32* @FALSE, align 4
  %43 = load i32*, i32** %14, align 8
  %44 = call i32 @svn_fs_base__retry_txn(i32 %39, i32 %40, %struct.TYPE_6__* %41, i32 %42, i32* %43)
  %45 = call i32 @SVN_ERR(i32 %44)
  %46 = load i32, i32* @window_consumer, align 4
  %47 = load i32*, i32** %8, align 8
  store i32 %46, i32* %47, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %49 = bitcast %struct.TYPE_6__* %48 to i8*
  %50 = load i8**, i8*** %9, align 8
  store i8* %49, i8** %50, align 8
  %51 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %51
}

declare dso_local %struct.TYPE_6__* @apr_pcalloc(i32*, i32) #1

declare dso_local i8* @svn_checksum_dup(i32*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_base__retry_txn(i32, i32, %struct.TYPE_6__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
