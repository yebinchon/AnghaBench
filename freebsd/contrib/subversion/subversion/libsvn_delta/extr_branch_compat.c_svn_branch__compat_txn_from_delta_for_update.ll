; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_branch_compat.c_svn_branch__compat_txn_from_delta_for_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_branch_compat.c_svn_branch__compat_txn_from_delta_for_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@do_unlock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_branch__compat_txn_from_delta_for_update(%struct.TYPE_6__** %0, i32* %1, i8* %2, i32* %3, i8* %4, i8* %5, i32 %6, i8* %7, i32 %8, i8* %9, i32* %10, i32* %11) #0 {
  %13 = alloca %struct.TYPE_6__**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca %struct.TYPE_6__*, align 8
  %26 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %13, align 8
  store i32* %1, i32** %14, align 8
  store i8* %2, i8** %15, align 8
  store i32* %3, i32** %16, align 8
  store i8* %4, i8** %17, align 8
  store i8* %5, i8** %18, align 8
  store i32 %6, i32* %19, align 4
  store i8* %7, i8** %20, align 8
  store i32 %8, i32* %21, align 4
  store i8* %9, i8** %22, align 8
  store i32* %10, i32** %23, align 8
  store i32* %11, i32** %24, align 8
  %27 = load i32*, i32** %23, align 8
  %28 = call %struct.TYPE_6__* @apr_pcalloc(i32* %27, i32 20)
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %25, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 4
  %31 = load i32*, i32** %14, align 8
  %32 = load i8*, i8** %15, align 8
  %33 = load i32*, i32** %16, align 8
  %34 = load i8*, i8** %17, align 8
  %35 = load i32, i32* %19, align 4
  %36 = load i8*, i8** %20, align 8
  %37 = load i32, i32* %21, align 4
  %38 = load i8*, i8** %22, align 8
  %39 = load i32*, i32** %23, align 8
  %40 = load i32*, i32** %24, align 8
  %41 = call i32 @svn_branch__compat_txn_from_delta_for_commit(i32* %30, %struct.TYPE_7__** %26, i32* %31, i8* %32, i32* %33, i8* %34, i32 %35, i8* %36, i32 %37, i8* %38, i32* %39, i32* %40)
  %42 = call i32 @SVN_ERR(i32 %41)
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %54 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %13, align 8
  store %struct.TYPE_6__* %53, %struct.TYPE_6__** %54, align 8
  %55 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %55
}

declare dso_local %struct.TYPE_6__* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_branch__compat_txn_from_delta_for_commit(i32*, %struct.TYPE_7__**, i32*, i8*, i32*, i8*, i32, i8*, i32, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
