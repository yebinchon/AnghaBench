; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_transaction.c_auto_truncate_proto_rev.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_transaction.c_auto_truncate_proto_rev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_ERR_FS_INDEX_INCONSISTENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"p2l proto index offset %s beyond protorev file size %s for TXN %s\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i64, i32*, i32*)* @auto_truncate_proto_rev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @auto_truncate_proto_rev(i32* %0, i32* %1, i64 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = call i64 @svn_fs_fs__use_log_addressing(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %63

18:                                               ; preds = %5
  %19 = load i32*, i32** %7, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = load i32*, i32** %11, align 8
  %22 = call i8* @svn_fs_fs__path_p2l_proto_index(i32* %19, i32* %20, i32* %21)
  store i8* %22, i8** %12, align 8
  %23 = load i8*, i8** %12, align 8
  %24 = load i32*, i32** %11, align 8
  %25 = call i32 @svn_fs_fs__p2l_proto_index_open(i32** %13, i8* %23, i32* %24)
  %26 = call i32 @SVN_ERR(i32 %25)
  %27 = load i32*, i32** %13, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = call i32 @svn_fs_fs__p2l_proto_index_next_offset(i64* %14, i32* %27, i32* %28)
  %30 = call i32 @SVN_ERR(i32 %29)
  %31 = load i32*, i32** %13, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = call i32 @svn_io_file_close(i32* %31, i32* %32)
  %34 = call i32 @SVN_ERR(i32 %33)
  %35 = load i64, i64* %14, align 8
  %36 = load i64, i64* %9, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %18
  %39 = load i32*, i32** %8, align 8
  %40 = load i64, i64* %14, align 8
  %41 = load i32*, i32** %11, align 8
  %42 = call i32 @svn_io_file_trunc(i32* %39, i64 %40, i32* %41)
  %43 = call i32 @SVN_ERR(i32 %42)
  br label %62

44:                                               ; preds = %18
  %45 = load i64, i64* %14, align 8
  %46 = load i64, i64* %9, align 8
  %47 = icmp sgt i64 %45, %46
  br i1 %47, label %48, label %61

48:                                               ; preds = %44
  %49 = load i32, i32* @SVN_ERR_FS_INDEX_INCONSISTENT, align 4
  %50 = call i32 @_(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  %51 = load i32*, i32** %11, align 8
  %52 = load i64, i64* %14, align 8
  %53 = call i32 @apr_off_t_toa(i32* %51, i64 %52)
  %54 = load i32*, i32** %11, align 8
  %55 = load i64, i64* %9, align 8
  %56 = call i32 @apr_off_t_toa(i32* %54, i64 %55)
  %57 = load i32*, i32** %10, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = call i32 @svn_fs_fs__id_txn_unparse(i32* %57, i32* %58)
  %60 = call i32* @svn_error_createf(i32 %49, i32* null, i32 %50, i32 %53, i32 %56, i32 %59)
  store i32* %60, i32** %6, align 8
  br label %65

61:                                               ; preds = %44
  br label %62

62:                                               ; preds = %61, %38
  br label %63

63:                                               ; preds = %62, %5
  %64 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %64, i32** %6, align 8
  br label %65

65:                                               ; preds = %63, %48
  %66 = load i32*, i32** %6, align 8
  ret i32* %66
}

declare dso_local i64 @svn_fs_fs__use_log_addressing(i32*) #1

declare dso_local i8* @svn_fs_fs__path_p2l_proto_index(i32*, i32*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_fs__p2l_proto_index_open(i32**, i8*, i32*) #1

declare dso_local i32 @svn_fs_fs__p2l_proto_index_next_offset(i64*, i32*, i32*) #1

declare dso_local i32 @svn_io_file_close(i32*, i32*) #1

declare dso_local i32 @svn_io_file_trunc(i32*, i64, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @apr_off_t_toa(i32*, i64) #1

declare dso_local i32 @svn_fs_fs__id_txn_unparse(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
