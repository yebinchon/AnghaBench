; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kuser/extr_klist.c_check_for_tgt.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kuser/extr_klist.c_check_for_tgt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i64 }

@KRB5_TGS_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"krb5_make_principal\00", align 1
@KRB5_CC_END = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"krb5_cc_retrieve_cred\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i64*)* @check_for_tgt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_for_tgt(i32 %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_8__, align 8
  %12 = alloca %struct.TYPE_8__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %15 = call i32 @krb5_cc_clear_mcred(%struct.TYPE_8__* %11)
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @krb5_principal_get_realm(i32 %16, i32 %17)
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %6, align 4
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* @KRB5_TGS_NAME, align 4
  %23 = load i32, i32* %13, align 4
  %24 = call i64 @krb5_make_principal(i32 %19, i32* %20, i32 %21, i32 %22, i32 %23, i32* null)
  store i64 %24, i64* %10, align 8
  %25 = load i64, i64* %10, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %4
  %28 = load i32, i32* %6, align 4
  %29 = load i64, i64* %10, align 8
  %30 = call i32 @krb5_err(i32 %28, i32 1, i64 %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %27, %4
  %32 = load i32, i32* %8, align 4
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 2
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i64 @krb5_cc_retrieve_cred(i32 %34, i32 %35, i32 0, %struct.TYPE_8__* %11, %struct.TYPE_8__* %12)
  store i64 %36, i64* %10, align 8
  %37 = load i32, i32* %6, align 4
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @krb5_free_principal(i32 %37, i32 %39)
  %41 = load i64, i64* %10, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %31
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* @KRB5_CC_END, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 1, i32* %5, align 4
  br label %70

48:                                               ; preds = %43
  %49 = load i32, i32* %6, align 4
  %50 = load i64, i64* %10, align 8
  %51 = call i32 @krb5_err(i32 %49, i32 1, i64 %50, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %52

52:                                               ; preds = %48, %31
  %53 = call i64 @time(i32* null)
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp sgt i64 %53, %56
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %14, align 4
  %59 = load i64*, i64** %9, align 8
  %60 = icmp ne i64* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %52
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64*, i64** %9, align 8
  store i64 %64, i64* %65, align 8
  br label %66

66:                                               ; preds = %61, %52
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @krb5_free_cred_contents(i32 %67, %struct.TYPE_8__* %12)
  %69 = load i32, i32* %14, align 4
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %66, %47
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i32 @krb5_cc_clear_mcred(%struct.TYPE_8__*) #1

declare dso_local i32 @krb5_principal_get_realm(i32, i32) #1

declare dso_local i64 @krb5_make_principal(i32, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @krb5_err(i32, i32, i64, i8*) #1

declare dso_local i64 @krb5_cc_retrieve_cred(i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_8__*) #1

declare dso_local i32 @krb5_free_principal(i32, i32) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @krb5_free_cred_contents(i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
