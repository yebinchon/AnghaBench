; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ggate/ggatel/extr_ggatel.c_g_gatel_serve.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ggate/ggatel/extr_ggatel.c_g_gatel_serve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_gate_ctl_io = type { i64, i32, i32, i32, i32*, i32, i32 }

@g_gate_verbose = common dso_local global i64 0, align 8
@unit = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Cannot daemonize\00", align 1
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Worker created: %u.\00", align 1
@G_GATE_VERSION = common dso_local global i32 0, align 4
@sectorsize = common dso_local global i64 0, align 8
@G_GATE_CMD_START = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"ioctl(/dev/%s): %s.\00", align 1
@G_GATE_CTL_NAME = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@G_GATE_CMD_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @g_gatel_serve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_gatel_serve(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.g_gate_ctl_io, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i64, i64* @g_gate_verbose, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = call i32 @daemon(i32 0, i32 0)
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = load i32, i32* @unit, align 4
  %13 = call i32 @g_gate_destroy(i32 %12, i32 1)
  %14 = load i32, i32* @EXIT_FAILURE, align 4
  %15 = call i32 @err(i32 %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %11, %8
  br label %17

17:                                               ; preds = %16, %1
  %18 = load i32, i32* @LOG_DEBUG, align 4
  %19 = call i32 (...) @getpid()
  %20 = call i32 @g_gate_log(i32 %18, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @G_GATE_VERSION, align 4
  %22 = getelementptr inbounds %struct.g_gate_ctl_io, %struct.g_gate_ctl_io* %3, i32 0, i32 6
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @unit, align 4
  %24 = getelementptr inbounds %struct.g_gate_ctl_io, %struct.g_gate_ctl_io* %3, i32 0, i32 5
  store i32 %23, i32* %24, align 8
  %25 = load i64, i64* @sectorsize, align 8
  store i64 %25, i64* %4, align 8
  %26 = load i64, i64* %4, align 8
  %27 = call i32* @malloc(i64 %26)
  %28 = getelementptr inbounds %struct.g_gate_ctl_io, %struct.g_gate_ctl_io* %3, i32 0, i32 4
  store i32* %27, i32** %28, align 8
  br label %29

29:                                               ; preds = %137, %17
  br label %30

30:                                               ; preds = %71, %29
  %31 = load i64, i64* %4, align 8
  %32 = getelementptr inbounds %struct.g_gate_ctl_io, %struct.g_gate_ctl_io* %3, i32 0, i32 0
  store i64 %31, i64* %32, align 8
  %33 = getelementptr inbounds %struct.g_gate_ctl_io, %struct.g_gate_ctl_io* %3, i32 0, i32 1
  store i32 0, i32* %33, align 8
  %34 = load i32, i32* @G_GATE_CMD_START, align 4
  %35 = call i32 @g_gate_ioctl(i32 %34, %struct.g_gate_ctl_io* %3)
  %36 = getelementptr inbounds %struct.g_gate_ctl_io, %struct.g_gate_ctl_io* %3, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  switch i32 %38, label %76 [
    i32 0, label %39
    i32 130, label %40
    i32 129, label %49
    i32 128, label %75
  ]

39:                                               ; preds = %30
  br label %81

40:                                               ; preds = %30
  %41 = getelementptr inbounds %struct.g_gate_ctl_io, %struct.g_gate_ctl_io* %3, i32 0, i32 4
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @free(i32* %42)
  %44 = call i32 (...) @g_gate_close_device()
  %45 = load i32, i32* %2, align 4
  %46 = call i32 @close(i32 %45)
  %47 = load i32, i32* @EXIT_SUCCESS, align 4
  %48 = call i32 @exit(i32 %47) #3
  unreachable

49:                                               ; preds = %30
  %50 = getelementptr inbounds %struct.g_gate_ctl_io, %struct.g_gate_ctl_io* %3, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 133
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.g_gate_ctl_io, %struct.g_gate_ctl_io* %3, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 131
  br label %57

57:                                               ; preds = %53, %49
  %58 = phi i1 [ true, %49 ], [ %56, %53 ]
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = getelementptr inbounds %struct.g_gate_ctl_io, %struct.g_gate_ctl_io* %3, i32 0, i32 4
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds %struct.g_gate_ctl_io, %struct.g_gate_ctl_io* %3, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i8* @realloc(i32* %62, i64 %64)
  %66 = bitcast i8* %65 to i32*
  %67 = getelementptr inbounds %struct.g_gate_ctl_io, %struct.g_gate_ctl_io* %3, i32 0, i32 4
  store i32* %66, i32** %67, align 8
  %68 = getelementptr inbounds %struct.g_gate_ctl_io, %struct.g_gate_ctl_io* %3, i32 0, i32 4
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %57
  %72 = getelementptr inbounds %struct.g_gate_ctl_io, %struct.g_gate_ctl_io* %3, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %4, align 8
  br label %30

74:                                               ; preds = %57
  br label %75

75:                                               ; preds = %30, %74
  br label %76

76:                                               ; preds = %30, %75
  %77 = load i32, i32* @G_GATE_CTL_NAME, align 4
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @strerror(i32 %78)
  %80 = call i32 @g_gate_xlog(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %77, i32 %79)
  br label %81

81:                                               ; preds = %76, %39
  store i32 0, i32* %5, align 4
  %82 = getelementptr inbounds %struct.g_gate_ctl_io, %struct.g_gate_ctl_io* %3, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  switch i32 %83, label %135 [
    i32 132, label %84
    i32 133, label %122
    i32 131, label %122
  ]

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.g_gate_ctl_io, %struct.g_gate_ctl_io* %3, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %4, align 8
  %88 = icmp ugt i64 %86, %87
  br i1 %88, label %89, label %105

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.g_gate_ctl_io, %struct.g_gate_ctl_io* %3, i32 0, i32 4
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds %struct.g_gate_ctl_io, %struct.g_gate_ctl_io* %3, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i8* @realloc(i32* %91, i64 %93)
  %95 = bitcast i8* %94 to i32*
  %96 = getelementptr inbounds %struct.g_gate_ctl_io, %struct.g_gate_ctl_io* %3, i32 0, i32 4
  store i32* %95, i32** %96, align 8
  %97 = getelementptr inbounds %struct.g_gate_ctl_io, %struct.g_gate_ctl_io* %3, i32 0, i32 4
  %98 = load i32*, i32** %97, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %89
  %101 = getelementptr inbounds %struct.g_gate_ctl_io, %struct.g_gate_ctl_io* %3, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  store i64 %102, i64* %4, align 8
  br label %104

103:                                              ; preds = %89
  store i32 129, i32* %5, align 4
  br label %104

104:                                              ; preds = %103, %100
  br label %105

105:                                              ; preds = %104, %84
  %106 = load i32, i32* %5, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %121

108:                                              ; preds = %105
  %109 = load i32, i32* %2, align 4
  %110 = getelementptr inbounds %struct.g_gate_ctl_io, %struct.g_gate_ctl_io* %3, i32 0, i32 4
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds %struct.g_gate_ctl_io, %struct.g_gate_ctl_io* %3, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds %struct.g_gate_ctl_io, %struct.g_gate_ctl_io* %3, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @pread(i32 %109, i32* %111, i64 %113, i32 %115)
  %117 = icmp eq i32 %116, -1
  br i1 %117, label %118, label %120

118:                                              ; preds = %108
  %119 = load i32, i32* @errno, align 4
  store i32 %119, i32* %5, align 4
  br label %120

120:                                              ; preds = %118, %108
  br label %121

121:                                              ; preds = %120, %105
  br label %137

122:                                              ; preds = %81, %81
  %123 = load i32, i32* %2, align 4
  %124 = getelementptr inbounds %struct.g_gate_ctl_io, %struct.g_gate_ctl_io* %3, i32 0, i32 4
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds %struct.g_gate_ctl_io, %struct.g_gate_ctl_io* %3, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = getelementptr inbounds %struct.g_gate_ctl_io, %struct.g_gate_ctl_io* %3, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @pwrite(i32 %123, i32* %125, i64 %127, i32 %129)
  %131 = icmp eq i32 %130, -1
  br i1 %131, label %132, label %134

132:                                              ; preds = %122
  %133 = load i32, i32* @errno, align 4
  store i32 %133, i32* %5, align 4
  br label %134

134:                                              ; preds = %132, %122
  br label %137

135:                                              ; preds = %81
  %136 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %136, i32* %5, align 4
  br label %137

137:                                              ; preds = %135, %134, %121
  %138 = load i32, i32* %5, align 4
  %139 = getelementptr inbounds %struct.g_gate_ctl_io, %struct.g_gate_ctl_io* %3, i32 0, i32 1
  store i32 %138, i32* %139, align 8
  %140 = load i32, i32* @G_GATE_CMD_DONE, align 4
  %141 = call i32 @g_gate_ioctl(i32 %140, %struct.g_gate_ctl_io* %3)
  br label %29
}

declare dso_local i32 @daemon(i32, i32) #1

declare dso_local i32 @g_gate_destroy(i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @g_gate_log(i32, i8*, i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @g_gate_ioctl(i32, %struct.g_gate_ctl_io*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @g_gate_close_device(...) #1

declare dso_local i32 @close(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @realloc(i32*, i64) #1

declare dso_local i32 @g_gate_xlog(i8*, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @pread(i32, i32*, i64, i32) #1

declare dso_local i32 @pwrite(i32, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
