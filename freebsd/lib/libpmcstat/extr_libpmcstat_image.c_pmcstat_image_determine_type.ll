; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libpmcstat/extr_libpmcstat_image.c_pmcstat_image_determine_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libpmcstat/extr_libpmcstat_image.c_pmcstat_image_determine_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcstat_image = type { i64 }
%struct.pmcstat_args = type { i32 }

@PMCSTAT_IMAGE_UNKNOWN = common dso_local global i64 0, align 8
@PMCSTAT_IMAGE_INDETERMINABLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmcstat_image_determine_type(%struct.pmcstat_image* %0, %struct.pmcstat_args* %1) #0 {
  %3 = alloca %struct.pmcstat_image*, align 8
  %4 = alloca %struct.pmcstat_args*, align 8
  store %struct.pmcstat_image* %0, %struct.pmcstat_image** %3, align 8
  store %struct.pmcstat_args* %1, %struct.pmcstat_args** %4, align 8
  %5 = load %struct.pmcstat_image*, %struct.pmcstat_image** %3, align 8
  %6 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @PMCSTAT_IMAGE_UNKNOWN, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load %struct.pmcstat_image*, %struct.pmcstat_image** %3, align 8
  %13 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PMCSTAT_IMAGE_UNKNOWN, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.pmcstat_image*, %struct.pmcstat_image** %3, align 8
  %19 = load %struct.pmcstat_args*, %struct.pmcstat_args** %4, align 8
  %20 = call i32 @pmcstat_image_get_elf_params(%struct.pmcstat_image* %18, %struct.pmcstat_args* %19)
  br label %21

21:                                               ; preds = %17, %2
  %22 = load %struct.pmcstat_image*, %struct.pmcstat_image** %3, align 8
  %23 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PMCSTAT_IMAGE_UNKNOWN, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load %struct.pmcstat_image*, %struct.pmcstat_image** %3, align 8
  %29 = load %struct.pmcstat_args*, %struct.pmcstat_args** %4, align 8
  %30 = call i32 @pmcstat_image_get_aout_params(%struct.pmcstat_image* %28, %struct.pmcstat_args* %29)
  br label %31

31:                                               ; preds = %27, %21
  %32 = load %struct.pmcstat_image*, %struct.pmcstat_image** %3, align 8
  %33 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PMCSTAT_IMAGE_UNKNOWN, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load i64, i64* @PMCSTAT_IMAGE_INDETERMINABLE, align 8
  %39 = load %struct.pmcstat_image*, %struct.pmcstat_image** %3, align 8
  %40 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  br label %41

41:                                               ; preds = %37, %31
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pmcstat_image_get_elf_params(%struct.pmcstat_image*, %struct.pmcstat_args*) #1

declare dso_local i32 @pmcstat_image_get_aout_params(%struct.pmcstat_image*, %struct.pmcstat_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
