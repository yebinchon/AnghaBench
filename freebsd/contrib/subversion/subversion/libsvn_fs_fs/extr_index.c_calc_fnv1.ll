; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_index.c_calc_fnv1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_index.c_calc_fnv1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i64 }

@svn_checksum_fnv1a_32x4 = common dso_local global i32 0, align 4
@SVN_FS_FS__ITEM_TYPE_UNUSED = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@APR_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_8__*, %struct.TYPE_7__*, i32*)* @calc_fnv1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @calc_fnv1(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [4096 x i8], align 16
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i32, i32* @svn_checksum_fnv1a_32x4, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = call i32* @svn_checksum_ctx_create(i32 %13, i32* %14)
  store i32* %15, i32** %10, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %11, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SVN_FS_FS__ITEM_TYPE_UNUSED, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 2
  store i32 0, i32* %26, align 8
  %27 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %27, i32** %4, align 8
  br label %82

28:                                               ; preds = %3
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @APR_SET, align 4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 3
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @svn_io_file_seek(i32 %31, i32 %32, i32* %34, i32* %35)
  %37 = call i32 @SVN_ERR(i32 %36)
  br label %38

38:                                               ; preds = %49, %28
  %39 = load i32, i32* %11, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %68

41:                                               ; preds = %38
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = icmp ugt i64 %43, 4096
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %49

46:                                               ; preds = %41
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  br label %49

49:                                               ; preds = %46, %45
  %50 = phi i64 [ 4096, %45 ], [ %48, %46 ]
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %12, align 4
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %56 = load i32, i32* %12, align 4
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 @svn_io_file_read_full2(i32 %54, i8* %55, i32 %56, i32* null, i32* null, i32* %57)
  %59 = call i32 @SVN_ERR(i32 %58)
  %60 = load i32*, i32** %10, align 8
  %61 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @svn_checksum_update(i32* %60, i8* %61, i32 %62)
  %64 = call i32 @SVN_ERR(i32 %63)
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %11, align 4
  %67 = sub nsw i32 %66, %65
  store i32 %67, i32* %11, align 4
  br label %38

68:                                               ; preds = %38
  %69 = load i32*, i32** %10, align 8
  %70 = load i32*, i32** %7, align 8
  %71 = call i32 @svn_checksum_final(%struct.TYPE_9__** %9, i32* %69, i32* %70)
  %72 = call i32 @SVN_ERR(i32 %71)
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to i32*
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @ntohl(i32 %77)
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  %81 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %81, i32** %4, align 8
  br label %82

82:                                               ; preds = %68, %24
  %83 = load i32*, i32** %4, align 8
  ret i32* %83
}

declare dso_local i32* @svn_checksum_ctx_create(i32, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_file_seek(i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_io_file_read_full2(i32, i8*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @svn_checksum_update(i32*, i8*, i32) #1

declare dso_local i32 @svn_checksum_final(%struct.TYPE_9__**, i32*, i32*) #1

declare dso_local i32 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
