; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libsecureboot/openpgp/extr_decode.c_mpi2bn.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libsecureboot/openpgp/extr_decode.c_mpi2bn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @mpi2bn(i8** %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  store i32* null, i32** %4, align 8
  %7 = load i8**, i8*** %3, align 8
  %8 = icmp eq i8** %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32* null, i32** %2, align 8
  br label %37

10:                                               ; preds = %1
  %11 = load i8**, i8*** %3, align 8
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %14, i8** %5, align 8
  %15 = load i8, i8* %13, align 1
  %16 = zext i8 %15 to i32
  %17 = shl i32 %16, 8
  store i32 %17, i32* %6, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %5, align 8
  %20 = load i8, i8* %18, align 1
  %21 = zext i8 %20 to i32
  %22 = load i32, i32* %6, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 7
  %26 = sdiv i32 %25, 8
  store i32 %26, i32* %6, align 4
  %27 = load i8*, i8** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32* @BN_bin2bn(i8* %27, i32 %28, i32* null)
  store i32* %29, i32** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i8*, i8** %5, align 8
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  store i8* %33, i8** %5, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = load i8**, i8*** %3, align 8
  store i8* %34, i8** %35, align 8
  %36 = load i32*, i32** %4, align 8
  store i32* %36, i32** %2, align 8
  br label %37

37:                                               ; preds = %10, %9
  %38 = load i32*, i32** %2, align 8
  ret i32* %38
}

declare dso_local i32* @BN_bin2bn(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
