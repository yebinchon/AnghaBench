; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_tasn_dec.c_asn1_check_eoc.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_tasn_dec.c_asn1_check_eoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i64)* @asn1_check_eoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asn1_check_eoc(i8** %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp slt i64 %7, 2
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %27

10:                                               ; preds = %2
  %11 = load i8**, i8*** %4, align 8
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %10
  %18 = load i8*, i8** %6, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  %20 = load i8, i8* %19, align 1
  %21 = icmp ne i8 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = load i8**, i8*** %4, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 2
  store i8* %25, i8** %23, align 8
  store i32 1, i32* %3, align 4
  br label %27

26:                                               ; preds = %17, %10
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %26, %22, %9
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
