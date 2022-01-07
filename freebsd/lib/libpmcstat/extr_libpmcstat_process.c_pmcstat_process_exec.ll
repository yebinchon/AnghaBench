; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libpmcstat/extr_libpmcstat_process.c_pmcstat_process_exec.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libpmcstat/extr_libpmcstat_process.c_pmcstat_process_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcstat_process = type { i32 }
%struct.pmcstat_args = type { i32 }
%struct.pmc_plugins = type { i32 }
%struct.pmcstat_stats = type { i32, i32, i32, i32 }
%struct.pmcstat_image = type { i32 }

@PMCSTAT_IMAGE_UNKNOWN = common dso_local global i32 0, align 4
@EX_SOFTWARE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"ERROR: Unsupported executable type for \22%s\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmcstat_process_exec(%struct.pmcstat_process* %0, i32 %1, i32 %2, %struct.pmcstat_args* %3, %struct.pmc_plugins* %4, %struct.pmcstat_stats* %5) #0 {
  %7 = alloca %struct.pmcstat_process*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pmcstat_args*, align 8
  %11 = alloca %struct.pmc_plugins*, align 8
  %12 = alloca %struct.pmcstat_stats*, align 8
  %13 = alloca %struct.pmcstat_image*, align 8
  store %struct.pmcstat_process* %0, %struct.pmcstat_process** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.pmcstat_args* %3, %struct.pmcstat_args** %10, align 8
  store %struct.pmc_plugins* %4, %struct.pmc_plugins** %11, align 8
  store %struct.pmcstat_stats* %5, %struct.pmcstat_stats** %12, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.pmcstat_args*, %struct.pmcstat_args** %10, align 8
  %16 = load %struct.pmc_plugins*, %struct.pmc_plugins** %11, align 8
  %17 = call %struct.pmcstat_image* @pmcstat_image_from_path(i32 %14, i32 0, %struct.pmcstat_args* %15, %struct.pmc_plugins* %16)
  store %struct.pmcstat_image* %17, %struct.pmcstat_image** %13, align 8
  %18 = icmp eq %struct.pmcstat_image* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %6
  %20 = load %struct.pmcstat_stats*, %struct.pmcstat_stats** %12, align 8
  %21 = getelementptr inbounds %struct.pmcstat_stats, %struct.pmcstat_stats* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  br label %76

24:                                               ; preds = %6
  %25 = load %struct.pmcstat_image*, %struct.pmcstat_image** %13, align 8
  %26 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @PMCSTAT_IMAGE_UNKNOWN, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load %struct.pmcstat_image*, %struct.pmcstat_image** %13, align 8
  %32 = load %struct.pmcstat_args*, %struct.pmcstat_args** %10, align 8
  %33 = call i32 @pmcstat_image_determine_type(%struct.pmcstat_image* %31, %struct.pmcstat_args* %32)
  br label %34

34:                                               ; preds = %30, %24
  %35 = load %struct.pmcstat_image*, %struct.pmcstat_image** %13, align 8
  %36 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @PMCSTAT_IMAGE_UNKNOWN, align 4
  %39 = icmp ne i32 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load %struct.pmcstat_image*, %struct.pmcstat_image** %13, align 8
  %43 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %71 [
    i32 130, label %45
    i32 129, label %45
    i32 131, label %57
    i32 128, label %66
  ]

45:                                               ; preds = %34, %34
  %46 = load %struct.pmcstat_stats*, %struct.pmcstat_stats** %12, align 8
  %47 = getelementptr inbounds %struct.pmcstat_stats, %struct.pmcstat_stats* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  %50 = load %struct.pmcstat_process*, %struct.pmcstat_process** %7, align 8
  %51 = load %struct.pmcstat_image*, %struct.pmcstat_image** %13, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.pmcstat_args*, %struct.pmcstat_args** %10, align 8
  %54 = load %struct.pmc_plugins*, %struct.pmc_plugins** %11, align 8
  %55 = load %struct.pmcstat_stats*, %struct.pmcstat_stats** %12, align 8
  %56 = call i32 @pmcstat_process_elf_exec(%struct.pmcstat_process* %50, %struct.pmcstat_image* %51, i32 %52, %struct.pmcstat_args* %53, %struct.pmc_plugins* %54, %struct.pmcstat_stats* %55)
  br label %76

57:                                               ; preds = %34
  %58 = load %struct.pmcstat_stats*, %struct.pmcstat_stats** %12, align 8
  %59 = getelementptr inbounds %struct.pmcstat_stats, %struct.pmcstat_stats* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  %62 = load %struct.pmcstat_process*, %struct.pmcstat_process** %7, align 8
  %63 = load %struct.pmcstat_image*, %struct.pmcstat_image** %13, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @pmcstat_process_aout_exec(%struct.pmcstat_process* %62, %struct.pmcstat_image* %63, i32 %64)
  br label %76

66:                                               ; preds = %34
  %67 = load %struct.pmcstat_stats*, %struct.pmcstat_stats** %12, align 8
  %68 = getelementptr inbounds %struct.pmcstat_stats, %struct.pmcstat_stats* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  br label %76

71:                                               ; preds = %34
  %72 = load i32, i32* @EX_SOFTWARE, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @pmcstat_string_unintern(i32 %73)
  %75 = call i32 @err(i32 %72, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %19, %71, %66, %57, %45
  ret void
}

declare dso_local %struct.pmcstat_image* @pmcstat_image_from_path(i32, i32, %struct.pmcstat_args*, %struct.pmc_plugins*) #1

declare dso_local i32 @pmcstat_image_determine_type(%struct.pmcstat_image*, %struct.pmcstat_args*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pmcstat_process_elf_exec(%struct.pmcstat_process*, %struct.pmcstat_image*, i32, %struct.pmcstat_args*, %struct.pmc_plugins*, %struct.pmcstat_stats*) #1

declare dso_local i32 @pmcstat_process_aout_exec(%struct.pmcstat_process*, %struct.pmcstat_image*, i32) #1

declare dso_local i32 @err(i32, i8*, i32) #1

declare dso_local i32 @pmcstat_string_unintern(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
