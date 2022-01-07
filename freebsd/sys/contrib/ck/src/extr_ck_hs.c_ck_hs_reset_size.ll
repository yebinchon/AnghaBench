; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_hs.c_ck_hs_reset_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_hs.c_ck_hs_reset_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ck_hs = type { i32, %struct.ck_hs_map* }
%struct.ck_hs_map = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ck_hs_reset_size(%struct.ck_hs* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ck_hs*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ck_hs_map*, align 8
  %7 = alloca %struct.ck_hs_map*, align 8
  store %struct.ck_hs* %0, %struct.ck_hs** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.ck_hs*, %struct.ck_hs** %4, align 8
  %9 = getelementptr inbounds %struct.ck_hs, %struct.ck_hs* %8, i32 0, i32 1
  %10 = load %struct.ck_hs_map*, %struct.ck_hs_map** %9, align 8
  store %struct.ck_hs_map* %10, %struct.ck_hs_map** %7, align 8
  %11 = load %struct.ck_hs*, %struct.ck_hs** %4, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call %struct.ck_hs_map* @ck_hs_map_create(%struct.ck_hs* %11, i64 %12)
  store %struct.ck_hs_map* %13, %struct.ck_hs_map** %6, align 8
  %14 = load %struct.ck_hs_map*, %struct.ck_hs_map** %6, align 8
  %15 = icmp eq %struct.ck_hs_map* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %27

17:                                               ; preds = %2
  %18 = load %struct.ck_hs*, %struct.ck_hs** %4, align 8
  %19 = getelementptr inbounds %struct.ck_hs, %struct.ck_hs* %18, i32 0, i32 1
  %20 = load %struct.ck_hs_map*, %struct.ck_hs_map** %6, align 8
  %21 = call i32 @ck_pr_store_ptr(%struct.ck_hs_map** %19, %struct.ck_hs_map* %20)
  %22 = load %struct.ck_hs*, %struct.ck_hs** %4, align 8
  %23 = getelementptr inbounds %struct.ck_hs, %struct.ck_hs* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.ck_hs_map*, %struct.ck_hs_map** %7, align 8
  %26 = call i32 @ck_hs_map_destroy(i32 %24, %struct.ck_hs_map* %25, i32 1)
  store i32 1, i32* %3, align 4
  br label %27

27:                                               ; preds = %17, %16
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local %struct.ck_hs_map* @ck_hs_map_create(%struct.ck_hs*, i64) #1

declare dso_local i32 @ck_pr_store_ptr(%struct.ck_hs_map**, %struct.ck_hs_map*) #1

declare dso_local i32 @ck_hs_map_destroy(i32, %struct.ck_hs_map*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
