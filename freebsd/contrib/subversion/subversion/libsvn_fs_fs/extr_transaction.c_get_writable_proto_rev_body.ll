; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_transaction.c_get_writable_proto_rev_body.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_transaction.c_get_writable_proto_rev_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.get_writable_proto_rev_baton = type { i8**, i32 }
%struct.TYPE_3__ = type { i64 }

@TRUE = common dso_local global i64 0, align 8
@SVN_ERR_FS_REP_BEING_WRITTEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [141 x i8] c"Cannot write to the prototype revision file of transaction '%s' because a previous representation is currently being written by this process\00", align 1
@APR_WRITE = common dso_local global i32 0, align 4
@APR_CREATE = common dso_local global i32 0, align 4
@APR_OS_DEFAULT = common dso_local global i32 0, align 4
@APR_FLOCK_EXCLUSIVE = common dso_local global i32 0, align 4
@APR_FLOCK_NONBLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [144 x i8] c"Cannot write to the prototype revision file of transaction '%s' because a previous representation is currently being written by another process\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Can't get exclusive lock on file '%s'\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i32*)* @get_writable_proto_rev_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_writable_proto_rev_body(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.get_writable_proto_rev_baton*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.get_writable_proto_rev_baton*
  store %struct.get_writable_proto_rev_baton* %15, %struct.get_writable_proto_rev_baton** %8, align 8
  %16 = load %struct.get_writable_proto_rev_baton*, %struct.get_writable_proto_rev_baton** %8, align 8
  %17 = getelementptr inbounds %struct.get_writable_proto_rev_baton, %struct.get_writable_proto_rev_baton* %16, i32 0, i32 0
  %18 = load i8**, i8*** %17, align 8
  store i8** %18, i8*** %9, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = load %struct.get_writable_proto_rev_baton*, %struct.get_writable_proto_rev_baton** %8, align 8
  %21 = getelementptr inbounds %struct.get_writable_proto_rev_baton, %struct.get_writable_proto_rev_baton* %20, i32 0, i32 1
  %22 = load i64, i64* @TRUE, align 8
  %23 = call %struct.TYPE_3__* @get_shared_txn(i32* %19, i32* %21, i64 %22)
  store %struct.TYPE_3__* %23, %struct.TYPE_3__** %10, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %3
  %29 = load i32, i32* @SVN_ERR_FS_REP_BEING_WRITTEN, align 4
  %30 = call i32 @_(i8* getelementptr inbounds ([141 x i8], [141 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.get_writable_proto_rev_baton*, %struct.get_writable_proto_rev_baton** %8, align 8
  %32 = getelementptr inbounds %struct.get_writable_proto_rev_baton, %struct.get_writable_proto_rev_baton* %31, i32 0, i32 1
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @svn_fs_fs__id_txn_unparse(i32* %32, i32* %33)
  %35 = call i32* @svn_error_createf(i32 %29, i32* null, i32 %30, i32 %34)
  store i32* %35, i32** %4, align 8
  br label %88

36:                                               ; preds = %3
  %37 = load i32*, i32** %5, align 8
  %38 = load %struct.get_writable_proto_rev_baton*, %struct.get_writable_proto_rev_baton** %8, align 8
  %39 = getelementptr inbounds %struct.get_writable_proto_rev_baton, %struct.get_writable_proto_rev_baton* %38, i32 0, i32 1
  %40 = load i32*, i32** %7, align 8
  %41 = call i8* @svn_fs_fs__path_txn_proto_rev_lock(i32* %37, i32* %39, i32* %40)
  store i8* %41, i8** %13, align 8
  %42 = load i8*, i8** %13, align 8
  %43 = load i32, i32* @APR_WRITE, align 4
  %44 = load i32, i32* @APR_CREATE, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @APR_OS_DEFAULT, align 4
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @svn_io_file_open(i32** %11, i8* %42, i32 %45, i32 %46, i32* %47)
  %49 = call i32 @SVN_ERR(i32 %48)
  %50 = load i32*, i32** %11, align 8
  %51 = load i32, i32* @APR_FLOCK_EXCLUSIVE, align 4
  %52 = load i32, i32* @APR_FLOCK_NONBLOCK, align 4
  %53 = or i32 %51, %52
  %54 = call i64 @apr_file_lock(i32* %50, i32 %53)
  store i64 %54, i64* %12, align 8
  %55 = load i64, i64* %12, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %80

57:                                               ; preds = %36
  %58 = load i32*, i32** %11, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @svn_io_file_close(i32* %58, i32* %59)
  %61 = call i32 @svn_error_clear(i32 %60)
  %62 = load i64, i64* %12, align 8
  %63 = call i64 @APR_STATUS_IS_EAGAIN(i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %57
  %66 = load i32, i32* @SVN_ERR_FS_REP_BEING_WRITTEN, align 4
  %67 = call i32 @_(i8* getelementptr inbounds ([144 x i8], [144 x i8]* @.str.1, i64 0, i64 0))
  %68 = load %struct.get_writable_proto_rev_baton*, %struct.get_writable_proto_rev_baton** %8, align 8
  %69 = getelementptr inbounds %struct.get_writable_proto_rev_baton, %struct.get_writable_proto_rev_baton* %68, i32 0, i32 1
  %70 = load i32*, i32** %7, align 8
  %71 = call i32 @svn_fs_fs__id_txn_unparse(i32* %69, i32* %70)
  %72 = call i32* @svn_error_createf(i32 %66, i32* null, i32 %67, i32 %71)
  store i32* %72, i32** %4, align 8
  br label %88

73:                                               ; preds = %57
  %74 = load i64, i64* %12, align 8
  %75 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %76 = load i8*, i8** %13, align 8
  %77 = load i32*, i32** %7, align 8
  %78 = call i32 @svn_dirent_local_style(i8* %76, i32* %77)
  %79 = call i32* @svn_error_wrap_apr(i64 %74, i32 %75, i32 %78)
  store i32* %79, i32** %4, align 8
  br label %88

80:                                               ; preds = %36
  %81 = load i32*, i32** %11, align 8
  %82 = bitcast i32* %81 to i8*
  %83 = load i8**, i8*** %9, align 8
  store i8* %82, i8** %83, align 8
  %84 = load i64, i64* @TRUE, align 8
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  %87 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %87, i32** %4, align 8
  br label %88

88:                                               ; preds = %80, %73, %65, %28
  %89 = load i32*, i32** %4, align 8
  ret i32* %89
}

declare dso_local %struct.TYPE_3__* @get_shared_txn(i32*, i32*, i64) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_fs_fs__id_txn_unparse(i32*, i32*) #1

declare dso_local i8* @svn_fs_fs__path_txn_proto_rev_lock(i32*, i32*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_file_open(i32**, i8*, i32, i32, i32*) #1

declare dso_local i64 @apr_file_lock(i32*, i32) #1

declare dso_local i32 @svn_error_clear(i32) #1

declare dso_local i32 @svn_io_file_close(i32*, i32*) #1

declare dso_local i64 @APR_STATUS_IS_EAGAIN(i64) #1

declare dso_local i32* @svn_error_wrap_apr(i64, i32, i32) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
