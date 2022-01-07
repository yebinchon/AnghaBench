; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/regress/unittests/test_helper/extr_fuzz.c_fuzz_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/regress/unittests/test_helper/extr_fuzz.c_fuzz_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuzz = type { i64 }

@.str = private unnamed_addr constant [30 x i8] c"fuzz = %p, strategies = 0x%lx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fuzz_done(%struct.fuzz* %0) #0 {
  %2 = alloca %struct.fuzz*, align 8
  store %struct.fuzz* %0, %struct.fuzz** %2, align 8
  %3 = load %struct.fuzz*, %struct.fuzz** %2, align 8
  %4 = load %struct.fuzz*, %struct.fuzz** %2, align 8
  %5 = getelementptr inbounds %struct.fuzz, %struct.fuzz* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = trunc i64 %6 to i32
  %8 = sext i32 %7 to i64
  %9 = inttoptr i64 %8 to i8*
  %10 = call i32 @FUZZ_DBG(i8* %9)
  %11 = load %struct.fuzz*, %struct.fuzz** %2, align 8
  %12 = call i64 @fuzz_strategy_done(%struct.fuzz* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.fuzz*, %struct.fuzz** %2, align 8
  %16 = getelementptr inbounds %struct.fuzz, %struct.fuzz* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br label %19

19:                                               ; preds = %14, %1
  %20 = phi i1 [ false, %1 ], [ %18, %14 ]
  %21 = zext i1 %20 to i32
  ret i32 %21
}

declare dso_local i32 @FUZZ_DBG(i8*) #1

declare dso_local i64 @fuzz_strategy_done(%struct.fuzz*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
