; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_revs-txns.c_get_rev_txn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_revs-txns.c_get_rev_txn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i8* }

@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_6__**, i8**, i32*, i32, i32*, i32*)* @get_rev_txn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_rev_txn(%struct.TYPE_6__** %0, i8** %1, i32* %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = load i32, i32* %11, align 4
  %18 = load i32*, i32** %12, align 8
  %19 = load i32*, i32** %13, align 8
  %20 = call i32 @svn_fs_bdb__get_rev(%struct.TYPE_7__** %14, i32* %16, i32 %17, i32* %18, i32* %19)
  %21 = call i32 @SVN_ERR(i32 %20)
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %6
  %27 = load i32*, i32** %10, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call i32* @svn_fs_base__err_corrupt_fs_revision(i32* %27, i32 %28)
  store i32* %29, i32** %7, align 8
  br label %67

30:                                               ; preds = %6
  %31 = load i32*, i32** %10, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load i32, i32* @FALSE, align 4
  %36 = load i32*, i32** %12, align 8
  %37 = load i32*, i32** %13, align 8
  %38 = call i32 @get_txn(%struct.TYPE_6__** %15, i32* %31, i8* %34, i32 %35, i32* %36, i32* %37)
  %39 = call i32 @SVN_ERR(i32 %38)
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %30
  %46 = load i32*, i32** %10, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32* @svn_fs_base__err_corrupt_txn(i32* %46, i8* %49)
  store i32* %50, i32** %7, align 8
  br label %67

51:                                               ; preds = %30
  %52 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %53 = icmp ne %struct.TYPE_6__** %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %56 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  store %struct.TYPE_6__* %55, %struct.TYPE_6__** %56, align 8
  br label %57

57:                                               ; preds = %54, %51
  %58 = load i8**, i8*** %9, align 8
  %59 = icmp ne i8** %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load i8**, i8*** %9, align 8
  store i8* %63, i8** %64, align 8
  br label %65

65:                                               ; preds = %60, %57
  %66 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %66, i32** %7, align 8
  br label %67

67:                                               ; preds = %65, %45, %26
  %68 = load i32*, i32** %7, align 8
  ret i32* %68
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_bdb__get_rev(%struct.TYPE_7__**, i32*, i32, i32*, i32*) #1

declare dso_local i32* @svn_fs_base__err_corrupt_fs_revision(i32*, i32) #1

declare dso_local i32 @get_txn(%struct.TYPE_6__**, i32*, i8*, i32, i32*, i32*) #1

declare dso_local i32* @svn_fs_base__err_corrupt_txn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
