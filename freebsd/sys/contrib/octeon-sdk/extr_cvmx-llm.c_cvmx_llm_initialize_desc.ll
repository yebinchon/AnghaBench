; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-llm.c_cvmx_llm_initialize_desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-llm.c_cvmx_llm_initialize_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i64 }
%struct.TYPE_9__ = type { i64 }

@CVMX_BOARD_TYPE_SIM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"Skipping llm configuration for simulator.\0A\00", align 1
@CVMX_BOARD_TYPE_EBH3100 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"Warning: preliminary DFA memory configuration\0A\00", align 1
@CVMX_LLM_NUM_PORTS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"Using default LLM configuration for board %s (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Configuring %d llm port(s).\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Error creating rldram configuration\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_llm_initialize_desc(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_8__, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %7 = call %struct.TYPE_9__* (...) @cvmx_sysinfo_get()
  store %struct.TYPE_9__* %7, %struct.TYPE_9__** %4, align 8
  %8 = call i32 @memset(%struct.TYPE_8__* %5, i32 0, i32 24)
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @CVMX_BOARD_TYPE_SIM, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %118

16:                                               ; preds = %1
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @CVMX_BOARD_TYPE_EBH3100, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %24 = call i32 (...) @cn31xx_dfa_memory_init()
  store i32 268435456, i32* %2, align 4
  br label %118

25:                                               ; preds = %16
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %27 = icmp ne %struct.TYPE_8__* %26, null
  br i1 %27, label %46, label %28

28:                                               ; preds = %25
  %29 = call i64 @cvmx_llm_get_default_descriptor(%struct.TYPE_8__* %5)
  %30 = icmp sgt i64 0, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 -1, i32* %2, align 4
  br label %118

32:                                               ; preds = %28
  %33 = load i32, i32* @CVMX_LLM_NUM_PORTS, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 3
  store i64 0, i64* %36, align 8
  br label %37

37:                                               ; preds = %35, %32
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @cvmx_board_type_to_string(i64 %40)
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %41, i64 %44)
  store %struct.TYPE_8__* %5, %struct.TYPE_8__** %3, align 8
  br label %46

46:                                               ; preds = %37, %25
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %48 = call i32 @rld_csr_config_generate(%struct.TYPE_8__* %47, i32* %6)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %68, label %50

50:                                               ; preds = %46
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  %55 = xor i1 %54, true
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = add nsw i32 %57, %64
  %66 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  %67 = call i32 @write_rld_cfg(i32* %6)
  br label %70

68:                                               ; preds = %46
  %69 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %118

70:                                               ; preds = %50
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %92

75:                                               ; preds = %70
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %75
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @MIN(i32 %83, i32 %86)
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  store i32 %87, i32* %91, align 8
  br label %92

92:                                               ; preds = %80, %75, %70
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  %97 = xor i1 %96, true
  %98 = xor i1 %97, true
  %99 = zext i1 %98 to i32
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = mul nsw i32 %99, %102
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  %108 = xor i1 %107, true
  %109 = xor i1 %108, true
  %110 = zext i1 %109 to i32
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = mul nsw i32 %110, %113
  %115 = add nsw i32 %103, %114
  %116 = mul nsw i32 %115, 1024
  %117 = mul nsw i32 %116, 1024
  store i32 %117, i32* %2, align 4
  br label %118

118:                                              ; preds = %92, %68, %31, %22, %14
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local %struct.TYPE_9__* @cvmx_sysinfo_get(...) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @cvmx_dprintf(i8*, ...) #1

declare dso_local i32 @cn31xx_dfa_memory_init(...) #1

declare dso_local i64 @cvmx_llm_get_default_descriptor(%struct.TYPE_8__*) #1

declare dso_local i32 @cvmx_board_type_to_string(i64) #1

declare dso_local i32 @rld_csr_config_generate(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @write_rld_cfg(i32*) #1

declare dso_local i32 @MIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
