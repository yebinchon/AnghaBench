; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/poly1305/extr_poly1305.c_U64TO8.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/poly1305/extr_poly1305.c_U64TO8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @U64TO8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @U64TO8(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = and i32 %5, 255
  %7 = trunc i32 %6 to i8
  %8 = load i8*, i8** %3, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  store i8 %7, i8* %9, align 1
  %10 = load i32, i32* %4, align 4
  %11 = ashr i32 %10, 8
  %12 = and i32 %11, 255
  %13 = trunc i32 %12 to i8
  %14 = load i8*, i8** %3, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  store i8 %13, i8* %15, align 1
  %16 = load i32, i32* %4, align 4
  %17 = ashr i32 %16, 16
  %18 = and i32 %17, 255
  %19 = trunc i32 %18 to i8
  %20 = load i8*, i8** %3, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 2
  store i8 %19, i8* %21, align 1
  %22 = load i32, i32* %4, align 4
  %23 = ashr i32 %22, 24
  %24 = and i32 %23, 255
  %25 = trunc i32 %24 to i8
  %26 = load i8*, i8** %3, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 3
  store i8 %25, i8* %27, align 1
  %28 = load i32, i32* %4, align 4
  %29 = ashr i32 %28, 32
  %30 = and i32 %29, 255
  %31 = trunc i32 %30 to i8
  %32 = load i8*, i8** %3, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 4
  store i8 %31, i8* %33, align 1
  %34 = load i32, i32* %4, align 4
  %35 = ashr i32 %34, 40
  %36 = and i32 %35, 255
  %37 = trunc i32 %36 to i8
  %38 = load i8*, i8** %3, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 5
  store i8 %37, i8* %39, align 1
  %40 = load i32, i32* %4, align 4
  %41 = ashr i32 %40, 48
  %42 = and i32 %41, 255
  %43 = trunc i32 %42 to i8
  %44 = load i8*, i8** %3, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 6
  store i8 %43, i8* %45, align 1
  %46 = load i32, i32* %4, align 4
  %47 = ashr i32 %46, 56
  %48 = and i32 %47, 255
  %49 = trunc i32 %48 to i8
  %50 = load i8*, i8** %3, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 7
  store i8 %49, i8* %51, align 1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
