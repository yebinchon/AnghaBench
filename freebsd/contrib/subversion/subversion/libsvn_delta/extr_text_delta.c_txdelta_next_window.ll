; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_text_delta.c_txdelta_next_window.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_text_delta.c_txdelta_next_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.txdelta_baton = type { i32, i64, i64, i32*, i32, i32, i32, i32, i32 }

@SVN_DELTA_WINDOW_SIZE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i8*, i32*)* @txdelta_next_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @txdelta_next_window(i32** %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.txdelta_baton*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32** %0, i32*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.txdelta_baton*
  store %struct.txdelta_baton* %12, %struct.txdelta_baton** %8, align 8
  %13 = load i64, i64* @SVN_DELTA_WINDOW_SIZE, align 8
  store i64 %13, i64* %9, align 8
  %14 = load i64, i64* @SVN_DELTA_WINDOW_SIZE, align 8
  store i64 %14, i64* %10, align 8
  %15 = load %struct.txdelta_baton*, %struct.txdelta_baton** %8, align 8
  %16 = getelementptr inbounds %struct.txdelta_baton, %struct.txdelta_baton* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %3
  %20 = load %struct.txdelta_baton*, %struct.txdelta_baton** %8, align 8
  %21 = getelementptr inbounds %struct.txdelta_baton, %struct.txdelta_baton* %20, i32 0, i32 8
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.txdelta_baton*, %struct.txdelta_baton** %8, align 8
  %24 = getelementptr inbounds %struct.txdelta_baton, %struct.txdelta_baton* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @svn_stream_read_full(i32 %22, i64 %25, i64* %9)
  %27 = call i32 @SVN_ERR(i32 %26)
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* @SVN_DELTA_WINDOW_SIZE, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = load %struct.txdelta_baton*, %struct.txdelta_baton** %8, align 8
  %33 = getelementptr inbounds %struct.txdelta_baton, %struct.txdelta_baton* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  br label %35

34:                                               ; preds = %3
  store i64 0, i64* %9, align 8
  br label %35

35:                                               ; preds = %34, %19
  %36 = load %struct.txdelta_baton*, %struct.txdelta_baton** %8, align 8
  %37 = getelementptr inbounds %struct.txdelta_baton, %struct.txdelta_baton* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.txdelta_baton*, %struct.txdelta_baton** %8, align 8
  %40 = getelementptr inbounds %struct.txdelta_baton, %struct.txdelta_baton* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %9, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @svn_stream_read_full(i32 %38, i64 %43, i64* %10)
  %45 = call i32 @SVN_ERR(i32 %44)
  %46 = load i64, i64* %9, align 8
  %47 = load %struct.txdelta_baton*, %struct.txdelta_baton** %8, align 8
  %48 = getelementptr inbounds %struct.txdelta_baton, %struct.txdelta_baton* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, %46
  store i64 %50, i64* %48, align 8
  %51 = load i64, i64* %10, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %75

53:                                               ; preds = %35
  %54 = load %struct.txdelta_baton*, %struct.txdelta_baton** %8, align 8
  %55 = getelementptr inbounds %struct.txdelta_baton, %struct.txdelta_baton* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %69

58:                                               ; preds = %53
  %59 = load %struct.txdelta_baton*, %struct.txdelta_baton** %8, align 8
  %60 = getelementptr inbounds %struct.txdelta_baton, %struct.txdelta_baton* %59, i32 0, i32 6
  %61 = load %struct.txdelta_baton*, %struct.txdelta_baton** %8, align 8
  %62 = getelementptr inbounds %struct.txdelta_baton, %struct.txdelta_baton* %61, i32 0, i32 3
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.txdelta_baton*, %struct.txdelta_baton** %8, align 8
  %65 = getelementptr inbounds %struct.txdelta_baton, %struct.txdelta_baton* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @svn_checksum_final(i32* %60, i32* %63, i32 %66)
  %68 = call i32 @SVN_ERR(i32 %67)
  br label %69

69:                                               ; preds = %58, %53
  %70 = load i32**, i32*** %5, align 8
  store i32* null, i32** %70, align 8
  %71 = load i32, i32* @FALSE, align 4
  %72 = load %struct.txdelta_baton*, %struct.txdelta_baton** %8, align 8
  %73 = getelementptr inbounds %struct.txdelta_baton, %struct.txdelta_baton* %72, i32 0, i32 4
  store i32 %71, i32* %73, align 8
  %74 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %74, i32** %4, align 8
  br label %108

75:                                               ; preds = %35
  %76 = load %struct.txdelta_baton*, %struct.txdelta_baton** %8, align 8
  %77 = getelementptr inbounds %struct.txdelta_baton, %struct.txdelta_baton* %76, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %92

80:                                               ; preds = %75
  %81 = load %struct.txdelta_baton*, %struct.txdelta_baton** %8, align 8
  %82 = getelementptr inbounds %struct.txdelta_baton, %struct.txdelta_baton* %81, i32 0, i32 3
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.txdelta_baton*, %struct.txdelta_baton** %8, align 8
  %85 = getelementptr inbounds %struct.txdelta_baton, %struct.txdelta_baton* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %9, align 8
  %88 = add nsw i64 %86, %87
  %89 = load i64, i64* %10, align 8
  %90 = call i32 @svn_checksum_update(i32* %83, i64 %88, i64 %89)
  %91 = call i32 @SVN_ERR(i32 %90)
  br label %92

92:                                               ; preds = %80, %75
  br label %93

93:                                               ; preds = %92
  %94 = load %struct.txdelta_baton*, %struct.txdelta_baton** %8, align 8
  %95 = getelementptr inbounds %struct.txdelta_baton, %struct.txdelta_baton* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* %9, align 8
  %98 = load i64, i64* %10, align 8
  %99 = load %struct.txdelta_baton*, %struct.txdelta_baton** %8, align 8
  %100 = getelementptr inbounds %struct.txdelta_baton, %struct.txdelta_baton* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* %9, align 8
  %103 = sub nsw i64 %101, %102
  %104 = load i32*, i32** %7, align 8
  %105 = call i32* @compute_window(i64 %96, i64 %97, i64 %98, i64 %103, i32* %104)
  %106 = load i32**, i32*** %5, align 8
  store i32* %105, i32** %106, align 8
  %107 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %107, i32** %4, align 8
  br label %108

108:                                              ; preds = %93, %69
  %109 = load i32*, i32** %4, align 8
  ret i32* %109
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_stream_read_full(i32, i64, i64*) #1

declare dso_local i32 @svn_checksum_final(i32*, i32*, i32) #1

declare dso_local i32 @svn_checksum_update(i32*, i64, i64) #1

declare dso_local i32* @compute_window(i64, i64, i64, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
