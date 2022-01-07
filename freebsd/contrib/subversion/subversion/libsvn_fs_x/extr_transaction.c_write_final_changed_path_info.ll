; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_transaction.c_write_final_changed_path_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_transaction.c_write_final_changed_path_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, %struct.TYPE_5__*, i32, i8*, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@SVN_FS_X__ITEM_INDEX_CHANGES = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVN_FS_X__ITEM_TYPE_CHANGES = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i32*, i32*, i32, i32*, i32, i32*)* @write_final_changed_path_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @write_final_changed_path_info(i8** %0, i32* %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6) #0 {
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_4__, align 8
  %18 = alloca %struct.TYPE_5__, align 4
  store i8** %0, i8*** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %22 = load i32, i32* @SVN_FS_X__ITEM_INDEX_CHANGES, align 4
  store i32 %22, i32* %21, align 4
  %23 = load i32*, i32** %9, align 8
  %24 = load i32*, i32** %14, align 8
  %25 = call i32 @svn_io_file_get_offset(i8** %15, i32* %23, i32* %24)
  %26 = call i32 @SVN_ERR(i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 5
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* @TRUE, align 4
  %30 = load i32*, i32** %14, align 8
  %31 = call i32 @svn_stream_from_aprfile2(i32* %28, i32 %29, i32* %30)
  %32 = load i32*, i32** %14, align 8
  %33 = call i32* @svn_checksum__wrap_write_stream_fnv1a_32x4(i32* %27, i32 %31, i32* %32)
  store i32* %33, i32** %16, align 8
  %34 = load i32*, i32** %16, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = load i32*, i32** %12, align 8
  %37 = load i32, i32* @TRUE, align 4
  %38 = load i32*, i32** %14, align 8
  %39 = call i32 @svn_fs_x__write_changes(i32* %34, i32* %35, i32* %36, i32 %37, i32* %38)
  %40 = call i32 @SVN_ERR(i32 %39)
  %41 = load i32*, i32** %16, align 8
  %42 = call i32 @svn_stream_close(i32* %41)
  %43 = call i32 @SVN_ERR(i32 %42)
  %44 = load i8*, i8** %15, align 8
  %45 = load i8**, i8*** %8, align 8
  store i8* %44, i8** %45, align 8
  %46 = load i8*, i8** %15, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i8* %46, i8** %47, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = load i32*, i32** %14, align 8
  %50 = call i32 @svn_io_file_get_offset(i8** %15, i32* %48, i32* %49)
  %51 = call i32 @SVN_ERR(i32 %50)
  %52 = load i8*, i8** %15, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = ptrtoint i8* %52 to i64
  %56 = ptrtoint i8* %54 to i64
  %57 = sub i64 %55, %56
  %58 = inttoptr i64 %57 to i8*
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 4
  store i8* %58, i8** %59, align 8
  %60 = load i32, i32* @SVN_FS_X__ITEM_TYPE_CHANGES, align 4
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 3
  store i32 %60, i32* %61, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  store i32 1, i32* %62, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %63, align 8
  %64 = load i32*, i32** %10, align 8
  %65 = load i32, i32* %11, align 4
  %66 = load i32*, i32** %14, align 8
  %67 = call i32 @store_p2l_index_entry(i32* %64, i32 %65, %struct.TYPE_4__* %17, i32* %66)
  %68 = call i32 @SVN_ERR(i32 %67)
  %69 = load i32*, i32** %10, align 8
  %70 = load i32, i32* %11, align 4
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = load i32, i32* @SVN_FS_X__ITEM_INDEX_CHANGES, align 4
  %74 = load i32*, i32** %14, align 8
  %75 = call i32 @store_l2p_index_entry(i32* %69, i32 %70, i8* %72, i32 %73, i32* %74)
  %76 = call i32 @SVN_ERR(i32 %75)
  %77 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %77
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_file_get_offset(i8**, i32*, i32*) #1

declare dso_local i32* @svn_checksum__wrap_write_stream_fnv1a_32x4(i32*, i32, i32*) #1

declare dso_local i32 @svn_stream_from_aprfile2(i32*, i32, i32*) #1

declare dso_local i32 @svn_fs_x__write_changes(i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @svn_stream_close(i32*) #1

declare dso_local i32 @store_p2l_index_entry(i32*, i32, %struct.TYPE_4__*, i32*) #1

declare dso_local i32 @store_l2p_index_entry(i32*, i32, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
