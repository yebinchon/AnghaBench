; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_io.c_input_handler_scan.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_io.c_input_handler_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i64, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.asyncio_reader = type { i64, i32 (%struct.asyncio_reader*)*, %struct.asyncio_reader* }
%struct.refclockio = type { i64, %struct.TYPE_7__*, %struct.refclockio* }
%struct.TYPE_7__ = type { i32 }

@handler_pkts = common dso_local global i32 0, align 4
@ep_list = common dso_local global %struct.TYPE_8__* null, align 8
@INT_BCASTOPEN = common dso_local global i32 0, align 4
@blocking_children_alloc = common dso_local global i64 0, align 8
@blocking_children = common dso_local global %struct.TYPE_9__** null, align 8
@blocking_child_ready_seen = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@asyncio_reader_list = common dso_local global %struct.asyncio_reader* null, align 8
@debug = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@refio = common dso_local global %struct.refclockio* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @input_handler_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @input_handler_scan(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %12 = load i32, i32* @handler_pkts, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* @handler_pkts, align 4
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %10, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ep_list, align 8
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %11, align 8
  br label %17

17:                                               ; preds = %67, %2
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %19 = icmp ne %struct.TYPE_8__* %18, null
  br i1 %19, label %20, label %71

20:                                               ; preds = %17
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %63, %20
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 2
  br i1 %23, label %24, label %66

24:                                               ; preds = %21
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %8, align 8
  br label %43

31:                                               ; preds = %24
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @INT_BCASTOPEN, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %31
  br label %66

39:                                               ; preds = %31
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %8, align 8
  br label %43

43:                                               ; preds = %39, %27
  %44 = load i64, i64* %8, align 8
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  br label %63

47:                                               ; preds = %43
  %48 = load i64, i64* %8, align 8
  %49 = load i32*, i32** %4, align 8
  %50 = call i64 @FD_ISSET(i64 %48, i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %47
  br label %53

53:                                               ; preds = %58, %52
  %54 = load i64, i64* %8, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @read_network_packet(i64 %54, %struct.TYPE_8__* %55, i32 %56)
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %53
  %59 = load i32, i32* %5, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %53, label %61

61:                                               ; preds = %58
  br label %62

62:                                               ; preds = %61, %47
  br label %63

63:                                               ; preds = %62, %46
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %21

66:                                               ; preds = %38, %21
  br label %67

67:                                               ; preds = %66
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 3
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  store %struct.TYPE_8__* %70, %struct.TYPE_8__** %11, align 8
  br label %17

71:                                               ; preds = %17
  store i64 0, i64* %6, align 8
  br label %72

72:                                               ; preds = %105, %71
  %73 = load i64, i64* %6, align 8
  %74 = load i64, i64* @blocking_children_alloc, align 8
  %75 = icmp ult i64 %73, %74
  br i1 %75, label %76, label %108

76:                                               ; preds = %72
  %77 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @blocking_children, align 8
  %78 = load i64, i64* %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %77, i64 %78
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %79, align 8
  store %struct.TYPE_9__* %80, %struct.TYPE_9__** %9, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %82 = icmp eq %struct.TYPE_9__* null, %81
  br i1 %82, label %88, label %83

83:                                               ; preds = %76
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp eq i32 -1, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %83, %76
  br label %105

89:                                               ; preds = %83
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = load i32*, i32** %4, align 8
  %95 = call i64 @FD_ISSET(i64 %93, i32* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %89
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 4
  %102 = load i32, i32* @blocking_child_ready_seen, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* @blocking_child_ready_seen, align 4
  br label %104

104:                                              ; preds = %97, %89
  br label %105

105:                                              ; preds = %104, %88
  %106 = load i64, i64* %6, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %6, align 8
  br label %72

108:                                              ; preds = %72
  ret void
}

declare dso_local i64 @FD_ISSET(i64, i32*) #1

declare dso_local i32 @read_network_packet(i64, %struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
