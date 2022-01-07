; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_synth_cname_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_synth_cname_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64, i64, i32*, i64, i32*, i64)* @synth_cname_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @synth_cname_buf(i32* %0, i64 %1, i64 %2, i32* %3, i64 %4, i32* %5, i64 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32* %0, i32** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i32* %3, i32** %12, align 8
  store i64 %4, i64* %13, align 8
  store i32* %5, i32** %14, align 8
  store i64 %6, i64* %15, align 8
  %17 = load i64, i64* %10, align 8
  %18 = load i64, i64* %13, align 8
  %19 = add i64 %17, %18
  %20 = load i64, i64* %11, align 8
  %21 = sub i64 %19, %20
  store i64 %21, i64* %16, align 8
  %22 = load i64, i64* %16, align 8
  %23 = load i64, i64* %15, align 8
  %24 = icmp ugt i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %7
  store i64 0, i64* %8, align 8
  br label %42

26:                                               ; preds = %7
  %27 = load i32*, i32** %14, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* %11, align 8
  %31 = sub i64 %29, %30
  %32 = call i32 @memcpy(i32* %27, i32* %28, i64 %31)
  %33 = load i32*, i32** %14, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* %11, align 8
  %36 = sub i64 %34, %35
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = load i32*, i32** %12, align 8
  %39 = load i64, i64* %13, align 8
  %40 = call i32 @memmove(i32* %37, i32* %38, i64 %39)
  %41 = load i64, i64* %16, align 8
  store i64 %41, i64* %8, align 8
  br label %42

42:                                               ; preds = %26, %25
  %43 = load i64, i64* %8, align 8
  ret i64 %43
}

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @memmove(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
