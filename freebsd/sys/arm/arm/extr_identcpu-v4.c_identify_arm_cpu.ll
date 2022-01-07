; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_identcpu-v4.c_identify_arm_cpu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_identcpu-v4.c_identify_arm_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i8*, i8** }
%struct.TYPE_4__ = type { i8* }

@.str = private unnamed_addr constant [36 x i8] c"Processor failed probe - no CPU ID\0A\00", align 1
@cpuids = common dso_local global %struct.TYPE_3__* null, align 8
@CPU_ID_CPU_MASK = common dso_local global i64 0, align 8
@cpu_class = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"CPU: %s %s (%s core)\0A\00", align 1
@CPU_ID_REVISION_MASK = common dso_local global i64 0, align 8
@cpu_classes = common dso_local global %struct.TYPE_4__* null, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"unknown CPU (ID = 0x%x)\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@CPU_CONTROL_BEND_ENABLE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [12 x i8] c" Big-endian\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c" Little-endian\00", align 1
@CPU_CONTROL_DC_ENABLE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [3 x i8] c"DC\00", align 1
@CPU_CONTROL_IC_ENABLE = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [3 x i8] c"IC\00", align 1
@CPU_CONTROL_WBUF_ENABLE = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [3 x i8] c"WB\00", align 1
@CPU_CONTROL_LABT_ENABLE = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [6 x i8] c" LABT\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c" EABT\00", align 1
@CPU_CONTROL_BPRD_ENABLE = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [18 x i8] c"branch prediction\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@arm_picache_line_size = common dso_local global i64 0, align 8
@arm_pdcache_line_size = common dso_local global i64 0, align 8
@arm_pcache_unified = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [36 x i8] c"  %dKB/%dB %d-way %s unified cache\0A\00", align 1
@arm_pdcache_size = common dso_local global i32 0, align 4
@arm_pdcache_ways = common dso_local global i32 0, align 4
@wtnames = common dso_local global i8** null, align 8
@arm_pcache_type = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [37 x i8] c"  %dKB/%dB %d-way instruction cache\0A\00", align 1
@arm_picache_size = common dso_local global i32 0, align 4
@arm_picache_ways = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [33 x i8] c"  %dKB/%dB %d-way %s data cache\0A\00", align 1
@MV_BTB_DISABLE = common dso_local global i32 0, align 4
@MV_DC_STREAM_ENABLE = common dso_local global i32 0, align 4
@MV_L2_ENABLE = common dso_local global i32 0, align 4
@MV_L2_PREFETCH_DISABLE = common dso_local global i32 0, align 4
@MV_WA_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @identify_arm_cpu() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = call i64 (...) @cp15_sctlr_get()
  store i64 %4, i64* %2, align 8
  %5 = call i64 (...) @cp15_midr_get()
  store i64 %5, i64* %1, align 8
  %6 = load i64, i64* %1, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %150

10:                                               ; preds = %0
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %61, %10
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cpuids, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %64

19:                                               ; preds = %11
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cpuids, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %1, align 8
  %27 = load i64, i64* @CPU_ID_CPU_MASK, align 8
  %28 = and i64 %26, %27
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %60

30:                                               ; preds = %19
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cpuids, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* @cpu_class, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cpuids, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cpuids, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 3
  %48 = load i8**, i8*** %47, align 8
  %49 = load i64, i64* %1, align 8
  %50 = load i64, i64* @CPU_ID_REVISION_MASK, align 8
  %51 = and i64 %49, %50
  %52 = getelementptr inbounds i8*, i8** %48, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cpu_classes, align 8
  %55 = load i64, i64* @cpu_class, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %42, i8* %53, i8* %58)
  br label %64

60:                                               ; preds = %19
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %3, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %3, align 4
  br label %11

64:                                               ; preds = %30, %11
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cpuids, align 8
  %66 = load i32, i32* %3, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %64
  %73 = load i64, i64* %1, align 8
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i64 %73)
  br label %75

75:                                               ; preds = %72, %64
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %77 = load i64, i64* %2, align 8
  %78 = load i64, i64* @CPU_CONTROL_BEND_ENABLE, align 8
  %79 = and i64 %77, %78
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %85

83:                                               ; preds = %75
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %81
  %86 = load i64, i64* @cpu_class, align 8
  switch i64 %86, label %96 [
    i64 130, label %87
    i64 131, label %87
    i64 132, label %87
    i64 134, label %87
    i64 133, label %87
    i64 128, label %87
    i64 129, label %87
  ]

87:                                               ; preds = %85, %85, %85, %85, %85, %85, %85
  %88 = load i64, i64* %2, align 8
  %89 = load i64, i64* @CPU_CONTROL_DC_ENABLE, align 8
  %90 = and i64 %88, %89
  %91 = call i32 @print_enadis(i64 %90, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %92 = load i64, i64* %2, align 8
  %93 = load i64, i64* @CPU_CONTROL_IC_ENABLE, align 8
  %94 = and i64 %92, %93
  %95 = call i32 @print_enadis(i64 %94, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %97

96:                                               ; preds = %85
  br label %97

97:                                               ; preds = %96, %87
  %98 = load i64, i64* %2, align 8
  %99 = load i64, i64* @CPU_CONTROL_WBUF_ENABLE, align 8
  %100 = and i64 %98, %99
  %101 = call i32 @print_enadis(i64 %100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %102 = load i64, i64* %2, align 8
  %103 = load i64, i64* @CPU_CONTROL_LABT_ENABLE, align 8
  %104 = and i64 %102, %103
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %97
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  br label %110

108:                                              ; preds = %97
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  br label %110

110:                                              ; preds = %108, %106
  %111 = load i64, i64* %2, align 8
  %112 = load i64, i64* @CPU_CONTROL_BPRD_ENABLE, align 8
  %113 = and i64 %111, %112
  %114 = call i32 @print_enadis(i64 %113, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %116 = load i64, i64* @arm_picache_line_size, align 8
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %110
  %119 = load i64, i64* @arm_pdcache_line_size, align 8
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  br label %150

122:                                              ; preds = %118, %110
  %123 = load i64, i64* @arm_pcache_unified, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %135

125:                                              ; preds = %122
  %126 = load i32, i32* @arm_pdcache_size, align 4
  %127 = sdiv i32 %126, 1024
  %128 = load i64, i64* @arm_pdcache_line_size, align 8
  %129 = load i32, i32* @arm_pdcache_ways, align 4
  %130 = load i8**, i8*** @wtnames, align 8
  %131 = load i64, i64* @arm_pcache_type, align 8
  %132 = getelementptr inbounds i8*, i8** %130, i64 %131
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i64 0, i64 0), i32 %127, i64 %128, i32 %129, i8* %133)
  br label %150

135:                                              ; preds = %122
  %136 = load i32, i32* @arm_picache_size, align 4
  %137 = sdiv i32 %136, 1024
  %138 = load i64, i64* @arm_picache_line_size, align 8
  %139 = load i32, i32* @arm_picache_ways, align 4
  %140 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i64 0, i64 0), i32 %137, i64 %138, i32 %139)
  %141 = load i32, i32* @arm_pdcache_size, align 4
  %142 = sdiv i32 %141, 1024
  %143 = load i64, i64* @arm_pdcache_line_size, align 8
  %144 = load i32, i32* @arm_pdcache_ways, align 4
  %145 = load i8**, i8*** @wtnames, align 8
  %146 = load i64, i64* @arm_pcache_type, align 8
  %147 = getelementptr inbounds i8*, i8** %145, i64 %146
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i64 0, i64 0), i32 %142, i64 %143, i32 %144, i8* %148)
  br label %150

150:                                              ; preds = %8, %121, %135, %125
  ret void
}

declare dso_local i64 @cp15_sctlr_get(...) #1

declare dso_local i64 @cp15_midr_get(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @print_enadis(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
