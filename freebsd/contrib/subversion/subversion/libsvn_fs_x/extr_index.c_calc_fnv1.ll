; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_index.c_calc_fnv1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_index.c_calc_fnv1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i32, i32 }
%struct.TYPE_6__ = type { i64 }

@svn_checksum_fnv1a_32x4 = common dso_local global i32 0, align 4
@SVN_FS_X__ITEM_TYPE_UNUSED = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_5__*, i32*, i32*)* @calc_fnv1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @calc_fnv1(%struct.TYPE_5__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [4096 x i8], align 16
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i32, i32* @svn_checksum_fnv1a_32x4, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = call i32* @svn_checksum_ctx_create(i32 %13, i32* %14)
  store i32* %15, i32** %10, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %11, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SVN_FS_X__ITEM_TYPE_UNUSED, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  store i32 0, i32* %26, align 8
  %27 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %27, i32** %4, align 8
  br label %76

28:                                               ; preds = %3
  %29 = load i32*, i32** %6, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @svn_fs_x__rev_file_seek(i32* %29, i32* null, i32 %32)
  %34 = call i32 @SVN_ERR(i32 %33)
  br label %35

35:                                               ; preds = %46, %28
  %36 = load i32, i32* %11, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %62

38:                                               ; preds = %35
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = icmp ugt i64 %40, 4096
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %46

43:                                               ; preds = %38
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  br label %46

46:                                               ; preds = %43, %42
  %47 = phi i64 [ 4096, %42 ], [ %45, %43 ]
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %12, align 4
  %49 = load i32*, i32** %6, align 8
  %50 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @svn_fs_x__rev_file_read(i32* %49, i8* %50, i32 %51)
  %53 = call i32 @SVN_ERR(i32 %52)
  %54 = load i32*, i32** %10, align 8
  %55 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @svn_checksum_update(i32* %54, i8* %55, i32 %56)
  %58 = call i32 @SVN_ERR(i32 %57)
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %11, align 4
  %61 = sub nsw i32 %60, %59
  store i32 %61, i32* %11, align 4
  br label %35

62:                                               ; preds = %35
  %63 = load i32*, i32** %10, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = call i32 @svn_checksum_final(%struct.TYPE_6__** %9, i32* %63, i32* %64)
  %66 = call i32 @SVN_ERR(i32 %65)
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to i32*
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @ntohl(i32 %71)
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %75, i32** %4, align 8
  br label %76

76:                                               ; preds = %62, %24
  %77 = load i32*, i32** %4, align 8
  ret i32* %77
}

declare dso_local i32* @svn_checksum_ctx_create(i32, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_x__rev_file_seek(i32*, i32*, i32) #1

declare dso_local i32 @svn_fs_x__rev_file_read(i32*, i8*, i32) #1

declare dso_local i32 @svn_checksum_update(i32*, i8*, i32) #1

declare dso_local i32 @svn_checksum_final(%struct.TYPE_6__**, i32*, i32*) #1

declare dso_local i32 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
