; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_diff_file.c_make_trailing_context_printer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_diff_file.c_make_trailing_context_printer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32, i32 }
%struct.trailing_context_printer = type { %struct.TYPE_3__*, i32 }

@trailing_context_printer_write = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @make_trailing_context_printer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_trailing_context_printer(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.trailing_context_printer*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @svn_pool_clear(i32 %7)
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.trailing_context_printer* @apr_pcalloc(i32 %11, i32 16)
  store %struct.trailing_context_printer* %12, %struct.trailing_context_printer** %3, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.trailing_context_printer*, %struct.trailing_context_printer** %3, align 8
  %17 = getelementptr inbounds %struct.trailing_context_printer, %struct.trailing_context_printer* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %19 = load %struct.trailing_context_printer*, %struct.trailing_context_printer** %3, align 8
  %20 = getelementptr inbounds %struct.trailing_context_printer, %struct.trailing_context_printer* %19, i32 0, i32 0
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %20, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32* @svn_stream_empty(i32 %23)
  store i32* %24, i32** %4, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = load %struct.trailing_context_printer*, %struct.trailing_context_printer** %3, align 8
  %27 = call i32 @svn_stream_set_baton(i32* %25, %struct.trailing_context_printer* %26)
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* @trailing_context_printer_write, align 4
  %30 = call i32 @svn_stream_set_write(i32* %28, i32 %29)
  %31 = load i32*, i32** %4, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i32* %31, i32** %33, align 8
  ret void
}

declare dso_local i32 @svn_pool_clear(i32) #1

declare dso_local %struct.trailing_context_printer* @apr_pcalloc(i32, i32) #1

declare dso_local i32* @svn_stream_empty(i32) #1

declare dso_local i32 @svn_stream_set_baton(i32*, %struct.trailing_context_printer*) #1

declare dso_local i32 @svn_stream_set_write(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
