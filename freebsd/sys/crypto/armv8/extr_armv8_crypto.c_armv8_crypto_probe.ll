; ModuleID = '/home/carl/AnghaBench/freebsd/sys/crypto/armv8/extr_armv8_crypto.c_armv8_crypto_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/crypto/armv8/extr_armv8_crypto.c_armv8_crypto_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENXIO = common dso_local global i32 0, align 4
@id_aa64isar0_el1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"AES-CBC\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @armv8_crypto_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armv8_crypto_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @ENXIO, align 4
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* @id_aa64isar0_el1, align 4
  %7 = call i32 @READ_SPECIALREG(i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @ID_AA64ISAR0_AES_VAL(i32 %8)
  switch i32 %9, label %11 [
    i32 129, label %10
    i32 128, label %10
  ]

10:                                               ; preds = %1, %1
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %1, %10
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @device_set_desc_copy(i32 %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* %4, align 4
  ret i32 %14
}

declare dso_local i32 @READ_SPECIALREG(i32) #1

declare dso_local i32 @ID_AA64ISAR0_AES_VAL(i32) #1

declare dso_local i32 @device_set_desc_copy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
