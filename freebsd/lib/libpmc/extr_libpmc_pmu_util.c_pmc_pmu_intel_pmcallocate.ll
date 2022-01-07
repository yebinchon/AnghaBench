; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libpmc/extr_libpmc_pmu_util.c_pmc_pmu_intel_pmcallocate.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libpmc/extr_libpmc_pmu_util.c_pmc_pmu_intel_pmcallocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmc_op_pmcallocate = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.pmc_md_iap_op_pmcallocate }
%struct.pmc_md_iap_op_pmcallocate = type { i32, i32 }
%struct.pmu_event_desc = type { i32, i32, i64, i64, i64, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"UNC_\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"uncore\00", align 1
@PMC_CLASS_UCP = common dso_local global i32 0, align 4
@PMC_CAP_QUALIFIER = common dso_local global i32 0, align 4
@PMC_CLASS_IAF = common dso_local global i32 0, align 4
@PMC_CLASS_IAP = common dso_local global i32 0, align 4
@PMC_CAP_USER = common dso_local global i32 0, align 4
@PMC_CAP_SYSTEM = common dso_local global i32 0, align 4
@IAP_USR = common dso_local global i32 0, align 4
@IAP_OS = common dso_local global i32 0, align 4
@IAP_EDGE = common dso_local global i32 0, align 4
@IAP_ANY = common dso_local global i32 0, align 4
@PMC_CAP_INTERRUPT = common dso_local global i32 0, align 4
@IAP_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.pmc_op_pmcallocate*, %struct.pmu_event_desc*)* @pmc_pmu_intel_pmcallocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmc_pmu_intel_pmcallocate(i8* %0, %struct.pmc_op_pmcallocate* %1, %struct.pmu_event_desc* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pmc_op_pmcallocate*, align 8
  %6 = alloca %struct.pmu_event_desc*, align 8
  %7 = alloca %struct.pmc_md_iap_op_pmcallocate*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.pmc_op_pmcallocate* %1, %struct.pmc_op_pmcallocate** %5, align 8
  store %struct.pmu_event_desc* %2, %struct.pmu_event_desc** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.pmc_op_pmcallocate*, %struct.pmc_op_pmcallocate** %5, align 8
  %10 = getelementptr inbounds %struct.pmc_op_pmcallocate, %struct.pmc_op_pmcallocate* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.pmc_md_iap_op_pmcallocate* %11, %struct.pmc_md_iap_op_pmcallocate** %7, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i8* @strcasestr(i8* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %14 = load i8*, i8** %4, align 8
  %15 = icmp eq i8* %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i8*, i8** %4, align 8
  %18 = call i8* @strcasestr(i8* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %16, %3
  %21 = load i32, i32* @PMC_CLASS_UCP, align 4
  %22 = load %struct.pmc_op_pmcallocate*, %struct.pmc_op_pmcallocate** %5, align 8
  %23 = getelementptr inbounds %struct.pmc_op_pmcallocate, %struct.pmc_op_pmcallocate* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @PMC_CAP_QUALIFIER, align 4
  %25 = load %struct.pmc_op_pmcallocate*, %struct.pmc_op_pmcallocate** %5, align 8
  %26 = getelementptr inbounds %struct.pmc_op_pmcallocate, %struct.pmc_op_pmcallocate* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %58

29:                                               ; preds = %16
  %30 = load %struct.pmu_event_desc*, %struct.pmu_event_desc** %6, align 8
  %31 = getelementptr inbounds %struct.pmu_event_desc, %struct.pmu_event_desc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %44, label %34

34:                                               ; preds = %29
  %35 = load %struct.pmu_event_desc*, %struct.pmu_event_desc** %6, align 8
  %36 = getelementptr inbounds %struct.pmu_event_desc, %struct.pmu_event_desc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %34
  %40 = load %struct.pmu_event_desc*, %struct.pmu_event_desc** %6, align 8
  %41 = getelementptr inbounds %struct.pmu_event_desc, %struct.pmu_event_desc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 3
  br i1 %43, label %44, label %48

44:                                               ; preds = %39, %29
  %45 = load i32, i32* @PMC_CLASS_IAF, align 4
  %46 = load %struct.pmc_op_pmcallocate*, %struct.pmc_op_pmcallocate** %5, align 8
  %47 = getelementptr inbounds %struct.pmc_op_pmcallocate, %struct.pmc_op_pmcallocate* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  br label %57

48:                                               ; preds = %39, %34
  %49 = load i32, i32* @PMC_CLASS_IAP, align 4
  %50 = load %struct.pmc_op_pmcallocate*, %struct.pmc_op_pmcallocate** %5, align 8
  %51 = getelementptr inbounds %struct.pmc_op_pmcallocate, %struct.pmc_op_pmcallocate* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @PMC_CAP_QUALIFIER, align 4
  %53 = load %struct.pmc_op_pmcallocate*, %struct.pmc_op_pmcallocate** %5, align 8
  %54 = getelementptr inbounds %struct.pmc_op_pmcallocate, %struct.pmc_op_pmcallocate* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %48, %44
  br label %58

58:                                               ; preds = %57, %20
  %59 = load %struct.pmu_event_desc*, %struct.pmu_event_desc** %6, align 8
  %60 = getelementptr inbounds %struct.pmu_event_desc, %struct.pmu_event_desc* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @IAP_EVSEL(i32 %61)
  %63 = load %struct.pmc_md_iap_op_pmcallocate*, %struct.pmc_md_iap_op_pmcallocate** %7, align 8
  %64 = getelementptr inbounds %struct.pmc_md_iap_op_pmcallocate, %struct.pmc_md_iap_op_pmcallocate* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  %67 = load %struct.pmu_event_desc*, %struct.pmu_event_desc** %6, align 8
  %68 = getelementptr inbounds %struct.pmu_event_desc, %struct.pmu_event_desc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %58
  %72 = load %struct.pmu_event_desc*, %struct.pmu_event_desc** %6, align 8
  %73 = getelementptr inbounds %struct.pmu_event_desc, %struct.pmu_event_desc* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @IAP_UMASK(i32 %74)
  %76 = load %struct.pmc_md_iap_op_pmcallocate*, %struct.pmc_md_iap_op_pmcallocate** %7, align 8
  %77 = getelementptr inbounds %struct.pmc_md_iap_op_pmcallocate, %struct.pmc_md_iap_op_pmcallocate* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %71, %58
  %81 = load %struct.pmu_event_desc*, %struct.pmu_event_desc** %6, align 8
  %82 = getelementptr inbounds %struct.pmu_event_desc, %struct.pmu_event_desc* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @IAP_CMASK(i32 %83)
  %85 = load %struct.pmc_md_iap_op_pmcallocate*, %struct.pmc_md_iap_op_pmcallocate** %7, align 8
  %86 = getelementptr inbounds %struct.pmc_md_iap_op_pmcallocate, %struct.pmc_md_iap_op_pmcallocate* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 4
  %89 = load %struct.pmu_event_desc*, %struct.pmu_event_desc** %6, align 8
  %90 = getelementptr inbounds %struct.pmu_event_desc, %struct.pmu_event_desc* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.pmc_md_iap_op_pmcallocate*, %struct.pmc_md_iap_op_pmcallocate** %7, align 8
  %93 = getelementptr inbounds %struct.pmc_md_iap_op_pmcallocate, %struct.pmc_md_iap_op_pmcallocate* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load %struct.pmc_op_pmcallocate*, %struct.pmc_op_pmcallocate** %5, align 8
  %95 = getelementptr inbounds %struct.pmc_op_pmcallocate, %struct.pmc_op_pmcallocate* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @PMC_CAP_USER, align 4
  %98 = load i32, i32* @PMC_CAP_SYSTEM, align 4
  %99 = or i32 %97, %98
  %100 = and i32 %96, %99
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %114, label %102

102:                                              ; preds = %80
  %103 = load %struct.pmc_op_pmcallocate*, %struct.pmc_op_pmcallocate** %5, align 8
  %104 = getelementptr inbounds %struct.pmc_op_pmcallocate, %struct.pmc_op_pmcallocate* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @PMC_CAP_USER, align 4
  %107 = load i32, i32* @PMC_CAP_SYSTEM, align 4
  %108 = or i32 %106, %107
  %109 = and i32 %105, %108
  %110 = load i32, i32* @PMC_CAP_USER, align 4
  %111 = load i32, i32* @PMC_CAP_SYSTEM, align 4
  %112 = or i32 %110, %111
  %113 = icmp eq i32 %109, %112
  br i1 %113, label %114, label %122

114:                                              ; preds = %102, %80
  %115 = load i32, i32* @IAP_USR, align 4
  %116 = load i32, i32* @IAP_OS, align 4
  %117 = or i32 %115, %116
  %118 = load %struct.pmc_md_iap_op_pmcallocate*, %struct.pmc_md_iap_op_pmcallocate** %7, align 8
  %119 = getelementptr inbounds %struct.pmc_md_iap_op_pmcallocate, %struct.pmc_md_iap_op_pmcallocate* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %120, %117
  store i32 %121, i32* %119, align 4
  br label %150

122:                                              ; preds = %102
  %123 = load %struct.pmc_op_pmcallocate*, %struct.pmc_op_pmcallocate** %5, align 8
  %124 = getelementptr inbounds %struct.pmc_op_pmcallocate, %struct.pmc_op_pmcallocate* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @PMC_CAP_USER, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %122
  %130 = load i32, i32* @IAP_USR, align 4
  %131 = load %struct.pmc_md_iap_op_pmcallocate*, %struct.pmc_md_iap_op_pmcallocate** %7, align 8
  %132 = getelementptr inbounds %struct.pmc_md_iap_op_pmcallocate, %struct.pmc_md_iap_op_pmcallocate* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %133, %130
  store i32 %134, i32* %132, align 4
  br label %149

135:                                              ; preds = %122
  %136 = load %struct.pmc_op_pmcallocate*, %struct.pmc_op_pmcallocate** %5, align 8
  %137 = getelementptr inbounds %struct.pmc_op_pmcallocate, %struct.pmc_op_pmcallocate* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @PMC_CAP_SYSTEM, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %135
  %143 = load i32, i32* @IAP_OS, align 4
  %144 = load %struct.pmc_md_iap_op_pmcallocate*, %struct.pmc_md_iap_op_pmcallocate** %7, align 8
  %145 = getelementptr inbounds %struct.pmc_md_iap_op_pmcallocate, %struct.pmc_md_iap_op_pmcallocate* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = or i32 %146, %143
  store i32 %147, i32* %145, align 4
  br label %148

148:                                              ; preds = %142, %135
  br label %149

149:                                              ; preds = %148, %129
  br label %150

150:                                              ; preds = %149, %114
  %151 = load %struct.pmu_event_desc*, %struct.pmu_event_desc** %6, align 8
  %152 = getelementptr inbounds %struct.pmu_event_desc, %struct.pmu_event_desc* %151, i32 0, i32 4
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %150
  %156 = load i32, i32* @IAP_EDGE, align 4
  %157 = load %struct.pmc_md_iap_op_pmcallocate*, %struct.pmc_md_iap_op_pmcallocate** %7, align 8
  %158 = getelementptr inbounds %struct.pmc_md_iap_op_pmcallocate, %struct.pmc_md_iap_op_pmcallocate* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = or i32 %159, %156
  store i32 %160, i32* %158, align 4
  br label %161

161:                                              ; preds = %155, %150
  %162 = load %struct.pmu_event_desc*, %struct.pmu_event_desc** %6, align 8
  %163 = getelementptr inbounds %struct.pmu_event_desc, %struct.pmu_event_desc* %162, i32 0, i32 3
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %161
  %167 = load i32, i32* @IAP_ANY, align 4
  %168 = load %struct.pmc_md_iap_op_pmcallocate*, %struct.pmc_md_iap_op_pmcallocate** %7, align 8
  %169 = getelementptr inbounds %struct.pmc_md_iap_op_pmcallocate, %struct.pmc_md_iap_op_pmcallocate* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = or i32 %170, %167
  store i32 %171, i32* %169, align 4
  br label %172

172:                                              ; preds = %166, %161
  %173 = load %struct.pmu_event_desc*, %struct.pmu_event_desc** %6, align 8
  %174 = getelementptr inbounds %struct.pmu_event_desc, %struct.pmu_event_desc* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %172
  %178 = load i32, i32* @IAP_EDGE, align 4
  %179 = load %struct.pmc_md_iap_op_pmcallocate*, %struct.pmc_md_iap_op_pmcallocate** %7, align 8
  %180 = getelementptr inbounds %struct.pmc_md_iap_op_pmcallocate, %struct.pmc_md_iap_op_pmcallocate* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = or i32 %181, %178
  store i32 %182, i32* %180, align 4
  br label %183

183:                                              ; preds = %177, %172
  %184 = load %struct.pmc_op_pmcallocate*, %struct.pmc_op_pmcallocate** %5, align 8
  %185 = getelementptr inbounds %struct.pmc_op_pmcallocate, %struct.pmc_op_pmcallocate* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @PMC_CAP_INTERRUPT, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %196

190:                                              ; preds = %183
  %191 = load i32, i32* @IAP_INT, align 4
  %192 = load %struct.pmc_md_iap_op_pmcallocate*, %struct.pmc_md_iap_op_pmcallocate** %7, align 8
  %193 = getelementptr inbounds %struct.pmc_md_iap_op_pmcallocate, %struct.pmc_md_iap_op_pmcallocate* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = or i32 %194, %191
  store i32 %195, i32* %193, align 4
  br label %196

196:                                              ; preds = %190, %183
  ret i32 0
}

declare dso_local i8* @strcasestr(i8*, i8*) #1

declare dso_local i32 @IAP_EVSEL(i32) #1

declare dso_local i32 @IAP_UMASK(i32) #1

declare dso_local i32 @IAP_CMASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
