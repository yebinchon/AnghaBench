; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libpmcstat/extr_libpmcstat_process.c_pmcstat_process_elf_exec.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libpmcstat/extr_libpmcstat_process.c_pmcstat_process_elf_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcstat_process = type { i32 }
%struct.pmcstat_image = type { i64, i64, i32, i64, i64 }
%struct.pmcstat_args = type { i32 }
%struct.pmc_plugins = type { i32 }
%struct.pmcstat_stats = type { i32 }

@PMCSTAT_IMAGE_ELF32 = common dso_local global i64 0, align 8
@PMCSTAT_IMAGE_ELF64 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"WARNING: Cannot find image for \22%s\22.\00", align 1
@PMCSTAT_IMAGE_UNKNOWN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"WARNING: rtld not an ELF object \22%s\22.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmcstat_process_elf_exec(%struct.pmcstat_process* %0, %struct.pmcstat_image* %1, i64 %2, %struct.pmcstat_args* %3, %struct.pmc_plugins* %4, %struct.pmcstat_stats* %5) #0 {
  %7 = alloca %struct.pmcstat_process*, align 8
  %8 = alloca %struct.pmcstat_image*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.pmcstat_args*, align 8
  %11 = alloca %struct.pmc_plugins*, align 8
  %12 = alloca %struct.pmcstat_stats*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.pmcstat_image*, align 8
  store %struct.pmcstat_process* %0, %struct.pmcstat_process** %7, align 8
  store %struct.pmcstat_image* %1, %struct.pmcstat_image** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.pmcstat_args* %3, %struct.pmcstat_args** %10, align 8
  store %struct.pmc_plugins* %4, %struct.pmc_plugins** %11, align 8
  store %struct.pmcstat_stats* %5, %struct.pmcstat_stats** %12, align 8
  %15 = load %struct.pmcstat_image*, %struct.pmcstat_image** %8, align 8
  %16 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PMCSTAT_IMAGE_ELF32, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %6
  %21 = load %struct.pmcstat_image*, %struct.pmcstat_image** %8, align 8
  %22 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PMCSTAT_IMAGE_ELF64, align 8
  %25 = icmp eq i64 %23, %24
  br label %26

26:                                               ; preds = %20, %6
  %27 = phi i1 [ true, %6 ], [ %25, %20 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load %struct.pmcstat_process*, %struct.pmcstat_process** %7, align 8
  %31 = load %struct.pmcstat_image*, %struct.pmcstat_image** %8, align 8
  %32 = load %struct.pmcstat_image*, %struct.pmcstat_image** %8, align 8
  %33 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @pmcstat_image_link(%struct.pmcstat_process* %30, %struct.pmcstat_image* %31, i64 %34)
  %36 = load %struct.pmcstat_image*, %struct.pmcstat_image** %8, align 8
  %37 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %97

40:                                               ; preds = %26
  %41 = load %struct.pmcstat_image*, %struct.pmcstat_image** %8, align 8
  %42 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.pmcstat_args*, %struct.pmcstat_args** %10, align 8
  %45 = load %struct.pmc_plugins*, %struct.pmc_plugins** %11, align 8
  %46 = call %struct.pmcstat_image* @pmcstat_image_from_path(i32 %43, i32 0, %struct.pmcstat_args* %44, %struct.pmc_plugins* %45)
  store %struct.pmcstat_image* %46, %struct.pmcstat_image** %14, align 8
  %47 = load %struct.pmcstat_image*, %struct.pmcstat_image** %14, align 8
  %48 = icmp eq %struct.pmcstat_image* %47, null
  br i1 %48, label %49, label %59

49:                                               ; preds = %40
  %50 = load %struct.pmcstat_image*, %struct.pmcstat_image** %8, align 8
  %51 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @pmcstat_string_unintern(i32 %52)
  %54 = call i32 @warnx(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load %struct.pmcstat_stats*, %struct.pmcstat_stats** %12, align 8
  %56 = getelementptr inbounds %struct.pmcstat_stats, %struct.pmcstat_stats* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  br label %97

59:                                               ; preds = %40
  %60 = load %struct.pmcstat_image*, %struct.pmcstat_image** %14, align 8
  %61 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @PMCSTAT_IMAGE_UNKNOWN, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load %struct.pmcstat_image*, %struct.pmcstat_image** %14, align 8
  %67 = load %struct.pmcstat_args*, %struct.pmcstat_args** %10, align 8
  %68 = call i32 @pmcstat_image_get_elf_params(%struct.pmcstat_image* %66, %struct.pmcstat_args* %67)
  br label %69

69:                                               ; preds = %65, %59
  %70 = load %struct.pmcstat_image*, %struct.pmcstat_image** %14, align 8
  %71 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @PMCSTAT_IMAGE_ELF32, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %87

75:                                               ; preds = %69
  %76 = load %struct.pmcstat_image*, %struct.pmcstat_image** %14, align 8
  %77 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @PMCSTAT_IMAGE_ELF64, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %75
  %82 = load %struct.pmcstat_image*, %struct.pmcstat_image** %8, align 8
  %83 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @pmcstat_string_unintern(i32 %84)
  %86 = call i32 @warnx(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  br label %97

87:                                               ; preds = %75, %69
  %88 = load i64, i64* %9, align 8
  %89 = load %struct.pmcstat_image*, %struct.pmcstat_image** %14, align 8
  %90 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = sub nsw i64 %88, %91
  store i64 %92, i64* %13, align 8
  %93 = load %struct.pmcstat_process*, %struct.pmcstat_process** %7, align 8
  %94 = load %struct.pmcstat_image*, %struct.pmcstat_image** %14, align 8
  %95 = load i64, i64* %13, align 8
  %96 = call i32 @pmcstat_image_link(%struct.pmcstat_process* %93, %struct.pmcstat_image* %94, i64 %95)
  br label %97

97:                                               ; preds = %49, %81, %87, %26
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pmcstat_image_link(%struct.pmcstat_process*, %struct.pmcstat_image*, i64) #1

declare dso_local %struct.pmcstat_image* @pmcstat_image_from_path(i32, i32, %struct.pmcstat_args*, %struct.pmc_plugins*) #1

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local i32 @pmcstat_string_unintern(i32) #1

declare dso_local i32 @pmcstat_image_get_elf_params(%struct.pmcstat_image*, %struct.pmcstat_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
