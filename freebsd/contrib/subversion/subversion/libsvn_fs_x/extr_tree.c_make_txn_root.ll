; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_tree.c_make_txn_root.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_tree.c_make_txn_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__*, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_6__**, i32*, i32, i32, i32, i32*)* @make_txn_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @make_txn_root(%struct.TYPE_6__** %0, i32* %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_6__**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load i32*, i32** %12, align 8
  %17 = call %struct.TYPE_6__* @make_root(i32* %15, i32* %16)
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %13, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.TYPE_7__* @apr_pcalloc(i32 %20, i32 4)
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** %14, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @TRUE, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @svn_fs_x__txn_name(i32 %28, i32 %31)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  store %struct.TYPE_7__* %41, %struct.TYPE_7__** %43, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %45 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  store %struct.TYPE_6__* %44, %struct.TYPE_6__** %45, align 8
  %46 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %46
}

declare dso_local %struct.TYPE_6__* @make_root(i32*, i32*) #1

declare dso_local %struct.TYPE_7__* @apr_pcalloc(i32, i32) #1

declare dso_local i32 @svn_fs_x__txn_name(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
