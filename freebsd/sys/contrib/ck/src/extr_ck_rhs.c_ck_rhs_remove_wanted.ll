; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_rhs.c_ck_rhs_remove_wanted.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_rhs.c_ck_rhs_remove_wanted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ck_rhs = type { %struct.ck_rhs_map* }
%struct.ck_rhs_map = type { i32 }
%struct.ck_rhs_entry_desc = type { i64 }

@CK_RHS_MAX_WANTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ck_rhs*, i64, i64)* @ck_rhs_remove_wanted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ck_rhs_remove_wanted(%struct.ck_rhs* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.ck_rhs*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ck_rhs_map*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ck_rhs_entry_desc*, align 8
  store %struct.ck_rhs* %0, %struct.ck_rhs** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.ck_rhs*, %struct.ck_rhs** %4, align 8
  %12 = getelementptr inbounds %struct.ck_rhs, %struct.ck_rhs* %11, i32 0, i32 0
  %13 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %12, align 8
  store %struct.ck_rhs_map* %13, %struct.ck_rhs_map** %7, align 8
  %14 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %7, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @ck_rhs_probes(%struct.ck_rhs_map* %14, i64 %15)
  store i32 %16, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %17

17:                                               ; preds = %49, %3
  %18 = load i32, i32* %8, align 4
  %19 = icmp sgt i32 %18, 1
  br i1 %19, label %20, label %50

20:                                               ; preds = %17
  %21 = load i32, i32* %8, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %8, align 4
  %23 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %7, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i64 @ck_rhs_map_probe_prev(%struct.ck_rhs_map* %23, i64 %24, i32 %25)
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* %6, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  store i32 0, i32* %9, align 4
  br label %31

31:                                               ; preds = %30, %20
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %31
  %35 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %7, align 8
  %36 = load i64, i64* %5, align 8
  %37 = call %struct.ck_rhs_entry_desc* @ck_rhs_desc(%struct.ck_rhs_map* %35, i64 %36)
  store %struct.ck_rhs_entry_desc* %37, %struct.ck_rhs_entry_desc** %10, align 8
  %38 = load %struct.ck_rhs_entry_desc*, %struct.ck_rhs_entry_desc** %10, align 8
  %39 = getelementptr inbounds %struct.ck_rhs_entry_desc, %struct.ck_rhs_entry_desc* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @CK_RHS_MAX_WANTED, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %34
  %44 = load %struct.ck_rhs_entry_desc*, %struct.ck_rhs_entry_desc** %10, align 8
  %45 = getelementptr inbounds %struct.ck_rhs_entry_desc, %struct.ck_rhs_entry_desc* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, -1
  store i64 %47, i64* %45, align 8
  br label %48

48:                                               ; preds = %43, %34
  br label %49

49:                                               ; preds = %48, %31
  br label %17

50:                                               ; preds = %17
  %51 = load i64, i64* %5, align 8
  ret i64 %51
}

declare dso_local i32 @ck_rhs_probes(%struct.ck_rhs_map*, i64) #1

declare dso_local i64 @ck_rhs_map_probe_prev(%struct.ck_rhs_map*, i64, i32) #1

declare dso_local %struct.ck_rhs_entry_desc* @ck_rhs_desc(%struct.ck_rhs_map*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
