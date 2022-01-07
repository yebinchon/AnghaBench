; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_stream.c_svn_stream_from_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_stream.c_svn_stream_from_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_stream_baton = type { i64, i32* }

@read_handler_string = common dso_local global i32 0, align 4
@mark_handler_string = common dso_local global i32 0, align 4
@seek_handler_string = common dso_local global i32 0, align 4
@skip_handler_string = common dso_local global i32 0, align 4
@data_available_handler_string = common dso_local global i32 0, align 4
@readline_handler_string = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_stream_from_string(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.string_stream_baton*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32*, i32** %5, align 8
  %12 = call i32* @svn_stream_empty(i32* %11)
  store i32* %12, i32** %3, align 8
  br label %44

13:                                               ; preds = %2
  %14 = load i32*, i32** %5, align 8
  %15 = call %struct.string_stream_baton* @apr_palloc(i32* %14, i32 16)
  store %struct.string_stream_baton* %15, %struct.string_stream_baton** %7, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = load %struct.string_stream_baton*, %struct.string_stream_baton** %7, align 8
  %18 = getelementptr inbounds %struct.string_stream_baton, %struct.string_stream_baton* %17, i32 0, i32 1
  store i32* %16, i32** %18, align 8
  %19 = load %struct.string_stream_baton*, %struct.string_stream_baton** %7, align 8
  %20 = getelementptr inbounds %struct.string_stream_baton, %struct.string_stream_baton* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = load %struct.string_stream_baton*, %struct.string_stream_baton** %7, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = call i32* @svn_stream_create(%struct.string_stream_baton* %21, i32* %22)
  store i32* %23, i32** %6, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* @read_handler_string, align 4
  %26 = load i32, i32* @read_handler_string, align 4
  %27 = call i32 @svn_stream_set_read2(i32* %24, i32 %25, i32 %26)
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* @mark_handler_string, align 4
  %30 = call i32 @svn_stream_set_mark(i32* %28, i32 %29)
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* @seek_handler_string, align 4
  %33 = call i32 @svn_stream_set_seek(i32* %31, i32 %32)
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* @skip_handler_string, align 4
  %36 = call i32 @svn_stream_set_skip(i32* %34, i32 %35)
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* @data_available_handler_string, align 4
  %39 = call i32 @svn_stream_set_data_available(i32* %37, i32 %38)
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* @readline_handler_string, align 4
  %42 = call i32 @svn_stream_set_readline(i32* %40, i32 %41)
  %43 = load i32*, i32** %6, align 8
  store i32* %43, i32** %3, align 8
  br label %44

44:                                               ; preds = %13, %10
  %45 = load i32*, i32** %3, align 8
  ret i32* %45
}

declare dso_local i32* @svn_stream_empty(i32*) #1

declare dso_local %struct.string_stream_baton* @apr_palloc(i32*, i32) #1

declare dso_local i32* @svn_stream_create(%struct.string_stream_baton*, i32*) #1

declare dso_local i32 @svn_stream_set_read2(i32*, i32, i32) #1

declare dso_local i32 @svn_stream_set_mark(i32*, i32) #1

declare dso_local i32 @svn_stream_set_seek(i32*, i32) #1

declare dso_local i32 @svn_stream_set_skip(i32*, i32) #1

declare dso_local i32 @svn_stream_set_data_available(i32*, i32) #1

declare dso_local i32 @svn_stream_set_readline(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
