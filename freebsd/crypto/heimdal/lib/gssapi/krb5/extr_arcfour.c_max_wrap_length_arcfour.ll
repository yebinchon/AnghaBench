; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_arcfour.c_max_wrap_length_arcfour.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_arcfour.c_max_wrap_length_arcfour.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GSS_ARCFOUR_WRAP_TOKEN_SIZE = common dso_local global i64 0, align 8
@GSS_KRB5_MECHANISM = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i64, i64*)* @max_wrap_length_arcfour to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @max_wrap_length_arcfour(i32 %0, i32 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i64 @IS_DCE_STYLE(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %4
  %19 = load i64, i64* @GSS_ARCFOUR_WRAP_TOKEN_SIZE, align 8
  store i64 %19, i64* %9, align 8
  %20 = load i64, i64* %9, align 8
  %21 = load i32, i32* @GSS_KRB5_MECHANISM, align 4
  %22 = call i32 @_gssapi_encap_length(i64 %20, i64* %9, i64* %10, i32 %21)
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* %9, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i64*, i64** %8, align 8
  store i64 0, i64* %27, align 8
  br label %33

28:                                               ; preds = %18
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %9, align 8
  %31 = sub i64 %29, %30
  %32 = load i64*, i64** %8, align 8
  store i64 %31, i64* %32, align 8
  br label %33

33:                                               ; preds = %28, %26
  br label %65

34:                                               ; preds = %4
  %35 = load i64, i64* @GSS_ARCFOUR_WRAP_TOKEN_SIZE, align 8
  store i64 %35, i64* %11, align 8
  store i64 8, i64* %12, align 8
  %36 = load i64, i64* %7, align 8
  %37 = add i64 8, %36
  %38 = load i64, i64* %12, align 8
  %39 = add i64 %37, %38
  %40 = load i64, i64* %11, align 8
  %41 = add i64 %39, %40
  store i64 %41, i64* %13, align 8
  %42 = load i64, i64* %13, align 8
  %43 = load i32, i32* @GSS_KRB5_MECHANISM, align 4
  %44 = call i32 @_gsskrb5_encap_length(i64 %42, i64* %13, i64* %14, i32 %43)
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* %14, align 8
  %47 = sub i64 %46, %45
  store i64 %47, i64* %14, align 8
  %48 = load i64, i64* %14, align 8
  %49 = load i64, i64* %7, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %34
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* %14, align 8
  %54 = sub i64 %52, %53
  %55 = load i64*, i64** %8, align 8
  store i64 %54, i64* %55, align 8
  %56 = load i64, i64* %12, align 8
  %57 = sub i64 %56, 1
  %58 = xor i64 %57, -1
  %59 = load i64*, i64** %8, align 8
  %60 = load i64, i64* %59, align 8
  %61 = and i64 %60, %58
  store i64 %61, i64* %59, align 8
  br label %64

62:                                               ; preds = %34
  %63 = load i64*, i64** %8, align 8
  store i64 0, i64* %63, align 8
  br label %64

64:                                               ; preds = %62, %51
  br label %65

65:                                               ; preds = %64, %33
  %66 = load i64, i64* @GSS_S_COMPLETE, align 8
  ret i64 %66
}

declare dso_local i64 @IS_DCE_STYLE(i32) #1

declare dso_local i32 @_gssapi_encap_length(i64, i64*, i64*, i32) #1

declare dso_local i32 @_gsskrb5_encap_length(i64, i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
