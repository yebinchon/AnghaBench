; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_keys.c_ldns_key_deep_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_keys.c_ldns_key_deep_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ldns_key_deep_free(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i64 @ldns_key_pubkey_owner(i8* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i8*, i8** %2, align 8
  %9 = call i64 @ldns_key_pubkey_owner(i8* %8)
  %10 = call i32 @ldns_rdf_deep_free(i64 %9)
  br label %11

11:                                               ; preds = %7, %1
  %12 = load i8*, i8** %2, align 8
  %13 = call i8* @ldns_key_hmac_key(i8* %12)
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = load i8*, i8** %2, align 8
  %17 = call i8* @ldns_key_hmac_key(i8* %16)
  store i8* %17, i8** %3, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @LDNS_FREE(i8* %18)
  br label %20

20:                                               ; preds = %15, %11
  %21 = load i8*, i8** %2, align 8
  %22 = call i32 @LDNS_FREE(i8* %21)
  ret void
}

declare dso_local i64 @ldns_key_pubkey_owner(i8*) #1

declare dso_local i32 @ldns_rdf_deep_free(i64) #1

declare dso_local i8* @ldns_key_hmac_key(i8*) #1

declare dso_local i32 @LDNS_FREE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
