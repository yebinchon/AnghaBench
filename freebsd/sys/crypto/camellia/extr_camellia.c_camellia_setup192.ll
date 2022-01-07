; ModuleID = '/home/carl/AnghaBench/freebsd/sys/crypto/camellia/extr_camellia.c_camellia_setup192.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/crypto/camellia/extr_camellia.c_camellia_setup192.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @camellia_setup192(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [32 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @memcpy(i8* %10, i8* %11, i32 24)
  %13 = bitcast i32* %6 to i8*
  %14 = load i8*, i8** %3, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 16
  %16 = call i32 @memcpy(i8* %13, i8* %15, i32 4)
  %17 = bitcast i32* %7 to i8*
  %18 = load i8*, i8** %3, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 20
  %20 = call i32 @memcpy(i8* %17, i8* %19, i32 4)
  %21 = load i32, i32* %6, align 4
  %22 = xor i32 %21, -1
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %7, align 4
  %24 = xor i32 %23, -1
  store i32 %24, i32* %9, align 4
  %25 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %26 = getelementptr inbounds i8, i8* %25, i64 24
  %27 = bitcast i32* %8 to i8*
  %28 = call i32 @memcpy(i8* %26, i8* %27, i32 4)
  %29 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %30 = getelementptr inbounds i8, i8* %29, i64 28
  %31 = bitcast i32* %9 to i8*
  %32 = call i32 @memcpy(i8* %30, i8* %31, i32 4)
  %33 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @camellia_setup256(i8* %33, i32* %34)
  ret void
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @camellia_setup256(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
