; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_utils.c_rrsig_get_signer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_utils.c_rrsig_get_signer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i32**, i64*)* @rrsig_get_signer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rrsig_get_signer(i32* %0, i64 %1, i32** %2, i64* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i64*, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32** %2, i32*** %7, align 8
  store i64* %3, i64** %8, align 8
  %9 = load i64, i64* %6, align 8
  %10 = icmp ult i64 %9, 21
  br i1 %10, label %11, label %14

11:                                               ; preds = %4
  %12 = load i32**, i32*** %7, align 8
  store i32* null, i32** %12, align 8
  %13 = load i64*, i64** %8, align 8
  store i64 0, i64* %13, align 8
  br label %31

14:                                               ; preds = %4
  %15 = load i32*, i32** %5, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 20
  store i32* %16, i32** %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = sub i64 %17, 20
  store i64 %18, i64* %6, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i64 @dname_valid(i32* %19, i64 %20)
  %22 = load i64*, i64** %8, align 8
  store i64 %21, i64* %22, align 8
  %23 = load i64*, i64** %8, align 8
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %14
  %27 = load i32**, i32*** %7, align 8
  store i32* null, i32** %27, align 8
  br label %31

28:                                               ; preds = %14
  %29 = load i32*, i32** %5, align 8
  %30 = load i32**, i32*** %7, align 8
  store i32* %29, i32** %30, align 8
  br label %31

31:                                               ; preds = %28, %26, %11
  ret void
}

declare dso_local i64 @dname_valid(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
