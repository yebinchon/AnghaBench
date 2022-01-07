; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_hs.c_ck_hs_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_hs.c_ck_hs_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ck_hs = type { i32, %struct.ck_hs_map* }
%struct.ck_hs_map = type { i32, i32 }

@CK_HS_PROBE_INSERT = common dso_local global i32 0, align 4
@CK_HS_TOMBSTONE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ck_hs_set(%struct.ck_hs* %0, i64 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ck_hs*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.ck_hs_map*, align 8
  store %struct.ck_hs* %0, %struct.ck_hs** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %16 = load i8**, i8*** %9, align 8
  store i8* null, i8** %16, align 8
  br label %17

17:                                               ; preds = %44, %4
  %18 = load %struct.ck_hs*, %struct.ck_hs** %6, align 8
  %19 = getelementptr inbounds %struct.ck_hs, %struct.ck_hs* %18, i32 0, i32 1
  %20 = load %struct.ck_hs_map*, %struct.ck_hs_map** %19, align 8
  store %struct.ck_hs_map* %20, %struct.ck_hs_map** %15, align 8
  %21 = load %struct.ck_hs*, %struct.ck_hs** %6, align 8
  %22 = load %struct.ck_hs_map*, %struct.ck_hs_map** %15, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load %struct.ck_hs_map*, %struct.ck_hs_map** %15, align 8
  %26 = getelementptr inbounds %struct.ck_hs_map, %struct.ck_hs_map* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @CK_HS_PROBE_INSERT, align 4
  %29 = call i8** @ck_hs_map_probe(%struct.ck_hs* %21, %struct.ck_hs_map* %22, i64* %14, i8*** %11, i64 %23, i8* %24, i8** %12, i32 %27, i32 %28)
  store i8** %29, i8*** %10, align 8
  %30 = load i8**, i8*** %10, align 8
  %31 = icmp eq i8** %30, null
  br i1 %31, label %32, label %45

32:                                               ; preds = %17
  %33 = load i8**, i8*** %11, align 8
  %34 = icmp eq i8** %33, null
  br i1 %34, label %35, label %45

35:                                               ; preds = %32
  %36 = load %struct.ck_hs*, %struct.ck_hs** %6, align 8
  %37 = load %struct.ck_hs_map*, %struct.ck_hs_map** %15, align 8
  %38 = getelementptr inbounds %struct.ck_hs_map, %struct.ck_hs_map* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 %39, 1
  %41 = call i32 @ck_hs_grow(%struct.ck_hs* %36, i32 %40)
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %87

44:                                               ; preds = %35
  br label %17

45:                                               ; preds = %32, %17
  %46 = load %struct.ck_hs_map*, %struct.ck_hs_map** %15, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* %14, align 8
  %49 = call i32 @ck_hs_map_bound_set(%struct.ck_hs_map* %46, i64 %47, i64 %48)
  %50 = load %struct.ck_hs*, %struct.ck_hs** %6, align 8
  %51 = getelementptr inbounds %struct.ck_hs, %struct.ck_hs* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = load i64, i64* %7, align 8
  %55 = call i8* @ck_hs_marshal(i32 %52, i8* %53, i64 %54)
  store i8* %55, i8** %13, align 8
  %56 = load i8**, i8*** %11, align 8
  %57 = icmp ne i8** %56, null
  br i1 %57, label %58, label %72

58:                                               ; preds = %45
  %59 = load i8**, i8*** %11, align 8
  %60 = load i8*, i8** %13, align 8
  %61 = call i32 @ck_pr_store_ptr(i8** %59, i8* %60)
  %62 = load i8*, i8** %12, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %71

64:                                               ; preds = %58
  %65 = load %struct.ck_hs_map*, %struct.ck_hs_map** %15, align 8
  %66 = load i64, i64* %7, align 8
  %67 = call i32 @ck_hs_map_signal(%struct.ck_hs_map* %65, i64 %66)
  %68 = load i8**, i8*** %10, align 8
  %69 = load i8*, i8** @CK_HS_TOMBSTONE, align 8
  %70 = call i32 @ck_pr_store_ptr(i8** %68, i8* %69)
  br label %71

71:                                               ; preds = %64, %58
  br label %76

72:                                               ; preds = %45
  %73 = load i8**, i8*** %10, align 8
  %74 = load i8*, i8** %13, align 8
  %75 = call i32 @ck_pr_store_ptr(i8** %73, i8* %74)
  br label %76

76:                                               ; preds = %72, %71
  %77 = load i8*, i8** %12, align 8
  %78 = icmp eq i8* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load %struct.ck_hs*, %struct.ck_hs** %6, align 8
  %81 = load %struct.ck_hs_map*, %struct.ck_hs_map** %15, align 8
  %82 = call i32 @ck_hs_map_postinsert(%struct.ck_hs* %80, %struct.ck_hs_map* %81)
  br label %83

83:                                               ; preds = %79, %76
  %84 = load i8*, i8** %12, align 8
  %85 = call i8* @CK_CC_DECONST_PTR(i8* %84)
  %86 = load i8**, i8*** %9, align 8
  store i8* %85, i8** %86, align 8
  store i32 1, i32* %5, align 4
  br label %87

87:                                               ; preds = %83, %43
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i8** @ck_hs_map_probe(%struct.ck_hs*, %struct.ck_hs_map*, i64*, i8***, i64, i8*, i8**, i32, i32) #1

declare dso_local i32 @ck_hs_grow(%struct.ck_hs*, i32) #1

declare dso_local i32 @ck_hs_map_bound_set(%struct.ck_hs_map*, i64, i64) #1

declare dso_local i8* @ck_hs_marshal(i32, i8*, i64) #1

declare dso_local i32 @ck_pr_store_ptr(i8**, i8*) #1

declare dso_local i32 @ck_hs_map_signal(%struct.ck_hs_map*, i64) #1

declare dso_local i32 @ck_hs_map_postinsert(%struct.ck_hs*, %struct.ck_hs_map*) #1

declare dso_local i8* @CK_CC_DECONST_PTR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
