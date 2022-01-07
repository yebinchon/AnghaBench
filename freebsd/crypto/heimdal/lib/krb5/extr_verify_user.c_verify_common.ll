; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_verify_user.c_verify_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_verify_user.c_verify_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KRB5_NT_SRV_HST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i32*, i32, i32, i8*, i32)* @verify_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @verify_common(i32 %0, i32 %1, i32* %2, i32 %3, i32 %4, i8* %5, i32 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i8*, i8** %14, align 8
  %22 = load i32, i32* @KRB5_NT_SRV_HST, align 4
  %23 = call i64 @krb5_sname_to_principal(i32 %20, i32* null, i8* %21, i32 %22, i32* %17)
  store i64 %23, i64* %16, align 8
  %24 = load i64, i64* %16, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %7
  %27 = load i64, i64* %16, align 8
  store i64 %27, i64* %8, align 8
  br label %77

28:                                               ; preds = %7
  %29 = call i32 @krb5_verify_init_creds_opt_init(i32* %18)
  %30 = load i32, i32* %13, align 4
  %31 = call i32 @krb5_verify_init_creds_opt_set_ap_req_nofail(i32* %18, i32 %30)
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %17, align 4
  %34 = load i32, i32* %12, align 4
  %35 = call i64 @krb5_verify_init_creds(i32 %32, i32* %15, i32 %33, i32 %34, i32* null, i32* %18)
  store i64 %35, i64* %16, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %17, align 4
  %38 = call i32 @krb5_free_principal(i32 %36, i32 %37)
  %39 = load i64, i64* %16, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %28
  %42 = load i64, i64* %16, align 8
  store i64 %42, i64* %8, align 8
  br label %77

43:                                               ; preds = %28
  %44 = load i32*, i32** %11, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* %9, align 4
  %48 = call i64 @krb5_cc_default(i32 %47, i32** %19)
  store i64 %48, i64* %16, align 8
  br label %51

49:                                               ; preds = %43
  %50 = load i32*, i32** %11, align 8
  store i32* %50, i32** %19, align 8
  br label %51

51:                                               ; preds = %49, %46
  %52 = load i64, i64* %16, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %73

54:                                               ; preds = %51
  %55 = load i32, i32* %9, align 4
  %56 = load i32*, i32** %19, align 8
  %57 = load i32, i32* %10, align 4
  %58 = call i64 @krb5_cc_initialize(i32 %55, i32* %56, i32 %57)
  store i64 %58, i64* %16, align 8
  %59 = load i64, i64* %16, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %54
  %62 = load i32, i32* %9, align 4
  %63 = load i32*, i32** %19, align 8
  %64 = call i64 @krb5_cc_store_cred(i32 %62, i32* %63, i32* %15)
  store i64 %64, i64* %16, align 8
  br label %65

65:                                               ; preds = %61, %54
  %66 = load i32*, i32** %11, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load i32, i32* %9, align 4
  %70 = load i32*, i32** %19, align 8
  %71 = call i32 @krb5_cc_close(i32 %69, i32* %70)
  br label %72

72:                                               ; preds = %68, %65
  br label %73

73:                                               ; preds = %72, %51
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @krb5_free_cred_contents(i32 %74, i32* %15)
  %76 = load i64, i64* %16, align 8
  store i64 %76, i64* %8, align 8
  br label %77

77:                                               ; preds = %73, %41, %26
  %78 = load i64, i64* %8, align 8
  ret i64 %78
}

declare dso_local i64 @krb5_sname_to_principal(i32, i32*, i8*, i32, i32*) #1

declare dso_local i32 @krb5_verify_init_creds_opt_init(i32*) #1

declare dso_local i32 @krb5_verify_init_creds_opt_set_ap_req_nofail(i32*, i32) #1

declare dso_local i64 @krb5_verify_init_creds(i32, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @krb5_free_principal(i32, i32) #1

declare dso_local i64 @krb5_cc_default(i32, i32**) #1

declare dso_local i64 @krb5_cc_initialize(i32, i32*, i32) #1

declare dso_local i64 @krb5_cc_store_cred(i32, i32*, i32*) #1

declare dso_local i32 @krb5_cc_close(i32, i32*) #1

declare dso_local i32 @krb5_free_cred_contents(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
