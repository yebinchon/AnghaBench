; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_transaction.c_auto_truncate_proto_rev.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_transaction.c_auto_truncate_proto_rev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_ERR_FS_INDEX_INCONSISTENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"p2l proto index offset %s beyond protorev file size %s for TXN %s\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i64, i32, i32*)* @auto_truncate_proto_rev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @auto_truncate_proto_rev(i32* %0, i32* %1, i64 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = load i32, i32* %10, align 4
  %17 = load i32*, i32** %11, align 8
  %18 = call i8* @svn_fs_x__path_p2l_proto_index(i32* %15, i32 %16, i32* %17)
  store i8* %18, i8** %12, align 8
  %19 = load i8*, i8** %12, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = call i32 @svn_fs_x__p2l_proto_index_open(i32** %13, i8* %19, i32* %20)
  %22 = call i32 @SVN_ERR(i32 %21)
  %23 = load i32*, i32** %13, align 8
  %24 = load i32*, i32** %11, align 8
  %25 = call i32 @svn_fs_x__p2l_proto_index_next_offset(i64* %14, i32* %23, i32* %24)
  %26 = call i32 @SVN_ERR(i32 %25)
  %27 = load i32*, i32** %13, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = call i32 @svn_io_file_close(i32* %27, i32* %28)
  %30 = call i32 @SVN_ERR(i32 %29)
  %31 = load i64, i64* %14, align 8
  %32 = load i64, i64* %9, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %5
  %35 = load i32*, i32** %8, align 8
  %36 = load i64, i64* %14, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = call i32 @svn_io_file_trunc(i32* %35, i64 %36, i32* %37)
  %39 = call i32 @SVN_ERR(i32 %38)
  br label %58

40:                                               ; preds = %5
  %41 = load i64, i64* %14, align 8
  %42 = load i64, i64* %9, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %40
  %45 = load i32, i32* @SVN_ERR_FS_INDEX_INCONSISTENT, align 4
  %46 = call i32 @_(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  %47 = load i32*, i32** %11, align 8
  %48 = load i64, i64* %14, align 8
  %49 = call i32 @apr_off_t_toa(i32* %47, i64 %48)
  %50 = load i32*, i32** %11, align 8
  %51 = load i64, i64* %9, align 8
  %52 = call i32 @apr_off_t_toa(i32* %50, i64 %51)
  %53 = load i32, i32* %10, align 4
  %54 = load i32*, i32** %11, align 8
  %55 = call i32 @svn_fs_x__txn_name(i32 %53, i32* %54)
  %56 = call i32* @svn_error_createf(i32 %45, i32* null, i32 %46, i32 %49, i32 %52, i32 %55)
  store i32* %56, i32** %6, align 8
  br label %60

57:                                               ; preds = %40
  br label %58

58:                                               ; preds = %57, %34
  %59 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %59, i32** %6, align 8
  br label %60

60:                                               ; preds = %58, %44
  %61 = load i32*, i32** %6, align 8
  ret i32* %61
}

declare dso_local i8* @svn_fs_x__path_p2l_proto_index(i32*, i32, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_x__p2l_proto_index_open(i32**, i8*, i32*) #1

declare dso_local i32 @svn_fs_x__p2l_proto_index_next_offset(i64*, i32*, i32*) #1

declare dso_local i32 @svn_io_file_close(i32*, i32*) #1

declare dso_local i32 @svn_io_file_trunc(i32*, i64, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @apr_off_t_toa(i32*, i64) #1

declare dso_local i32 @svn_fs_x__txn_name(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
