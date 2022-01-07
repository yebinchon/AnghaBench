; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_protocol.c_kcm_op_chmod.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_protocol.c_kcm_op_chmod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32*, i32, i32*, i32*)* @kcm_op_chmod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kcm_op_chmod(i32 %0, i32* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = call i64 @krb5_ret_stringz(i32* %16, i8** %15)
  store i64 %17, i64* %13, align 8
  %18 = load i64, i64* %13, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i64, i64* %13, align 8
  store i64 %21, i64* %6, align 8
  br label %60

22:                                               ; preds = %5
  %23 = load i32, i32* %7, align 4
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i8*, i8** %15, align 8
  %27 = call i32 @KCM_LOG_REQUEST_NAME(i32 %23, i32* %24, i32 %25, i8* %26)
  %28 = load i32*, i32** %10, align 8
  %29 = call i64 @krb5_ret_uint16(i32* %28, i32* %12)
  store i64 %29, i64* %13, align 8
  %30 = load i64, i64* %13, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %22
  %33 = load i8*, i8** %15, align 8
  %34 = call i32 @free(i8* %33)
  %35 = load i64, i64* %13, align 8
  store i64 %35, i64* %6, align 8
  br label %60

36:                                               ; preds = %22
  %37 = load i32, i32* %7, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load i8*, i8** %15, align 8
  %41 = call i64 @kcm_ccache_resolve_client(i32 %37, i32* %38, i32 %39, i8* %40, i32* %14)
  store i64 %41, i64* %13, align 8
  %42 = load i64, i64* %13, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %36
  %45 = load i8*, i8** %15, align 8
  %46 = call i32 @free(i8* %45)
  %47 = load i64, i64* %13, align 8
  store i64 %47, i64* %6, align 8
  br label %60

48:                                               ; preds = %36
  %49 = load i32, i32* %7, align 4
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* %12, align 4
  %53 = call i64 @kcm_chmod(i32 %49, i32* %50, i32 %51, i32 %52)
  store i64 %53, i64* %13, align 8
  %54 = load i8*, i8** %15, align 8
  %55 = call i32 @free(i8* %54)
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %14, align 4
  %58 = call i32 @kcm_release_ccache(i32 %56, i32 %57)
  %59 = load i64, i64* %13, align 8
  store i64 %59, i64* %6, align 8
  br label %60

60:                                               ; preds = %48, %44, %32, %20
  %61 = load i64, i64* %6, align 8
  ret i64 %61
}

declare dso_local i64 @krb5_ret_stringz(i32*, i8**) #1

declare dso_local i32 @KCM_LOG_REQUEST_NAME(i32, i32*, i32, i8*) #1

declare dso_local i64 @krb5_ret_uint16(i32*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @kcm_ccache_resolve_client(i32, i32*, i32, i8*, i32*) #1

declare dso_local i64 @kcm_chmod(i32, i32*, i32, i32) #1

declare dso_local i32 @kcm_release_ccache(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
