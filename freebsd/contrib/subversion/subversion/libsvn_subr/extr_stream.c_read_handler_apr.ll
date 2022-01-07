; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_stream.c_read_handler_apr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_stream.c_read_handler_apr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.baton_apr = type { i32, i32 }

@SVN_NO_ERROR = common dso_local global %struct.TYPE_9__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (i8*, i8*, i32*)* @read_handler_apr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @read_handler_apr(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.baton_apr*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.baton_apr*
  store %struct.baton_apr* %10, %struct.baton_apr** %7, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %38

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = load %struct.baton_apr*, %struct.baton_apr** %7, align 8
  %17 = getelementptr inbounds %struct.baton_apr, %struct.baton_apr* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.baton_apr*, %struct.baton_apr** %7, align 8
  %20 = getelementptr inbounds %struct.baton_apr, %struct.baton_apr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.TYPE_9__* @svn_io_file_getc(i8* %15, i32 %18, i32 %21)
  store %struct.TYPE_9__* %22, %struct.TYPE_9__** %8, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %24 = icmp ne %struct.TYPE_9__* %23, null
  br i1 %24, label %25, label %37

25:                                               ; preds = %14
  %26 = load i32*, i32** %6, align 8
  store i32 0, i32* %26, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @APR_STATUS_IS_EOF(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %34 = call i32 @svn_error_clear(%struct.TYPE_9__* %33)
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_9__* %35, %struct.TYPE_9__** %8, align 8
  br label %36

36:                                               ; preds = %32, %25
  br label %37

37:                                               ; preds = %36, %14
  br label %60

38:                                               ; preds = %3
  %39 = load %struct.baton_apr*, %struct.baton_apr** %7, align 8
  %40 = getelementptr inbounds %struct.baton_apr, %struct.baton_apr* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %5, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = load %struct.baton_apr*, %struct.baton_apr** %7, align 8
  %45 = getelementptr inbounds %struct.baton_apr, %struct.baton_apr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.TYPE_9__* @svn_io_file_read(i32 %41, i8* %42, i32* %43, i32 %46)
  store %struct.TYPE_9__* %47, %struct.TYPE_9__** %8, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %49 = icmp ne %struct.TYPE_9__* %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %38
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @APR_STATUS_IS_EOF(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %58 = call i32 @svn_error_clear(%struct.TYPE_9__* %57)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %8, align 8
  br label %59

59:                                               ; preds = %56, %50, %38
  br label %60

60:                                               ; preds = %59, %37
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %62 = call %struct.TYPE_9__* @svn_error_trace(%struct.TYPE_9__* %61)
  ret %struct.TYPE_9__* %62
}

declare dso_local %struct.TYPE_9__* @svn_io_file_getc(i8*, i32, i32) #1

declare dso_local i64 @APR_STATUS_IS_EOF(i32) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @svn_io_file_read(i32, i8*, i32*, i32) #1

declare dso_local %struct.TYPE_9__* @svn_error_trace(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
