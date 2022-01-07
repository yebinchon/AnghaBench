; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_debug.c_precsize_ntoa.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_debug.c_precsize_ntoa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@precsize_ntoa_retbuf = common dso_local global i8* null, align 8
@poweroften = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"%lu.%.2lu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @precsize_ntoa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @precsize_ntoa(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i8*, i8** @precsize_ntoa_retbuf, align 8
  store i8* %7, i8** %3, align 8
  %8 = load i32, i32* %2, align 4
  %9 = ashr i32 %8, 4
  %10 = and i32 %9, 15
  %11 = srem i32 %10, 10
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %2, align 4
  %13 = ashr i32 %12, 0
  %14 = and i32 %13, 15
  %15 = srem i32 %14, 10
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32*, i32** @poweroften, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 %16, %21
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %4, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = load i64, i64* %4, align 8
  %26 = udiv i64 %25, 100
  %27 = load i64, i64* %4, align 8
  %28 = urem i64 %27, 100
  %29 = call i32 @sprintf(i8* %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %26, i64 %28)
  %30 = load i8*, i8** %3, align 8
  ret i8* %30
}

declare dso_local i32 @sprintf(i8*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
