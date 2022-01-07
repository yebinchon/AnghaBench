; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/examples/extr_asyncwatch.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/examples/extr_asyncwatch.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8*, i32, i8 }
%struct.ibv_device = type { i32 }
%struct.ibv_context = type { i32 }
%struct.ibv_async_event = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@stdout = common dso_local global i32 0, align 4
@_IOLBF = common dso_local global i32 0, align 4
@main.long_options = internal global [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 1, i8 100 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 0, i8 104 }, %struct.option zeroinitializer], align 16
@.str = private unnamed_addr constant [7 x i8] c"ib-dev\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"d:h\00", align 1
@optarg = common dso_local global i32 0, align 4
@SWITCH_FALLTHROUGH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Failed to get IB devices list\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"IB device %s not found\0A\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Couldn't get context for %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"%s: async event FD %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"  event_type %s (%d), port %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.ibv_device**, align 8
  %7 = alloca %struct.ibv_context*, align 8
  %8 = alloca %struct.ibv_async_event, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load i32, i32* @stdout, align 4
  %14 = load i32, i32* @_IOLBF, align 4
  %15 = call i32 @setvbuf(i32 %13, i32* null, i32 %14, i32 0)
  br label %16

16:                                               ; preds = %2, %36
  store i32 1, i32* %11, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i8**, i8*** %5, align 8
  %19 = call i32 @getopt_long(i32 %17, i8** %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @main.long_options, i64 0, i64 0), i32* null)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %37

23:                                               ; preds = %16
  %24 = load i32, i32* %12, align 4
  switch i32 %24, label %30 [
    i32 100, label %25
    i32 104, label %28
  ]

25:                                               ; preds = %23
  %26 = load i32, i32* @optarg, align 4
  %27 = call i8* @strdupa(i32 %26)
  store i8* %27, i8** %9, align 8
  br label %36

28:                                               ; preds = %23
  store i32 0, i32* %11, align 4
  %29 = load i32, i32* @SWITCH_FALLTHROUGH, align 4
  br label %30

30:                                               ; preds = %23, %28
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @usage(i8* %33)
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %3, align 4
  br label %132

36:                                               ; preds = %25
  br label %16

37:                                               ; preds = %22
  %38 = call %struct.ibv_device** @ibv_get_device_list(i32* null)
  store %struct.ibv_device** %38, %struct.ibv_device*** %6, align 8
  %39 = load %struct.ibv_device**, %struct.ibv_device*** %6, align 8
  %40 = icmp ne %struct.ibv_device** %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = call i32 @perror(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %132

43:                                               ; preds = %37
  %44 = load i8*, i8** %9, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %70

46:                                               ; preds = %43
  br label %47

47:                                               ; preds = %66, %46
  %48 = load %struct.ibv_device**, %struct.ibv_device*** %6, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.ibv_device*, %struct.ibv_device** %48, i64 %50
  %52 = load %struct.ibv_device*, %struct.ibv_device** %51, align 8
  %53 = icmp ne %struct.ibv_device* %52, null
  br i1 %53, label %54, label %69

54:                                               ; preds = %47
  %55 = load %struct.ibv_device**, %struct.ibv_device*** %6, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.ibv_device*, %struct.ibv_device** %55, i64 %57
  %59 = load %struct.ibv_device*, %struct.ibv_device** %58, align 8
  %60 = call i8* @ibv_get_device_name(%struct.ibv_device* %59)
  %61 = load i8*, i8** %9, align 8
  %62 = call i32 @strcmp(i8* %60, i8* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %54
  br label %69

65:                                               ; preds = %54
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %10, align 4
  br label %47

69:                                               ; preds = %64, %47
  br label %70

70:                                               ; preds = %69, %43
  %71 = load %struct.ibv_device**, %struct.ibv_device*** %6, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.ibv_device*, %struct.ibv_device** %71, i64 %73
  %75 = load %struct.ibv_device*, %struct.ibv_device** %74, align 8
  %76 = icmp ne %struct.ibv_device* %75, null
  br i1 %76, label %87, label %77

77:                                               ; preds = %70
  %78 = load i32, i32* @stderr, align 4
  %79 = load i8*, i8** %9, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = load i8*, i8** %9, align 8
  br label %84

83:                                               ; preds = %77
  br label %84

84:                                               ; preds = %83, %81
  %85 = phi i8* [ %82, %81 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), %83 ]
  %86 = call i32 @fprintf(i32 %78, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* %85)
  store i32 1, i32* %3, align 4
  br label %132

87:                                               ; preds = %70
  %88 = load %struct.ibv_device**, %struct.ibv_device*** %6, align 8
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.ibv_device*, %struct.ibv_device** %88, i64 %90
  %92 = load %struct.ibv_device*, %struct.ibv_device** %91, align 8
  %93 = call %struct.ibv_context* @ibv_open_device(%struct.ibv_device* %92)
  store %struct.ibv_context* %93, %struct.ibv_context** %7, align 8
  %94 = load %struct.ibv_context*, %struct.ibv_context** %7, align 8
  %95 = icmp ne %struct.ibv_context* %94, null
  br i1 %95, label %105, label %96

96:                                               ; preds = %87
  %97 = load i32, i32* @stderr, align 4
  %98 = load %struct.ibv_device**, %struct.ibv_device*** %6, align 8
  %99 = load i32, i32* %10, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.ibv_device*, %struct.ibv_device** %98, i64 %100
  %102 = load %struct.ibv_device*, %struct.ibv_device** %101, align 8
  %103 = call i8* @ibv_get_device_name(%struct.ibv_device* %102)
  %104 = call i32 @fprintf(i32 %97, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8* %103)
  store i32 1, i32* %3, align 4
  br label %132

105:                                              ; preds = %87
  %106 = load %struct.ibv_device**, %struct.ibv_device*** %6, align 8
  %107 = load i32, i32* %10, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.ibv_device*, %struct.ibv_device** %106, i64 %108
  %110 = load %struct.ibv_device*, %struct.ibv_device** %109, align 8
  %111 = call i8* @ibv_get_device_name(%struct.ibv_device* %110)
  %112 = load %struct.ibv_context*, %struct.ibv_context** %7, align 8
  %113 = getelementptr inbounds %struct.ibv_context, %struct.ibv_context* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 (i8*, i8*, i32, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i8* %111, i32 %114)
  br label %116

116:                                              ; preds = %105, %121
  %117 = load %struct.ibv_context*, %struct.ibv_context** %7, align 8
  %118 = call i64 @ibv_get_async_event(%struct.ibv_context* %117, %struct.ibv_async_event* %8)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %116
  store i32 1, i32* %3, align 4
  br label %132

121:                                              ; preds = %116
  %122 = getelementptr inbounds %struct.ibv_async_event, %struct.ibv_async_event* %8, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i8* @event_name_str(i32 %123)
  %125 = getelementptr inbounds %struct.ibv_async_event, %struct.ibv_async_event* %8, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = getelementptr inbounds %struct.ibv_async_event, %struct.ibv_async_event* %8, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 (i8*, i8*, i32, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i8* %124, i32 %126, i32 %129)
  %131 = call i32 @ibv_ack_async_event(%struct.ibv_async_event* %8)
  br label %116

132:                                              ; preds = %120, %96, %84, %41, %30
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i32 @setvbuf(i32, i32*, i32, i32) #1

declare dso_local i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #1

declare dso_local i8* @strdupa(i32) #1

declare dso_local i32 @usage(i8*) #1

declare dso_local %struct.ibv_device** @ibv_get_device_list(i32*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @ibv_get_device_name(%struct.ibv_device*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local %struct.ibv_context* @ibv_open_device(%struct.ibv_device*) #1

declare dso_local i32 @printf(i8*, i8*, i32, ...) #1

declare dso_local i64 @ibv_get_async_event(%struct.ibv_context*, %struct.ibv_async_event*) #1

declare dso_local i8* @event_name_str(i32) #1

declare dso_local i32 @ibv_ack_async_event(%struct.ibv_async_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
