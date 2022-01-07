; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-forces.c_get_forces_tom.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-forces.c_get_forces_tom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tom_h = type { i64 }

@TOM_RSV_I = common dso_local global i64 0, align 8
@TOM_MAX_IND = common dso_local global i32 0, align 4
@ForCES_msg = common dso_local global %struct.tom_h* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tom_h* (i64)* @get_forces_tom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tom_h* @get_forces_tom(i64 %0) #0 {
  %2 = alloca %struct.tom_h*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tom_h*, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* @TOM_RSV_I, align 8
  %7 = trunc i64 %6 to i32
  store i32 %7, i32* %4, align 4
  br label %8

8:                                                ; preds = %25, %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @TOM_MAX_IND, align 4
  %11 = icmp sle i32 %9, %10
  br i1 %11, label %12, label %28

12:                                               ; preds = %8
  %13 = load %struct.tom_h*, %struct.tom_h** @ForCES_msg, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.tom_h, %struct.tom_h* %13, i64 %15
  store %struct.tom_h* %16, %struct.tom_h** %5, align 8
  %17 = load %struct.tom_h*, %struct.tom_h** %5, align 8
  %18 = getelementptr inbounds %struct.tom_h, %struct.tom_h* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %3, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %12
  %23 = load %struct.tom_h*, %struct.tom_h** %5, align 8
  store %struct.tom_h* %23, %struct.tom_h** %2, align 8
  br label %32

24:                                               ; preds = %12
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %8

28:                                               ; preds = %8
  %29 = load %struct.tom_h*, %struct.tom_h** @ForCES_msg, align 8
  %30 = load i64, i64* @TOM_RSV_I, align 8
  %31 = getelementptr inbounds %struct.tom_h, %struct.tom_h* %29, i64 %30
  store %struct.tom_h* %31, %struct.tom_h** %2, align 8
  br label %32

32:                                               ; preds = %28, %22
  %33 = load %struct.tom_h*, %struct.tom_h** %2, align 8
  ret %struct.tom_h* %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
