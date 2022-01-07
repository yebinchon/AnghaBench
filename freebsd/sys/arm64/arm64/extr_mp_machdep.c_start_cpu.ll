; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_mp_machdep.c_start_cpu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_mp_machdep.c_start_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcpu = type { i32 }

@mp_maxid = common dso_local global i64 0, align 8
@MAXCPU = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"Too many CPUs\00", align 1
@cpu0 = common dso_local global i64 0, align 8
@__pcpu = common dso_local global %struct.pcpu* null, align 8
@DPCPU_SIZE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@dpcpu = common dso_local global i32** null, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"Starting CPU %u (%lx)\0A\00", align 1
@kernel_pmap = common dso_local global i32 0, align 4
@mpentry = common dso_local global i64 0, align 8
@PSCI_RETVAL_SUCCESS = common dso_local global i32 0, align 4
@PSCI_MISSING = common dso_local global i32 0, align 4
@mp_quirks = common dso_local global i32 0, align 4
@MP_QUIRK_CPULIST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to start CPU %u (%lx)\0A\00", align 1
@mp_ncpus = common dso_local global i32 0, align 4
@all_cpus = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32)* @start_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_cpu(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pcpu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @mp_maxid, align 8
  %12 = icmp ugt i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %117

14:                                               ; preds = %2
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* @MAXCPU, align 8
  %17 = icmp ult i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @KASSERT(i32 %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @cpu0, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  store i32 1, i32* %3, align 4
  br label %117

24:                                               ; preds = %14
  %25 = load i64, i64* %4, align 8
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* @cpu0, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load i64, i64* @mp_maxid, align 8
  %31 = add i64 %30, 1
  %32 = load i64, i64* %8, align 8
  %33 = add i64 %32, %31
  store i64 %33, i64* %8, align 8
  br label %34

34:                                               ; preds = %29, %24
  %35 = load i64, i64* @cpu0, align 8
  %36 = load i64, i64* %8, align 8
  %37 = sub i64 %36, %35
  store i64 %37, i64* %8, align 8
  %38 = load %struct.pcpu*, %struct.pcpu** @__pcpu, align 8
  %39 = load i64, i64* %8, align 8
  %40 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %38, i64 %39
  store %struct.pcpu* %40, %struct.pcpu** %6, align 8
  %41 = load %struct.pcpu*, %struct.pcpu** %6, align 8
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @pcpu_init(%struct.pcpu* %41, i64 %42, i32 4)
  %44 = load i32, i32* @DPCPU_SIZE, align 4
  %45 = load i32, i32* @M_WAITOK, align 4
  %46 = load i32, i32* @M_ZERO, align 4
  %47 = or i32 %45, %46
  %48 = call i64 @kmem_malloc(i32 %44, i32 %47)
  %49 = inttoptr i64 %48 to i8*
  %50 = bitcast i8* %49 to i32*
  %51 = load i32**, i32*** @dpcpu, align 8
  %52 = load i64, i64* %8, align 8
  %53 = sub i64 %52, 1
  %54 = getelementptr inbounds i32*, i32** %51, i64 %53
  store i32* %50, i32** %54, align 8
  %55 = load i32**, i32*** @dpcpu, align 8
  %56 = load i64, i64* %8, align 8
  %57 = sub i64 %56, 1
  %58 = getelementptr inbounds i32*, i32** %55, i64 %57
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* %8, align 8
  %61 = call i32 @dpcpu_init(i32* %59, i64 %60)
  %62 = load i64, i64* %8, align 8
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %62, i32 %63)
  %65 = load i32, i32* @kernel_pmap, align 4
  %66 = load i64, i64* @mpentry, align 8
  %67 = trunc i64 %66 to i32
  %68 = call i32 @pmap_extract(i32 %65, i32 %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load i64, i64* %8, align 8
  %72 = call i32 @psci_cpu_on(i32 %69, i32 %70, i64 %71)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @PSCI_RETVAL_SUCCESS, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %113

76:                                               ; preds = %34
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @PSCI_MISSING, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %86, label %80

80:                                               ; preds = %76
  %81 = load i32, i32* @mp_quirks, align 4
  %82 = load i32, i32* @MP_QUIRK_CPULIST, align 4
  %83 = and i32 %81, %82
  %84 = load i32, i32* @MP_QUIRK_CPULIST, align 4
  %85 = icmp eq i32 %83, %84
  br label %86

86:                                               ; preds = %80, %76
  %87 = phi i1 [ true, %76 ], [ %85, %80 ]
  %88 = zext i1 %87 to i32
  %89 = load i64, i64* %4, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = inttoptr i64 %91 to i8*
  %93 = call i32 @KASSERT(i32 %88, i8* %92)
  %94 = load %struct.pcpu*, %struct.pcpu** %6, align 8
  %95 = call i32 @pcpu_destroy(%struct.pcpu* %94)
  %96 = load i32**, i32*** @dpcpu, align 8
  %97 = load i64, i64* %8, align 8
  %98 = sub i64 %97, 1
  %99 = getelementptr inbounds i32*, i32** %96, i64 %98
  %100 = load i32*, i32** %99, align 8
  %101 = ptrtoint i32* %100 to i32
  %102 = load i32, i32* @DPCPU_SIZE, align 4
  %103 = call i32 @kmem_free(i32 %101, i32 %102)
  %104 = load i32**, i32*** @dpcpu, align 8
  %105 = load i64, i64* %8, align 8
  %106 = sub i64 %105, 1
  %107 = getelementptr inbounds i32*, i32** %104, i64 %106
  store i32* null, i32** %107, align 8
  %108 = load i32, i32* @mp_ncpus, align 4
  %109 = add nsw i32 %108, -1
  store i32 %109, i32* @mp_ncpus, align 4
  %110 = load i64, i64* %4, align 8
  %111 = load i32, i32* %5, align 4
  %112 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %110, i32 %111)
  br label %116

113:                                              ; preds = %34
  %114 = load i64, i64* %8, align 8
  %115 = call i32 @CPU_SET(i64 %114, i32* @all_cpus)
  br label %116

116:                                              ; preds = %113, %86
  store i32 1, i32* %3, align 4
  br label %117

117:                                              ; preds = %116, %23, %13
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @pcpu_init(%struct.pcpu*, i64, i32) #1

declare dso_local i64 @kmem_malloc(i32, i32) #1

declare dso_local i32 @dpcpu_init(i32*, i64) #1

declare dso_local i32 @printf(i8*, i64, i32) #1

declare dso_local i32 @pmap_extract(i32, i32) #1

declare dso_local i32 @psci_cpu_on(i32, i32, i64) #1

declare dso_local i32 @pcpu_destroy(%struct.pcpu*) #1

declare dso_local i32 @kmem_free(i32, i32) #1

declare dso_local i32 @CPU_SET(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
