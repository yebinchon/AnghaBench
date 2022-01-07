; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_update_ancestry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_update_ancestry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }

@SVN_ERR_FS_NOT_MUTABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Unexpected immutable node at '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, i8*, i8*, i32, i32*, i32*)* @update_ancestry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @update_ancestry(i32* %0, i32* %1, i32* %2, i8* %3, i8* %4, i32 %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %19 = load i32*, i32** %12, align 8
  %20 = call i32 @svn_fs_base__id_txn_id(i32* %19)
  %21 = load i8*, i8** %13, align 8
  %22 = call i64 @strcmp(i32 %20, i8* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %8
  %25 = load i32, i32* @SVN_ERR_FS_NOT_MUTABLE, align 4
  %26 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %27 = load i8*, i8** %14, align 8
  %28 = call i32* @svn_error_createf(i32 %25, i32* null, i32 %26, i8* %27)
  store i32* %28, i32** %9, align 8
  br label %58

29:                                               ; preds = %8
  %30 = load i32*, i32** %10, align 8
  %31 = load i32*, i32** %12, align 8
  %32 = load i32*, i32** %16, align 8
  %33 = load i32*, i32** %17, align 8
  %34 = call i32 @svn_fs_bdb__get_node_revision(%struct.TYPE_4__** %18, i32* %30, i32* %31, i32* %32, i32* %33)
  %35 = call i32 @SVN_ERR(i32 %34)
  %36 = load i32*, i32** %11, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  store i32* %36, i32** %38, align 8
  %39 = load i32, i32* %15, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, -1
  br i1 %45, label %46, label %51

46:                                               ; preds = %29
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 8
  br label %51

51:                                               ; preds = %46, %29
  %52 = load i32*, i32** %10, align 8
  %53 = load i32*, i32** %12, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %55 = load i32*, i32** %16, align 8
  %56 = load i32*, i32** %17, align 8
  %57 = call i32* @svn_fs_bdb__put_node_revision(i32* %52, i32* %53, %struct.TYPE_4__* %54, i32* %55, i32* %56)
  store i32* %57, i32** %9, align 8
  br label %58

58:                                               ; preds = %51, %24
  %59 = load i32*, i32** %9, align 8
  ret i32* %59
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @svn_fs_base__id_txn_id(i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_bdb__get_node_revision(%struct.TYPE_4__**, i32*, i32*, i32*, i32*) #1

declare dso_local i32* @svn_fs_bdb__put_node_revision(i32*, i32*, %struct.TYPE_4__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
