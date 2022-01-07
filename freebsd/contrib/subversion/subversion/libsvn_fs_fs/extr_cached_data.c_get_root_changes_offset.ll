; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_cached_data.c_get_root_changes_offset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_cached_data.c_get_root_changes_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@APR_SET = common dso_local global i32 0, align 4
@APR_END = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, %struct.TYPE_9__*, %struct.TYPE_8__*, i32, i32*)* @get_root_changes_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_root_changes_offset(i32* %0, i32* %1, %struct.TYPE_9__* %2, %struct.TYPE_8__* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca [64 x i8], align 16
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  store %struct.TYPE_10__* %23, %struct.TYPE_10__** %13, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %6
  %29 = load i32, i32* %11, align 4
  %30 = add nsw i32 %29, 1
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = srem i32 %30, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %28
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %38 = load i32, i32* %11, align 4
  %39 = add nsw i32 %38, 1
  %40 = load i32*, i32** %12, align 8
  %41 = call i32 @svn_fs_fs__get_packed_offset(i32* %19, %struct.TYPE_8__* %37, i32 %39, i32* %40)
  %42 = call i32 @SVN_ERR(i32 %41)
  %43 = load i32, i32* @APR_SET, align 4
  store i32 %43, i32* %15, align 4
  br label %46

44:                                               ; preds = %28, %6
  %45 = load i32, i32* @APR_END, align 4
  store i32 %45, i32* %15, align 4
  store i32 0, i32* %19, align 4
  br label %46

46:                                               ; preds = %44, %36
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %53 = load i32, i32* %11, align 4
  %54 = load i32*, i32** %12, align 8
  %55 = call i32 @svn_fs_fs__get_packed_offset(i32* %14, %struct.TYPE_8__* %52, i32 %53, i32* %54)
  %56 = call i32 @SVN_ERR(i32 %55)
  br label %58

57:                                               ; preds = %46
  store i32 0, i32* %14, align 4
  br label %58

58:                                               ; preds = %57, %51
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %15, align 4
  %63 = load i32*, i32** %12, align 8
  %64 = call i32 @svn_io_file_seek(i32 %61, i32 %62, i32* %19, i32* %63)
  %65 = call i32 @SVN_ERR(i32 %64)
  %66 = load i32, i32* %19, align 4
  %67 = sext i32 %66 to i64
  %68 = icmp ult i64 %67, 64
  br i1 %68, label %69, label %71

69:                                               ; preds = %58
  %70 = load i32, i32* %19, align 4
  store i32 %70, i32* %20, align 4
  store i32 0, i32* %18, align 4
  br label %76

71:                                               ; preds = %58
  store i32 64, i32* %20, align 4
  %72 = load i32, i32* %19, align 4
  %73 = sext i32 %72 to i64
  %74 = sub i64 %73, 64
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %18, align 4
  br label %76

76:                                               ; preds = %71, %69
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %18, align 4
  %82 = load i32*, i32** %12, align 8
  %83 = call i32 @aligned_seek(%struct.TYPE_8__* %77, i32 %80, i32* null, i32 %81, i32* %82)
  %84 = call i32 @SVN_ERR(i32 %83)
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 0
  %89 = load i32, i32* %20, align 4
  %90 = load i32*, i32** %12, align 8
  %91 = call i32 @svn_io_file_read_full2(i32 %87, i8* %88, i32 %89, i32* null, i32* null, i32* %90)
  %92 = call i32 @SVN_ERR(i32 %91)
  %93 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 0
  %94 = load i32, i32* %20, align 4
  %95 = load i32*, i32** %12, align 8
  %96 = call i32* @svn_stringbuf_ncreate(i8* %93, i32 %94, i32* %95)
  store i32* %96, i32** %16, align 8
  %97 = load i32*, i32** %7, align 8
  %98 = load i32*, i32** %8, align 8
  %99 = load i32*, i32** %16, align 8
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @svn_fs_fs__parse_revision_trailer(i32* %97, i32* %98, i32* %99, i32 %100)
  %102 = call i32 @SVN_ERR(i32 %101)
  %103 = load i32*, i32** %7, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %110

105:                                              ; preds = %76
  %106 = load i32, i32* %14, align 4
  %107 = load i32*, i32** %7, align 8
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, %106
  store i32 %109, i32* %107, align 4
  br label %110

110:                                              ; preds = %105, %76
  %111 = load i32*, i32** %8, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %118

113:                                              ; preds = %110
  %114 = load i32, i32* %14, align 4
  %115 = load i32*, i32** %8, align 8
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, %114
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %113, %110
  %119 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %119
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_fs__get_packed_offset(i32*, %struct.TYPE_8__*, i32, i32*) #1

declare dso_local i32 @svn_io_file_seek(i32, i32, i32*, i32*) #1

declare dso_local i32 @aligned_seek(%struct.TYPE_8__*, i32, i32*, i32, i32*) #1

declare dso_local i32 @svn_io_file_read_full2(i32, i8*, i32, i32*, i32*, i32*) #1

declare dso_local i32* @svn_stringbuf_ncreate(i8*, i32, i32*) #1

declare dso_local i32 @svn_fs_fs__parse_revision_trailer(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
