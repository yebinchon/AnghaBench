; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/dso/extr_dso_lib.c_DSO_dsobyaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/dso/extr_dso_lib.c_DSO_dsobyaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @DSO_dsobyaddr(i8* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* null, i32** %6, align 8
  store i8* null, i8** %7, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @DSO_pathbyaddr(i8* %9, i8* null, i32 0)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %34

14:                                               ; preds = %2
  %15 = load i32, i32* %8, align 4
  %16 = call i8* @OPENSSL_malloc(i32 %15)
  store i8* %16, i8** %7, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %14
  %20 = load i8*, i8** %4, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @DSO_pathbyaddr(i8* %20, i8* %21, i32 %22)
  %24 = load i32, i32* %8, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32* @DSO_load(i32* null, i8* %27, i32* null, i32 %28)
  store i32* %29, i32** %6, align 8
  br label %30

30:                                               ; preds = %26, %19, %14
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @OPENSSL_free(i8* %31)
  %33 = load i32*, i32** %6, align 8
  store i32* %33, i32** %3, align 8
  br label %34

34:                                               ; preds = %30, %13
  %35 = load i32*, i32** %3, align 8
  ret i32* %35
}

declare dso_local i32 @DSO_pathbyaddr(i8*, i8*, i32) #1

declare dso_local i8* @OPENSSL_malloc(i32) #1

declare dso_local i32* @DSO_load(i32*, i8*, i32*, i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
