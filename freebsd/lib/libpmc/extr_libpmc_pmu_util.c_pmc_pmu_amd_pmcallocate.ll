; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libpmc/extr_libpmc_pmu_util.c_pmc_pmu_amd_pmcallocate.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libpmc/extr_libpmc_pmu_util.c_pmc_pmu_amd_pmcallocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmc_op_pmcallocate = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.pmc_md_amd_op_pmcallocate }
%struct.pmc_md_amd_op_pmcallocate = type { i32, i32 }
%struct.pmu_event_desc = type { i64, i64, i64, i32, i32, i32 }
%struct.pmu_event = type { i32 }

@PMC_CAP_QUALIFIER = common dso_local global i32 0, align 4
@PMC_CLASS_K8 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"l3cache\00", align 1
@PMC_AMD_SUB_CLASS_L3_CACHE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"data fabric\00", align 1
@PMC_AMD_SUB_CLASS_DATA_FABRIC = common dso_local global i32 0, align 4
@PMC_AMD_SUB_CLASS_CORE = common dso_local global i32 0, align 4
@PMC_CAP_USER = common dso_local global i32 0, align 4
@PMC_CAP_SYSTEM = common dso_local global i32 0, align 4
@AMD_PMC_USR = common dso_local global i32 0, align 4
@AMD_PMC_OS = common dso_local global i32 0, align 4
@AMD_PMC_EDGE = common dso_local global i32 0, align 4
@PMC_CAP_INTERRUPT = common dso_local global i32 0, align 4
@AMD_PMC_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.pmc_op_pmcallocate*, %struct.pmu_event_desc*)* @pmc_pmu_amd_pmcallocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmc_pmu_amd_pmcallocate(i8* %0, %struct.pmc_op_pmcallocate* %1, %struct.pmu_event_desc* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pmc_op_pmcallocate*, align 8
  %6 = alloca %struct.pmu_event_desc*, align 8
  %7 = alloca %struct.pmc_md_amd_op_pmcallocate*, align 8
  %8 = alloca %struct.pmu_event*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.pmc_op_pmcallocate* %1, %struct.pmc_op_pmcallocate** %5, align 8
  store %struct.pmu_event_desc* %2, %struct.pmu_event_desc** %6, align 8
  store i32 -1, i32* %9, align 4
  %10 = load %struct.pmc_op_pmcallocate*, %struct.pmc_op_pmcallocate** %5, align 8
  %11 = getelementptr inbounds %struct.pmc_op_pmcallocate, %struct.pmc_op_pmcallocate* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.pmc_md_amd_op_pmcallocate* %12, %struct.pmc_md_amd_op_pmcallocate** %7, align 8
  %13 = load %struct.pmu_event_desc*, %struct.pmu_event_desc** %6, align 8
  %14 = getelementptr inbounds %struct.pmu_event_desc, %struct.pmu_event_desc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %3
  %18 = load i32, i32* @PMC_CAP_QUALIFIER, align 4
  %19 = load %struct.pmc_op_pmcallocate*, %struct.pmc_op_pmcallocate** %5, align 8
  %20 = getelementptr inbounds %struct.pmc_op_pmcallocate, %struct.pmc_op_pmcallocate* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load %struct.pmu_event_desc*, %struct.pmu_event_desc** %6, align 8
  %24 = getelementptr inbounds %struct.pmu_event_desc, %struct.pmu_event_desc* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @AMD_PMC_TO_UNITMASK(i64 %25)
  %27 = load %struct.pmc_md_amd_op_pmcallocate*, %struct.pmc_md_amd_op_pmcallocate** %7, align 8
  %28 = getelementptr inbounds %struct.pmc_md_amd_op_pmcallocate, %struct.pmc_md_amd_op_pmcallocate* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %17, %3
  %32 = load i32, i32* @PMC_CLASS_K8, align 4
  %33 = load %struct.pmc_op_pmcallocate*, %struct.pmc_op_pmcallocate** %5, align 8
  %34 = getelementptr inbounds %struct.pmc_op_pmcallocate, %struct.pmc_op_pmcallocate* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load i8*, i8** %4, align 8
  %36 = call %struct.pmu_event* @pmu_event_get(i32* null, i8* %35, i32* %9)
  store %struct.pmu_event* %36, %struct.pmu_event** %8, align 8
  %37 = load %struct.pmu_event*, %struct.pmu_event** %8, align 8
  %38 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %70

42:                                               ; preds = %31
  %43 = load %struct.pmu_event_desc*, %struct.pmu_event_desc** %6, align 8
  %44 = getelementptr inbounds %struct.pmu_event_desc, %struct.pmu_event_desc* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @AMD_PMC_TO_EVENTMASK(i32 %45)
  %47 = load %struct.pmc_md_amd_op_pmcallocate*, %struct.pmc_md_amd_op_pmcallocate** %7, align 8
  %48 = getelementptr inbounds %struct.pmc_md_amd_op_pmcallocate, %struct.pmc_md_amd_op_pmcallocate* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load i32, i32* @PMC_AMD_SUB_CLASS_L3_CACHE, align 4
  %52 = load %struct.pmc_md_amd_op_pmcallocate*, %struct.pmc_md_amd_op_pmcallocate** %7, align 8
  %53 = getelementptr inbounds %struct.pmc_md_amd_op_pmcallocate, %struct.pmc_md_amd_op_pmcallocate* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.pmu_event_desc*, %struct.pmu_event_desc** %6, align 8
  %55 = getelementptr inbounds %struct.pmu_event_desc, %struct.pmu_event_desc* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @AMD_PMC_TO_L3SLICE(i32 %56)
  %58 = load %struct.pmc_md_amd_op_pmcallocate*, %struct.pmc_md_amd_op_pmcallocate** %7, align 8
  %59 = getelementptr inbounds %struct.pmc_md_amd_op_pmcallocate, %struct.pmc_md_amd_op_pmcallocate* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load %struct.pmu_event_desc*, %struct.pmu_event_desc** %6, align 8
  %63 = getelementptr inbounds %struct.pmu_event_desc, %struct.pmu_event_desc* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @AMD_PMC_TO_L3CORE(i32 %64)
  %66 = load %struct.pmc_md_amd_op_pmcallocate*, %struct.pmc_md_amd_op_pmcallocate** %7, align 8
  %67 = getelementptr inbounds %struct.pmc_md_amd_op_pmcallocate, %struct.pmc_md_amd_op_pmcallocate* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  br label %193

70:                                               ; preds = %31
  %71 = load %struct.pmu_event*, %struct.pmu_event** %8, align 8
  %72 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @strcmp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %70
  %77 = load %struct.pmu_event_desc*, %struct.pmu_event_desc** %6, align 8
  %78 = getelementptr inbounds %struct.pmu_event_desc, %struct.pmu_event_desc* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @AMD_PMC_TO_EVENTMASK_DF(i32 %79)
  %81 = load %struct.pmc_md_amd_op_pmcallocate*, %struct.pmc_md_amd_op_pmcallocate** %7, align 8
  %82 = getelementptr inbounds %struct.pmc_md_amd_op_pmcallocate, %struct.pmc_md_amd_op_pmcallocate* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  %85 = load i32, i32* @PMC_AMD_SUB_CLASS_DATA_FABRIC, align 4
  %86 = load %struct.pmc_md_amd_op_pmcallocate*, %struct.pmc_md_amd_op_pmcallocate** %7, align 8
  %87 = getelementptr inbounds %struct.pmc_md_amd_op_pmcallocate, %struct.pmc_md_amd_op_pmcallocate* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  br label %192

88:                                               ; preds = %70
  %89 = load %struct.pmu_event_desc*, %struct.pmu_event_desc** %6, align 8
  %90 = getelementptr inbounds %struct.pmu_event_desc, %struct.pmu_event_desc* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @AMD_PMC_TO_EVENTMASK(i32 %91)
  %93 = load %struct.pmc_md_amd_op_pmcallocate*, %struct.pmc_md_amd_op_pmcallocate** %7, align 8
  %94 = getelementptr inbounds %struct.pmc_md_amd_op_pmcallocate, %struct.pmc_md_amd_op_pmcallocate* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 4
  %97 = load i32, i32* @PMC_AMD_SUB_CLASS_CORE, align 4
  %98 = load %struct.pmc_md_amd_op_pmcallocate*, %struct.pmc_md_amd_op_pmcallocate** %7, align 8
  %99 = getelementptr inbounds %struct.pmc_md_amd_op_pmcallocate, %struct.pmc_md_amd_op_pmcallocate* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = load %struct.pmc_op_pmcallocate*, %struct.pmc_op_pmcallocate** %5, align 8
  %101 = getelementptr inbounds %struct.pmc_op_pmcallocate, %struct.pmc_op_pmcallocate* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @PMC_CAP_USER, align 4
  %104 = load i32, i32* @PMC_CAP_SYSTEM, align 4
  %105 = or i32 %103, %104
  %106 = and i32 %102, %105
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %120, label %108

108:                                              ; preds = %88
  %109 = load %struct.pmc_op_pmcallocate*, %struct.pmc_op_pmcallocate** %5, align 8
  %110 = getelementptr inbounds %struct.pmc_op_pmcallocate, %struct.pmc_op_pmcallocate* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @PMC_CAP_USER, align 4
  %113 = load i32, i32* @PMC_CAP_SYSTEM, align 4
  %114 = or i32 %112, %113
  %115 = and i32 %111, %114
  %116 = load i32, i32* @PMC_CAP_USER, align 4
  %117 = load i32, i32* @PMC_CAP_SYSTEM, align 4
  %118 = or i32 %116, %117
  %119 = icmp eq i32 %115, %118
  br i1 %119, label %120, label %128

120:                                              ; preds = %108, %88
  %121 = load i32, i32* @AMD_PMC_USR, align 4
  %122 = load i32, i32* @AMD_PMC_OS, align 4
  %123 = or i32 %121, %122
  %124 = load %struct.pmc_md_amd_op_pmcallocate*, %struct.pmc_md_amd_op_pmcallocate** %7, align 8
  %125 = getelementptr inbounds %struct.pmc_md_amd_op_pmcallocate, %struct.pmc_md_amd_op_pmcallocate* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 4
  br label %156

128:                                              ; preds = %108
  %129 = load %struct.pmc_op_pmcallocate*, %struct.pmc_op_pmcallocate** %5, align 8
  %130 = getelementptr inbounds %struct.pmc_op_pmcallocate, %struct.pmc_op_pmcallocate* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @PMC_CAP_USER, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %128
  %136 = load i32, i32* @AMD_PMC_USR, align 4
  %137 = load %struct.pmc_md_amd_op_pmcallocate*, %struct.pmc_md_amd_op_pmcallocate** %7, align 8
  %138 = getelementptr inbounds %struct.pmc_md_amd_op_pmcallocate, %struct.pmc_md_amd_op_pmcallocate* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = or i32 %139, %136
  store i32 %140, i32* %138, align 4
  br label %155

141:                                              ; preds = %128
  %142 = load %struct.pmc_op_pmcallocate*, %struct.pmc_op_pmcallocate** %5, align 8
  %143 = getelementptr inbounds %struct.pmc_op_pmcallocate, %struct.pmc_op_pmcallocate* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @PMC_CAP_SYSTEM, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %141
  %149 = load i32, i32* @AMD_PMC_OS, align 4
  %150 = load %struct.pmc_md_amd_op_pmcallocate*, %struct.pmc_md_amd_op_pmcallocate** %7, align 8
  %151 = getelementptr inbounds %struct.pmc_md_amd_op_pmcallocate, %struct.pmc_md_amd_op_pmcallocate* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = or i32 %152, %149
  store i32 %153, i32* %151, align 4
  br label %154

154:                                              ; preds = %148, %141
  br label %155

155:                                              ; preds = %154, %135
  br label %156

156:                                              ; preds = %155, %120
  %157 = load %struct.pmu_event_desc*, %struct.pmu_event_desc** %6, align 8
  %158 = getelementptr inbounds %struct.pmu_event_desc, %struct.pmu_event_desc* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %156
  %162 = load i32, i32* @AMD_PMC_EDGE, align 4
  %163 = load %struct.pmc_md_amd_op_pmcallocate*, %struct.pmc_md_amd_op_pmcallocate** %7, align 8
  %164 = getelementptr inbounds %struct.pmc_md_amd_op_pmcallocate, %struct.pmc_md_amd_op_pmcallocate* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = or i32 %165, %162
  store i32 %166, i32* %164, align 4
  br label %167

167:                                              ; preds = %161, %156
  %168 = load %struct.pmu_event_desc*, %struct.pmu_event_desc** %6, align 8
  %169 = getelementptr inbounds %struct.pmu_event_desc, %struct.pmu_event_desc* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %167
  %173 = load i32, i32* @AMD_PMC_EDGE, align 4
  %174 = load %struct.pmc_md_amd_op_pmcallocate*, %struct.pmc_md_amd_op_pmcallocate** %7, align 8
  %175 = getelementptr inbounds %struct.pmc_md_amd_op_pmcallocate, %struct.pmc_md_amd_op_pmcallocate* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = or i32 %176, %173
  store i32 %177, i32* %175, align 4
  br label %178

178:                                              ; preds = %172, %167
  %179 = load %struct.pmc_op_pmcallocate*, %struct.pmc_op_pmcallocate** %5, align 8
  %180 = getelementptr inbounds %struct.pmc_op_pmcallocate, %struct.pmc_op_pmcallocate* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @PMC_CAP_INTERRUPT, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %178
  %186 = load i32, i32* @AMD_PMC_INT, align 4
  %187 = load %struct.pmc_md_amd_op_pmcallocate*, %struct.pmc_md_amd_op_pmcallocate** %7, align 8
  %188 = getelementptr inbounds %struct.pmc_md_amd_op_pmcallocate, %struct.pmc_md_amd_op_pmcallocate* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = or i32 %189, %186
  store i32 %190, i32* %188, align 4
  br label %191

191:                                              ; preds = %185, %178
  br label %192

192:                                              ; preds = %191, %76
  br label %193

193:                                              ; preds = %192, %42
  ret i32 0
}

declare dso_local i32 @AMD_PMC_TO_UNITMASK(i64) #1

declare dso_local %struct.pmu_event* @pmu_event_get(i32*, i8*, i32*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @AMD_PMC_TO_EVENTMASK(i32) #1

declare dso_local i32 @AMD_PMC_TO_L3SLICE(i32) #1

declare dso_local i32 @AMD_PMC_TO_L3CORE(i32) #1

declare dso_local i32 @AMD_PMC_TO_EVENTMASK_DF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
