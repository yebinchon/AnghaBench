; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_rhs.c_ck_rhs_fas.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_rhs.c_ck_rhs_fas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ck_rhs = type { i32, %struct.ck_rhs_map* }
%struct.ck_rhs_map = type { i64 (%struct.ck_rhs.0*, %struct.ck_rhs_map*, i64*, i64*, i64, i8*, i8**, i32, i32)*, i32* }
%struct.ck_rhs.0 = type opaque
%struct.ck_rhs_entry_desc = type { i32, i64 }

@CK_RHS_PROBE = common dso_local global i32 0, align 4
@CK_RHS_G_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ck_rhs_fas(%struct.ck_rhs* %0, i64 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ck_rhs*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.ck_rhs_map*, align 8
  %16 = alloca %struct.ck_rhs_entry_desc*, align 8
  %17 = alloca %struct.ck_rhs_entry_desc*, align 8
  %18 = alloca i32, align 4
  store %struct.ck_rhs* %0, %struct.ck_rhs** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %19 = load %struct.ck_rhs*, %struct.ck_rhs** %6, align 8
  %20 = getelementptr inbounds %struct.ck_rhs, %struct.ck_rhs* %19, i32 0, i32 1
  %21 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %20, align 8
  store %struct.ck_rhs_map* %21, %struct.ck_rhs_map** %15, align 8
  %22 = load i8**, i8*** %9, align 8
  store i8* null, i8** %22, align 8
  br label %23

23:                                               ; preds = %69, %4
  %24 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %15, align 8
  %25 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %24, i32 0, i32 0
  %26 = load i64 (%struct.ck_rhs.0*, %struct.ck_rhs_map*, i64*, i64*, i64, i8*, i8**, i32, i32)*, i64 (%struct.ck_rhs.0*, %struct.ck_rhs_map*, i64*, i64*, i64, i8*, i8**, i32, i32)** %25, align 8
  %27 = load %struct.ck_rhs*, %struct.ck_rhs** %6, align 8
  %28 = bitcast %struct.ck_rhs* %27 to %struct.ck_rhs.0*
  %29 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %15, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %15, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @ck_rhs_map_bound_get(%struct.ck_rhs_map* %32, i64 %33)
  %35 = load i32, i32* @CK_RHS_PROBE, align 4
  %36 = call i64 %26(%struct.ck_rhs.0* %28, %struct.ck_rhs_map* %29, i64* %14, i64* %11, i64 %30, i8* %31, i8** %12, i32 %34, i32 %35)
  store i64 %36, i64* %10, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %117

40:                                               ; preds = %23
  %41 = load %struct.ck_rhs*, %struct.ck_rhs** %6, align 8
  %42 = getelementptr inbounds %struct.ck_rhs, %struct.ck_rhs* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = load i64, i64* %7, align 8
  %46 = call i8* @ck_rhs_marshal(i32 %43, i8* %44, i64 %45)
  store i8* %46, i8** %13, align 8
  %47 = load i64, i64* %11, align 8
  %48 = icmp ne i64 %47, -1
  br i1 %48, label %49, label %103

49:                                               ; preds = %40
  %50 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %15, align 8
  %51 = load i64, i64* %10, align 8
  %52 = call %struct.ck_rhs_entry_desc* @ck_rhs_desc(%struct.ck_rhs_map* %50, i64 %51)
  store %struct.ck_rhs_entry_desc* %52, %struct.ck_rhs_entry_desc** %16, align 8
  %53 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %15, align 8
  %54 = load i64, i64* %11, align 8
  %55 = call %struct.ck_rhs_entry_desc* @ck_rhs_desc(%struct.ck_rhs_map* %53, i64 %54)
  store %struct.ck_rhs_entry_desc* %55, %struct.ck_rhs_entry_desc** %17, align 8
  %56 = load %struct.ck_rhs_entry_desc*, %struct.ck_rhs_entry_desc** %16, align 8
  %57 = getelementptr inbounds %struct.ck_rhs_entry_desc, %struct.ck_rhs_entry_desc* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  %58 = load %struct.ck_rhs*, %struct.ck_rhs** %6, align 8
  %59 = load i64, i64* %11, align 8
  %60 = load %struct.ck_rhs_entry_desc*, %struct.ck_rhs_entry_desc** %17, align 8
  %61 = call i32 @ck_rhs_put_robin_hood(%struct.ck_rhs* %58, i64 %59, %struct.ck_rhs_entry_desc* %60)
  store i32 %61, i32* %18, align 4
  %62 = load %struct.ck_rhs_entry_desc*, %struct.ck_rhs_entry_desc** %16, align 8
  %63 = getelementptr inbounds %struct.ck_rhs_entry_desc, %struct.ck_rhs_entry_desc* %62, i32 0, i32 0
  store i32 0, i32* %63, align 8
  %64 = load i32, i32* %18, align 4
  %65 = icmp eq i32 %64, 1
  %66 = zext i1 %65 to i32
  %67 = call i64 @CK_CC_UNLIKELY(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %49
  br label %23

70:                                               ; preds = %49
  %71 = load i32, i32* %18, align 4
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i32
  %74 = call i64 @CK_CC_UNLIKELY(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  store i32 0, i32* %5, align 4
  br label %117

77:                                               ; preds = %70
  br label %78

78:                                               ; preds = %77
  %79 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %15, align 8
  %80 = load i64, i64* %11, align 8
  %81 = call i32 @ck_rhs_entry_addr(%struct.ck_rhs_map* %79, i64 %80)
  %82 = load i8*, i8** %13, align 8
  %83 = call i32 @ck_pr_store_ptr(i32 %81, i8* %82)
  %84 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %15, align 8
  %85 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load i64, i64* %7, align 8
  %88 = load i64, i64* @CK_RHS_G_MASK, align 8
  %89 = and i64 %87, %88
  %90 = getelementptr inbounds i32, i32* %86, i64 %89
  %91 = call i32 @ck_pr_inc_uint(i32* %90)
  %92 = call i32 (...) @ck_pr_fence_atomic_store()
  %93 = load i64, i64* %14, align 8
  %94 = load %struct.ck_rhs_entry_desc*, %struct.ck_rhs_entry_desc** %17, align 8
  %95 = getelementptr inbounds %struct.ck_rhs_entry_desc, %struct.ck_rhs_entry_desc* %94, i32 0, i32 1
  store i64 %93, i64* %95, align 8
  %96 = load %struct.ck_rhs*, %struct.ck_rhs** %6, align 8
  %97 = load i64, i64* %11, align 8
  %98 = load i64, i64* %7, align 8
  %99 = call i32 @ck_rhs_add_wanted(%struct.ck_rhs* %96, i64 %97, i32 -1, i64 %98)
  %100 = load %struct.ck_rhs*, %struct.ck_rhs** %6, align 8
  %101 = load i64, i64* %10, align 8
  %102 = call i32 @ck_rhs_do_backward_shift_delete(%struct.ck_rhs* %100, i64 %101)
  br label %113

103:                                              ; preds = %40
  %104 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %15, align 8
  %105 = load i64, i64* %10, align 8
  %106 = call i32 @ck_rhs_entry_addr(%struct.ck_rhs_map* %104, i64 %105)
  %107 = load i8*, i8** %13, align 8
  %108 = call i32 @ck_pr_store_ptr(i32 %106, i8* %107)
  %109 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %15, align 8
  %110 = load i64, i64* %10, align 8
  %111 = load i64, i64* %14, align 8
  %112 = call i32 @ck_rhs_set_probes(%struct.ck_rhs_map* %109, i64 %110, i64 %111)
  br label %113

113:                                              ; preds = %103, %78
  %114 = load i8*, i8** %12, align 8
  %115 = call i8* @CK_CC_DECONST_PTR(i8* %114)
  %116 = load i8**, i8*** %9, align 8
  store i8* %115, i8** %116, align 8
  store i32 1, i32* %5, align 4
  br label %117

117:                                              ; preds = %113, %76, %39
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

declare dso_local i32 @ck_rhs_map_bound_get(%struct.ck_rhs_map*, i64) #1

declare dso_local i8* @ck_rhs_marshal(i32, i8*, i64) #1

declare dso_local %struct.ck_rhs_entry_desc* @ck_rhs_desc(%struct.ck_rhs_map*, i64) #1

declare dso_local i32 @ck_rhs_put_robin_hood(%struct.ck_rhs*, i64, %struct.ck_rhs_entry_desc*) #1

declare dso_local i64 @CK_CC_UNLIKELY(i32) #1

declare dso_local i32 @ck_pr_store_ptr(i32, i8*) #1

declare dso_local i32 @ck_rhs_entry_addr(%struct.ck_rhs_map*, i64) #1

declare dso_local i32 @ck_pr_inc_uint(i32*) #1

declare dso_local i32 @ck_pr_fence_atomic_store(...) #1

declare dso_local i32 @ck_rhs_add_wanted(%struct.ck_rhs*, i64, i32, i64) #1

declare dso_local i32 @ck_rhs_do_backward_shift_delete(%struct.ck_rhs*, i64) #1

declare dso_local i32 @ck_rhs_set_probes(%struct.ck_rhs_map*, i64, i64) #1

declare dso_local i8* @CK_CC_DECONST_PTR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
