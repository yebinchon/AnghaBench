; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_streams.c_svn_ra_svn__stream_from_sock.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_streams.c_svn_ra_svn__stream_from_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32* }

@sock_read_cb = common dso_local global i32 0, align 4
@sock_write_cb = common dso_local global i32 0, align 4
@sock_pending_cb = common dso_local global i32 0, align 4
@sock_timeout_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_ra_svn__stream_from_sock(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call %struct.TYPE_5__* @apr_palloc(i32* %7, i32 16)
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %5, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  store i32* %9, i32** %11, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @svn_pool_create(i32* %12)
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = call i32* @svn_stream_create(%struct.TYPE_5__* %16, i32* %17)
  store i32* %18, i32** %6, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* @sock_read_cb, align 4
  %21 = call i32 @svn_stream_set_read2(i32* %19, i32 %20, i32* null)
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* @sock_write_cb, align 4
  %24 = call i32 @svn_stream_set_write(i32* %22, i32 %23)
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* @sock_pending_cb, align 4
  %27 = call i32 @svn_stream_set_data_available(i32* %25, i32 %26)
  %28 = load i32*, i32** %6, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = load i32, i32* @sock_timeout_cb, align 4
  %32 = load i32*, i32** %4, align 8
  %33 = call i32* @svn_ra_svn__stream_create(i32* %28, i32* %29, %struct.TYPE_5__* %30, i32 %31, i32* %32)
  ret i32* %33
}

declare dso_local %struct.TYPE_5__* @apr_palloc(i32*, i32) #1

declare dso_local i32 @svn_pool_create(i32*) #1

declare dso_local i32* @svn_stream_create(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @svn_stream_set_read2(i32*, i32, i32*) #1

declare dso_local i32 @svn_stream_set_write(i32*, i32) #1

declare dso_local i32 @svn_stream_set_data_available(i32*, i32) #1

declare dso_local i32* @svn_ra_svn__stream_create(i32*, i32*, %struct.TYPE_5__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
