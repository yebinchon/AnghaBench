; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_ht.c_ck_ht_stat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_ht.c_ck_ht_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ck_ht = type { %struct.ck_ht_map* }
%struct.ck_ht_map = type { i32, i32 }
%struct.ck_ht_stat = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ck_ht_stat(%struct.ck_ht* %0, %struct.ck_ht_stat* %1) #0 {
  %3 = alloca %struct.ck_ht*, align 8
  %4 = alloca %struct.ck_ht_stat*, align 8
  %5 = alloca %struct.ck_ht_map*, align 8
  store %struct.ck_ht* %0, %struct.ck_ht** %3, align 8
  store %struct.ck_ht_stat* %1, %struct.ck_ht_stat** %4, align 8
  %6 = load %struct.ck_ht*, %struct.ck_ht** %3, align 8
  %7 = getelementptr inbounds %struct.ck_ht, %struct.ck_ht* %6, i32 0, i32 0
  %8 = load %struct.ck_ht_map*, %struct.ck_ht_map** %7, align 8
  store %struct.ck_ht_map* %8, %struct.ck_ht_map** %5, align 8
  %9 = load %struct.ck_ht_map*, %struct.ck_ht_map** %5, align 8
  %10 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ck_ht_stat*, %struct.ck_ht_stat** %4, align 8
  %13 = getelementptr inbounds %struct.ck_ht_stat, %struct.ck_ht_stat* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = load %struct.ck_ht_map*, %struct.ck_ht_map** %5, align 8
  %15 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ck_ht_stat*, %struct.ck_ht_stat** %4, align 8
  %18 = getelementptr inbounds %struct.ck_ht_stat, %struct.ck_ht_stat* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
