; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_unmapdev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_unmapdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmap_preinit_mapping = type { i64, i64, i64, i64 }

@DMAP_MIN_ADDRESS = common dso_local global i64 0, align 8
@DMAP_MAX_ADDRESS = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@PMAP_PREINIT_MAPPING_COUNT = common dso_local global i32 0, align 4
@pmap_preinit_mapping = common dso_local global %struct.pmap_preinit_mapping* null, align 8
@pmap_initialized = common dso_local global i64 0, align 8
@virtual_avail = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_unmapdev(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.pmap_preinit_mapping*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @DMAP_MIN_ADDRESS, align 8
  %10 = icmp sge i64 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* @DMAP_MAX_ADDRESS, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %78

16:                                               ; preds = %11, %2
  %17 = load i64, i64* %3, align 8
  %18 = load i64, i64* @PAGE_MASK, align 8
  %19 = and i64 %17, %18
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* %4, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i64 @round_page(i64 %22)
  store i64 %23, i64* %4, align 8
  %24 = load i64, i64* %3, align 8
  %25 = call i64 @trunc_page(i64 %24)
  store i64 %25, i64* %3, align 8
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %68, %16
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @PMAP_PREINIT_MAPPING_COUNT, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %71

30:                                               ; preds = %26
  %31 = load %struct.pmap_preinit_mapping*, %struct.pmap_preinit_mapping** @pmap_preinit_mapping, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.pmap_preinit_mapping, %struct.pmap_preinit_mapping* %31, i64 %33
  store %struct.pmap_preinit_mapping* %34, %struct.pmap_preinit_mapping** %5, align 8
  %35 = load %struct.pmap_preinit_mapping*, %struct.pmap_preinit_mapping** %5, align 8
  %36 = getelementptr inbounds %struct.pmap_preinit_mapping, %struct.pmap_preinit_mapping* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %3, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %67

40:                                               ; preds = %30
  %41 = load %struct.pmap_preinit_mapping*, %struct.pmap_preinit_mapping** %5, align 8
  %42 = getelementptr inbounds %struct.pmap_preinit_mapping, %struct.pmap_preinit_mapping* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %4, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %67

46:                                               ; preds = %40
  %47 = load i64, i64* @pmap_initialized, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  br label %78

50:                                               ; preds = %46
  %51 = load %struct.pmap_preinit_mapping*, %struct.pmap_preinit_mapping** %5, align 8
  %52 = getelementptr inbounds %struct.pmap_preinit_mapping, %struct.pmap_preinit_mapping* %51, i32 0, i32 3
  store i64 0, i64* %52, align 8
  %53 = load %struct.pmap_preinit_mapping*, %struct.pmap_preinit_mapping** %5, align 8
  %54 = getelementptr inbounds %struct.pmap_preinit_mapping, %struct.pmap_preinit_mapping* %53, i32 0, i32 0
  store i64 0, i64* %54, align 8
  %55 = load %struct.pmap_preinit_mapping*, %struct.pmap_preinit_mapping** %5, align 8
  %56 = getelementptr inbounds %struct.pmap_preinit_mapping, %struct.pmap_preinit_mapping* %55, i32 0, i32 1
  store i64 0, i64* %56, align 8
  %57 = load %struct.pmap_preinit_mapping*, %struct.pmap_preinit_mapping** %5, align 8
  %58 = getelementptr inbounds %struct.pmap_preinit_mapping, %struct.pmap_preinit_mapping* %57, i32 0, i32 2
  store i64 0, i64* %58, align 8
  %59 = load i64, i64* %3, align 8
  %60 = load i64, i64* %4, align 8
  %61 = add nsw i64 %59, %60
  %62 = load i64, i64* @virtual_avail, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %50
  %65 = load i64, i64* %3, align 8
  store i64 %65, i64* @virtual_avail, align 8
  br label %66

66:                                               ; preds = %64, %50
  br label %78

67:                                               ; preds = %40, %30
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %26

71:                                               ; preds = %26
  %72 = load i64, i64* @pmap_initialized, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load i64, i64* %3, align 8
  %76 = load i64, i64* %4, align 8
  %77 = call i32 @kva_free(i64 %75, i64 %76)
  br label %78

78:                                               ; preds = %15, %49, %66, %74, %71
  ret void
}

declare dso_local i64 @round_page(i64) #1

declare dso_local i64 @trunc_page(i64) #1

declare dso_local i32 @kva_free(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
