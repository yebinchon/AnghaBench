; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_misc.c_put_u64.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_misc.c_put_u64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @put_u64(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to i32*
  store i32* %7, i32** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = ashr i32 %8, 56
  %10 = and i32 %9, 255
  %11 = load i32*, i32** %5, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* %4, align 4
  %14 = ashr i32 %13, 48
  %15 = and i32 %14, 255
  %16 = load i32*, i32** %5, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* %4, align 4
  %19 = ashr i32 %18, 40
  %20 = and i32 %19, 255
  %21 = load i32*, i32** %5, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 2
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %4, align 4
  %24 = ashr i32 %23, 32
  %25 = and i32 %24, 255
  %26 = load i32*, i32** %5, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 3
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %4, align 4
  %29 = ashr i32 %28, 24
  %30 = and i32 %29, 255
  %31 = load i32*, i32** %5, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 4
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %4, align 4
  %34 = ashr i32 %33, 16
  %35 = and i32 %34, 255
  %36 = load i32*, i32** %5, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 5
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %4, align 4
  %39 = ashr i32 %38, 8
  %40 = and i32 %39, 255
  %41 = load i32*, i32** %5, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 6
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %4, align 4
  %44 = and i32 %43, 255
  %45 = load i32*, i32** %5, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 7
  store i32 %44, i32* %46, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
