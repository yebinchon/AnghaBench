; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/regress/unittests/test_helper/extr_fuzz.c_fuzz_len.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/regress/unittests/test_helper/extr_fuzz.c_fuzz_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuzz = type { i32, i64, i64, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fuzz_len(%struct.fuzz* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.fuzz*, align 8
  store %struct.fuzz* %0, %struct.fuzz** %3, align 8
  %4 = load %struct.fuzz*, %struct.fuzz** %3, align 8
  %5 = getelementptr inbounds %struct.fuzz, %struct.fuzz* %4, i32 0, i32 3
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load %struct.fuzz*, %struct.fuzz** %3, align 8
  %11 = getelementptr inbounds %struct.fuzz, %struct.fuzz* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %34 [
    i32 134, label %13
    i32 132, label %13
    i32 133, label %13
    i32 131, label %13
    i32 130, label %13
    i32 128, label %17
    i32 129, label %17
  ]

13:                                               ; preds = %1, %1, %1, %1, %1
  %14 = load %struct.fuzz*, %struct.fuzz** %3, align 8
  %15 = getelementptr inbounds %struct.fuzz, %struct.fuzz* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %2, align 8
  br label %36

17:                                               ; preds = %1, %1
  %18 = load %struct.fuzz*, %struct.fuzz** %3, align 8
  %19 = getelementptr inbounds %struct.fuzz, %struct.fuzz* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.fuzz*, %struct.fuzz** %3, align 8
  %22 = getelementptr inbounds %struct.fuzz, %struct.fuzz* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ule i64 %20, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.fuzz*, %struct.fuzz** %3, align 8
  %28 = getelementptr inbounds %struct.fuzz, %struct.fuzz* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.fuzz*, %struct.fuzz** %3, align 8
  %31 = getelementptr inbounds %struct.fuzz, %struct.fuzz* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = sub i64 %29, %32
  store i64 %33, i64* %2, align 8
  br label %36

34:                                               ; preds = %1
  %35 = call i32 (...) @abort() #3
  unreachable

36:                                               ; preds = %17, %13
  %37 = load i64, i64* %2, align 8
  ret i64 %37
}

declare dso_local i32 @assert(i32) #1

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
