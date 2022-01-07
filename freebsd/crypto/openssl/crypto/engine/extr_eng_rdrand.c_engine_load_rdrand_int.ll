; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/engine/extr_eng_rdrand.c_engine_load_rdrand_int.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/engine/extr_eng_rdrand.c_engine_load_rdrand_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OPENSSL_ia32cap_P = external dso_local global [0 x i32], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @engine_load_rdrand_int() #0 {
  %1 = alloca i32*, align 8
  %2 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @OPENSSL_ia32cap_P, i64 0, i64 1), align 4
  %3 = and i32 %2, 1073741824
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %16

5:                                                ; preds = %0
  %6 = call i32* (...) @ENGINE_rdrand()
  store i32* %6, i32** %1, align 8
  %7 = load i32*, i32** %1, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  br label %16

10:                                               ; preds = %5
  %11 = load i32*, i32** %1, align 8
  %12 = call i32 @ENGINE_add(i32* %11)
  %13 = load i32*, i32** %1, align 8
  %14 = call i32 @ENGINE_free(i32* %13)
  %15 = call i32 (...) @ERR_clear_error()
  br label %16

16:                                               ; preds = %9, %10, %0
  ret void
}

declare dso_local i32* @ENGINE_rdrand(...) #1

declare dso_local i32 @ENGINE_add(i32*) #1

declare dso_local i32 @ENGINE_free(i32*) #1

declare dso_local i32 @ERR_clear_error(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
