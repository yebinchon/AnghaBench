; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-pkcs11.c_rmspace.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-pkcs11.c_rmspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @rmspace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rmspace(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %36

9:                                                ; preds = %2
  %10 = load i64, i64* %4, align 8
  %11 = sub i64 %10, 1
  store i64 %11, i64* %5, align 8
  br label %12

12:                                               ; preds = %33, %9
  %13 = load i64, i64* %5, align 8
  %14 = icmp ugt i64 %13, 0
  br i1 %14, label %15, label %36

15:                                               ; preds = %12
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* %4, align 8
  %18 = sub i64 %17, 1
  %19 = icmp eq i64 %16, %18
  br i1 %19, label %27, label %20

20:                                               ; preds = %15
  %21 = load i8*, i8** %3, align 8
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 32
  br i1 %26, label %27, label %31

27:                                               ; preds = %20, %15
  %28 = load i8*, i8** %3, align 8
  %29 = load i64, i64* %5, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  store i8 0, i8* %30, align 1
  br label %32

31:                                               ; preds = %20
  br label %36

32:                                               ; preds = %27
  br label %33

33:                                               ; preds = %32
  %34 = load i64, i64* %5, align 8
  %35 = add i64 %34, -1
  store i64 %35, i64* %5, align 8
  br label %12

36:                                               ; preds = %8, %31, %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
