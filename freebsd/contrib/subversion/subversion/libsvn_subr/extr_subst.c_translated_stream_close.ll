; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_subst.c_translated_stream_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_subst.c_translated_stream_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.translated_stream_baton = type { i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @translated_stream_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @translated_stream_close(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.translated_stream_baton*, align 8
  %4 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.translated_stream_baton*
  store %struct.translated_stream_baton* %6, %struct.translated_stream_baton** %3, align 8
  store i32* null, i32** %4, align 8
  %7 = load %struct.translated_stream_baton*, %struct.translated_stream_baton** %3, align 8
  %8 = getelementptr inbounds %struct.translated_stream_baton, %struct.translated_stream_baton* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  %12 = load %struct.translated_stream_baton*, %struct.translated_stream_baton** %3, align 8
  %13 = getelementptr inbounds %struct.translated_stream_baton, %struct.translated_stream_baton* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.translated_stream_baton*, %struct.translated_stream_baton** %3, align 8
  %16 = getelementptr inbounds %struct.translated_stream_baton, %struct.translated_stream_baton* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.translated_stream_baton*, %struct.translated_stream_baton** %3, align 8
  %19 = getelementptr inbounds %struct.translated_stream_baton, %struct.translated_stream_baton* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32* @translate_chunk(i32 %14, i32 %17, i32* null, i32 0, i32 %20)
  store i32* %21, i32** %4, align 8
  br label %22

22:                                               ; preds = %11, %1
  %23 = load i32*, i32** %4, align 8
  %24 = load %struct.translated_stream_baton*, %struct.translated_stream_baton** %3, align 8
  %25 = getelementptr inbounds %struct.translated_stream_baton, %struct.translated_stream_baton* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @svn_stream_close(i32 %26)
  %28 = call i32* @svn_error_compose_create(i32* %23, i32 %27)
  store i32* %28, i32** %4, align 8
  %29 = load %struct.translated_stream_baton*, %struct.translated_stream_baton** %3, align 8
  %30 = getelementptr inbounds %struct.translated_stream_baton, %struct.translated_stream_baton* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @svn_pool_destroy(i32 %31)
  %33 = load i32*, i32** %4, align 8
  %34 = call i32* @svn_error_trace(i32* %33)
  ret i32* %34
}

declare dso_local i32* @translate_chunk(i32, i32, i32*, i32, i32) #1

declare dso_local i32* @svn_error_compose_create(i32*, i32) #1

declare dso_local i32 @svn_stream_close(i32) #1

declare dso_local i32 @svn_pool_destroy(i32) #1

declare dso_local i32* @svn_error_trace(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
