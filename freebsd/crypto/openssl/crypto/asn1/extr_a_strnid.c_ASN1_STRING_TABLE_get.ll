; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_a_strnid.c_ASN1_STRING_TABLE_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_a_strnid.c_ASN1_STRING_TABLE_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@stable = common dso_local global i64 0, align 8
@tbl_standard = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @ASN1_STRING_TABLE_get(i32 %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  store i32 %6, i32* %7, align 4
  %8 = load i64, i64* @stable, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load i64, i64* @stable, align 8
  %12 = call i32 @sk_ASN1_STRING_TABLE_find(i64 %11, %struct.TYPE_7__* %5)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load i64, i64* @stable, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call %struct.TYPE_7__* @sk_ASN1_STRING_TABLE_value(i64 %16, i32 %17)
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %2, align 8
  br label %25

19:                                               ; preds = %10
  br label %20

20:                                               ; preds = %19, %1
  %21 = load i32, i32* @tbl_standard, align 4
  %22 = load i32, i32* @tbl_standard, align 4
  %23 = call i32 @OSSL_NELEM(i32 %22)
  %24 = call %struct.TYPE_7__* @OBJ_bsearch_table(%struct.TYPE_7__* %5, i32 %21, i32 %23)
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %2, align 8
  br label %25

25:                                               ; preds = %20, %15
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  ret %struct.TYPE_7__* %26
}

declare dso_local i32 @sk_ASN1_STRING_TABLE_find(i64, %struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_7__* @sk_ASN1_STRING_TABLE_value(i64, i32) #1

declare dso_local %struct.TYPE_7__* @OBJ_bsearch_table(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @OSSL_NELEM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
