; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_rhs.c_ck_rhs_add_wanted.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_rhs.c_ck_rhs_add_wanted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ck_rhs = type { %struct.ck_rhs_map* }
%struct.ck_rhs_map = type { i64 }
%struct.ck_rhs_entry_desc = type { i64 }

@CK_RHS_MAX_WANTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ck_rhs*, i64, i64, i64)* @ck_rhs_add_wanted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ck_rhs_add_wanted(%struct.ck_rhs* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.ck_rhs*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ck_rhs_map*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ck_rhs_entry_desc*, align 8
  store %struct.ck_rhs* %0, %struct.ck_rhs** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load %struct.ck_rhs*, %struct.ck_rhs** %5, align 8
  %15 = getelementptr inbounds %struct.ck_rhs, %struct.ck_rhs* %14, i32 0, i32 0
  %16 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %15, align 8
  store %struct.ck_rhs_map* %16, %struct.ck_rhs_map** %9, align 8
  store i32 1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %17 = load i64, i64* %8, align 8
  %18 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %9, align 8
  %19 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = and i64 %17, %20
  store i64 %21, i64* %10, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp eq i64 %22, -1
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  store i32 1, i32* %12, align 4
  br label %25

25:                                               ; preds = %24, %4
  br label %26

26:                                               ; preds = %53, %25
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* %6, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %60

30:                                               ; preds = %26
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* %7, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 1, i32* %12, align 4
  br label %35

35:                                               ; preds = %34, %30
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %35
  %39 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %9, align 8
  %40 = load i64, i64* %10, align 8
  %41 = call %struct.ck_rhs_entry_desc* @ck_rhs_desc(%struct.ck_rhs_map* %39, i64 %40)
  store %struct.ck_rhs_entry_desc* %41, %struct.ck_rhs_entry_desc** %13, align 8
  %42 = load %struct.ck_rhs_entry_desc*, %struct.ck_rhs_entry_desc** %13, align 8
  %43 = getelementptr inbounds %struct.ck_rhs_entry_desc, %struct.ck_rhs_entry_desc* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @CK_RHS_MAX_WANTED, align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %38
  %48 = load %struct.ck_rhs_entry_desc*, %struct.ck_rhs_entry_desc** %13, align 8
  %49 = getelementptr inbounds %struct.ck_rhs_entry_desc, %struct.ck_rhs_entry_desc* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %49, align 8
  br label %52

52:                                               ; preds = %47, %38
  br label %53

53:                                               ; preds = %52, %35
  %54 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %9, align 8
  %55 = load i64, i64* %10, align 8
  %56 = load i32, i32* %11, align 4
  %57 = call i64 @ck_rhs_map_probe_next(%struct.ck_rhs_map* %54, i64 %55, i32 %56)
  store i64 %57, i64* %10, align 8
  %58 = load i32, i32* %11, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %11, align 4
  br label %26

60:                                               ; preds = %26
  ret void
}

declare dso_local %struct.ck_rhs_entry_desc* @ck_rhs_desc(%struct.ck_rhs_map*, i64) #1

declare dso_local i64 @ck_rhs_map_probe_next(%struct.ck_rhs_map*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
