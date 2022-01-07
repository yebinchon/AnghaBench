; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_stream.c_make_stream_from_apr_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_stream.c_make_stream_from_apr_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32* }
%struct.baton_apr = type { i64, i32*, i32* }

@read_handler_apr = common dso_local global i32 0, align 4
@read_full_handler_apr = common dso_local global i32 0, align 4
@write_handler_apr = common dso_local global i32 0, align 4
@skip_handler_apr = common dso_local global i32 0, align 4
@mark_handler_apr = common dso_local global i32 0, align 4
@seek_handler_apr = common dso_local global i32 0, align 4
@readline_handler_apr = common dso_local global i32 0, align 4
@data_available_handler_apr = common dso_local global i32 0, align 4
@close_handler_apr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (i32*, i64, i64, i64, i32*)* @make_stream_from_apr_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @make_stream_from_apr_file(i32* %0, i64 %1, i64 %2, i64 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.baton_apr*, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %5
  %17 = load i32*, i32** %11, align 8
  %18 = call %struct.TYPE_13__* @svn_stream_empty(i32* %17)
  store %struct.TYPE_13__* %18, %struct.TYPE_13__** %6, align 8
  br label %71

19:                                               ; preds = %5
  %20 = load i32*, i32** %11, align 8
  %21 = call %struct.baton_apr* @apr_palloc(i32* %20, i32 24)
  store %struct.baton_apr* %21, %struct.baton_apr** %12, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = load %struct.baton_apr*, %struct.baton_apr** %12, align 8
  %24 = getelementptr inbounds %struct.baton_apr, %struct.baton_apr* %23, i32 0, i32 2
  store i32* %22, i32** %24, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = load %struct.baton_apr*, %struct.baton_apr** %12, align 8
  %27 = getelementptr inbounds %struct.baton_apr, %struct.baton_apr* %26, i32 0, i32 1
  store i32* %25, i32** %27, align 8
  %28 = load i64, i64* %10, align 8
  %29 = load %struct.baton_apr*, %struct.baton_apr** %12, align 8
  %30 = getelementptr inbounds %struct.baton_apr, %struct.baton_apr* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.baton_apr*, %struct.baton_apr** %12, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = call %struct.TYPE_13__* @svn_stream_create(%struct.baton_apr* %31, i32* %32)
  store %struct.TYPE_13__* %33, %struct.TYPE_13__** %13, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %35 = load i32, i32* @read_handler_apr, align 4
  %36 = load i32, i32* @read_full_handler_apr, align 4
  %37 = call i32 @svn_stream_set_read2(%struct.TYPE_13__* %34, i32 %35, i32 %36)
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %39 = load i32, i32* @write_handler_apr, align 4
  %40 = call i32 @svn_stream_set_write(%struct.TYPE_13__* %38, i32 %39)
  %41 = load i64, i64* %9, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %19
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %45 = load i32, i32* @skip_handler_apr, align 4
  %46 = call i32 @svn_stream_set_skip(%struct.TYPE_13__* %44, i32 %45)
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %48 = load i32, i32* @mark_handler_apr, align 4
  %49 = call i32 @svn_stream_set_mark(%struct.TYPE_13__* %47, i32 %48)
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %51 = load i32, i32* @seek_handler_apr, align 4
  %52 = call i32 @svn_stream_set_seek(%struct.TYPE_13__* %50, i32 %51)
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %54 = load i32, i32* @readline_handler_apr, align 4
  %55 = call i32 @svn_stream_set_readline(%struct.TYPE_13__* %53, i32 %54)
  br label %56

56:                                               ; preds = %43, %19
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %58 = load i32, i32* @data_available_handler_apr, align 4
  %59 = call i32 @svn_stream_set_data_available(%struct.TYPE_13__* %57, i32 %58)
  %60 = load i32*, i32** %7, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  store i32* %60, i32** %62, align 8
  %63 = load i64, i64* %8, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %56
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %67 = load i32, i32* @close_handler_apr, align 4
  %68 = call i32 @svn_stream_set_close(%struct.TYPE_13__* %66, i32 %67)
  br label %69

69:                                               ; preds = %65, %56
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  store %struct.TYPE_13__* %70, %struct.TYPE_13__** %6, align 8
  br label %71

71:                                               ; preds = %69, %16
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  ret %struct.TYPE_13__* %72
}

declare dso_local %struct.TYPE_13__* @svn_stream_empty(i32*) #1

declare dso_local %struct.baton_apr* @apr_palloc(i32*, i32) #1

declare dso_local %struct.TYPE_13__* @svn_stream_create(%struct.baton_apr*, i32*) #1

declare dso_local i32 @svn_stream_set_read2(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @svn_stream_set_write(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @svn_stream_set_skip(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @svn_stream_set_mark(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @svn_stream_set_seek(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @svn_stream_set_readline(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @svn_stream_set_data_available(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @svn_stream_set_close(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
