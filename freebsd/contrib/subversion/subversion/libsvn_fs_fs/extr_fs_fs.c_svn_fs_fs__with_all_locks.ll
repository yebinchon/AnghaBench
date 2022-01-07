; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_fs_fs.c_svn_fs_fs__with_all_locks.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_fs_fs.c_svn_fs_fs__with_all_locks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@write_lock = common dso_local global i32 0, align 4
@SVN_FS_FS__MIN_PACK_LOCK_FORMAT = common dso_local global i64 0, align 8
@pack_lock = common dso_local global i32 0, align 4
@SVN_FS_FS__MIN_TXN_CURRENT_FORMAT = common dso_local global i64 0, align 8
@txn_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_fs__with_all_locks(%struct.TYPE_5__* %0, i32* (i8*, i32*)* %1, i8* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32* (i8*, i32*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* (i8*, i32*)* %1, i32* (i8*, i32*)** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %9, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = load i32, i32* @write_lock, align 4
  %16 = load i32* (i8*, i32*)*, i32* (i8*, i32*)** %6, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = call i32* @create_lock_baton(%struct.TYPE_5__* %14, i32 %15, i32* (i8*, i32*)* %16, i8* %17, i32* %18)
  store i32* %19, i32** %10, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SVN_FS_FS__MIN_PACK_LOCK_FORMAT, align 8
  %24 = icmp sge i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %4
  %26 = load i32, i32* @pack_lock, align 4
  %27 = load i32*, i32** %10, align 8
  %28 = call i32* @chain_lock_baton(i32 %26, i32* %27)
  store i32* %28, i32** %10, align 8
  br label %29

29:                                               ; preds = %25, %4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SVN_FS_FS__MIN_TXN_CURRENT_FORMAT, align 8
  %34 = icmp sge i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load i32, i32* @txn_lock, align 4
  %37 = load i32*, i32** %10, align 8
  %38 = call i32* @chain_lock_baton(i32 %36, i32* %37)
  store i32* %38, i32** %10, align 8
  br label %39

39:                                               ; preds = %35, %29
  %40 = load i32*, i32** %10, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @with_lock(i32* %40, i32* %41)
  %43 = call i32* @svn_error_trace(i32 %42)
  ret i32* %43
}

declare dso_local i32* @create_lock_baton(%struct.TYPE_5__*, i32, i32* (i8*, i32*)*, i8*, i32*) #1

declare dso_local i32* @chain_lock_baton(i32, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @with_lock(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
