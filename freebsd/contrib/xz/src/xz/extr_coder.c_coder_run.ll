; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_coder.c_coder_run.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_coder.c_coder_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32* }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }

@opt_mode = common dso_local global i64 0, align 8
@MODE_COMPRESS = common dso_local global i64 0, align 8
@strm = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@in_buf = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@IO_BUFFER_SIZE = common dso_local global i32 0, align 4
@SIZE_MAX = common dso_local global i64 0, align 8
@CODER_INIT_ERROR = common dso_local global i32 0, align 4
@user_abort = common dso_local global i32 0, align 4
@MODE_TEST = common dso_local global i64 0, align 8
@CODER_INIT_NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @coder_run(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = call i32 @message_filename(i8* %7)
  %9 = load i8*, i8** %2, align 8
  %10 = call %struct.TYPE_15__* @io_open_src(i8* %9)
  store %struct.TYPE_15__* %10, %struct.TYPE_15__** %3, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %12 = icmp eq %struct.TYPE_15__* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %80

14:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  %15 = load i64, i64* @opt_mode, align 8
  %16 = load i64, i64* @MODE_COMPRESS, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @strm, i32 0, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @strm, i32 0, i32 0), align 8
  br label %24

19:                                               ; preds = %14
  %20 = load i32*, i32** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @in_buf, i32 0, i32 0), align 8
  store i32* %20, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @strm, i32 0, i32 1), align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %22 = load i32, i32* @IO_BUFFER_SIZE, align 4
  %23 = call i64 @io_read(%struct.TYPE_15__* %21, %struct.TYPE_17__* @in_buf, i32 %22)
  store i64 %23, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @strm, i32 0, i32 0), align 8
  br label %24

24:                                               ; preds = %19, %18
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @strm, i32 0, i32 0), align 8
  %26 = load i64, i64* @SIZE_MAX, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %76

28:                                               ; preds = %24
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %30 = call i32 @coder_init(%struct.TYPE_15__* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @CODER_INIT_ERROR, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %75

34:                                               ; preds = %28
  %35 = load i32, i32* @user_abort, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %75, label %37

37:                                               ; preds = %34
  %38 = load i64, i64* @opt_mode, align 8
  %39 = load i64, i64* @MODE_TEST, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %43 = call i32 @io_open_dest(%struct.TYPE_15__* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %74, label %45

45:                                               ; preds = %41, %37
  %46 = call i32 (...) @mytime_set_start_time()
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp sle i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %58

53:                                               ; preds = %45
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  br label %58

58:                                               ; preds = %53, %52
  %59 = phi i64 [ 0, %52 ], [ %57, %53 ]
  store i64 %59, i64* %6, align 8
  %60 = load i64, i64* %6, align 8
  %61 = call i32 @message_progress_start(%struct.TYPE_16__* @strm, i64 %60)
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @CODER_INIT_NORMAL, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %67 = call i32 @coder_normal(%struct.TYPE_15__* %66)
  store i32 %67, i32* %4, align 4
  br label %71

68:                                               ; preds = %58
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %70 = call i32 @coder_passthru(%struct.TYPE_15__* %69)
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %68, %65
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @message_progress_end(i32 %72)
  br label %74

74:                                               ; preds = %71, %41
  br label %75

75:                                               ; preds = %74, %34, %28
  br label %76

76:                                               ; preds = %75, %24
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @io_close(%struct.TYPE_15__* %77, i32 %78)
  br label %80

80:                                               ; preds = %76, %13
  ret void
}

declare dso_local i32 @message_filename(i8*) #1

declare dso_local %struct.TYPE_15__* @io_open_src(i8*) #1

declare dso_local i64 @io_read(%struct.TYPE_15__*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @coder_init(%struct.TYPE_15__*) #1

declare dso_local i32 @io_open_dest(%struct.TYPE_15__*) #1

declare dso_local i32 @mytime_set_start_time(...) #1

declare dso_local i32 @message_progress_start(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @coder_normal(%struct.TYPE_15__*) #1

declare dso_local i32 @coder_passthru(%struct.TYPE_15__*) #1

declare dso_local i32 @message_progress_end(i32) #1

declare dso_local i32 @io_close(%struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
