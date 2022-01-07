; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ts/extr_ts_rsp_sign.c_ts_TST_INFO_content_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ts/extr_ts_rsp_sign.c_ts_TST_INFO_content_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32* }

@NID_id_smime_ct_TSTInfo = common dso_local global i32 0, align 4
@V_ASN1_OCTET_STRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @ts_TST_INFO_content_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ts_TST_INFO_content_new(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  store i32* null, i32** %5, align 8
  %6 = call %struct.TYPE_9__* (...) @PKCS7_new()
  store %struct.TYPE_9__* %6, %struct.TYPE_9__** %4, align 8
  %7 = icmp eq %struct.TYPE_9__* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %38

9:                                                ; preds = %1
  %10 = call i32* (...) @ASN1_TYPE_new()
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  store i32* %10, i32** %13, align 8
  %14 = icmp eq i32* %10, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  br label %38

16:                                               ; preds = %9
  %17 = load i32, i32* @NID_id_smime_ct_TSTInfo, align 4
  %18 = call i32 @OBJ_nid2obj(i32 %17)
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  %21 = call i32* (...) @ASN1_OCTET_STRING_new()
  store i32* %21, i32** %5, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %38

24:                                               ; preds = %16
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* @V_ASN1_OCTET_STRING, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @ASN1_TYPE_set(i32* %28, i32 %29, i32* %30)
  store i32* null, i32** %5, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %34 = call i32 @PKCS7_set_content(%struct.TYPE_9__* %32, %struct.TYPE_9__* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %24
  br label %38

37:                                               ; preds = %24
  store i32 1, i32* %2, align 4
  br label %43

38:                                               ; preds = %36, %23, %15, %8
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @ASN1_OCTET_STRING_free(i32* %39)
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %42 = call i32 @PKCS7_free(%struct.TYPE_9__* %41)
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %38, %37
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.TYPE_9__* @PKCS7_new(...) #1

declare dso_local i32* @ASN1_TYPE_new(...) #1

declare dso_local i32 @OBJ_nid2obj(i32) #1

declare dso_local i32* @ASN1_OCTET_STRING_new(...) #1

declare dso_local i32 @ASN1_TYPE_set(i32*, i32, i32*) #1

declare dso_local i32 @PKCS7_set_content(%struct.TYPE_9__*, %struct.TYPE_9__*) #1

declare dso_local i32 @ASN1_OCTET_STRING_free(i32*) #1

declare dso_local i32 @PKCS7_free(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
