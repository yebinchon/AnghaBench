; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/regress/unittests/test_helper/extr_fuzz.c_fuzz_strategy_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/regress/unittests/test_helper/extr_fuzz.c_fuzz_strategy_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuzz = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [57 x i8] c"fuzz = %p, strategy = %s, o1 = %zu, o2 = %zu, slen = %zu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fuzz*)* @fuzz_strategy_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuzz_strategy_done(%struct.fuzz* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fuzz*, align 8
  store %struct.fuzz* %0, %struct.fuzz** %3, align 8
  %4 = load %struct.fuzz*, %struct.fuzz** %3, align 8
  %5 = load %struct.fuzz*, %struct.fuzz** %3, align 8
  %6 = getelementptr inbounds %struct.fuzz, %struct.fuzz* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @fuzz_ntop(i32 %7)
  %9 = load %struct.fuzz*, %struct.fuzz** %3, align 8
  %10 = getelementptr inbounds %struct.fuzz, %struct.fuzz* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.fuzz*, %struct.fuzz** %3, align 8
  %13 = getelementptr inbounds %struct.fuzz, %struct.fuzz* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.fuzz*, %struct.fuzz** %3, align 8
  %16 = getelementptr inbounds %struct.fuzz, %struct.fuzz* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to i8*
  %20 = call i32 @FUZZ_DBG(i8* %19)
  %21 = load %struct.fuzz*, %struct.fuzz** %3, align 8
  %22 = getelementptr inbounds %struct.fuzz, %struct.fuzz* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %62 [
    i32 134, label %24
    i32 132, label %34
    i32 131, label %44
    i32 133, label %53
    i32 128, label %53
    i32 129, label %53
    i32 130, label %53
  ]

24:                                               ; preds = %1
  %25 = load %struct.fuzz*, %struct.fuzz** %3, align 8
  %26 = getelementptr inbounds %struct.fuzz, %struct.fuzz* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.fuzz*, %struct.fuzz** %3, align 8
  %29 = getelementptr inbounds %struct.fuzz, %struct.fuzz* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = mul nsw i32 %30, 8
  %32 = icmp sge i32 %27, %31
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %2, align 4
  br label %64

34:                                               ; preds = %1
  %35 = load %struct.fuzz*, %struct.fuzz** %3, align 8
  %36 = getelementptr inbounds %struct.fuzz, %struct.fuzz* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.fuzz*, %struct.fuzz** %3, align 8
  %39 = getelementptr inbounds %struct.fuzz, %struct.fuzz* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 %40, 8
  %42 = icmp sge i32 %37, %41
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %2, align 4
  br label %64

44:                                               ; preds = %1
  %45 = load %struct.fuzz*, %struct.fuzz** %3, align 8
  %46 = getelementptr inbounds %struct.fuzz, %struct.fuzz* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.fuzz*, %struct.fuzz** %3, align 8
  %49 = getelementptr inbounds %struct.fuzz, %struct.fuzz* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = icmp sge i32 %47, %50
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %2, align 4
  br label %64

53:                                               ; preds = %1, %1, %1, %1
  %54 = load %struct.fuzz*, %struct.fuzz** %3, align 8
  %55 = getelementptr inbounds %struct.fuzz, %struct.fuzz* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.fuzz*, %struct.fuzz** %3, align 8
  %58 = getelementptr inbounds %struct.fuzz, %struct.fuzz* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = icmp sge i32 %56, %59
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %2, align 4
  br label %64

62:                                               ; preds = %1
  %63 = call i32 (...) @abort() #3
  unreachable

64:                                               ; preds = %53, %44, %34, %24
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @FUZZ_DBG(i8*) #1

declare dso_local i32 @fuzz_ntop(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
