; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_get_cred.c__krb5_get_cred_kdc_any.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_get_cred.c__krb5_get_cred_kdc_any.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_krb5_get_cred_kdc_any(%struct.TYPE_13__* %0, i64 %1, i32 %2, i32* %3, i32 %4, i32* %5, i32** %6, i32*** %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_12__, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32**, align 8
  %17 = alloca i32***, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  store i64 %1, i64* %21, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i32** %6, i32*** %16, align 8
  store i32*** %7, i32**** %17, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %23 = load i32, i32* %12, align 4
  %24 = call i64 @krb5_cc_get_kdc_offset(%struct.TYPE_13__* %22, i32 %23, i32* %19)
  store i64 %24, i64* %18, align 8
  %25 = load i64, i64* %18, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %8
  %28 = load i32, i32* %19, align 4
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  br label %33

33:                                               ; preds = %27, %8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %35 = load i32, i32* %12, align 4
  %36 = load i32*, i32** %13, align 8
  %37 = load i32, i32* %14, align 4
  %38 = load i32*, i32** %15, align 8
  %39 = load i32**, i32*** %16, align 8
  %40 = load i32***, i32**** %17, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @get_cred_kdc_referral(%struct.TYPE_13__* %34, i64 %43, i32 %35, i32* %36, i32 %37, i32* %38, i32** %39, i32*** %40)
  store i64 %44, i64* %18, align 8
  %45 = load i64, i64* %18, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %33
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47, %33
  %53 = load i64, i64* %18, align 8
  store i64 %53, i64* %9, align 8
  br label %66

54:                                               ; preds = %47
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %56 = load i32, i32* %12, align 4
  %57 = load i32*, i32** %13, align 8
  %58 = load i32, i32* %14, align 4
  %59 = load i32*, i32** %15, align 8
  %60 = load i32**, i32*** %16, align 8
  %61 = load i32***, i32**** %17, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i64 @get_cred_kdc_capath(%struct.TYPE_13__* %55, i64 %64, i32 %56, i32* %57, i32 %58, i32* %59, i32** %60, i32*** %61)
  store i64 %65, i64* %9, align 8
  br label %66

66:                                               ; preds = %54, %52
  %67 = load i64, i64* %9, align 8
  ret i64 %67
}

declare dso_local i64 @krb5_cc_get_kdc_offset(%struct.TYPE_13__*, i32, i32*) #1

declare dso_local i64 @get_cred_kdc_referral(%struct.TYPE_13__*, i64, i32, i32*, i32, i32*, i32**, i32***) #1

declare dso_local i64 @get_cred_kdc_capath(%struct.TYPE_13__*, i64, i32, i32*, i32, i32*, i32**, i32***) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
