; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_fs_fs.c_svn_fs_fs__file_text_rep_equal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_fs_fs.c_svn_fs_fs__file_text_rep_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32, i64, i32 }

@TRUE = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_fs__file_text_rep_equal(i64* %0, i32* %1, %struct.TYPE_7__* %2, %struct.TYPE_7__* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca %struct.TYPE_6__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i64* %0, i64** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %9, align 8
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %10, align 8
  store i32* %4, i32** %11, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %14, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %15, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %25 = icmp ne %struct.TYPE_6__* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %5
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br label %31

31:                                               ; preds = %26, %5
  %32 = phi i1 [ true, %5 ], [ %30, %26 ]
  %33 = zext i1 %32 to i32
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %16, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %36 = icmp ne %struct.TYPE_6__* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br label %42

42:                                               ; preds = %37, %31
  %43 = phi i1 [ true, %31 ], [ %41, %37 ]
  %44 = zext i1 %43 to i32
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %17, align 8
  %46 = load i64, i64* %16, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = load i64, i64* %17, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i64, i64* @TRUE, align 8
  %53 = load i64*, i64** %7, align 8
  store i64 %52, i64* %53, align 8
  %54 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %54, i32** %6, align 8
  br label %132

55:                                               ; preds = %48, %42
  %56 = load i64, i64* %16, align 8
  %57 = load i64, i64* %17, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load i64, i64* @FALSE, align 8
  %61 = load i64*, i64** %7, align 8
  store i64 %60, i64* %61, align 8
  %62 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %62, i32** %6, align 8
  br label %132

63:                                               ; preds = %55
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @memcmp(i32 %66, i32 %69, i32 4)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %63
  %73 = load i64, i64* @FALSE, align 8
  %74 = load i64*, i64** %7, align 8
  store i64 %73, i64* %74, align 8
  %75 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %75, i32** %6, align 8
  br label %132

76:                                               ; preds = %63
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %99

81:                                               ; preds = %76
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %99

86:                                               ; preds = %81
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i64 @memcmp(i32 %89, i32 %92, i32 4)
  %94 = icmp eq i64 %93, 0
  %95 = zext i1 %94 to i32
  %96 = sext i32 %95 to i64
  %97 = load i64*, i64** %7, align 8
  store i64 %96, i64* %97, align 8
  %98 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %98, i32** %6, align 8
  br label %132

99:                                               ; preds = %81, %76
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i64 @svn_fs_fs__id_eq(i32 %102, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %99
  %109 = load i64, i64* @TRUE, align 8
  %110 = load i64*, i64** %7, align 8
  store i64 %109, i64* %110, align 8
  %111 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %111, i32** %6, align 8
  br label %132

112:                                              ; preds = %99
  %113 = load i32*, i32** %8, align 8
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %115 = load i64, i64* @TRUE, align 8
  %116 = load i32*, i32** %11, align 8
  %117 = call i32 @svn_fs_fs__get_contents(i32** %12, i32* %113, %struct.TYPE_6__* %114, i64 %115, i32* %116)
  %118 = call i32 @SVN_ERR(i32 %117)
  %119 = load i32*, i32** %8, align 8
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %121 = load i64, i64* @TRUE, align 8
  %122 = load i32*, i32** %11, align 8
  %123 = call i32 @svn_fs_fs__get_contents(i32** %13, i32* %119, %struct.TYPE_6__* %120, i64 %121, i32* %122)
  %124 = call i32 @SVN_ERR(i32 %123)
  %125 = load i64*, i64** %7, align 8
  %126 = load i32*, i32** %12, align 8
  %127 = load i32*, i32** %13, align 8
  %128 = load i32*, i32** %11, align 8
  %129 = call i32 @svn_stream_contents_same2(i64* %125, i32* %126, i32* %127, i32* %128)
  %130 = call i32 @SVN_ERR(i32 %129)
  %131 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %131, i32** %6, align 8
  br label %132

132:                                              ; preds = %112, %108, %86, %72, %59, %51
  %133 = load i32*, i32** %6, align 8
  ret i32* %133
}

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i64 @svn_fs_fs__id_eq(i32, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_fs__get_contents(i32**, i32*, %struct.TYPE_6__*, i64, i32*) #1

declare dso_local i32 @svn_stream_contents_same2(i64*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
