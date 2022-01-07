; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_quoprint.c_svn_quoprint_encode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_quoprint.c_svn_quoprint_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.encode_baton = type { i32*, i64, i32* }

@encode_data = common dso_local global i32 0, align 4
@finish_encoding_data = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_quoprint_encode(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.encode_baton*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32* @svn_pool_create(i32* %8)
  store i32* %9, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call %struct.encode_baton* @apr_palloc(i32* %10, i32 24)
  store %struct.encode_baton* %11, %struct.encode_baton** %6, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = load %struct.encode_baton*, %struct.encode_baton** %6, align 8
  %14 = getelementptr inbounds %struct.encode_baton, %struct.encode_baton* %13, i32 0, i32 2
  store i32* %12, i32** %14, align 8
  %15 = load %struct.encode_baton*, %struct.encode_baton** %6, align 8
  %16 = getelementptr inbounds %struct.encode_baton, %struct.encode_baton* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = load %struct.encode_baton*, %struct.encode_baton** %6, align 8
  %19 = getelementptr inbounds %struct.encode_baton, %struct.encode_baton* %18, i32 0, i32 0
  store i32* %17, i32** %19, align 8
  %20 = load %struct.encode_baton*, %struct.encode_baton** %6, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call i32* @svn_stream_create(%struct.encode_baton* %20, i32* %21)
  store i32* %22, i32** %7, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* @encode_data, align 4
  %25 = call i32 @svn_stream_set_write(i32* %23, i32 %24)
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* @finish_encoding_data, align 4
  %28 = call i32 @svn_stream_set_close(i32* %26, i32 %27)
  %29 = load i32*, i32** %7, align 8
  ret i32* %29
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local %struct.encode_baton* @apr_palloc(i32*, i32) #1

declare dso_local i32* @svn_stream_create(%struct.encode_baton*, i32*) #1

declare dso_local i32 @svn_stream_set_write(i32*, i32) #1

declare dso_local i32 @svn_stream_set_close(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
