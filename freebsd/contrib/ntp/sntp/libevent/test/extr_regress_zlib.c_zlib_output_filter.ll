; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_zlib.c_zlib_output_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_zlib.c_zlib_output_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i32 }
%struct.evbuffer_iovec = type { i32, i64 }
%struct.TYPE_3__ = type { i32, i32, i64, i64 }

@Z_BUF_ERROR = common dso_local global i32 0, align 4
@BEV_NEED_MORE = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4
@outfilter_calls = common dso_local global i32 0, align 4
@BEV_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evbuffer*, %struct.evbuffer*, i32, i32, i8*)* @zlib_output_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zlib_output_filter(%struct.evbuffer* %0, %struct.evbuffer* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.evbuffer*, align 8
  %8 = alloca %struct.evbuffer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca [1 x %struct.evbuffer_iovec], align 16
  %13 = alloca [1 x %struct.evbuffer_iovec], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_3__*, align 8
  store %struct.evbuffer* %0, %struct.evbuffer** %7, align 8
  store %struct.evbuffer* %1, %struct.evbuffer** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %19 = load i8*, i8** %11, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %20, %struct.TYPE_3__** %18, align 8
  br label %21

21:                                               ; preds = %106, %5
  %22 = load %struct.evbuffer*, %struct.evbuffer** %7, align 8
  %23 = getelementptr inbounds [1 x %struct.evbuffer_iovec], [1 x %struct.evbuffer_iovec]* %12, i64 0, i64 0
  %24 = call i32 @evbuffer_peek(%struct.evbuffer* %22, i32 -1, i32* null, %struct.evbuffer_iovec* %23, i32 1)
  store i32 %24, i32* %17, align 4
  %25 = load i32, i32* %17, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %21
  %28 = getelementptr inbounds [1 x %struct.evbuffer_iovec], [1 x %struct.evbuffer_iovec]* %12, i64 0, i64 0
  %29 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 16
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = getelementptr inbounds [1 x %struct.evbuffer_iovec], [1 x %struct.evbuffer_iovec]* %12, i64 0, i64 0
  %34 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 3
  store i64 %35, i64* %37, align 8
  br label %43

38:                                               ; preds = %21
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 3
  store i64 0, i64* %42, align 8
  br label %43

43:                                               ; preds = %38, %27
  %44 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %45 = getelementptr inbounds [1 x %struct.evbuffer_iovec], [1 x %struct.evbuffer_iovec]* %13, i64 0, i64 0
  %46 = call i32 @evbuffer_reserve_space(%struct.evbuffer* %44, i32 4096, %struct.evbuffer_iovec* %45, i32 1)
  %47 = getelementptr inbounds [1 x %struct.evbuffer_iovec], [1 x %struct.evbuffer_iovec]* %13, i64 0, i64 0
  %48 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  store i64 %49, i64* %51, align 8
  %52 = getelementptr inbounds [1 x %struct.evbuffer_iovec], [1 x %struct.evbuffer_iovec]* %13, i64 0, i64 0
  %53 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 16
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @getstate(i32 %58)
  %60 = call i32 @deflate(%struct.TYPE_3__* %57, i32 %59)
  store i32 %60, i32* %16, align 4
  %61 = getelementptr inbounds [1 x %struct.evbuffer_iovec], [1 x %struct.evbuffer_iovec]* %12, i64 0, i64 0
  %62 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 16
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sub nsw i32 %63, %66
  store i32 %67, i32* %14, align 4
  %68 = getelementptr inbounds [1 x %struct.evbuffer_iovec], [1 x %struct.evbuffer_iovec]* %13, i64 0, i64 0
  %69 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 16
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = sub nsw i32 %70, %73
  store i32 %74, i32* %15, align 4
  %75 = load %struct.evbuffer*, %struct.evbuffer** %7, align 8
  %76 = load i32, i32* %14, align 4
  %77 = call i32 @evbuffer_drain(%struct.evbuffer* %75, i32 %76)
  %78 = load i32, i32* %15, align 4
  %79 = getelementptr inbounds [1 x %struct.evbuffer_iovec], [1 x %struct.evbuffer_iovec]* %13, i64 0, i64 0
  %80 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 16
  %81 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %82 = getelementptr inbounds [1 x %struct.evbuffer_iovec], [1 x %struct.evbuffer_iovec]* %13, i64 0, i64 0
  %83 = call i32 @evbuffer_commit_space(%struct.evbuffer* %81, %struct.evbuffer_iovec* %82, i32 1)
  %84 = load i32, i32* %16, align 4
  %85 = load i32, i32* @Z_BUF_ERROR, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %43
  %88 = load i32, i32* %15, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = load i32, i32* @BEV_NEED_MORE, align 4
  store i32 %91, i32* %6, align 4
  br label %114

92:                                               ; preds = %87
  br label %105

93:                                               ; preds = %43
  %94 = load i32, i32* %16, align 4
  %95 = load i32, i32* @Z_OK, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %101, label %97

97:                                               ; preds = %93
  %98 = load i32, i32* %16, align 4
  %99 = load i32, i32* @Z_STREAM_END, align 4
  %100 = icmp eq i32 %98, %99
  br label %101

101:                                              ; preds = %97, %93
  %102 = phi i1 [ true, %93 ], [ %100, %97 ]
  %103 = zext i1 %102 to i32
  %104 = call i32 @assert(i32 %103)
  br label %105

105:                                              ; preds = %101, %92
  br label %106

106:                                              ; preds = %105
  %107 = load %struct.evbuffer*, %struct.evbuffer** %7, align 8
  %108 = call i64 @evbuffer_get_length(%struct.evbuffer* %107)
  %109 = icmp sgt i64 %108, 0
  br i1 %109, label %21, label %110

110:                                              ; preds = %106
  %111 = load i32, i32* @outfilter_calls, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* @outfilter_calls, align 4
  %113 = load i32, i32* @BEV_OK, align 4
  store i32 %113, i32* %6, align 4
  br label %114

114:                                              ; preds = %110, %90
  %115 = load i32, i32* %6, align 4
  ret i32 %115
}

declare dso_local i32 @evbuffer_peek(%struct.evbuffer*, i32, i32*, %struct.evbuffer_iovec*, i32) #1

declare dso_local i32 @evbuffer_reserve_space(%struct.evbuffer*, i32, %struct.evbuffer_iovec*, i32) #1

declare dso_local i32 @deflate(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @getstate(i32) #1

declare dso_local i32 @evbuffer_drain(%struct.evbuffer*, i32) #1

declare dso_local i32 @evbuffer_commit_space(%struct.evbuffer*, %struct.evbuffer_iovec*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @evbuffer_get_length(%struct.evbuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
