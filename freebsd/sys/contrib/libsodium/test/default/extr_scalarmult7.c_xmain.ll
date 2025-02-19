; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/test/default/extr_scalarmult7.c_xmain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/test/default/extr_scalarmult7.c_xmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@scalar = common dso_local global i32* null, align 8
@out1 = common dso_local global i32 0, align 4
@p1 = common dso_local global i32 0, align 4
@out2 = common dso_local global i32 0, align 4
@p2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %3 = load i32*, i32** @scalar, align 8
  %4 = getelementptr inbounds i32, i32* %3, i64 0
  store i32 1, i32* %4, align 4
  %5 = load i32, i32* @out1, align 4
  %6 = load i32*, i32** @scalar, align 8
  %7 = load i32, i32* @p1, align 4
  %8 = call i32 @crypto_scalarmult_curve25519(i32 %5, i32* %6, i32 %7)
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = icmp eq i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load i32, i32* @out2, align 4
  %14 = load i32*, i32** @scalar, align 8
  %15 = load i32, i32* @p2, align 4
  %16 = call i32 @crypto_scalarmult_curve25519(i32 %13, i32* %14, i32 %15)
  store i32 %16, i32* %2, align 4
  %17 = load i32, i32* %2, align 4
  %18 = icmp eq i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i32, i32* @out1, align 4
  %22 = load i32, i32* @out2, align 4
  %23 = call i32 @memcmp(i32 %21, i32 %22, i32 32)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %27)
  ret i32 0
}

declare dso_local i32 @crypto_scalarmult_curve25519(i32, i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
