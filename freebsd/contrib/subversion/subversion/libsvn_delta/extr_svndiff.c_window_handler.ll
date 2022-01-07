; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_svndiff.c_window_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_svndiff.c_window_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.encoder_baton = type { i32, i32, i32, i32, i64 }
%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_12__ = type { i64, i32 }

@SVNDIFF_HEADER_SIZE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_10__*, i8*)* @window_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @window_handler(%struct.TYPE_10__* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.encoder_baton*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.encoder_baton*
  store %struct.encoder_baton* %12, %struct.encoder_baton** %6, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %14 = icmp ne %struct.TYPE_10__* %13, null
  br i1 %14, label %15, label %35

15:                                               ; preds = %2
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %35, label %20

20:                                               ; preds = %15
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  %26 = load %struct.encoder_baton*, %struct.encoder_baton** %6, align 8
  %27 = getelementptr inbounds %struct.encoder_baton, %struct.encoder_baton* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %32 = load %struct.encoder_baton*, %struct.encoder_baton** %6, align 8
  %33 = call i32 @send_simple_insertion_window(%struct.TYPE_10__* %31, %struct.encoder_baton* %32)
  %34 = call i32* @svn_error_trace(i32 %33)
  store i32* %34, i32** %3, align 8
  br label %131

35:                                               ; preds = %25, %20, %15, %2
  %36 = load %struct.encoder_baton*, %struct.encoder_baton** %6, align 8
  %37 = getelementptr inbounds %struct.encoder_baton, %struct.encoder_baton* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %54, label %40

40:                                               ; preds = %35
  %41 = load i64, i64* @SVNDIFF_HEADER_SIZE, align 8
  store i64 %41, i64* %7, align 8
  %42 = load %struct.encoder_baton*, %struct.encoder_baton** %6, align 8
  %43 = getelementptr inbounds %struct.encoder_baton, %struct.encoder_baton* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.encoder_baton*, %struct.encoder_baton** %6, align 8
  %46 = getelementptr inbounds %struct.encoder_baton, %struct.encoder_baton* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @get_svndiff_header(i32 %47)
  %49 = call i32 @svn_stream_write(i32 %44, i32 %48, i64* %7)
  %50 = call i32 @SVN_ERR(i32 %49)
  %51 = load i64, i64* @TRUE, align 8
  %52 = load %struct.encoder_baton*, %struct.encoder_baton** %6, align 8
  %53 = getelementptr inbounds %struct.encoder_baton, %struct.encoder_baton* %52, i32 0, i32 4
  store i64 %51, i64* %53, align 8
  br label %54

54:                                               ; preds = %40, %35
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %56 = icmp eq %struct.TYPE_10__* %55, null
  br i1 %56, label %57, label %68

57:                                               ; preds = %54
  %58 = load %struct.encoder_baton*, %struct.encoder_baton** %6, align 8
  %59 = getelementptr inbounds %struct.encoder_baton, %struct.encoder_baton* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @svn_stream_close(i32 %60)
  %62 = call i32 @SVN_ERR(i32 %61)
  %63 = load %struct.encoder_baton*, %struct.encoder_baton** %6, align 8
  %64 = getelementptr inbounds %struct.encoder_baton, %struct.encoder_baton* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @svn_pool_destroy(i32 %65)
  %67 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %67, i32** %3, align 8
  br label %131

68:                                               ; preds = %54
  %69 = load %struct.encoder_baton*, %struct.encoder_baton** %6, align 8
  %70 = getelementptr inbounds %struct.encoder_baton, %struct.encoder_baton* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @svn_pool_clear(i32 %71)
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %74 = load %struct.encoder_baton*, %struct.encoder_baton** %6, align 8
  %75 = getelementptr inbounds %struct.encoder_baton, %struct.encoder_baton* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.encoder_baton*, %struct.encoder_baton** %6, align 8
  %78 = getelementptr inbounds %struct.encoder_baton, %struct.encoder_baton* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.encoder_baton*, %struct.encoder_baton** %6, align 8
  %81 = getelementptr inbounds %struct.encoder_baton, %struct.encoder_baton* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @encode_window(%struct.TYPE_11__** %8, %struct.TYPE_11__** %9, %struct.TYPE_12__** %10, %struct.TYPE_10__* %73, i32 %76, i32 %79, i32 %82)
  %84 = call i32 @SVN_ERR(i32 %83)
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %7, align 8
  %88 = load %struct.encoder_baton*, %struct.encoder_baton** %6, align 8
  %89 = getelementptr inbounds %struct.encoder_baton, %struct.encoder_baton* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @svn_stream_write(i32 %90, i32 %93, i64* %7)
  %95 = call i32 @SVN_ERR(i32 %94)
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp sgt i64 %98, 0
  br i1 %99, label %100, label %112

100:                                              ; preds = %68
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  store i64 %103, i64* %7, align 8
  %104 = load %struct.encoder_baton*, %struct.encoder_baton** %6, align 8
  %105 = getelementptr inbounds %struct.encoder_baton, %struct.encoder_baton* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @svn_stream_write(i32 %106, i32 %109, i64* %7)
  %111 = call i32 @SVN_ERR(i32 %110)
  br label %112

112:                                              ; preds = %100, %68
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp sgt i64 %115, 0
  br i1 %116, label %117, label %129

117:                                              ; preds = %112
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  store i64 %120, i64* %7, align 8
  %121 = load %struct.encoder_baton*, %struct.encoder_baton** %6, align 8
  %122 = getelementptr inbounds %struct.encoder_baton, %struct.encoder_baton* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @svn_stream_write(i32 %123, i32 %126, i64* %7)
  %128 = call i32 @SVN_ERR(i32 %127)
  br label %129

129:                                              ; preds = %117, %112
  %130 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %130, i32** %3, align 8
  br label %131

131:                                              ; preds = %129, %57, %30
  %132 = load i32*, i32** %3, align 8
  ret i32* %132
}

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @send_simple_insertion_window(%struct.TYPE_10__*, %struct.encoder_baton*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_stream_write(i32, i32, i64*) #1

declare dso_local i32 @get_svndiff_header(i32) #1

declare dso_local i32 @svn_stream_close(i32) #1

declare dso_local i32 @svn_pool_destroy(i32) #1

declare dso_local i32 @svn_pool_clear(i32) #1

declare dso_local i32 @encode_window(%struct.TYPE_11__**, %struct.TYPE_11__**, %struct.TYPE_12__**, %struct.TYPE_10__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
