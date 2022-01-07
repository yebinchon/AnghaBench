; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_stream_bucket.c_stream_reader.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_stream_bucket.c_stream_reader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 (i32, i32*)* }

@SVN_ERR_RA_SERF_STREAM_BUCKET_READ_ERROR = common dso_local global i32 0, align 4
@APR_SUCCESS = common dso_local global i32 0, align 4
@APR_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*, i64*)* @stream_reader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stream_reader(i8* %0, i64 %1, i8* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_2__*, align 8
  %11 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %10, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64*, i64** %9, align 8
  store i64 %14, i64* %15, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = load i64*, i64** %9, align 8
  %21 = call i32* @svn_stream_read_full(i32 %18, i8* %19, i64* %20)
  store i32* %21, i32** %11, align 8
  %22 = load i32*, i32** %11, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %42

24:                                               ; preds = %4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i32 (i32, i32*)*, i32 (i32, i32*)** %26, align 8
  %28 = icmp ne i32 (i32, i32*)* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %24
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32 (i32, i32*)*, i32 (i32, i32*)** %31, align 8
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %11, align 8
  %37 = call i32 %32(i32 %35, i32* %36)
  br label %38

38:                                               ; preds = %29, %24
  %39 = load i32*, i32** %11, align 8
  %40 = call i32 @svn_error_clear(i32* %39)
  %41 = load i32, i32* @SVN_ERR_RA_SERF_STREAM_BUCKET_READ_ERROR, align 4
  store i32 %41, i32* %5, align 4
  br label %56

42:                                               ; preds = %4
  %43 = load i64*, i64** %9, align 8
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %7, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @APR_SUCCESS, align 4
  store i32 %48, i32* %5, align 4
  br label %56

49:                                               ; preds = %42
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32* @svn_stream_close(i32 %52)
  %54 = call i32 @svn_error_clear(i32* %53)
  %55 = load i32, i32* @APR_EOF, align 4
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %49, %47, %38
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32* @svn_stream_read_full(i32, i8*, i64*) #1

declare dso_local i32 @svn_error_clear(i32*) #1

declare dso_local i32* @svn_stream_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
