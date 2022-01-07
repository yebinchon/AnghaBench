; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_svndiff.c_svn_txdelta_parse_svndiff.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_svndiff.c_svn_txdelta_parse_svndiff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decode_baton = type { i64, i32, i64, i64, i64, i32*, i32, i8*, i8*, i64 }

@svn_delta_noop_window_handler = common dso_local global i64 0, align 8
@write_handler = common dso_local global i32 0, align 4
@close_handler = common dso_local global i32 0, align 4
@noop_write_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_txdelta_parse_svndiff(i64 %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.decode_baton*, align 8
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @svn_delta_noop_window_handler, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %60

15:                                               ; preds = %4
  %16 = load i32*, i32** %8, align 8
  %17 = call i8* @svn_pool_create(i32* %16)
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** %10, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = call %struct.decode_baton* @apr_palloc(i32* %19, i32 80)
  store %struct.decode_baton* %20, %struct.decode_baton** %11, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.decode_baton*, %struct.decode_baton** %11, align 8
  %23 = getelementptr inbounds %struct.decode_baton, %struct.decode_baton* %22, i32 0, i32 9
  store i64 %21, i64* %23, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load %struct.decode_baton*, %struct.decode_baton** %11, align 8
  %26 = getelementptr inbounds %struct.decode_baton, %struct.decode_baton* %25, i32 0, i32 8
  store i8* %24, i8** %26, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = load %struct.decode_baton*, %struct.decode_baton** %11, align 8
  %29 = getelementptr inbounds %struct.decode_baton, %struct.decode_baton* %28, i32 0, i32 5
  store i32* %27, i32** %29, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = call i8* @svn_pool_create(i32* %30)
  %32 = load %struct.decode_baton*, %struct.decode_baton** %11, align 8
  %33 = getelementptr inbounds %struct.decode_baton, %struct.decode_baton* %32, i32 0, i32 7
  store i8* %31, i8** %33, align 8
  %34 = load %struct.decode_baton*, %struct.decode_baton** %11, align 8
  %35 = getelementptr inbounds %struct.decode_baton, %struct.decode_baton* %34, i32 0, i32 5
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @svn_stringbuf_create_empty(i32* %36)
  %38 = load %struct.decode_baton*, %struct.decode_baton** %11, align 8
  %39 = getelementptr inbounds %struct.decode_baton, %struct.decode_baton* %38, i32 0, i32 6
  store i32 %37, i32* %39, align 8
  %40 = load %struct.decode_baton*, %struct.decode_baton** %11, align 8
  %41 = getelementptr inbounds %struct.decode_baton, %struct.decode_baton* %40, i32 0, i32 4
  store i64 0, i64* %41, align 8
  %42 = load %struct.decode_baton*, %struct.decode_baton** %11, align 8
  %43 = getelementptr inbounds %struct.decode_baton, %struct.decode_baton* %42, i32 0, i32 3
  store i64 0, i64* %43, align 8
  %44 = load %struct.decode_baton*, %struct.decode_baton** %11, align 8
  %45 = getelementptr inbounds %struct.decode_baton, %struct.decode_baton* %44, i32 0, i32 2
  store i64 0, i64* %45, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.decode_baton*, %struct.decode_baton** %11, align 8
  %48 = getelementptr inbounds %struct.decode_baton, %struct.decode_baton* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load %struct.decode_baton*, %struct.decode_baton** %11, align 8
  %50 = getelementptr inbounds %struct.decode_baton, %struct.decode_baton* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  %51 = load %struct.decode_baton*, %struct.decode_baton** %11, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = call i32* @svn_stream_create(%struct.decode_baton* %51, i32* %52)
  store i32* %53, i32** %9, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = load i32, i32* @write_handler, align 4
  %56 = call i32 @svn_stream_set_write(i32* %54, i32 %55)
  %57 = load i32*, i32** %9, align 8
  %58 = load i32, i32* @close_handler, align 4
  %59 = call i32 @svn_stream_set_close(i32* %57, i32 %58)
  br label %66

60:                                               ; preds = %4
  %61 = load i32*, i32** %8, align 8
  %62 = call i32* @svn_stream_create(%struct.decode_baton* null, i32* %61)
  store i32* %62, i32** %9, align 8
  %63 = load i32*, i32** %9, align 8
  %64 = load i32, i32* @noop_write_handler, align 4
  %65 = call i32 @svn_stream_set_write(i32* %63, i32 %64)
  br label %66

66:                                               ; preds = %60, %15
  %67 = load i32*, i32** %9, align 8
  ret i32* %67
}

declare dso_local i8* @svn_pool_create(i32*) #1

declare dso_local %struct.decode_baton* @apr_palloc(i32*, i32) #1

declare dso_local i32 @svn_stringbuf_create_empty(i32*) #1

declare dso_local i32* @svn_stream_create(%struct.decode_baton*, i32*) #1

declare dso_local i32 @svn_stream_set_write(i32*, i32) #1

declare dso_local i32 @svn_stream_set_close(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
