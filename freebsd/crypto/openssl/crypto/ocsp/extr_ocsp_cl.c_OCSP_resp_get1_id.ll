; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ocsp/extr_ocsp_cl.c_OCSP_resp_get1_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ocsp/extr_ocsp_cl.c_OCSP_resp_get1_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@V_OCSP_RESPID_NAME = common dso_local global i64 0, align 8
@V_OCSP_RESPID_KEY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OCSP_resp_get1_id(%struct.TYPE_9__* %0, i32** %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32** %2, i32*** %7, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %8, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @V_OCSP_RESPID_NAME, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %3
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32* @X509_NAME_dup(i32 %21)
  %23 = load i32**, i32*** %7, align 8
  store i32* %22, i32** %23, align 8
  %24 = load i32**, i32*** %6, align 8
  store i32* null, i32** %24, align 8
  br label %41

25:                                               ; preds = %3
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @V_OCSP_RESPID_KEY, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %25
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32* @ASN1_OCTET_STRING_dup(i32 %35)
  %37 = load i32**, i32*** %6, align 8
  store i32* %36, i32** %37, align 8
  %38 = load i32**, i32*** %7, align 8
  store i32* null, i32** %38, align 8
  br label %40

39:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %51

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40, %17
  %42 = load i32**, i32*** %7, align 8
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load i32**, i32*** %6, align 8
  %47 = load i32*, i32** %46, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %51

50:                                               ; preds = %45, %41
  store i32 1, i32* %4, align 4
  br label %51

51:                                               ; preds = %50, %49, %39
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32* @X509_NAME_dup(i32) #1

declare dso_local i32* @ASN1_OCTET_STRING_dup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
