; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_libprocstat.c_procstat_getrlimit_core.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_libprocstat.c_procstat_getrlimit_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.procstat_core = type { i32 }
%struct.rlimit = type { i32 }

@RLIM_NLIMITS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"getrlimit: which\00", align 1
@PSC_TYPE_RLIMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.procstat_core*, i32, %struct.rlimit*)* @procstat_getrlimit_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @procstat_getrlimit_core(%struct.procstat_core* %0, i32 %1, %struct.rlimit* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.procstat_core*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rlimit*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.rlimit*, align 8
  store %struct.procstat_core* %0, %struct.procstat_core** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.rlimit* %2, %struct.rlimit** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @RLIM_NLIMITS, align 4
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %12, %3
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* @errno, align 4
  %18 = call i32 @warn(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %45

19:                                               ; preds = %12
  %20 = load %struct.procstat_core*, %struct.procstat_core** %5, align 8
  %21 = load i32, i32* @PSC_TYPE_RLIMIT, align 4
  %22 = call %struct.rlimit* @procstat_core_get(%struct.procstat_core* %20, i32 %21, i32* null, i64* %8)
  store %struct.rlimit* %22, %struct.rlimit** %9, align 8
  %23 = load %struct.rlimit*, %struct.rlimit** %9, align 8
  %24 = icmp eq %struct.rlimit* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 -1, i32* %4, align 4
  br label %45

26:                                               ; preds = %19
  %27 = load i64, i64* %8, align 8
  %28 = load i32, i32* @RLIM_NLIMITS, align 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 4, %29
  %31 = icmp ult i64 %27, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load %struct.rlimit*, %struct.rlimit** %9, align 8
  %34 = call i32 @free(%struct.rlimit* %33)
  store i32 -1, i32* %4, align 4
  br label %45

35:                                               ; preds = %26
  %36 = load %struct.rlimit*, %struct.rlimit** %7, align 8
  %37 = load %struct.rlimit*, %struct.rlimit** %9, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %37, i64 %39
  %41 = bitcast %struct.rlimit* %36 to i8*
  %42 = bitcast %struct.rlimit* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 %42, i64 4, i1 false)
  %43 = load %struct.rlimit*, %struct.rlimit** %9, align 8
  %44 = call i32 @free(%struct.rlimit* %43)
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %35, %32, %25, %16
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @warn(i8*) #1

declare dso_local %struct.rlimit* @procstat_core_get(%struct.procstat_core*, i32, i32*, i64*) #1

declare dso_local i32 @free(%struct.rlimit*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
