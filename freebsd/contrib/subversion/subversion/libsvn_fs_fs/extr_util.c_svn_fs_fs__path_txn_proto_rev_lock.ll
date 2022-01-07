; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_util.c_svn_fs_fs__path_txn_proto_rev_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_util.c_svn_fs_fs__path_txn_proto_rev_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@SVN_FS_FS__MIN_PROTOREVS_DIR_FORMAT = common dso_local global i64 0, align 8
@PATH_EXT_REV_LOCK = common dso_local global i32 0, align 4
@PATH_REV_LOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @svn_fs_fs__path_txn_proto_rev_lock(%struct.TYPE_6__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %8, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SVN_FS_FS__MIN_PROTOREVS_DIR_FORMAT, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %3
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @svn_fs_fs__path_txn_proto_revs(%struct.TYPE_6__* %18, i32* %19)
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* @PATH_EXT_REV_LOCK, align 4
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @combine_txn_id_string(i32* %21, i32 %22, i32* %23)
  %25 = load i32*, i32** %7, align 8
  %26 = call i8* @svn_dirent_join(i32 %20, i32 %24, i32* %25)
  store i8* %26, i8** %4, align 8
  br label %35

27:                                               ; preds = %3
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @svn_fs_fs__path_txn_dir(%struct.TYPE_6__* %28, i32* %29, i32* %30)
  %32 = load i32, i32* @PATH_REV_LOCK, align 4
  %33 = load i32*, i32** %7, align 8
  %34 = call i8* @svn_dirent_join(i32 %31, i32 %32, i32* %33)
  store i8* %34, i8** %4, align 8
  br label %35

35:                                               ; preds = %27, %17
  %36 = load i8*, i8** %4, align 8
  ret i8* %36
}

declare dso_local i8* @svn_dirent_join(i32, i32, i32*) #1

declare dso_local i32 @svn_fs_fs__path_txn_proto_revs(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @combine_txn_id_string(i32*, i32, i32*) #1

declare dso_local i32 @svn_fs_fs__path_txn_dir(%struct.TYPE_6__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
