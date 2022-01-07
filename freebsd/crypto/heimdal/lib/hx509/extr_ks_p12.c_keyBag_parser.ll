; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_ks_p12.c_keyBag_parser.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_ks_p12.c_keyBag_parser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hx509_collector = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@asn1_oid_id_pkcs_9_at_localKeyId = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.hx509_collector*, i8*, i64, i32*)* @keyBag_parser to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keyBag_parser(i32 %0, %struct.hx509_collector* %1, i8* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hx509_collector*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca %struct.TYPE_6__, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.hx509_collector* %1, %struct.hx509_collector** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* null, i32** %14, align 8
  %16 = load i32*, i32** %11, align 8
  %17 = call %struct.TYPE_7__* @find_attribute(i32* %16, i32* @asn1_oid_id_pkcs_9_at_localKeyId)
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %12, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %19 = icmp ne %struct.TYPE_7__* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  store i32* %22, i32** %14, align 8
  br label %23

23:                                               ; preds = %20, %5
  %24 = load i8*, i8** %9, align 8
  %25 = load i64, i64* %10, align 8
  %26 = call i32 @decode_PKCS8PrivateKeyInfo(i8* %24, i64 %25, %struct.TYPE_6__* %13, i32* null)
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %15, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %15, align 4
  store i32 %30, i32* %6, align 4
  br label %39

31:                                               ; preds = %23
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.hx509_collector*, %struct.hx509_collector** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %36 = load i32*, i32** %14, align 8
  %37 = call i32 @_hx509_collector_private_key_add(i32 %32, %struct.hx509_collector* %33, i32* %34, i32* null, i32* %35, i32* %36)
  %38 = call i32 @free_PKCS8PrivateKeyInfo(%struct.TYPE_6__* %13)
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %31, %29
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local %struct.TYPE_7__* @find_attribute(i32*, i32*) #1

declare dso_local i32 @decode_PKCS8PrivateKeyInfo(i8*, i64, %struct.TYPE_6__*, i32*) #1

declare dso_local i32 @_hx509_collector_private_key_add(i32, %struct.hx509_collector*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @free_PKCS8PrivateKeyInfo(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
