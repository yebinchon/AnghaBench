; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_svndiff.c_svn_txdelta_to_svndiff_stream.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_svndiff.c_svn_txdelta_to_svndiff_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64, i32, i32, i32*, i32 }

@FALSE = common dso_local global i32 0, align 4
@svndiff_stream_write_fn = common dso_local global i32 0, align 4
@svndiff_stream_read_fn = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_txdelta_to_svndiff_stream(i32* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = call %struct.TYPE_4__* @apr_pcalloc(i32* %12, i32 40)
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %9, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = call i32 @svn_pool_create(i32* %14)
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 6
  store i32 %15, i32* %17, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 5
  store i32* %18, i32** %20, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = call i32 @svn_stringbuf_create_empty(i32* %21)
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @FALSE, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  store i64 0, i64* %29, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = call i32* @svn_stream_create(%struct.TYPE_4__* %30, i32* %31)
  store i32* %32, i32** %10, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = load i32, i32* @svndiff_stream_write_fn, align 4
  %35 = call i32 @svn_stream_set_write(i32* %33, i32 %34)
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32*, i32** %10, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @svn_txdelta_to_svndiff3(i32* %37, i32* %39, i32* %40, i32 %41, i32 %42, i32* %43)
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = call i32* @svn_stream_create(%struct.TYPE_4__* %45, i32* %46)
  store i32* %47, i32** %11, align 8
  %48 = load i32*, i32** %11, align 8
  %49 = load i32, i32* @svndiff_stream_read_fn, align 4
  %50 = call i32 @svn_stream_set_read2(i32* %48, i32* null, i32 %49)
  %51 = load i32*, i32** %11, align 8
  ret i32* %51
}

declare dso_local %struct.TYPE_4__* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @svn_pool_create(i32*) #1

declare dso_local i32 @svn_stringbuf_create_empty(i32*) #1

declare dso_local i32* @svn_stream_create(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @svn_stream_set_write(i32*, i32) #1

declare dso_local i32 @svn_txdelta_to_svndiff3(i32*, i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @svn_stream_set_read2(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
