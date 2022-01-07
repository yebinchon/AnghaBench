; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_insn.c_pt_insn_range_is_contiguous.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_insn.c_pt_insn_range_is_contiguous.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_image = type { i32 }
%struct.pt_asid = type { i32 }
%struct.pt_insn_ext = type { i32 }
%struct.pt_insn = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_insn_range_is_contiguous(i64 %0, i64 %1, i32 %2, %struct.pt_image* %3, %struct.pt_asid* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.pt_image*, align 8
  %12 = alloca %struct.pt_asid*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.pt_insn_ext, align 4
  %15 = alloca %struct.pt_insn, align 8
  %16 = alloca i32, align 4
  store i64 %0, i64* %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.pt_image* %3, %struct.pt_image** %11, align 8
  store %struct.pt_asid* %4, %struct.pt_asid** %12, align 8
  store i64 %5, i64* %13, align 8
  %17 = call i32 @memset(%struct.pt_insn* %15, i32 0, i32 16)
  %18 = load i32, i32* %10, align 4
  %19 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %15, i32 0, i32 0
  store i32 %18, i32* %19, align 8
  %20 = load i64, i64* %8, align 8
  %21 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %15, i32 0, i32 1
  store i64 %20, i64* %21, align 8
  br label %22

22:                                               ; preds = %47, %6
  %23 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %15, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %9, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %48

27:                                               ; preds = %22
  %28 = load i64, i64* %13, align 8
  %29 = add i64 %28, -1
  store i64 %29, i64* %13, align 8
  %30 = icmp ne i64 %28, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  store i32 0, i32* %7, align 4
  br label %49

32:                                               ; preds = %27
  %33 = load %struct.pt_image*, %struct.pt_image** %11, align 8
  %34 = load %struct.pt_asid*, %struct.pt_asid** %12, align 8
  %35 = call i32 @pt_insn_decode(%struct.pt_insn* %15, %struct.pt_insn_ext* %14, %struct.pt_image* %33, %struct.pt_asid* %34)
  store i32 %35, i32* %16, align 4
  %36 = load i32, i32* %16, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* %16, align 4
  store i32 %39, i32* %7, align 4
  br label %49

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %15, i32 0, i32 1
  %42 = call i32 @pt_insn_next_ip(i64* %41, %struct.pt_insn* %15, %struct.pt_insn_ext* %14)
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* %16, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* %16, align 4
  store i32 %46, i32* %7, align 4
  br label %49

47:                                               ; preds = %40
  br label %22

48:                                               ; preds = %22
  store i32 1, i32* %7, align 4
  br label %49

49:                                               ; preds = %48, %45, %38, %31
  %50 = load i32, i32* %7, align 4
  ret i32 %50
}

declare dso_local i32 @memset(%struct.pt_insn*, i32, i32) #1

declare dso_local i32 @pt_insn_decode(%struct.pt_insn*, %struct.pt_insn_ext*, %struct.pt_image*, %struct.pt_asid*) #1

declare dso_local i32 @pt_insn_next_ip(i64*, %struct.pt_insn*, %struct.pt_insn_ext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
