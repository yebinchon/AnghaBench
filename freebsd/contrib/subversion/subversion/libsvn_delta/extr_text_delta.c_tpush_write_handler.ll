; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_text_delta.c_tpush_write_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_text_delta.c_tpush_write_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpush_baton = type { i64, i64, i64, i32, i32, i32 (i32*, i32)*, i64, i32, i32 }

@SVN_DELTA_WINDOW_SIZE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i64*)* @tpush_write_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @tpush_write_handler(i8* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.tpush_baton*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64* %2, i64** %6, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.tpush_baton*
  store %struct.tpush_baton* %13, %struct.tpush_baton** %7, align 8
  %14 = load i64*, i64** %6, align 8
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %9, align 8
  %16 = load %struct.tpush_baton*, %struct.tpush_baton** %7, align 8
  %17 = getelementptr inbounds %struct.tpush_baton, %struct.tpush_baton* %16, i32 0, i32 8
  %18 = load i32, i32* %17, align 4
  %19 = call i32* @svn_pool_create(i32 %18)
  store i32* %19, i32** %10, align 8
  br label %20

20:                                               ; preds = %138, %3
  %21 = load i64, i64* %9, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %139

23:                                               ; preds = %20
  %24 = load i32*, i32** %10, align 8
  %25 = call i32 @svn_pool_clear(i32* %24)
  %26 = load %struct.tpush_baton*, %struct.tpush_baton** %7, align 8
  %27 = getelementptr inbounds %struct.tpush_baton, %struct.tpush_baton* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %59

30:                                               ; preds = %23
  %31 = load %struct.tpush_baton*, %struct.tpush_baton** %7, align 8
  %32 = getelementptr inbounds %struct.tpush_baton, %struct.tpush_baton* %31, i32 0, i32 6
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %59, label %35

35:                                               ; preds = %30
  %36 = load i64, i64* @SVN_DELTA_WINDOW_SIZE, align 8
  %37 = load %struct.tpush_baton*, %struct.tpush_baton** %7, align 8
  %38 = getelementptr inbounds %struct.tpush_baton, %struct.tpush_baton* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.tpush_baton*, %struct.tpush_baton** %7, align 8
  %40 = getelementptr inbounds %struct.tpush_baton, %struct.tpush_baton* %39, i32 0, i32 7
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.tpush_baton*, %struct.tpush_baton** %7, align 8
  %43 = getelementptr inbounds %struct.tpush_baton, %struct.tpush_baton* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.tpush_baton*, %struct.tpush_baton** %7, align 8
  %46 = getelementptr inbounds %struct.tpush_baton, %struct.tpush_baton* %45, i32 0, i32 0
  %47 = call i32 @svn_stream_read_full(i32 %41, i64 %44, i64* %46)
  %48 = call i32 @SVN_ERR(i32 %47)
  %49 = load %struct.tpush_baton*, %struct.tpush_baton** %7, align 8
  %50 = getelementptr inbounds %struct.tpush_baton, %struct.tpush_baton* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @SVN_DELTA_WINDOW_SIZE, align 8
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %35
  %55 = load i64, i64* @TRUE, align 8
  %56 = load %struct.tpush_baton*, %struct.tpush_baton** %7, align 8
  %57 = getelementptr inbounds %struct.tpush_baton, %struct.tpush_baton* %56, i32 0, i32 6
  store i64 %55, i64* %57, align 8
  br label %58

58:                                               ; preds = %54, %35
  br label %59

59:                                               ; preds = %58, %30, %23
  %60 = load i64, i64* @SVN_DELTA_WINDOW_SIZE, align 8
  %61 = load %struct.tpush_baton*, %struct.tpush_baton** %7, align 8
  %62 = getelementptr inbounds %struct.tpush_baton, %struct.tpush_baton* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = sub nsw i64 %60, %63
  store i64 %64, i64* %8, align 8
  %65 = load i64, i64* %8, align 8
  %66 = load i64, i64* %9, align 8
  %67 = icmp sgt i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %59
  %69 = load i64, i64* %9, align 8
  store i64 %69, i64* %8, align 8
  br label %70

70:                                               ; preds = %68, %59
  %71 = load %struct.tpush_baton*, %struct.tpush_baton** %7, align 8
  %72 = getelementptr inbounds %struct.tpush_baton, %struct.tpush_baton* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.tpush_baton*, %struct.tpush_baton** %7, align 8
  %75 = getelementptr inbounds %struct.tpush_baton, %struct.tpush_baton* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %73, %76
  %78 = load %struct.tpush_baton*, %struct.tpush_baton** %7, align 8
  %79 = getelementptr inbounds %struct.tpush_baton, %struct.tpush_baton* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %77, %80
  %82 = load i8*, i8** %5, align 8
  %83 = load i64, i64* %8, align 8
  %84 = call i32 @memcpy(i64 %81, i8* %82, i64 %83)
  %85 = load i64, i64* %8, align 8
  %86 = load i8*, i8** %5, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 %85
  store i8* %87, i8** %5, align 8
  %88 = load i64, i64* %8, align 8
  %89 = load i64, i64* %9, align 8
  %90 = sub nsw i64 %89, %88
  store i64 %90, i64* %9, align 8
  %91 = load i64, i64* %8, align 8
  %92 = load %struct.tpush_baton*, %struct.tpush_baton** %7, align 8
  %93 = getelementptr inbounds %struct.tpush_baton, %struct.tpush_baton* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, %91
  store i64 %95, i64* %93, align 8
  %96 = load %struct.tpush_baton*, %struct.tpush_baton** %7, align 8
  %97 = getelementptr inbounds %struct.tpush_baton, %struct.tpush_baton* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @SVN_DELTA_WINDOW_SIZE, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %138

101:                                              ; preds = %70
  %102 = load %struct.tpush_baton*, %struct.tpush_baton** %7, align 8
  %103 = getelementptr inbounds %struct.tpush_baton, %struct.tpush_baton* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.tpush_baton*, %struct.tpush_baton** %7, align 8
  %106 = getelementptr inbounds %struct.tpush_baton, %struct.tpush_baton* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.tpush_baton*, %struct.tpush_baton** %7, align 8
  %109 = getelementptr inbounds %struct.tpush_baton, %struct.tpush_baton* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.tpush_baton*, %struct.tpush_baton** %7, align 8
  %112 = getelementptr inbounds %struct.tpush_baton, %struct.tpush_baton* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = load i32*, i32** %10, align 8
  %115 = call i32* @compute_window(i64 %104, i64 %107, i64 %110, i32 %113, i32* %114)
  store i32* %115, i32** %11, align 8
  %116 = load %struct.tpush_baton*, %struct.tpush_baton** %7, align 8
  %117 = getelementptr inbounds %struct.tpush_baton, %struct.tpush_baton* %116, i32 0, i32 5
  %118 = load i32 (i32*, i32)*, i32 (i32*, i32)** %117, align 8
  %119 = load i32*, i32** %11, align 8
  %120 = load %struct.tpush_baton*, %struct.tpush_baton** %7, align 8
  %121 = getelementptr inbounds %struct.tpush_baton, %struct.tpush_baton* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = call i32 %118(i32* %119, i32 %122)
  %124 = call i32 @SVN_ERR(i32 %123)
  %125 = load %struct.tpush_baton*, %struct.tpush_baton** %7, align 8
  %126 = getelementptr inbounds %struct.tpush_baton, %struct.tpush_baton* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.tpush_baton*, %struct.tpush_baton** %7, align 8
  %129 = getelementptr inbounds %struct.tpush_baton, %struct.tpush_baton* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = sext i32 %130 to i64
  %132 = add nsw i64 %131, %127
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %129, align 8
  %134 = load %struct.tpush_baton*, %struct.tpush_baton** %7, align 8
  %135 = getelementptr inbounds %struct.tpush_baton, %struct.tpush_baton* %134, i32 0, i32 0
  store i64 0, i64* %135, align 8
  %136 = load %struct.tpush_baton*, %struct.tpush_baton** %7, align 8
  %137 = getelementptr inbounds %struct.tpush_baton, %struct.tpush_baton* %136, i32 0, i32 2
  store i64 0, i64* %137, align 8
  br label %138

138:                                              ; preds = %101, %70
  br label %20

139:                                              ; preds = %20
  %140 = load i32*, i32** %10, align 8
  %141 = call i32 @svn_pool_destroy(i32* %140)
  %142 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %142
}

declare dso_local i32* @svn_pool_create(i32) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_stream_read_full(i32, i64, i64*) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

declare dso_local i32* @compute_window(i64, i64, i64, i32, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
