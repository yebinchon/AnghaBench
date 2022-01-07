; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_subst.c_translated_stream_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_subst.c_translated_stream_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.translated_stream_baton = type { i32, i32, i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32*)* @translated_stream_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @translated_stream_write(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.translated_stream_baton*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.translated_stream_baton*
  store %struct.translated_stream_baton* %9, %struct.translated_stream_baton** %7, align 8
  %10 = load %struct.translated_stream_baton*, %struct.translated_stream_baton** %7, align 8
  %11 = getelementptr inbounds %struct.translated_stream_baton, %struct.translated_stream_baton* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @svn_pool_clear(i32 %12)
  %14 = load i32, i32* @TRUE, align 4
  %15 = load %struct.translated_stream_baton*, %struct.translated_stream_baton** %7, align 8
  %16 = getelementptr inbounds %struct.translated_stream_baton, %struct.translated_stream_baton* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 4
  %17 = load %struct.translated_stream_baton*, %struct.translated_stream_baton** %7, align 8
  %18 = getelementptr inbounds %struct.translated_stream_baton, %struct.translated_stream_baton* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.translated_stream_baton*, %struct.translated_stream_baton** %7, align 8
  %21 = getelementptr inbounds %struct.translated_stream_baton, %struct.translated_stream_baton* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i8*, i8** %5, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.translated_stream_baton*, %struct.translated_stream_baton** %7, align 8
  %27 = getelementptr inbounds %struct.translated_stream_baton, %struct.translated_stream_baton* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32* @translate_chunk(i32 %19, i32 %22, i8* %23, i32 %25, i32 %28)
  ret i32* %29
}

declare dso_local i32 @svn_pool_clear(i32) #1

declare dso_local i32* @translate_chunk(i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
