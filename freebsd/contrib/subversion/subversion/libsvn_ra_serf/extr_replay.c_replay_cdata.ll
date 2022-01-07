; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_replay.c_replay_cdata.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_replay.c_replay_cdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.revision_report_t = type { %struct.replay_node_t* }
%struct.replay_node_t = type { i64, i32 }

@REPLAY_APPLY_TEXTDELTA = common dso_local global i32 0, align 4
@SVN_ERR_XML_MALFORMED = common dso_local global i32 0, align 4
@SVN_ERR_STREAM_UNEXPECTED_EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Error writing stream: unexpected EOF\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i32, i8*, i64, i32*)* @replay_cdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @replay_cdata(i32* %0, i8* %1, i32 %2, i8* %3, i64 %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.revision_report_t*, align 8
  %15 = alloca %struct.replay_node_t*, align 8
  %16 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to %struct.revision_report_t*
  store %struct.revision_report_t* %18, %struct.revision_report_t** %14, align 8
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @REPLAY_APPLY_TEXTDELTA, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %58

22:                                               ; preds = %6
  %23 = load %struct.revision_report_t*, %struct.revision_report_t** %14, align 8
  %24 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %23, i32 0, i32 0
  %25 = load %struct.replay_node_t*, %struct.replay_node_t** %24, align 8
  store %struct.replay_node_t* %25, %struct.replay_node_t** %15, align 8
  %26 = load %struct.replay_node_t*, %struct.replay_node_t** %15, align 8
  %27 = icmp ne %struct.replay_node_t* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load %struct.replay_node_t*, %struct.replay_node_t** %15, align 8
  %30 = getelementptr inbounds %struct.replay_node_t, %struct.replay_node_t* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %28, %22
  %34 = load i32, i32* @SVN_ERR_XML_MALFORMED, align 4
  %35 = call i32* @svn_error_create(i32 %34, i32* null, i32* null)
  store i32* %35, i32** %7, align 8
  br label %60

36:                                               ; preds = %28
  %37 = load %struct.replay_node_t*, %struct.replay_node_t** %15, align 8
  %38 = getelementptr inbounds %struct.replay_node_t, %struct.replay_node_t* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %36
  %42 = load i64, i64* %12, align 8
  store i64 %42, i64* %16, align 8
  %43 = load %struct.replay_node_t*, %struct.replay_node_t** %15, align 8
  %44 = getelementptr inbounds %struct.replay_node_t, %struct.replay_node_t* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = call i32 @svn_stream_write(i64 %45, i8* %46, i64* %16)
  %48 = call i32 @SVN_ERR(i32 %47)
  %49 = load i64, i64* %16, align 8
  %50 = load i64, i64* %12, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %41
  %53 = load i32, i32* @SVN_ERR_STREAM_UNEXPECTED_EOF, align 4
  %54 = call i32* @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %55 = call i32* @svn_error_create(i32 %53, i32* null, i32* %54)
  store i32* %55, i32** %7, align 8
  br label %60

56:                                               ; preds = %41
  br label %57

57:                                               ; preds = %56, %36
  br label %58

58:                                               ; preds = %57, %6
  %59 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %59, i32** %7, align 8
  br label %60

60:                                               ; preds = %58, %52, %33
  %61 = load i32*, i32** %7, align 8
  ret i32* %61
}

declare dso_local i32* @svn_error_create(i32, i32*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_stream_write(i64, i8*, i64*) #1

declare dso_local i32* @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
