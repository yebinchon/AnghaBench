; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/cmac/extr_cmac.c_make_kn.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/cmac/extr_cmac.c_make_kn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32)* @make_kn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_kn(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* %8, align 1
  %14 = load i8, i8* %8, align 1
  %15 = zext i8 %14 to i32
  %16 = ashr i32 %15, 7
  %17 = trunc i32 %16 to i8
  store i8 %17, i8* %9, align 1
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %41, %3
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %6, align 4
  %21 = sub nsw i32 %20, 1
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %45

23:                                               ; preds = %18
  %24 = load i8, i8* %8, align 1
  %25 = zext i8 %24 to i32
  %26 = shl i32 %25, 1
  %27 = load i8*, i8** %5, align 8
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %27, i64 %30
  %32 = load i8, i8* %31, align 1
  store i8 %32, i8* %10, align 1
  %33 = zext i8 %32 to i32
  %34 = ashr i32 %33, 7
  %35 = or i32 %26, %34
  %36 = trunc i32 %35 to i8
  %37 = load i8*, i8** %4, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  store i8 %36, i8* %40, align 1
  br label %41

41:                                               ; preds = %23
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  %44 = load i8, i8* %10, align 1
  store i8 %44, i8* %8, align 1
  br label %18

45:                                               ; preds = %18
  %46 = load i8, i8* %8, align 1
  %47 = zext i8 %46 to i32
  %48 = shl i32 %47, 1
  %49 = load i8, i8* %9, align 1
  %50 = zext i8 %49 to i32
  %51 = sub nsw i32 0, %50
  %52 = load i32, i32* %6, align 4
  %53 = icmp eq i32 %52, 16
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 135, i32 27
  %56 = and i32 %51, %55
  %57 = xor i32 %48, %56
  %58 = trunc i32 %57 to i8
  %59 = load i8*, i8** %4, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  store i8 %58, i8* %62, align 1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
