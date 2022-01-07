; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_insn.c_pt_insn_next_ip.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_insn.c_pt_insn_next_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_insn = type { i32, i64, i64 }
%struct.pt_insn_ext = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@pte_internal = common dso_local global i32 0, align 4
@fallthrough = common dso_local global i32 0, align 4
@pte_bad_query = common dso_local global i32 0, align 4
@pte_bad_insn = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_insn_next_ip(i64* %0, %struct.pt_insn* %1, %struct.pt_insn_ext* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca %struct.pt_insn*, align 8
  %7 = alloca %struct.pt_insn_ext*, align 8
  %8 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store %struct.pt_insn* %1, %struct.pt_insn** %6, align 8
  store %struct.pt_insn_ext* %2, %struct.pt_insn_ext** %7, align 8
  %9 = load %struct.pt_insn*, %struct.pt_insn** %6, align 8
  %10 = icmp ne %struct.pt_insn* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %7, align 8
  %13 = icmp ne %struct.pt_insn_ext* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11, %3
  %15 = load i32, i32* @pte_internal, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %60

17:                                               ; preds = %11
  %18 = load %struct.pt_insn*, %struct.pt_insn** %6, align 8
  %19 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.pt_insn*, %struct.pt_insn** %6, align 8
  %22 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %20, %23
  store i64 %24, i64* %8, align 8
  %25 = load %struct.pt_insn*, %struct.pt_insn** %6, align 8
  %26 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %47 [
    i32 128, label %28
    i32 129, label %28
    i32 132, label %29
    i32 130, label %29
    i32 131, label %50
  ]

28:                                               ; preds = %17, %17
  br label %53

29:                                               ; preds = %17, %17
  %30 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %7, align 8
  %31 = getelementptr inbounds %struct.pt_insn_ext, %struct.pt_insn_ext* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %29
  %37 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %7, align 8
  %38 = getelementptr inbounds %struct.pt_insn_ext, %struct.pt_insn_ext* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* %8, align 8
  %44 = add nsw i64 %43, %42
  store i64 %44, i64* %8, align 8
  br label %53

45:                                               ; preds = %29
  %46 = load i32, i32* @fallthrough, align 4
  br label %47

47:                                               ; preds = %17, %45
  %48 = load i32, i32* @pte_bad_query, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %60

50:                                               ; preds = %17
  %51 = load i32, i32* @pte_bad_insn, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %60

53:                                               ; preds = %36, %28
  %54 = load i64*, i64** %5, align 8
  %55 = icmp ne i64* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i64, i64* %8, align 8
  %58 = load i64*, i64** %5, align 8
  store i64 %57, i64* %58, align 8
  br label %59

59:                                               ; preds = %56, %53
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %59, %50, %47, %14
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
