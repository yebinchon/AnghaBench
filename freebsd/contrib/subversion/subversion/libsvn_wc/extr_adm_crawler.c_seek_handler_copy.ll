; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_adm_crawler.c_seek_handler_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_adm_crawler.c_seek_handler_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.copying_stream_baton = type { i32, i32 }

@SVN_ERR_STREAM_SEEK_NOT_SUPPORTED = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*)* @seek_handler_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @seek_handler_copy(i8* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.copying_stream_baton*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.copying_stream_baton*
  store %struct.copying_stream_baton* %8, %struct.copying_stream_baton** %6, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @SVN_ERR_STREAM_SEEK_NOT_SUPPORTED, align 4
  %13 = call i32* @svn_error_create(i32 %12, i32* null, i32* null)
  store i32* %13, i32** %3, align 8
  br label %27

14:                                               ; preds = %2
  %15 = load %struct.copying_stream_baton*, %struct.copying_stream_baton** %6, align 8
  %16 = getelementptr inbounds %struct.copying_stream_baton, %struct.copying_stream_baton* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @svn_stream_reset(i32 %17)
  %19 = call i32 @SVN_ERR(i32 %18)
  %20 = load %struct.copying_stream_baton*, %struct.copying_stream_baton** %6, align 8
  %21 = getelementptr inbounds %struct.copying_stream_baton, %struct.copying_stream_baton* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @svn_stream_reset(i32 %22)
  %24 = call i32 @SVN_ERR(i32 %23)
  br label %25

25:                                               ; preds = %14
  %26 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %26, i32** %3, align 8
  br label %27

27:                                               ; preds = %25, %11
  %28 = load i32*, i32** %3, align 8
  ret i32* %28
}

declare dso_local i32* @svn_error_create(i32, i32*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_stream_reset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
