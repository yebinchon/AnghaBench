; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_transaction.c_get_writable_proto_rev_body.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_transaction.c_get_writable_proto_rev_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8**, i32 }
%struct.TYPE_4__ = type { i64 }

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
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %8, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i8**, i8*** %17, align 8
  store i8** %18, i8*** %9, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i64, i64* @TRUE, align 8
  %24 = call %struct.TYPE_4__* @get_shared_txn(i32* %19, i32 %22, i64 %23)
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %10, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %3
  %30 = load i32, i32* @SVN_ERR_FS_REP_BEING_WRITTEN, align 4
  %31 = call i32 @_(i8* getelementptr inbounds ([141 x i8], [141 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @svn_fs_x__txn_name(i32 %34, i32* %35)
  %37 = call i32* @svn_error_createf(i32 %30, i32* null, i32 %31, i32 %36)
  store i32* %37, i32** %4, align 8
  br label %92

38:                                               ; preds = %3
  %39 = load i32*, i32** %5, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = call i8* @svn_fs_x__path_txn_proto_rev_lock(i32* %39, i32 %42, i32* %43)
  store i8* %44, i8** %13, align 8
  %45 = load i8*, i8** %13, align 8
  %46 = load i32, i32* @APR_WRITE, align 4
  %47 = load i32, i32* @APR_CREATE, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @APR_OS_DEFAULT, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @svn_io_file_open(i32** %11, i8* %45, i32 %48, i32 %49, i32* %50)
  %52 = call i32 @SVN_ERR(i32 %51)
  %53 = load i32*, i32** %11, align 8
  %54 = load i32, i32* @APR_FLOCK_EXCLUSIVE, align 4
  %55 = load i32, i32* @APR_FLOCK_NONBLOCK, align 4
  %56 = or i32 %54, %55
  %57 = call i64 @apr_file_lock(i32* %53, i32 %56)
  store i64 %57, i64* %12, align 8
  %58 = load i64, i64* %12, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %84

60:                                               ; preds = %38
  %61 = load i32*, i32** %11, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = call i32 @svn_io_file_close(i32* %61, i32* %62)
  %64 = call i32 @svn_error_clear(i32 %63)
  %65 = load i64, i64* %12, align 8
  %66 = call i64 @APR_STATUS_IS_EAGAIN(i64 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %60
  %69 = load i32, i32* @SVN_ERR_FS_REP_BEING_WRITTEN, align 4
  %70 = call i32 @_(i8* getelementptr inbounds ([144 x i8], [144 x i8]* @.str.1, i64 0, i64 0))
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32*, i32** %7, align 8
  %75 = call i32 @svn_fs_x__txn_name(i32 %73, i32* %74)
  %76 = call i32* @svn_error_createf(i32 %69, i32* null, i32 %70, i32 %75)
  store i32* %76, i32** %4, align 8
  br label %92

77:                                               ; preds = %60
  %78 = load i64, i64* %12, align 8
  %79 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %80 = load i8*, i8** %13, align 8
  %81 = load i32*, i32** %7, align 8
  %82 = call i32 @svn_dirent_local_style(i8* %80, i32* %81)
  %83 = call i32* @svn_error_wrap_apr(i64 %78, i32 %79, i32 %82)
  store i32* %83, i32** %4, align 8
  br label %92

84:                                               ; preds = %38
  %85 = load i32*, i32** %11, align 8
  %86 = bitcast i32* %85 to i8*
  %87 = load i8**, i8*** %9, align 8
  store i8* %86, i8** %87, align 8
  %88 = load i64, i64* @TRUE, align 8
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  %91 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %91, i32** %4, align 8
  br label %92

92:                                               ; preds = %84, %77, %68, %29
  %93 = load i32*, i32** %4, align 8
  ret i32* %93
}

declare dso_local %struct.TYPE_4__* @get_shared_txn(i32*, i32, i64) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_fs_x__txn_name(i32, i32*) #1

declare dso_local i8* @svn_fs_x__path_txn_proto_rev_lock(i32*, i32, i32*) #1

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
