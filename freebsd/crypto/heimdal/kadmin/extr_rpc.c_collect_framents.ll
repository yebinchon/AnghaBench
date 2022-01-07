; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_rpc.c_collect_framents.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_rpc.c_collect_framents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LAST_FRAGMENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @collect_framents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @collect_framents(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 0, i64* %9, align 8
  br label %10

10:                                               ; preds = %40, %2
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @krb5_ret_uint32(i32* %11, i64* %7)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %43

17:                                               ; preds = %10
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @LAST_FRAGMENT, align 8
  %20 = and i64 %18, %19
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %8, align 4
  %22 = load i64, i64* @LAST_FRAGMENT, align 8
  %23 = xor i64 %22, -1
  %24 = load i64, i64* %7, align 8
  %25 = and i64 %24, %23
  store i64 %25, i64* %7, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @read_data(i32* %26, i32* %27, i64 %28)
  %30 = call i32 @CHECK(i32 %29)
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* %9, align 8
  %33 = add i64 %32, %31
  store i64 %33, i64* %9, align 8
  br label %34

34:                                               ; preds = %17
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i64, i64* %9, align 8
  %39 = icmp eq i64 %38, 0
  br label %40

40:                                               ; preds = %37, %34
  %41 = phi i1 [ true, %34 ], [ %39, %37 ]
  br i1 %41, label %10, label %42

42:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %15
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @krb5_ret_uint32(i32*, i64*) #1

declare dso_local i32 @CHECK(i32) #1

declare dso_local i32 @read_data(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
