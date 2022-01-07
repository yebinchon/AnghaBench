; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/sodium/extr_codecs.c_b64_char_to_byte.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/sodium/extr_codecs.c_b64_char_to_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @b64_char_to_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b64_char_to_byte(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @GE(i32 %4, i8 signext 65)
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @LE(i32 %6, i8 signext 90)
  %8 = and i32 %5, %7
  %9 = load i32, i32* %2, align 4
  %10 = sub nsw i32 %9, 65
  %11 = and i32 %8, %10
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @GE(i32 %12, i8 signext 97)
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @LE(i32 %14, i8 signext 122)
  %16 = and i32 %13, %15
  %17 = load i32, i32* %2, align 4
  %18 = sub nsw i32 %17, 71
  %19 = and i32 %16, %18
  %20 = or i32 %11, %19
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @GE(i32 %21, i8 signext 48)
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @LE(i32 %23, i8 signext 57)
  %25 = and i32 %22, %24
  %26 = load i32, i32* %2, align 4
  %27 = sub nsw i32 %26, -4
  %28 = and i32 %25, %27
  %29 = or i32 %20, %28
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @EQ(i32 %30, i8 signext 43)
  %32 = and i32 %31, 62
  %33 = or i32 %29, %32
  %34 = load i32, i32* %2, align 4
  %35 = call i32 @EQ(i32 %34, i8 signext 47)
  %36 = and i32 %35, 63
  %37 = or i32 %33, %36
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @EQ(i32 %39, i8 signext 0)
  %41 = load i32, i32* %2, align 4
  %42 = call i32 @EQ(i32 %41, i8 signext 65)
  %43 = xor i32 %42, 255
  %44 = and i32 %40, %43
  %45 = or i32 %38, %44
  ret i32 %45
}

declare dso_local i32 @GE(i32, i8 signext) #1

declare dso_local i32 @LE(i32, i8 signext) #1

declare dso_local i32 @EQ(i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
