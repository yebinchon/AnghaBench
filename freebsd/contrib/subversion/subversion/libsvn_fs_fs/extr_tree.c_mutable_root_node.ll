; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_tree.c_mutable_root_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_tree.c_mutable_root_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, %struct.TYPE_4__*, i8*, i32*)* @mutable_root_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @mutable_root_node(i32** %0, %struct.TYPE_4__* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  store i32** %0, i32*** %6, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %4
  %15 = load i32**, i32*** %6, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %20 = call i32 @root_txn_id(%struct.TYPE_4__* %19)
  %21 = load i32*, i32** %9, align 8
  %22 = call i32* @svn_fs_fs__dag_clone_root(i32** %15, i32 %18, i32 %20, i32* %21)
  store i32* %22, i32** %5, align 8
  br label %32

23:                                               ; preds = %4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = call i32* @SVN_FS__ERR_NOT_MUTABLE(i32 %26, i32 %29, i8* %30)
  store i32* %31, i32** %5, align 8
  br label %32

32:                                               ; preds = %23, %14
  %33 = load i32*, i32** %5, align 8
  ret i32* %33
}

declare dso_local i32* @svn_fs_fs__dag_clone_root(i32**, i32, i32, i32*) #1

declare dso_local i32 @root_txn_id(%struct.TYPE_4__*) #1

declare dso_local i32* @SVN_FS__ERR_NOT_MUTABLE(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
