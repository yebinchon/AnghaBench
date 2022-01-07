; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_hs.c_ck_hs_map_postinsert.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_hs.c_ck_hs_map_postinsert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ck_hs = type { i32 }
%struct.ck_hs_map = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ck_hs*, %struct.ck_hs_map*)* @ck_hs_map_postinsert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ck_hs_map_postinsert(%struct.ck_hs* %0, %struct.ck_hs_map* %1) #0 {
  %3 = alloca %struct.ck_hs*, align 8
  %4 = alloca %struct.ck_hs_map*, align 8
  store %struct.ck_hs* %0, %struct.ck_hs** %3, align 8
  store %struct.ck_hs_map* %1, %struct.ck_hs_map** %4, align 8
  %5 = load %struct.ck_hs_map*, %struct.ck_hs_map** %4, align 8
  %6 = getelementptr inbounds %struct.ck_hs_map, %struct.ck_hs_map* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %6, align 4
  %9 = load %struct.ck_hs_map*, %struct.ck_hs_map** %4, align 8
  %10 = getelementptr inbounds %struct.ck_hs_map, %struct.ck_hs_map* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = shl i32 %11, 1
  %13 = load %struct.ck_hs_map*, %struct.ck_hs_map** %4, align 8
  %14 = getelementptr inbounds %struct.ck_hs_map, %struct.ck_hs_map* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp sgt i32 %12, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load %struct.ck_hs*, %struct.ck_hs** %3, align 8
  %19 = load %struct.ck_hs_map*, %struct.ck_hs_map** %4, align 8
  %20 = getelementptr inbounds %struct.ck_hs_map, %struct.ck_hs_map* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 %21, 1
  %23 = call i32 @ck_hs_grow(%struct.ck_hs* %18, i32 %22)
  br label %24

24:                                               ; preds = %17, %2
  ret void
}

declare dso_local i32 @ck_hs_grow(%struct.ck_hs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
