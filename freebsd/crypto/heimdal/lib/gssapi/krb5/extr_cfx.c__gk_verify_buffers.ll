; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_cfx.c__gk_verify_buffers.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_cfx.c__gk_verify_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i64 0, align 8
@GSS_S_FAILURE = common dso_local global i64 0, align 8
@GSS_S_COMPLETE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_gk_verify_buffers(i64* %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i64* %0, i64** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %12 = load i32*, i32** %9, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %5
  %15 = load i64, i64* @EINVAL, align 8
  %16 = load i64*, i64** %7, align 8
  store i64 %15, i64* %16, align 8
  %17 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %17, i64* %6, align 8
  br label %48

18:                                               ; preds = %5
  %19 = load i32, i32* %8, align 4
  %20 = call i64 @IS_DCE_STYLE(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %18
  %23 = load i32*, i32** %10, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i64, i64* @EINVAL, align 8
  %27 = load i64*, i64** %7, align 8
  store i64 %26, i64* %27, align 8
  %28 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %28, i64* %6, align 8
  br label %48

29:                                               ; preds = %22
  %30 = load i32*, i32** %11, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i64, i64* @EINVAL, align 8
  %34 = load i64*, i64** %7, align 8
  store i64 %33, i64* %34, align 8
  %35 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %35, i64* %6, align 8
  br label %48

36:                                               ; preds = %29
  br label %45

37:                                               ; preds = %18
  %38 = load i32*, i32** %10, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i64, i64* @EINVAL, align 8
  %42 = load i64*, i64** %7, align 8
  store i64 %41, i64* %42, align 8
  %43 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %43, i64* %6, align 8
  br label %48

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %44, %36
  %46 = load i64*, i64** %7, align 8
  store i64 0, i64* %46, align 8
  %47 = load i64, i64* @GSS_S_COMPLETE, align 8
  store i64 %47, i64* %6, align 8
  br label %48

48:                                               ; preds = %45, %40, %32, %25, %14
  %49 = load i64, i64* %6, align 8
  ret i64 %49
}

declare dso_local i64 @IS_DCE_STYLE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
