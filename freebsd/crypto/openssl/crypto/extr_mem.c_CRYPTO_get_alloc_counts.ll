; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/extr_mem.c_CRYPTO_get_alloc_counts.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/extr_mem.c_CRYPTO_get_alloc_counts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@malloc_count = common dso_local global i32 0, align 4
@realloc_count = common dso_local global i32 0, align 4
@free_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CRYPTO_get_alloc_counts(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = call i32 @tsan_load(i32* @malloc_count)
  %11 = load i32*, i32** %4, align 8
  store i32 %10, i32* %11, align 4
  br label %12

12:                                               ; preds = %9, %3
  %13 = load i32*, i32** %5, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = call i32 @tsan_load(i32* @realloc_count)
  %17 = load i32*, i32** %5, align 8
  store i32 %16, i32* %17, align 4
  br label %18

18:                                               ; preds = %15, %12
  %19 = load i32*, i32** %6, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = call i32 @tsan_load(i32* @free_count)
  %23 = load i32*, i32** %6, align 8
  store i32 %22, i32* %23, align 4
  br label %24

24:                                               ; preds = %21, %18
  ret void
}

declare dso_local i32 @tsan_load(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
