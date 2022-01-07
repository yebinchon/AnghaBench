; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-shmem.c___cvmx_shmem_map_standalone.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-shmem.c___cvmx_shmem_map_standalone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cvmx_shmem_dscptr = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [48 x i8] c"cvmx-shmem: shmem_map failed, out TLB entries \0A\00", align 1
@TLB_DIRTY = common dso_local global i32 0, align 4
@TLB_VALID = common dso_local global i32 0, align 4
@TLB_GLOBAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @__cvmx_shmem_map_standalone(%struct.cvmx_shmem_dscptr* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.cvmx_shmem_dscptr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cvmx_shmem_dscptr* %0, %struct.cvmx_shmem_dscptr** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = call i32 (...) @cvmx_tlb_allocate_runtime_entry()
  store i32 %7, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %3, align 8
  br label %33

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.cvmx_shmem_dscptr*, %struct.cvmx_shmem_dscptr** %4, align 8
  %15 = getelementptr inbounds %struct.cvmx_shmem_dscptr, %struct.cvmx_shmem_dscptr* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @CAST64(i8* %16)
  %18 = load %struct.cvmx_shmem_dscptr*, %struct.cvmx_shmem_dscptr** %4, align 8
  %19 = getelementptr inbounds %struct.cvmx_shmem_dscptr, %struct.cvmx_shmem_dscptr* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.cvmx_shmem_dscptr*, %struct.cvmx_shmem_dscptr** %4, align 8
  %22 = getelementptr inbounds %struct.cvmx_shmem_dscptr, %struct.cvmx_shmem_dscptr* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @TLB_DIRTY, align 4
  %25 = load i32, i32* @TLB_VALID, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @TLB_GLOBAL, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @cvmx_tlb_write_runtime_entry(i32 %13, i32 %17, i32 %20, i32 %23, i32 %28)
  %30 = load %struct.cvmx_shmem_dscptr*, %struct.cvmx_shmem_dscptr** %4, align 8
  %31 = getelementptr inbounds %struct.cvmx_shmem_dscptr, %struct.cvmx_shmem_dscptr* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %3, align 8
  br label %33

33:                                               ; preds = %12, %10
  %34 = load i8*, i8** %3, align 8
  ret i8* %34
}

declare dso_local i32 @cvmx_tlb_allocate_runtime_entry(...) #1

declare dso_local i32 @cvmx_dprintf(i8*, ...) #1

declare dso_local i32 @cvmx_tlb_write_runtime_entry(i32, i32, i32, i32, i32) #1

declare dso_local i32 @CAST64(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
