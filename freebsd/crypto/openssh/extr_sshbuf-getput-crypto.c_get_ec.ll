; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshbuf-getput-crypto.c_get_ec.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshbuf-getput-crypto.c_get_ec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSHBUF_MAX_ECPOINT = common dso_local global i64 0, align 8
@SSH_ERR_ECPOINT_TOO_LARGE = common dso_local global i32 0, align 4
@POINT_CONVERSION_UNCOMPRESSED = common dso_local global i64 0, align 8
@SSH_ERR_INVALID_FORMAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64, i32*, i32*)* @get_ec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_ec(i64* %0, i64 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i64* %0, i64** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load i64, i64* %7, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %4
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @SSHBUF_MAX_ECPOINT, align 8
  %15 = icmp ugt i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12, %4
  %17 = load i32, i32* @SSH_ERR_ECPOINT_TOO_LARGE, align 4
  store i32 %17, i32* %5, align 4
  br label %38

18:                                               ; preds = %12
  %19 = load i64*, i64** %6, align 8
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @POINT_CONVERSION_UNCOMPRESSED, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* @SSH_ERR_INVALID_FORMAT, align 4
  store i32 %24, i32* %5, align 4
  br label %38

25:                                               ; preds = %18
  %26 = load i32*, i32** %8, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %25
  %29 = load i32*, i32** %9, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = load i64*, i64** %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @EC_POINT_oct2point(i32* %29, i32* %30, i64* %31, i64 %32, i32* null)
  %34 = icmp ne i32 %33, 1
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* @SSH_ERR_INVALID_FORMAT, align 4
  store i32 %36, i32* %5, align 4
  br label %38

37:                                               ; preds = %28, %25
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %37, %35, %23, %16
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @EC_POINT_oct2point(i32*, i32*, i64*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
