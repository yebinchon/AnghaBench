; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_transaction.c_write_final_changed_path_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_transaction.c_write_final_changed_path_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32, %struct.TYPE_4__, i32, i8* }
%struct.TYPE_4__ = type { i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@SVN_FS_FS__ITEM_TYPE_CHANGES = common dso_local global i32 0, align 4
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@SVN_FS_FS__ITEM_INDEX_CHANGES = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i32*, i32*, i32*, i32*, i32*)* @write_final_changed_path_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @write_final_changed_path_info(i8** %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_5__, align 8
  store i8** %0, i8*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = load i32*, i32** %12, align 8
  %19 = call i32 @svn_io_file_get_offset(i8** %13, i32* %17, i32* %18)
  %20 = call i32 @SVN_ERR(i32 %19)
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* @TRUE, align 4
  %23 = load i32*, i32** %12, align 8
  %24 = call i32* @svn_stream_from_aprfile2(i32* %21, i32 %22, i32* %23)
  store i32* %24, i32** %14, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = call i64 @svn_fs_fs__use_log_addressing(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %6
  %29 = load i32*, i32** %14, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = call i32* @fnv1a_wrap_stream(i32** %15, i32* %29, i32* %30)
  store i32* %31, i32** %14, align 8
  br label %33

32:                                               ; preds = %6
  store i32* null, i32** %15, align 8
  br label %33

33:                                               ; preds = %32, %28
  %34 = load i32*, i32** %14, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = load i32, i32* @TRUE, align 4
  %38 = load i32*, i32** %12, align 8
  %39 = call i32 @svn_fs_fs__write_changes(i32* %34, i32* %35, i32* %36, i32 %37, i32* %38)
  %40 = call i32 @SVN_ERR(i32 %39)
  %41 = load i8*, i8** %13, align 8
  %42 = load i8**, i8*** %7, align 8
  store i8* %41, i8** %42, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = call i64 @svn_fs_fs__use_log_addressing(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %87

46:                                               ; preds = %33
  %47 = load i8*, i8** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store i8* %47, i8** %48, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = load i32*, i32** %12, align 8
  %51 = call i32 @svn_io_file_get_offset(i8** %13, i32* %49, i32* %50)
  %52 = call i32 @SVN_ERR(i32 %51)
  %53 = load i8*, i8** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = ptrtoint i8* %53 to i64
  %57 = ptrtoint i8* %55 to i64
  %58 = sub i64 %56, %57
  %59 = inttoptr i64 %58 to i8*
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 4
  store i8* %59, i8** %60, align 8
  %61 = load i32, i32* @SVN_FS_FS__ITEM_TYPE_CHANGES, align 4
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 3
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @SVN_FS_FS__ITEM_INDEX_CHANGES, align 4
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %70 = load i32*, i32** %15, align 8
  %71 = load i32*, i32** %12, align 8
  %72 = call i32 @fnv1a_checksum_finalize(i32* %69, i32* %70, i32* %71)
  %73 = call i32 @SVN_ERR(i32 %72)
  %74 = load i32*, i32** %9, align 8
  %75 = load i32*, i32** %10, align 8
  %76 = load i32*, i32** %12, align 8
  %77 = call i32 @store_p2l_index_entry(i32* %74, i32* %75, %struct.TYPE_5__* %16, i32* %76)
  %78 = call i32 @SVN_ERR(i32 %77)
  %79 = load i32*, i32** %9, align 8
  %80 = load i32*, i32** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = load i32, i32* @SVN_FS_FS__ITEM_INDEX_CHANGES, align 4
  %84 = load i32*, i32** %12, align 8
  %85 = call i32 @store_l2p_index_entry(i32* %79, i32* %80, i8* %82, i32 %83, i32* %84)
  %86 = call i32 @SVN_ERR(i32 %85)
  br label %87

87:                                               ; preds = %46, %33
  %88 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %88
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_file_get_offset(i8**, i32*, i32*) #1

declare dso_local i32* @svn_stream_from_aprfile2(i32*, i32, i32*) #1

declare dso_local i64 @svn_fs_fs__use_log_addressing(i32*) #1

declare dso_local i32* @fnv1a_wrap_stream(i32**, i32*, i32*) #1

declare dso_local i32 @svn_fs_fs__write_changes(i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @fnv1a_checksum_finalize(i32*, i32*, i32*) #1

declare dso_local i32 @store_p2l_index_entry(i32*, i32*, %struct.TYPE_5__*, i32*) #1

declare dso_local i32 @store_l2p_index_entry(i32*, i32*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
