; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libpmcstat/extr_libpmcstat_logging.c_pmcstat_initialize_logging.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libpmcstat/extr_libpmcstat_logging.c_pmcstat_initialize_logging.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcstat_process = type { i32 }
%struct.pmcstat_args = type { i32, i64, i64 }
%struct.pmc_plugins = type { i32 (...)* }

@.str = private unnamed_addr constant [29 x i8] c"LD_TRACE_LOADED_OBJECTS_FMT1\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%o \22%p\22 %x\0A\00", align 1
@EX_OSERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"ERROR: Cannot setenv\00", align 1
@PMCSTAT_NHASH = common dso_local global i32 0, align 4
@pmcstat_image_hash = common dso_local global i32* null, align 8
@pmcstat_process_hash = common dso_local global i32* null, align 8
@PMCSTAT_ALLOCATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"ERROR: Cannot initialize logging\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmcstat_initialize_logging(%struct.pmcstat_process** %0, %struct.pmcstat_args* %1, %struct.pmc_plugins* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.pmcstat_process**, align 8
  %7 = alloca %struct.pmcstat_args*, align 8
  %8 = alloca %struct.pmc_plugins*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.pmcstat_process*, align 8
  %12 = alloca i32, align 4
  store %struct.pmcstat_process** %0, %struct.pmcstat_process*** %6, align 8
  store %struct.pmcstat_args* %1, %struct.pmcstat_args** %7, align 8
  store %struct.pmc_plugins* %2, %struct.pmc_plugins** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = call i64 @setenv(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %5
  %16 = load i32, i32* @EX_OSERR, align 4
  %17 = call i32 @err(i32 %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %18

18:                                               ; preds = %15, %5
  %19 = call i32 (...) @pmcstat_string_initialize()
  store i32 0, i32* %12, align 4
  br label %20

20:                                               ; preds = %35, %18
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* @PMCSTAT_NHASH, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %20
  %25 = load i32*, i32** @pmcstat_image_hash, align 8
  %26 = load i32, i32* %12, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = call i32 @LIST_INIT(i32* %28)
  %30 = load i32*, i32** @pmcstat_process_hash, align 8
  %31 = load i32, i32* %12, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = call i32 @LIST_INIT(i32* %33)
  br label %35

35:                                               ; preds = %24
  %36 = load i32, i32* %12, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %12, align 4
  br label %20

38:                                               ; preds = %20
  %39 = load i32, i32* @PMCSTAT_ALLOCATE, align 4
  %40 = call %struct.pmcstat_process* @pmcstat_process_lookup(i32 -1, i32 %39)
  store %struct.pmcstat_process* %40, %struct.pmcstat_process** %11, align 8
  %41 = icmp eq %struct.pmcstat_process* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* @EX_OSERR, align 4
  %44 = call i32 @err(i32 %43, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %38
  %46 = load %struct.pmcstat_process*, %struct.pmcstat_process** %11, align 8
  %47 = load %struct.pmcstat_process**, %struct.pmcstat_process*** %6, align 8
  store %struct.pmcstat_process* %46, %struct.pmcstat_process** %47, align 8
  %48 = load i32*, i32** %9, align 8
  store i32 0, i32* %48, align 4
  %49 = load %struct.pmcstat_args*, %struct.pmcstat_args** %7, align 8
  %50 = getelementptr inbounds %struct.pmcstat_args, %struct.pmcstat_args* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32*, i32** %10, align 8
  store i32 %51, i32* %52, align 4
  %53 = load %struct.pmc_plugins*, %struct.pmc_plugins** %8, align 8
  %54 = load %struct.pmcstat_args*, %struct.pmcstat_args** %7, align 8
  %55 = getelementptr inbounds %struct.pmcstat_args, %struct.pmcstat_args* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.pmc_plugins, %struct.pmc_plugins* %53, i64 %56
  %58 = getelementptr inbounds %struct.pmc_plugins, %struct.pmc_plugins* %57, i32 0, i32 0
  %59 = load i32 (...)*, i32 (...)** %58, align 8
  %60 = icmp ne i32 (...)* %59, null
  br i1 %60, label %61, label %70

61:                                               ; preds = %45
  %62 = load %struct.pmc_plugins*, %struct.pmc_plugins** %8, align 8
  %63 = load %struct.pmcstat_args*, %struct.pmcstat_args** %7, align 8
  %64 = getelementptr inbounds %struct.pmcstat_args, %struct.pmcstat_args* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.pmc_plugins, %struct.pmc_plugins* %62, i64 %65
  %67 = getelementptr inbounds %struct.pmc_plugins, %struct.pmc_plugins* %66, i32 0, i32 0
  %68 = load i32 (...)*, i32 (...)** %67, align 8
  %69 = call i32 (...) %68()
  br label %70

70:                                               ; preds = %61, %45
  %71 = load %struct.pmc_plugins*, %struct.pmc_plugins** %8, align 8
  %72 = load %struct.pmcstat_args*, %struct.pmcstat_args** %7, align 8
  %73 = getelementptr inbounds %struct.pmcstat_args, %struct.pmcstat_args* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.pmc_plugins, %struct.pmc_plugins* %71, i64 %74
  %76 = getelementptr inbounds %struct.pmc_plugins, %struct.pmc_plugins* %75, i32 0, i32 0
  %77 = load i32 (...)*, i32 (...)** %76, align 8
  %78 = icmp ne i32 (...)* %77, null
  br i1 %78, label %79, label %88

79:                                               ; preds = %70
  %80 = load %struct.pmc_plugins*, %struct.pmc_plugins** %8, align 8
  %81 = load %struct.pmcstat_args*, %struct.pmcstat_args** %7, align 8
  %82 = getelementptr inbounds %struct.pmcstat_args, %struct.pmcstat_args* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds %struct.pmc_plugins, %struct.pmc_plugins* %80, i64 %83
  %85 = getelementptr inbounds %struct.pmc_plugins, %struct.pmc_plugins* %84, i32 0, i32 0
  %86 = load i32 (...)*, i32 (...)** %85, align 8
  %87 = call i32 (...) %86()
  br label %88

88:                                               ; preds = %79, %70
  ret void
}

declare dso_local i64 @setenv(i8*, i8*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @pmcstat_string_initialize(...) #1

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local %struct.pmcstat_process* @pmcstat_process_lookup(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
