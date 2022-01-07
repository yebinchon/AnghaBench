; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/sodium/extr_codecs.c_b64_byte_to_char.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/sodium/extr_codecs.c_b64_byte_to_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @b64_byte_to_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b64_byte_to_char(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 @LT(i32 %3, i32 26)
  %5 = load i32, i32* %2, align 4
  %6 = add i32 %5, 65
  %7 = and i32 %4, %6
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @GE(i32 %8, i32 26)
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @LT(i32 %10, i32 52)
  %12 = and i32 %9, %11
  %13 = load i32, i32* %2, align 4
  %14 = add i32 %13, 71
  %15 = and i32 %12, %14
  %16 = or i32 %7, %15
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @GE(i32 %17, i32 52)
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @LT(i32 %19, i32 62)
  %21 = and i32 %18, %20
  %22 = load i32, i32* %2, align 4
  %23 = add i32 %22, -4
  %24 = and i32 %21, %23
  %25 = or i32 %16, %24
  %26 = load i32, i32* %2, align 4
  %27 = call signext i8 @EQ(i32 %26, i32 62)
  %28 = sext i8 %27 to i32
  %29 = and i32 %28, 43
  %30 = or i32 %25, %29
  %31 = load i32, i32* %2, align 4
  %32 = call signext i8 @EQ(i32 %31, i32 63)
  %33 = sext i8 %32 to i32
  %34 = and i32 %33, 47
  %35 = or i32 %30, %34
  ret i32 %35
}

declare dso_local i32 @LT(i32, i32) #1

declare dso_local i32 @GE(i32, i32) #1

declare dso_local signext i8 @EQ(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
