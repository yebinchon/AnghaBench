; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_cfx.c__gsskrb5cfx_wrap_length_cfx.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_cfx.c__gsskrb5cfx_wrap_length_cfx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_gsskrb5cfx_wrap_length_cfx(i32 %0, i32 %1, i32 %2, i32 %3, i64 %4, i64* %5, i64* %6, i64* %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i64 %4, i64* %14, align 8
  store i64* %5, i64** %15, align 8
  store i64* %6, i64** %16, align 8
  store i64* %7, i64** %17, align 8
  %21 = load i64*, i64** %15, align 8
  store i64 4, i64* %21, align 8
  %22 = load i64*, i64** %17, align 8
  store i64 0, i64* %22, align 8
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %11, align 4
  %25 = call i64 @krb5_crypto_get_checksum_type(i32 %23, i32 %24, i32* %19)
  store i64 %25, i64* %18, align 8
  %26 = load i64, i64* %18, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %8
  %29 = load i64, i64* %18, align 8
  store i64 %29, i64* %9, align 8
  br label %97

30:                                               ; preds = %8
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %19, align 4
  %33 = load i64*, i64** %16, align 8
  %34 = call i64 @krb5_checksumsize(i32 %31, i32 %32, i64* %33)
  store i64 %34, i64* %18, align 8
  %35 = load i64, i64* %18, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i64, i64* %18, align 8
  store i64 %38, i64* %9, align 8
  br label %97

39:                                               ; preds = %30
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %82

42:                                               ; preds = %39
  %43 = load i64, i64* %14, align 8
  %44 = add i64 %43, 4
  store i64 %44, i64* %14, align 8
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %11, align 4
  %50 = call i64 @krb5_crypto_getblocksize(i32 %48, i32 %49, i64* %20)
  store i64 %50, i64* %18, align 8
  br label %55

51:                                               ; preds = %42
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %11, align 4
  %54 = call i64 @krb5_crypto_getpadsize(i32 %52, i32 %53, i64* %20)
  store i64 %54, i64* %18, align 8
  br label %55

55:                                               ; preds = %51, %47
  %56 = load i64, i64* %18, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i64, i64* %18, align 8
  store i64 %59, i64* %9, align 8
  br label %97

60:                                               ; preds = %55
  %61 = load i64, i64* %20, align 8
  %62 = icmp ugt i64 %61, 1
  br i1 %62, label %63, label %74

63:                                               ; preds = %60
  %64 = load i64, i64* %20, align 8
  %65 = load i64, i64* %14, align 8
  %66 = load i64, i64* %20, align 8
  %67 = urem i64 %65, %66
  %68 = sub i64 %64, %67
  %69 = load i64*, i64** %17, align 8
  store i64 %68, i64* %69, align 8
  %70 = load i64*, i64** %17, align 8
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %14, align 8
  %73 = add i64 %72, %71
  store i64 %73, i64* %14, align 8
  br label %74

74:                                               ; preds = %63, %60
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load i64, i64* %14, align 8
  %78 = call i64 @krb5_get_wrapped_length(i32 %75, i32 %76, i64 %77)
  %79 = load i64*, i64** %15, align 8
  %80 = load i64, i64* %79, align 8
  %81 = add i64 %80, %78
  store i64 %81, i64* %79, align 8
  br label %90

82:                                               ; preds = %39
  %83 = load i64, i64* %14, align 8
  %84 = load i64*, i64** %16, align 8
  %85 = load i64, i64* %84, align 8
  %86 = add i64 %83, %85
  %87 = load i64*, i64** %15, align 8
  %88 = load i64, i64* %87, align 8
  %89 = add i64 %88, %86
  store i64 %89, i64* %87, align 8
  br label %90

90:                                               ; preds = %82, %74
  %91 = load i64*, i64** %15, align 8
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %14, align 8
  %94 = icmp ugt i64 %92, %93
  %95 = zext i1 %94 to i32
  %96 = call i32 @assert(i32 %95)
  store i64 0, i64* %9, align 8
  br label %97

97:                                               ; preds = %90, %58, %37, %28
  %98 = load i64, i64* %9, align 8
  ret i64 %98
}

declare dso_local i64 @krb5_crypto_get_checksum_type(i32, i32, i32*) #1

declare dso_local i64 @krb5_checksumsize(i32, i32, i64*) #1

declare dso_local i64 @krb5_crypto_getblocksize(i32, i32, i64*) #1

declare dso_local i64 @krb5_crypto_getpadsize(i32, i32, i64*) #1

declare dso_local i64 @krb5_get_wrapped_length(i32, i32, i64) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
