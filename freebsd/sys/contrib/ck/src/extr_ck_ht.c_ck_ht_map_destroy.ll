; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_ht.c_ck_ht_map_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_ht.c_ck_ht_map_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ck_malloc = type { i32 (%struct.ck_ht_map*, i32, i32)* }
%struct.ck_ht_map = type opaque
%struct.ck_ht_map.0 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ck_malloc*, %struct.ck_ht_map.0*, i32)* @ck_ht_map_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ck_ht_map_destroy(%struct.ck_malloc* %0, %struct.ck_ht_map.0* %1, i32 %2) #0 {
  %4 = alloca %struct.ck_malloc*, align 8
  %5 = alloca %struct.ck_ht_map.0*, align 8
  %6 = alloca i32, align 4
  store %struct.ck_malloc* %0, %struct.ck_malloc** %4, align 8
  store %struct.ck_ht_map.0* %1, %struct.ck_ht_map.0** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.ck_malloc*, %struct.ck_malloc** %4, align 8
  %8 = getelementptr inbounds %struct.ck_malloc, %struct.ck_malloc* %7, i32 0, i32 0
  %9 = load i32 (%struct.ck_ht_map*, i32, i32)*, i32 (%struct.ck_ht_map*, i32, i32)** %8, align 8
  %10 = load %struct.ck_ht_map.0*, %struct.ck_ht_map.0** %5, align 8
  %11 = bitcast %struct.ck_ht_map.0* %10 to %struct.ck_ht_map*
  %12 = load %struct.ck_ht_map.0*, %struct.ck_ht_map.0** %5, align 8
  %13 = getelementptr inbounds %struct.ck_ht_map.0, %struct.ck_ht_map.0* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 %9(%struct.ck_ht_map* %11, i32 %14, i32 %15)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
