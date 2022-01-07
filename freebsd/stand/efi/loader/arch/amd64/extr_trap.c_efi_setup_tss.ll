; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/loader/arch/amd64/extr_trap.c_efi_setup_tss.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/loader/arch/amd64/extr_trap.c_efi_setup_tss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i32, i32, i32*)* }
%struct.region_descriptor = type { i64 }
%struct.amd64tss = type { i32 }
%struct.system_segment_descriptor = type { i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i32 }

@BS = common dso_local global %struct.TYPE_2__* null, align 8
@AllocateAnyPages = common dso_local global i32 0, align 4
@EfiLoaderData = common dso_local global i32 0, align 4
@tss_pa = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"efi_setup_tss: AllocatePages tss error %lu\0A\00", align 1
@SDT_SYSTSS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.region_descriptor*, i32, %struct.amd64tss**)* @efi_setup_tss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efi_setup_tss(%struct.region_descriptor* %0, i32 %1, %struct.amd64tss** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.region_descriptor*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.amd64tss**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.system_segment_descriptor*, align 8
  store %struct.region_descriptor* %0, %struct.region_descriptor** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.amd64tss** %2, %struct.amd64tss*** %7, align 8
  %10 = load %struct.region_descriptor*, %struct.region_descriptor** %5, align 8
  %11 = getelementptr inbounds %struct.region_descriptor, %struct.region_descriptor* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i32, i32* %6, align 4
  %14 = shl i32 %13, 3
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %12, %15
  %17 = inttoptr i64 %16 to %struct.system_segment_descriptor*
  store %struct.system_segment_descriptor* %17, %struct.system_segment_descriptor** %9, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @BS, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (i32, i32, i32, i32*)*, i32 (i32, i32, i32, i32*)** %19, align 8
  %21 = load i32, i32* @AllocateAnyPages, align 4
  %22 = load i32, i32* @EfiLoaderData, align 4
  %23 = call i32 @EFI_SIZE_TO_PAGES(i32 4)
  %24 = call i32 %20(i32 %21, i32 %22, i32 %23, i32* @tss_pa)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i64 @EFI_ERROR(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %3
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @EFI_ERROR_CODE(i32 %29)
  %31 = call i32 @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %30)
  store i32 0, i32* %4, align 4
  br label %68

32:                                               ; preds = %3
  %33 = load i32, i32* @tss_pa, align 4
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to %struct.amd64tss*
  %36 = load %struct.amd64tss**, %struct.amd64tss*** %7, align 8
  store %struct.amd64tss* %35, %struct.amd64tss** %36, align 8
  %37 = load %struct.amd64tss**, %struct.amd64tss*** %7, align 8
  %38 = load %struct.amd64tss*, %struct.amd64tss** %37, align 8
  %39 = call i32 @bzero(%struct.amd64tss* %38, i32 4)
  %40 = load %struct.system_segment_descriptor*, %struct.system_segment_descriptor** %9, align 8
  %41 = getelementptr inbounds %struct.system_segment_descriptor, %struct.system_segment_descriptor* %40, i32 0, i32 0
  store i32 4, i32* %41, align 8
  %42 = load i32, i32* @tss_pa, align 4
  %43 = load %struct.system_segment_descriptor*, %struct.system_segment_descriptor** %9, align 8
  %44 = getelementptr inbounds %struct.system_segment_descriptor, %struct.system_segment_descriptor* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @SDT_SYSTSS, align 4
  %46 = load %struct.system_segment_descriptor*, %struct.system_segment_descriptor** %9, align 8
  %47 = getelementptr inbounds %struct.system_segment_descriptor, %struct.system_segment_descriptor* %46, i32 0, i32 11
  store i32 %45, i32* %47, align 8
  %48 = load %struct.system_segment_descriptor*, %struct.system_segment_descriptor** %9, align 8
  %49 = getelementptr inbounds %struct.system_segment_descriptor, %struct.system_segment_descriptor* %48, i32 0, i32 10
  store i64 0, i64* %49, align 8
  %50 = load %struct.system_segment_descriptor*, %struct.system_segment_descriptor** %9, align 8
  %51 = getelementptr inbounds %struct.system_segment_descriptor, %struct.system_segment_descriptor* %50, i32 0, i32 2
  store i32 1, i32* %51, align 8
  %52 = load %struct.system_segment_descriptor*, %struct.system_segment_descriptor** %9, align 8
  %53 = getelementptr inbounds %struct.system_segment_descriptor, %struct.system_segment_descriptor* %52, i32 0, i32 3
  store i32 0, i32* %53, align 4
  %54 = load %struct.system_segment_descriptor*, %struct.system_segment_descriptor** %9, align 8
  %55 = getelementptr inbounds %struct.system_segment_descriptor, %struct.system_segment_descriptor* %54, i32 0, i32 9
  store i64 0, i64* %55, align 8
  %56 = load i32, i32* @tss_pa, align 4
  %57 = ashr i32 %56, 24
  %58 = load %struct.system_segment_descriptor*, %struct.system_segment_descriptor** %9, align 8
  %59 = getelementptr inbounds %struct.system_segment_descriptor, %struct.system_segment_descriptor* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 8
  %60 = load %struct.system_segment_descriptor*, %struct.system_segment_descriptor** %9, align 8
  %61 = getelementptr inbounds %struct.system_segment_descriptor, %struct.system_segment_descriptor* %60, i32 0, i32 8
  store i64 0, i64* %61, align 8
  %62 = load %struct.system_segment_descriptor*, %struct.system_segment_descriptor** %9, align 8
  %63 = getelementptr inbounds %struct.system_segment_descriptor, %struct.system_segment_descriptor* %62, i32 0, i32 7
  store i64 0, i64* %63, align 8
  %64 = load %struct.system_segment_descriptor*, %struct.system_segment_descriptor** %9, align 8
  %65 = getelementptr inbounds %struct.system_segment_descriptor, %struct.system_segment_descriptor* %64, i32 0, i32 6
  store i64 0, i64* %65, align 8
  %66 = load %struct.system_segment_descriptor*, %struct.system_segment_descriptor** %9, align 8
  %67 = getelementptr inbounds %struct.system_segment_descriptor, %struct.system_segment_descriptor* %66, i32 0, i32 5
  store i64 0, i64* %67, align 8
  store i32 1, i32* %4, align 4
  br label %68

68:                                               ; preds = %32, %28
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @EFI_SIZE_TO_PAGES(i32) #1

declare dso_local i64 @EFI_ERROR(i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @EFI_ERROR_CODE(i32) #1

declare dso_local i32 @bzero(%struct.amd64tss*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
