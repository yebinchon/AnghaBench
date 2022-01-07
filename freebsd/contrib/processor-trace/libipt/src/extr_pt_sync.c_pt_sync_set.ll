; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_sync.c_pt_sync_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_sync.c_pt_sync_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_config = type { i64*, i64* }

@pte_internal = common dso_local global i32 0, align 4
@pte_eos = common dso_local global i32 0, align 4
@pt_opc_psb = common dso_local global i64 0, align 8
@pt_ext_psb = common dso_local global i64 0, align 8
@pte_nosync = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_sync_set(i64** %0, i64* %1, %struct.pt_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.pt_config*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  store i64** %0, i64*** %5, align 8
  store i64* %1, i64** %6, align 8
  store %struct.pt_config* %2, %struct.pt_config** %7, align 8
  %11 = load i64**, i64*** %5, align 8
  %12 = icmp ne i64** %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load i64*, i64** %6, align 8
  %15 = icmp ne i64* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load %struct.pt_config*, %struct.pt_config** %7, align 8
  %18 = icmp ne %struct.pt_config* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16, %13, %3
  %20 = load i32, i32* @pte_internal, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %71

22:                                               ; preds = %16
  %23 = load %struct.pt_config*, %struct.pt_config** %7, align 8
  %24 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  store i64* %25, i64** %8, align 8
  %26 = load %struct.pt_config*, %struct.pt_config** %7, align 8
  %27 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  store i64* %28, i64** %9, align 8
  %29 = load i64*, i64** %6, align 8
  %30 = load i64*, i64** %8, align 8
  %31 = load i64*, i64** %9, align 8
  %32 = call i32 @pt_sync_within_bounds(i64* %29, i64* %30, i64* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %22
  %35 = load i32, i32* @pte_eos, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %71

37:                                               ; preds = %22
  %38 = load i64*, i64** %9, align 8
  %39 = load i64*, i64** %6, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 2
  %41 = icmp ult i64* %38, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* @pte_eos, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %71

45:                                               ; preds = %37
  %46 = load i64*, i64** %6, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @pt_opc_psb, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %57, label %51

51:                                               ; preds = %45
  %52 = load i64*, i64** %6, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @pt_ext_psb, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %51, %45
  %58 = load i32, i32* @pte_nosync, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %71

60:                                               ; preds = %51
  %61 = load i64*, i64** %6, align 8
  %62 = load %struct.pt_config*, %struct.pt_config** %7, align 8
  %63 = call i32 @pt_pkt_read_psb(i64* %61, %struct.pt_config* %62)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %4, align 4
  br label %71

68:                                               ; preds = %60
  %69 = load i64*, i64** %6, align 8
  %70 = load i64**, i64*** %5, align 8
  store i64* %69, i64** %70, align 8
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %68, %66, %57, %42, %34, %19
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @pt_sync_within_bounds(i64*, i64*, i64*) #1

declare dso_local i32 @pt_pkt_read_psb(i64*, %struct.pt_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
