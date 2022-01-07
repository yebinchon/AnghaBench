; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_parse-diff.c_get_base85_data_stream.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_parse-diff.c_get_base85_data_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.base85_baton_t = type { i8*, i8*, i32, i32* }

@read_handler_base85 = common dso_local global i32 0, align 4
@close_handler_base85 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i8*, i32*)* @get_base85_data_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_base85_data_stream(i32* %0, i8* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.base85_baton_t*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i32*, i32** %8, align 8
  %12 = call %struct.base85_baton_t* @apr_pcalloc(i32* %11, i32 32)
  store %struct.base85_baton_t* %12, %struct.base85_baton_t** %9, align 8
  %13 = load %struct.base85_baton_t*, %struct.base85_baton_t** %9, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = call i32* @svn_stream_create(%struct.base85_baton_t* %13, i32* %14)
  store i32* %15, i32** %10, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = load %struct.base85_baton_t*, %struct.base85_baton_t** %9, align 8
  %18 = getelementptr inbounds %struct.base85_baton_t, %struct.base85_baton_t* %17, i32 0, i32 3
  store i32* %16, i32** %18, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = call i32 @svn_pool_create(i32* %19)
  %21 = load %struct.base85_baton_t*, %struct.base85_baton_t** %9, align 8
  %22 = getelementptr inbounds %struct.base85_baton_t, %struct.base85_baton_t* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load %struct.base85_baton_t*, %struct.base85_baton_t** %9, align 8
  %25 = getelementptr inbounds %struct.base85_baton_t, %struct.base85_baton_t* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load %struct.base85_baton_t*, %struct.base85_baton_t** %9, align 8
  %28 = getelementptr inbounds %struct.base85_baton_t, %struct.base85_baton_t* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = load i32, i32* @read_handler_base85, align 4
  %31 = call i32 @svn_stream_set_read2(i32* %29, i32* null, i32 %30)
  %32 = load i32*, i32** %10, align 8
  %33 = load i32, i32* @close_handler_base85, align 4
  %34 = call i32 @svn_stream_set_close(i32* %32, i32 %33)
  %35 = load i32*, i32** %10, align 8
  ret i32* %35
}

declare dso_local %struct.base85_baton_t* @apr_pcalloc(i32*, i32) #1

declare dso_local i32* @svn_stream_create(%struct.base85_baton_t*, i32*) #1

declare dso_local i32 @svn_pool_create(i32*) #1

declare dso_local i32 @svn_stream_set_read2(i32*, i32*, i32) #1

declare dso_local i32 @svn_stream_set_close(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
