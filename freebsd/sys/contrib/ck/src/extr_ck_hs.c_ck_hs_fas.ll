; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_hs.c_ck_hs_fas.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_hs.c_ck_hs_fas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ck_hs = type { i32, %struct.ck_hs_map* }
%struct.ck_hs_map = type { i32 }

@CK_HS_PROBE = common dso_local global i32 0, align 4
@CK_HS_TOMBSTONE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ck_hs_fas(%struct.ck_hs* %0, i64 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ck_hs*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.ck_hs_map*, align 8
  %15 = alloca i64, align 8
  store %struct.ck_hs* %0, %struct.ck_hs** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %16 = load %struct.ck_hs*, %struct.ck_hs** %6, align 8
  %17 = getelementptr inbounds %struct.ck_hs, %struct.ck_hs* %16, i32 0, i32 1
  %18 = load %struct.ck_hs_map*, %struct.ck_hs_map** %17, align 8
  store %struct.ck_hs_map* %18, %struct.ck_hs_map** %14, align 8
  %19 = load i8**, i8*** %9, align 8
  store i8* null, i8** %19, align 8
  %20 = load %struct.ck_hs*, %struct.ck_hs** %6, align 8
  %21 = load %struct.ck_hs_map*, %struct.ck_hs_map** %14, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load %struct.ck_hs_map*, %struct.ck_hs_map** %14, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @ck_hs_map_bound_get(%struct.ck_hs_map* %24, i64 %25)
  %27 = load i32, i32* @CK_HS_PROBE, align 4
  %28 = call i8** @ck_hs_map_probe(%struct.ck_hs* %20, %struct.ck_hs_map* %21, i64* %15, i8*** %11, i64 %22, i8* %23, i8** %12, i32 %26, i32 %27)
  store i8** %28, i8*** %10, align 8
  %29 = load i8*, i8** %12, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %59

32:                                               ; preds = %4
  %33 = load %struct.ck_hs*, %struct.ck_hs** %6, align 8
  %34 = getelementptr inbounds %struct.ck_hs, %struct.ck_hs* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = load i64, i64* %7, align 8
  %38 = call i8* @ck_hs_marshal(i32 %35, i8* %36, i64 %37)
  store i8* %38, i8** %13, align 8
  %39 = load i8**, i8*** %11, align 8
  %40 = icmp ne i8** %39, null
  br i1 %40, label %41, label %51

41:                                               ; preds = %32
  %42 = load i8**, i8*** %11, align 8
  %43 = load i8*, i8** %13, align 8
  %44 = call i32 @ck_pr_store_ptr(i8** %42, i8* %43)
  %45 = load %struct.ck_hs_map*, %struct.ck_hs_map** %14, align 8
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @ck_hs_map_signal(%struct.ck_hs_map* %45, i64 %46)
  %48 = load i8**, i8*** %10, align 8
  %49 = load i8*, i8** @CK_HS_TOMBSTONE, align 8
  %50 = call i32 @ck_pr_store_ptr(i8** %48, i8* %49)
  br label %55

51:                                               ; preds = %32
  %52 = load i8**, i8*** %10, align 8
  %53 = load i8*, i8** %13, align 8
  %54 = call i32 @ck_pr_store_ptr(i8** %52, i8* %53)
  br label %55

55:                                               ; preds = %51, %41
  %56 = load i8*, i8** %12, align 8
  %57 = call i8* @CK_CC_DECONST_PTR(i8* %56)
  %58 = load i8**, i8*** %9, align 8
  store i8* %57, i8** %58, align 8
  store i32 1, i32* %5, align 4
  br label %59

59:                                               ; preds = %55, %31
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i8** @ck_hs_map_probe(%struct.ck_hs*, %struct.ck_hs_map*, i64*, i8***, i64, i8*, i8**, i32, i32) #1

declare dso_local i32 @ck_hs_map_bound_get(%struct.ck_hs_map*, i64) #1

declare dso_local i8* @ck_hs_marshal(i32, i8*, i64) #1

declare dso_local i32 @ck_pr_store_ptr(i8**, i8*) #1

declare dso_local i32 @ck_hs_map_signal(%struct.ck_hs_map*, i64) #1

declare dso_local i8* @CK_CC_DECONST_PTR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
