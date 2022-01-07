; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_protocol.c_kcm_op_chown.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_protocol.c_kcm_op_chown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32*, i32, i32*, i32*)* @kcm_op_chown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kcm_op_chown(i32 %0, i32* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = call i64 @krb5_ret_stringz(i32* %17, i8** %16)
  store i64 %18, i64* %14, align 8
  %19 = load i64, i64* %14, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i64, i64* %14, align 8
  store i64 %22, i64* %6, align 8
  br label %71

23:                                               ; preds = %5
  %24 = load i32, i32* %7, align 4
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i8*, i8** %16, align 8
  %28 = call i32 @KCM_LOG_REQUEST_NAME(i32 %24, i32* %25, i32 %26, i8* %27)
  %29 = load i32*, i32** %10, align 8
  %30 = call i64 @krb5_ret_uint32(i32* %29, i32* %12)
  store i64 %30, i64* %14, align 8
  %31 = load i64, i64* %14, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %23
  %34 = load i8*, i8** %16, align 8
  %35 = call i32 @free(i8* %34)
  %36 = load i64, i64* %14, align 8
  store i64 %36, i64* %6, align 8
  br label %71

37:                                               ; preds = %23
  %38 = load i32*, i32** %10, align 8
  %39 = call i64 @krb5_ret_uint32(i32* %38, i32* %13)
  store i64 %39, i64* %14, align 8
  %40 = load i64, i64* %14, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i8*, i8** %16, align 8
  %44 = call i32 @free(i8* %43)
  %45 = load i64, i64* %14, align 8
  store i64 %45, i64* %6, align 8
  br label %71

46:                                               ; preds = %37
  %47 = load i32, i32* %7, align 4
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load i8*, i8** %16, align 8
  %51 = call i64 @kcm_ccache_resolve_client(i32 %47, i32* %48, i32 %49, i8* %50, i32* %15)
  store i64 %51, i64* %14, align 8
  %52 = load i64, i64* %14, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %46
  %55 = load i8*, i8** %16, align 8
  %56 = call i32 @free(i8* %55)
  %57 = load i64, i64* %14, align 8
  store i64 %57, i64* %6, align 8
  br label %71

58:                                               ; preds = %46
  %59 = load i32, i32* %7, align 4
  %60 = load i32*, i32** %8, align 8
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %13, align 4
  %64 = call i64 @kcm_chown(i32 %59, i32* %60, i32 %61, i32 %62, i32 %63)
  store i64 %64, i64* %14, align 8
  %65 = load i8*, i8** %16, align 8
  %66 = call i32 @free(i8* %65)
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %15, align 4
  %69 = call i32 @kcm_release_ccache(i32 %67, i32 %68)
  %70 = load i64, i64* %14, align 8
  store i64 %70, i64* %6, align 8
  br label %71

71:                                               ; preds = %58, %54, %42, %33, %21
  %72 = load i64, i64* %6, align 8
  ret i64 %72
}

declare dso_local i64 @krb5_ret_stringz(i32*, i8**) #1

declare dso_local i32 @KCM_LOG_REQUEST_NAME(i32, i32*, i32, i8*) #1

declare dso_local i64 @krb5_ret_uint32(i32*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @kcm_ccache_resolve_client(i32, i32*, i32, i8*, i32*) #1

declare dso_local i64 @kcm_chown(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @kcm_release_ccache(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
