; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-cmd-queue.c_cvmx_cmd_queue_initialize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-cmd-queue.c_cvmx_cmd_queue_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64* }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }

@CVMX_CMD_QUEUE_SUCCESS = common dso_local global i64 0, align 8
@CVMX_CMD_QUEUE_INVALID_PARAM = common dso_local global i64 0, align 8
@CVMX_CMD_QUEUE_ENABLE_MAX_DEPTH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [92 x i8] c"ERROR: cvmx_cmd_queue_initialize: Queue already initialized with different max_depth (%d).\0A\00", align 1
@.str.1 = private unnamed_addr constant [91 x i8] c"ERROR: cvmx_cmd_queue_initialize: Queue already initialized with different FPA pool (%u).\0A\00", align 1
@.str.2 = private unnamed_addr constant [96 x i8] c"ERROR: cvmx_cmd_queue_initialize: Queue already initialized with different FPA pool size (%u).\0A\00", align 1
@CVMX_SYNCWS = common dso_local global i32 0, align 4
@CVMX_CMD_QUEUE_ALREADY_SETUP = common dso_local global i64 0, align 8
@CVMX_FPA_CTL_STATUS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"ERROR: cvmx_cmd_queue_initialize: FPA is not enabled.\0A\00", align 1
@CVMX_CMD_QUEUE_NO_MEMORY = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [70 x i8] c"ERROR: cvmx_cmd_queue_initialize: Unable to allocate initial buffer.\0A\00", align 1
@__cvmx_cmd_queue_state_ptr = common dso_local global %struct.TYPE_10__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @cvmx_cmd_queue_initialize(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_8__, align 4
  %13 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = call i64 (...) @__cvmx_cmd_queue_init_state_ptr()
  store i64 %14, i64* %11, align 8
  %15 = load i64, i64* %11, align 8
  %16 = load i64, i64* @CVMX_CMD_QUEUE_SUCCESS, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i64, i64* %11, align 8
  store i64 %19, i64* %5, align 8
  br label %155

20:                                               ; preds = %4
  %21 = load i32, i32* %6, align 4
  %22 = call %struct.TYPE_9__* @__cvmx_cmd_queue_get_state(i32 %21)
  store %struct.TYPE_9__* %22, %struct.TYPE_9__** %10, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %24 = icmp eq %struct.TYPE_9__* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i64, i64* @CVMX_CMD_QUEUE_INVALID_PARAM, align 8
  store i64 %26, i64* %5, align 8
  br label %155

27:                                               ; preds = %20
  %28 = load i64, i64* @CVMX_CMD_QUEUE_ENABLE_MAX_DEPTH, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %7, align 4
  %35 = icmp sgt i32 %34, 1048576
  br i1 %35, label %36, label %38

36:                                               ; preds = %33, %30
  %37 = load i64, i64* @CVMX_CMD_QUEUE_INVALID_PARAM, align 8
  store i64 %37, i64* %5, align 8
  br label %155

38:                                               ; preds = %33
  br label %45

39:                                               ; preds = %27
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i64, i64* @CVMX_CMD_QUEUE_INVALID_PARAM, align 8
  store i64 %43, i64* %5, align 8
  br label %155

44:                                               ; preds = %39
  br label %45

45:                                               ; preds = %44, %38
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %8, align 4
  %50 = icmp sgt i32 %49, 7
  br i1 %50, label %51, label %53

51:                                               ; preds = %48, %45
  %52 = load i64, i64* @CVMX_CMD_QUEUE_INVALID_PARAM, align 8
  store i64 %52, i64* %5, align 8
  br label %155

53:                                               ; preds = %48
  %54 = load i32, i32* %9, align 4
  %55 = icmp slt i32 %54, 128
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %9, align 4
  %58 = icmp sgt i32 %57, 65536
  br i1 %58, label %59, label %61

59:                                               ; preds = %56, %53
  %60 = load i64, i64* @CVMX_CMD_QUEUE_INVALID_PARAM, align 8
  store i64 %60, i64* %5, align 8
  br label %155

61:                                               ; preds = %56
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %109

66:                                               ; preds = %61
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %67, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %66
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str, i64 0, i64 0), i32 %75)
  %77 = load i64, i64* @CVMX_CMD_QUEUE_INVALID_PARAM, align 8
  store i64 %77, i64* %5, align 8
  br label %155

78:                                               ; preds = %66
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %79, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %78
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.1, i64 0, i64 0), i32 %87)
  %89 = load i64, i64* @CVMX_CMD_QUEUE_INVALID_PARAM, align 8
  store i64 %89, i64* %5, align 8
  br label %155

90:                                               ; preds = %78
  %91 = load i32, i32* %9, align 4
  %92 = ashr i32 %91, 3
  %93 = sub nsw i32 %92, 1
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %93, %96
  br i1 %97, label %98, label %106

98:                                               ; preds = %90
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 1
  %103 = shl i32 %102, 3
  %104 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  %105 = load i64, i64* @CVMX_CMD_QUEUE_INVALID_PARAM, align 8
  store i64 %105, i64* %5, align 8
  br label %155

106:                                              ; preds = %90
  %107 = load i32, i32* @CVMX_SYNCWS, align 4
  %108 = load i64, i64* @CVMX_CMD_QUEUE_ALREADY_SETUP, align 8
  store i64 %108, i64* %5, align 8
  br label %155

109:                                              ; preds = %61
  %110 = load i32, i32* @CVMX_FPA_CTL_STATUS, align 4
  %111 = call i32 @cvmx_read_csr(i32 %110)
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  store i32 %111, i32* %112, align 4
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %109
  %118 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  %119 = load i64, i64* @CVMX_CMD_QUEUE_NO_MEMORY, align 8
  store i64 %119, i64* %5, align 8
  br label %155

120:                                              ; preds = %109
  %121 = load i32, i32* %8, align 4
  %122 = call i8* @cvmx_fpa_alloc(i32 %121)
  store i8* %122, i8** %13, align 8
  %123 = load i8*, i8** %13, align 8
  %124 = icmp eq i8* %123, null
  br i1 %124, label %125, label %128

125:                                              ; preds = %120
  %126 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.4, i64 0, i64 0))
  %127 = load i64, i64* @CVMX_CMD_QUEUE_NO_MEMORY, align 8
  store i64 %127, i64* %5, align 8
  br label %155

128:                                              ; preds = %120
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %130 = call i32 @memset(%struct.TYPE_9__* %129, i32 0, i32 16)
  %131 = load i32, i32* %7, align 4
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 4
  %134 = load i32, i32* %8, align 4
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 2
  store i32 %134, i32* %136, align 4
  %137 = load i32, i32* %9, align 4
  %138 = ashr i32 %137, 3
  %139 = sub nsw i32 %138, 1
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 3
  store i32 %139, i32* %141, align 4
  %142 = load i8*, i8** %13, align 8
  %143 = call i32 @cvmx_ptr_to_phys(i8* %142)
  %144 = sdiv i32 %143, 128
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 4
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** @__cvmx_cmd_queue_state_ptr, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 0
  %149 = load i64*, i64** %148, align 8
  %150 = load i32, i32* %6, align 4
  %151 = call i64 @__cvmx_cmd_queue_get_index(i32 %150)
  %152 = getelementptr inbounds i64, i64* %149, i64 %151
  store i64 0, i64* %152, align 8
  %153 = load i32, i32* @CVMX_SYNCWS, align 4
  %154 = load i64, i64* @CVMX_CMD_QUEUE_SUCCESS, align 8
  store i64 %154, i64* %5, align 8
  br label %155

155:                                              ; preds = %128, %125, %117, %106, %98, %84, %72, %59, %51, %42, %36, %25, %18
  %156 = load i64, i64* %5, align 8
  ret i64 %156
}

declare dso_local i64 @__cvmx_cmd_queue_init_state_ptr(...) #1

declare dso_local %struct.TYPE_9__* @__cvmx_cmd_queue_get_state(i32) #1

declare dso_local i32 @cvmx_dprintf(i8*, ...) #1

declare dso_local i32 @cvmx_read_csr(i32) #1

declare dso_local i8* @cvmx_fpa_alloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @cvmx_ptr_to_phys(i8*) #1

declare dso_local i64 @__cvmx_cmd_queue_get_index(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
