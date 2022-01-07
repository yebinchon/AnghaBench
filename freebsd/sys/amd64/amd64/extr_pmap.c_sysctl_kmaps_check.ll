; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_sysctl_kmaps_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_sysctl_kmaps_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }
%struct.pmap_kernel_map_range = type { i64 }

@X86_PG_RW = common dso_local global i32 0, align 4
@X86_PG_U = common dso_local global i32 0, align 4
@pg_nx = common dso_local global i32 0, align 4
@PG_PS = common dso_local global i32 0, align 4
@X86_PG_G = common dso_local global i32 0, align 4
@X86_PG_PDE_CACHE = common dso_local global i32 0, align 4
@X86_PG_PTE_CACHE = common dso_local global i32 0, align 4
@X86_PG_PTE_PAT = common dso_local global i32 0, align 4
@X86_PG_PDE_PAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbuf*, %struct.pmap_kernel_map_range*, i64, i32, i32, i32, i32)* @sysctl_kmaps_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sysctl_kmaps_check(%struct.sbuf* %0, %struct.pmap_kernel_map_range* %1, i64 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.sbuf*, align 8
  %9 = alloca %struct.pmap_kernel_map_range*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sbuf* %0, %struct.sbuf** %8, align 8
  store %struct.pmap_kernel_map_range* %1, %struct.pmap_kernel_map_range** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* @X86_PG_RW, align 4
  %18 = load i32, i32* @X86_PG_U, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @pg_nx, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %16, %21
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* @pg_nx, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* %15, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* @pg_nx, align 4
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* @X86_PG_RW, align 4
  %31 = load i32, i32* @X86_PG_U, align 4
  %32 = or i32 %30, %31
  %33 = and i32 %29, %32
  %34 = or i32 %28, %33
  %35 = load i32, i32* %15, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* @PG_PS, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %7
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* @X86_PG_G, align 4
  %44 = load i32, i32* @X86_PG_PDE_CACHE, align 4
  %45 = or i32 %43, %44
  %46 = and i32 %42, %45
  %47 = load i32, i32* %15, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %15, align 4
  br label %68

49:                                               ; preds = %7
  %50 = load i32, i32* %13, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %49
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* @pg_nx, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* %15, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* @pg_nx, align 4
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* @X86_PG_RW, align 4
  %61 = load i32, i32* @X86_PG_U, align 4
  %62 = or i32 %60, %61
  %63 = and i32 %59, %62
  %64 = or i32 %58, %63
  %65 = load i32, i32* %15, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %15, align 4
  br label %67

67:                                               ; preds = %52, %49
  br label %68

68:                                               ; preds = %67, %41
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* @PG_PS, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %68
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* @X86_PG_G, align 4
  %76 = load i32, i32* @X86_PG_PDE_CACHE, align 4
  %77 = or i32 %75, %76
  %78 = and i32 %74, %77
  %79 = load i32, i32* %15, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %15, align 4
  br label %118

81:                                               ; preds = %68
  %82 = load i32, i32* %14, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %117

84:                                               ; preds = %81
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* @pg_nx, align 4
  %87 = and i32 %85, %86
  %88 = load i32, i32* %15, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %15, align 4
  %90 = load i32, i32* @pg_nx, align 4
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* @X86_PG_RW, align 4
  %93 = load i32, i32* @X86_PG_U, align 4
  %94 = or i32 %92, %93
  %95 = and i32 %91, %94
  %96 = or i32 %90, %95
  %97 = load i32, i32* %15, align 4
  %98 = and i32 %97, %96
  store i32 %98, i32* %15, align 4
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* @X86_PG_G, align 4
  %101 = load i32, i32* @X86_PG_PTE_CACHE, align 4
  %102 = or i32 %100, %101
  %103 = and i32 %99, %102
  %104 = load i32, i32* %15, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %15, align 4
  %106 = load i32, i32* %15, align 4
  %107 = load i32, i32* @X86_PG_PTE_PAT, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %84
  %111 = load i32, i32* @X86_PG_PDE_PAT, align 4
  %112 = load i32, i32* @X86_PG_PTE_PAT, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* %15, align 4
  %115 = xor i32 %114, %113
  store i32 %115, i32* %15, align 4
  br label %116

116:                                              ; preds = %110, %84
  br label %117

117:                                              ; preds = %116, %81
  br label %118

118:                                              ; preds = %117, %73
  %119 = load %struct.pmap_kernel_map_range*, %struct.pmap_kernel_map_range** %9, align 8
  %120 = getelementptr inbounds %struct.pmap_kernel_map_range, %struct.pmap_kernel_map_range* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* %10, align 8
  %123 = icmp sgt i64 %121, %122
  br i1 %123, label %129, label %124

124:                                              ; preds = %118
  %125 = load %struct.pmap_kernel_map_range*, %struct.pmap_kernel_map_range** %9, align 8
  %126 = load i32, i32* %15, align 4
  %127 = call i32 @sysctl_kmaps_match(%struct.pmap_kernel_map_range* %125, i32 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %138, label %129

129:                                              ; preds = %124, %118
  %130 = load %struct.sbuf*, %struct.sbuf** %8, align 8
  %131 = load %struct.pmap_kernel_map_range*, %struct.pmap_kernel_map_range** %9, align 8
  %132 = load i64, i64* %10, align 8
  %133 = call i32 @sysctl_kmaps_dump(%struct.sbuf* %130, %struct.pmap_kernel_map_range* %131, i64 %132)
  %134 = load %struct.pmap_kernel_map_range*, %struct.pmap_kernel_map_range** %9, align 8
  %135 = load i64, i64* %10, align 8
  %136 = load i32, i32* %15, align 4
  %137 = call i32 @sysctl_kmaps_reinit(%struct.pmap_kernel_map_range* %134, i64 %135, i32 %136)
  br label %138

138:                                              ; preds = %129, %124
  ret void
}

declare dso_local i32 @sysctl_kmaps_match(%struct.pmap_kernel_map_range*, i32) #1

declare dso_local i32 @sysctl_kmaps_dump(%struct.sbuf*, %struct.pmap_kernel_map_range*, i64) #1

declare dso_local i32 @sysctl_kmaps_reinit(%struct.pmap_kernel_map_range*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
