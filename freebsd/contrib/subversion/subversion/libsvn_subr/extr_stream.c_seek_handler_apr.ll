; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_stream.c_seek_handler_apr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_stream.c_seek_handler_apr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.baton_apr = type { i32, i32, i64 }
%struct.mark_apr = type { i32 }

@APR_SET = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*)* @seek_handler_apr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @seek_handler_apr(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.baton_apr*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.baton_apr*
  store %struct.baton_apr* %8, %struct.baton_apr** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i32*, i32** %4, align 8
  %13 = bitcast i32* %12 to %struct.mark_apr*
  %14 = getelementptr inbounds %struct.mark_apr, %struct.mark_apr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  br label %17

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %16, %11
  %18 = phi i32 [ %15, %11 ], [ 0, %16 ]
  store i32 %18, i32* %6, align 4
  %19 = load %struct.baton_apr*, %struct.baton_apr** %5, align 8
  %20 = getelementptr inbounds %struct.baton_apr, %struct.baton_apr* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %17
  %24 = load %struct.baton_apr*, %struct.baton_apr** %5, align 8
  %25 = getelementptr inbounds %struct.baton_apr, %struct.baton_apr* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.baton_apr*, %struct.baton_apr** %5, align 8
  %29 = getelementptr inbounds %struct.baton_apr, %struct.baton_apr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @svn_io_file_trunc(i32 %26, i32 %27, i32 %30)
  %32 = call i32 @SVN_ERR(i32 %31)
  br label %43

33:                                               ; preds = %17
  %34 = load %struct.baton_apr*, %struct.baton_apr** %5, align 8
  %35 = getelementptr inbounds %struct.baton_apr, %struct.baton_apr* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @APR_SET, align 4
  %38 = load %struct.baton_apr*, %struct.baton_apr** %5, align 8
  %39 = getelementptr inbounds %struct.baton_apr, %struct.baton_apr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @svn_io_file_seek(i32 %36, i32 %37, i32* %6, i32 %40)
  %42 = call i32 @SVN_ERR(i32 %41)
  br label %43

43:                                               ; preds = %33, %23
  %44 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %44
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_file_trunc(i32, i32, i32) #1

declare dso_local i32 @svn_io_file_seek(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
