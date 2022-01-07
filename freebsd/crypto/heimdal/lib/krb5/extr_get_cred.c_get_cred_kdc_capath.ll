; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_get_cred.c_get_cred_kdc_capath.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_get_cred.c_get_cred_kdc_capath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }

@KRB5KDC_ERR_S_PRINCIPAL_UNKNOWN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"capaths\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i32, %struct.TYPE_8__*, i32, i32*, %struct.TYPE_8__**, %struct.TYPE_8__***)* @get_cred_kdc_capath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_cred_kdc_capath(i32 %0, i32 %1, i32 %2, %struct.TYPE_8__* %3, i32 %4, i32* %5, %struct.TYPE_8__** %6, %struct.TYPE_8__*** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_8__**, align 8
  %16 = alloca %struct.TYPE_8__***, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store %struct.TYPE_8__** %6, %struct.TYPE_8__*** %15, align 8
  store %struct.TYPE_8__*** %7, %struct.TYPE_8__**** %16, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32* @krb5_principal_get_realm(i32 %21, i32 %24)
  store i32* %25, i32** %18, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32* @krb5_principal_get_realm(i32 %26, i32 %29)
  store i32* %30, i32** %19, align 8
  %31 = load i32*, i32** %18, align 8
  store i32* %31, i32** %20, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %36 = load i32*, i32** %20, align 8
  %37 = load i32, i32* %13, align 4
  %38 = load i32*, i32** %14, align 8
  %39 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %15, align 8
  %40 = load %struct.TYPE_8__***, %struct.TYPE_8__**** %16, align 8
  %41 = call i64 @get_cred_kdc_capath_worker(i32 %32, i32 %33, i32 %34, %struct.TYPE_8__* %35, i32* %36, i32 %37, i32* %38, %struct.TYPE_8__** %39, %struct.TYPE_8__*** %40)
  store i64 %41, i64* %17, align 8
  %42 = load i64, i64* %17, align 8
  %43 = load i64, i64* @KRB5KDC_ERR_S_PRINCIPAL_UNKNOWN, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %69

45:                                               ; preds = %8
  %46 = load i32, i32* %9, align 4
  %47 = load i32*, i32** %18, align 8
  %48 = load i32*, i32** %19, align 8
  %49 = call i32* @krb5_config_get_string(i32 %46, i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %47, i32* %48, i32* null)
  store i32* %49, i32** %20, align 8
  %50 = load i32*, i32** %20, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %68

52:                                               ; preds = %45
  %53 = load i32*, i32** %20, align 8
  %54 = load i32*, i32** %18, align 8
  %55 = call i64 @strcmp(i32* %53, i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %52
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %62 = load i32*, i32** %20, align 8
  %63 = load i32, i32* %13, align 4
  %64 = load i32*, i32** %14, align 8
  %65 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %15, align 8
  %66 = load %struct.TYPE_8__***, %struct.TYPE_8__**** %16, align 8
  %67 = call i64 @get_cred_kdc_capath_worker(i32 %58, i32 %59, i32 %60, %struct.TYPE_8__* %61, i32* %62, i32 %63, i32* %64, %struct.TYPE_8__** %65, %struct.TYPE_8__*** %66)
  store i64 %67, i64* %17, align 8
  br label %68

68:                                               ; preds = %57, %52, %45
  br label %69

69:                                               ; preds = %68, %8
  %70 = load i64, i64* %17, align 8
  ret i64 %70
}

declare dso_local i32* @krb5_principal_get_realm(i32, i32) #1

declare dso_local i64 @get_cred_kdc_capath_worker(i32, i32, i32, %struct.TYPE_8__*, i32*, i32, i32*, %struct.TYPE_8__**, %struct.TYPE_8__***) #1

declare dso_local i32* @krb5_config_get_string(i32, i32*, i8*, i32*, i32*, i32*) #1

declare dso_local i64 @strcmp(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
