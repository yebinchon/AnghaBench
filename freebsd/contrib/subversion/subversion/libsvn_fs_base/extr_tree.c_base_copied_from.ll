; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_base_copied_from.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_base_copied_from.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.copied_from_args = type { i8*, i64, i32, i32*, %struct.TYPE_3__* }

@txn_body_copied_from = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8**, %struct.TYPE_3__*, i8*, i32*)* @base_copied_from to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @base_copied_from(i32* %0, i8** %1, %struct.TYPE_3__* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.copied_from_args, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i8** %1, i8*** %7, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load i32*, i32** %10, align 8
  %14 = call i32* @svn_pool_create(i32* %13)
  store i32* %14, i32** %12, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %16 = getelementptr inbounds %struct.copied_from_args, %struct.copied_from_args* %11, i32 0, i32 4
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %16, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = getelementptr inbounds %struct.copied_from_args, %struct.copied_from_args* %11, i32 0, i32 0
  store i8* %17, i8** %18, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = getelementptr inbounds %struct.copied_from_args, %struct.copied_from_args* %11, i32 0, i32 3
  store i32* %19, i32** %20, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @txn_body_copied_from, align 4
  %25 = load i32, i32* @FALSE, align 4
  %26 = load i32*, i32** %12, align 8
  %27 = call i32 @svn_fs_base__retry_txn(i32 %23, i32 %24, %struct.copied_from_args* %11, i32 %25, i32* %26)
  %28 = call i32 @SVN_ERR(i32 %27)
  %29 = getelementptr inbounds %struct.copied_from_args, %struct.copied_from_args* %11, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i32*, i32** %6, align 8
  store i32 %30, i32* %31, align 4
  %32 = getelementptr inbounds %struct.copied_from_args, %struct.copied_from_args* %11, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %5
  %36 = load i32*, i32** %10, align 8
  %37 = getelementptr inbounds %struct.copied_from_args, %struct.copied_from_args* %11, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i8* @apr_pstrdup(i32* %36, i64 %38)
  br label %41

40:                                               ; preds = %5
  br label %41

41:                                               ; preds = %40, %35
  %42 = phi i8* [ %39, %35 ], [ null, %40 ]
  %43 = load i8**, i8*** %7, align 8
  store i8* %42, i8** %43, align 8
  %44 = load i32*, i32** %12, align 8
  %45 = call i32 @svn_pool_destroy(i32* %44)
  %46 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %46
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_base__retry_txn(i32, i32, %struct.copied_from_args*, i32, i32*) #1

declare dso_local i8* @apr_pstrdup(i32*, i64) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
