; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_ivrs_drv.c_ivhd_find_by_index.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_ivrs_drv.c_ivhd_find_by_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.find_ivrs_hdr_args = type { i32, i32* }

@ivrs_hdr_find_iter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32)* @ivhd_find_by_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ivhd_find_by_index(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.find_ivrs_hdr_args, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = getelementptr inbounds %struct.find_ivrs_hdr_args, %struct.find_ivrs_hdr_args* %3, i32 0, i32 0
  store i32 %4, i32* %5, align 8
  %6 = getelementptr inbounds %struct.find_ivrs_hdr_args, %struct.find_ivrs_hdr_args* %3, i32 0, i32 1
  store i32* null, i32** %6, align 8
  %7 = load i32, i32* @ivrs_hdr_find_iter, align 4
  %8 = call i32 @ivrs_hdr_iterate_tbl(i32 %7, %struct.find_ivrs_hdr_args* %3)
  %9 = getelementptr inbounds %struct.find_ivrs_hdr_args, %struct.find_ivrs_hdr_args* %3, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  ret i32* %10
}

declare dso_local i32 @ivrs_hdr_iterate_tbl(i32, %struct.find_ivrs_hdr_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
