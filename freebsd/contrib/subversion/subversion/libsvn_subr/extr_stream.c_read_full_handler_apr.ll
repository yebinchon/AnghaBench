; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_stream.c_read_full_handler_apr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_stream.c_read_full_handler_apr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.baton_apr = type { i32, i32 }

@SVN_NO_ERROR = common dso_local global %struct.TYPE_9__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (i8*, i8*, i32*)* @read_full_handler_apr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @read_full_handler_apr(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.baton_apr*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.baton_apr*
  store %struct.baton_apr* %11, %struct.baton_apr** %7, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %39

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8
  %17 = load %struct.baton_apr*, %struct.baton_apr** %7, align 8
  %18 = getelementptr inbounds %struct.baton_apr, %struct.baton_apr* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.baton_apr*, %struct.baton_apr** %7, align 8
  %21 = getelementptr inbounds %struct.baton_apr, %struct.baton_apr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.TYPE_9__* @svn_io_file_getc(i8* %16, i32 %19, i32 %22)
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %8, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %25 = icmp ne %struct.TYPE_9__* %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %15
  %27 = load i32*, i32** %6, align 8
  store i32 0, i32* %27, align 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @APR_STATUS_IS_EOF(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %35 = call i32 @svn_error_clear(%struct.TYPE_9__* %34)
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_9__* %36, %struct.TYPE_9__** %8, align 8
  br label %37

37:                                               ; preds = %33, %26
  br label %38

38:                                               ; preds = %37, %15
  br label %51

39:                                               ; preds = %3
  %40 = load %struct.baton_apr*, %struct.baton_apr** %7, align 8
  %41 = getelementptr inbounds %struct.baton_apr, %struct.baton_apr* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %5, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = load %struct.baton_apr*, %struct.baton_apr** %7, align 8
  %48 = getelementptr inbounds %struct.baton_apr, %struct.baton_apr* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call %struct.TYPE_9__* @svn_io_file_read_full2(i32 %42, i8* %43, i32 %45, i32* %46, i32* %9, i32 %49)
  store %struct.TYPE_9__* %50, %struct.TYPE_9__** %8, align 8
  br label %51

51:                                               ; preds = %39, %38
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %53 = call %struct.TYPE_9__* @svn_error_trace(%struct.TYPE_9__* %52)
  ret %struct.TYPE_9__* %53
}

declare dso_local %struct.TYPE_9__* @svn_io_file_getc(i8*, i32, i32) #1

declare dso_local i64 @APR_STATUS_IS_EOF(i32) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @svn_io_file_read_full2(i32, i8*, i32, i32*, i32*, i32) #1

declare dso_local %struct.TYPE_9__* @svn_error_trace(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
