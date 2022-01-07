; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509v3/extr_v3_lib.c_X509V3_EXT_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509v3/extr_v3_lib.c_X509V3_EXT_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ext_list = common dso_local global i32* null, align 8
@ext_cmp = common dso_local global i32 0, align 4
@X509V3_F_X509V3_EXT_ADD = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @X509V3_EXT_add(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** @ext_list, align 8
  %5 = icmp eq i32* %4, null
  br i1 %5, label %6, label %14

6:                                                ; preds = %1
  %7 = load i32, i32* @ext_cmp, align 4
  %8 = call i32* @sk_X509V3_EXT_METHOD_new(i32 %7)
  store i32* %8, i32** @ext_list, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = load i32, i32* @X509V3_F_X509V3_EXT_ADD, align 4
  %12 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %13 = call i32 @X509V3err(i32 %11, i32 %12)
  store i32 0, i32* %2, align 4
  br label %24

14:                                               ; preds = %6, %1
  %15 = load i32*, i32** @ext_list, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @sk_X509V3_EXT_METHOD_push(i32* %15, i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @X509V3_F_X509V3_EXT_ADD, align 4
  %21 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %22 = call i32 @X509V3err(i32 %20, i32 %21)
  store i32 0, i32* %2, align 4
  br label %24

23:                                               ; preds = %14
  store i32 1, i32* %2, align 4
  br label %24

24:                                               ; preds = %23, %19, %10
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32* @sk_X509V3_EXT_METHOD_new(i32) #1

declare dso_local i32 @X509V3err(i32, i32) #1

declare dso_local i32 @sk_X509V3_EXT_METHOD_push(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
