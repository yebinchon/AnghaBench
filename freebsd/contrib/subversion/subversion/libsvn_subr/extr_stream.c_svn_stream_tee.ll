; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_stream.c_svn_stream_tee.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_stream.c_svn_stream_tee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.baton_tee = type { i32*, i32* }

@write_handler_tee = common dso_local global i32 0, align 4
@close_handler_tee = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_stream_tee(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.baton_tee*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32*, i32** %6, align 8
  store i32* %13, i32** %4, align 8
  br label %38

14:                                               ; preds = %3
  %15 = load i32*, i32** %6, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i32*, i32** %5, align 8
  store i32* %18, i32** %4, align 8
  br label %38

19:                                               ; preds = %14
  %20 = load i32*, i32** %7, align 8
  %21 = call %struct.baton_tee* @apr_palloc(i32* %20, i32 16)
  store %struct.baton_tee* %21, %struct.baton_tee** %8, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = load %struct.baton_tee*, %struct.baton_tee** %8, align 8
  %24 = getelementptr inbounds %struct.baton_tee, %struct.baton_tee* %23, i32 0, i32 1
  store i32* %22, i32** %24, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = load %struct.baton_tee*, %struct.baton_tee** %8, align 8
  %27 = getelementptr inbounds %struct.baton_tee, %struct.baton_tee* %26, i32 0, i32 0
  store i32* %25, i32** %27, align 8
  %28 = load %struct.baton_tee*, %struct.baton_tee** %8, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = call i32* @svn_stream_create(%struct.baton_tee* %28, i32* %29)
  store i32* %30, i32** %9, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = load i32, i32* @write_handler_tee, align 4
  %33 = call i32 @svn_stream_set_write(i32* %31, i32 %32)
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* @close_handler_tee, align 4
  %36 = call i32 @svn_stream_set_close(i32* %34, i32 %35)
  %37 = load i32*, i32** %9, align 8
  store i32* %37, i32** %4, align 8
  br label %38

38:                                               ; preds = %19, %17, %12
  %39 = load i32*, i32** %4, align 8
  ret i32* %39
}

declare dso_local %struct.baton_tee* @apr_palloc(i32*, i32) #1

declare dso_local i32* @svn_stream_create(%struct.baton_tee*, i32*) #1

declare dso_local i32 @svn_stream_set_write(i32*, i32) #1

declare dso_local i32 @svn_stream_set_close(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
