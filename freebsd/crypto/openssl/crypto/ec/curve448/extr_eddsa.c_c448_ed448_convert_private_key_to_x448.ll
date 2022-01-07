; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/curve448/extr_eddsa.c_c448_ed448_convert_private_key_to_x448.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/curve448/extr_eddsa.c_c448_ed448_convert_private_key_to_x448.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@X448_PRIVATE_BYTES = common dso_local global i32 0, align 4
@EDDSA_448_PRIVATE_BYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c448_ed448_convert_private_key_to_x448(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32, i32* @X448_PRIVATE_BYTES, align 4
  %6 = zext i32 %5 to i64
  %7 = load i32, i32* @EDDSA_448_PRIVATE_BYTES, align 4
  %8 = zext i32 %7 to i64
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* @X448_PRIVATE_BYTES, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* @EDDSA_448_PRIVATE_BYTES, align 4
  %13 = call i32 @oneshot_hash(i32* %9, i32 %10, i32* %11, i32 %12)
  ret i32 %13
}

declare dso_local i32 @oneshot_hash(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
