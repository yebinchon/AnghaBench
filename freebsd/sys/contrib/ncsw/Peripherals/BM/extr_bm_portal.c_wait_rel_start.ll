; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/BM/extr_bm_portal.c_wait_rel_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/BM/extr_bm_portal.c_wait_rel_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bm_rcr_entry = type { i32 }

@E_BUSY = common dso_local global i32 0, align 4
@E_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.bm_rcr_entry**, i32)* @wait_rel_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_rel_start(i32* %0, %struct.bm_rcr_entry** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.bm_rcr_entry**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.bm_rcr_entry** %1, %struct.bm_rcr_entry*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 100, i32* %8, align 4
  %9 = load i32, i32* %7, align 4
  %10 = call i32 @UNUSED(i32 %9)
  br label %11

11:                                               ; preds = %24, %3
  %12 = load i32*, i32** %5, align 8
  %13 = call %struct.bm_rcr_entry* @try_rel_start(i32* %12)
  %14 = load %struct.bm_rcr_entry**, %struct.bm_rcr_entry*** %6, align 8
  store %struct.bm_rcr_entry* %13, %struct.bm_rcr_entry** %14, align 8
  %15 = call i32 @XX_Sleep(i32 1)
  br label %16

16:                                               ; preds = %11
  %17 = load %struct.bm_rcr_entry**, %struct.bm_rcr_entry*** %6, align 8
  %18 = load %struct.bm_rcr_entry*, %struct.bm_rcr_entry** %17, align 8
  %19 = icmp ne %struct.bm_rcr_entry* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %8, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br label %24

24:                                               ; preds = %20, %16
  %25 = phi i1 [ false, %16 ], [ %23, %20 ]
  br i1 %25, label %11, label %26

26:                                               ; preds = %24
  %27 = load %struct.bm_rcr_entry**, %struct.bm_rcr_entry*** %6, align 8
  %28 = load %struct.bm_rcr_entry*, %struct.bm_rcr_entry** %27, align 8
  %29 = icmp ne %struct.bm_rcr_entry* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* @E_BUSY, align 4
  %32 = call i32 @ERROR_CODE(i32 %31)
  store i32 %32, i32* %4, align 4
  br label %35

33:                                               ; preds = %26
  %34 = load i32, i32* @E_OK, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %33, %30
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @UNUSED(i32) #1

declare dso_local %struct.bm_rcr_entry* @try_rel_start(i32*) #1

declare dso_local i32 @XX_Sleep(i32) #1

declare dso_local i32 @ERROR_CODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
