; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_dh.c_dh_new_group_asc.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_dh.c_dh_new_group_asc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @dh_new_group_asc(i8* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %9 = call i32* (...) @DH_new()
  store i32* %9, i32** %6, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %37

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = call i64 @BN_hex2bn(i32** %7, i8* %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load i8*, i8** %4, align 8
  %18 = call i64 @BN_hex2bn(i32** %8, i8* %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %12
  br label %30

21:                                               ; preds = %16
  %22 = load i32*, i32** %6, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = call i32 @DH_set0_pqg(i32* %22, i32* %23, i32* null, i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  br label %30

28:                                               ; preds = %21
  %29 = load i32*, i32** %6, align 8
  store i32* %29, i32** %3, align 8
  br label %37

30:                                               ; preds = %27, %20
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @DH_free(i32* %31)
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @BN_clear_free(i32* %33)
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @BN_clear_free(i32* %35)
  store i32* null, i32** %3, align 8
  br label %37

37:                                               ; preds = %30, %28, %11
  %38 = load i32*, i32** %3, align 8
  ret i32* %38
}

declare dso_local i32* @DH_new(...) #1

declare dso_local i64 @BN_hex2bn(i32**, i8*) #1

declare dso_local i32 @DH_set0_pqg(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @DH_free(i32*) #1

declare dso_local i32 @BN_clear_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
