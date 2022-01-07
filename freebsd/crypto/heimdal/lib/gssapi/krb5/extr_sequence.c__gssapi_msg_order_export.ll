; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_sequence.c__gssapi_msg_order_export.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_sequence.c__gssapi_msg_order_export.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gss_msg_order = type { i64, i64, i64, i64, i64, i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_gssapi_msg_order_export(i32* %0, %struct.gss_msg_order* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.gss_msg_order*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.gss_msg_order* %1, %struct.gss_msg_order** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load %struct.gss_msg_order*, %struct.gss_msg_order** %5, align 8
  %10 = getelementptr inbounds %struct.gss_msg_order, %struct.gss_msg_order* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i64 @krb5_store_int32(i32* %8, i64 %11)
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i64, i64* %6, align 8
  store i64 %16, i64* %3, align 8
  br label %82

17:                                               ; preds = %2
  %18 = load i32*, i32** %4, align 8
  %19 = load %struct.gss_msg_order*, %struct.gss_msg_order** %5, align 8
  %20 = getelementptr inbounds %struct.gss_msg_order, %struct.gss_msg_order* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @krb5_store_int32(i32* %18, i64 %21)
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i64, i64* %6, align 8
  store i64 %26, i64* %3, align 8
  br label %82

27:                                               ; preds = %17
  %28 = load i32*, i32** %4, align 8
  %29 = load %struct.gss_msg_order*, %struct.gss_msg_order** %5, align 8
  %30 = getelementptr inbounds %struct.gss_msg_order, %struct.gss_msg_order* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @krb5_store_int32(i32* %28, i64 %31)
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* %6, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i64, i64* %6, align 8
  store i64 %36, i64* %3, align 8
  br label %82

37:                                               ; preds = %27
  %38 = load i32*, i32** %4, align 8
  %39 = load %struct.gss_msg_order*, %struct.gss_msg_order** %5, align 8
  %40 = getelementptr inbounds %struct.gss_msg_order, %struct.gss_msg_order* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @krb5_store_int32(i32* %38, i64 %41)
  store i64 %42, i64* %6, align 8
  %43 = load i64, i64* %6, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i64, i64* %6, align 8
  store i64 %46, i64* %3, align 8
  br label %82

47:                                               ; preds = %37
  %48 = load i32*, i32** %4, align 8
  %49 = load %struct.gss_msg_order*, %struct.gss_msg_order** %5, align 8
  %50 = getelementptr inbounds %struct.gss_msg_order, %struct.gss_msg_order* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @krb5_store_int32(i32* %48, i64 %51)
  store i64 %52, i64* %6, align 8
  %53 = load i64, i64* %6, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = load i64, i64* %6, align 8
  store i64 %56, i64* %3, align 8
  br label %82

57:                                               ; preds = %47
  store i64 0, i64* %7, align 8
  br label %58

58:                                               ; preds = %78, %57
  %59 = load i64, i64* %7, align 8
  %60 = load %struct.gss_msg_order*, %struct.gss_msg_order** %5, align 8
  %61 = getelementptr inbounds %struct.gss_msg_order, %struct.gss_msg_order* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = icmp ult i64 %59, %62
  br i1 %63, label %64, label %81

64:                                               ; preds = %58
  %65 = load i32*, i32** %4, align 8
  %66 = load %struct.gss_msg_order*, %struct.gss_msg_order** %5, align 8
  %67 = getelementptr inbounds %struct.gss_msg_order, %struct.gss_msg_order* %66, i32 0, i32 5
  %68 = load i64*, i64** %67, align 8
  %69 = load i64, i64* %7, align 8
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = call i64 @krb5_store_int32(i32* %65, i64 %71)
  store i64 %72, i64* %6, align 8
  %73 = load i64, i64* %6, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %64
  %76 = load i64, i64* %6, align 8
  store i64 %76, i64* %3, align 8
  br label %82

77:                                               ; preds = %64
  br label %78

78:                                               ; preds = %77
  %79 = load i64, i64* %7, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %7, align 8
  br label %58

81:                                               ; preds = %58
  store i64 0, i64* %3, align 8
  br label %82

82:                                               ; preds = %81, %75, %55, %45, %35, %25, %15
  %83 = load i64, i64* %3, align 8
  ret i64 %83
}

declare dso_local i64 @krb5_store_int32(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
