; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/pkcs12/extr_p12_add.c_PKCS12_item_pack_safebag.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/pkcs12/extr_p12_add.c_PKCS12_item_pack_safebag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_10__, i8* }
%struct.TYPE_10__ = type { i32 }

@PKCS12_F_PKCS12_ITEM_PACK_SAFEBAG = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @PKCS12_item_pack_safebag(i8* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = call %struct.TYPE_12__* (...) @PKCS12_BAGS_new()
  store %struct.TYPE_12__* %12, %struct.TYPE_12__** %10, align 8
  %13 = icmp eq %struct.TYPE_12__* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load i32, i32* @PKCS12_F_PKCS12_ITEM_PACK_SAFEBAG, align 4
  %16 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %17 = call i32 @PKCS12err(i32 %15, i32 %16)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  br label %54

18:                                               ; preds = %4
  %19 = load i32, i32* %8, align 4
  %20 = call i8* @OBJ_nid2obj(i32 %19)
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 1
  store i8* %20, i8** %22, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = call i32 @ASN1_item_pack(i8* %23, i32* %24, i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %18
  %31 = load i32, i32* @PKCS12_F_PKCS12_ITEM_PACK_SAFEBAG, align 4
  %32 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %33 = call i32 @PKCS12err(i32 %31, i32 %32)
  br label %51

34:                                               ; preds = %18
  %35 = call %struct.TYPE_11__* (...) @PKCS12_SAFEBAG_new()
  store %struct.TYPE_11__* %35, %struct.TYPE_11__** %11, align 8
  %36 = icmp eq %struct.TYPE_11__* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32, i32* @PKCS12_F_PKCS12_ITEM_PACK_SAFEBAG, align 4
  %39 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %40 = call i32 @PKCS12err(i32 %38, i32 %39)
  br label %51

41:                                               ; preds = %34
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  store %struct.TYPE_12__* %42, %struct.TYPE_12__** %45, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i8* @OBJ_nid2obj(i32 %46)
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  store %struct.TYPE_11__* %50, %struct.TYPE_11__** %5, align 8
  br label %54

51:                                               ; preds = %37, %30
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %53 = call i32 @PKCS12_BAGS_free(%struct.TYPE_12__* %52)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  br label %54

54:                                               ; preds = %51, %41, %14
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  ret %struct.TYPE_11__* %55
}

declare dso_local %struct.TYPE_12__* @PKCS12_BAGS_new(...) #1

declare dso_local i32 @PKCS12err(i32, i32) #1

declare dso_local i8* @OBJ_nid2obj(i32) #1

declare dso_local i32 @ASN1_item_pack(i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_11__* @PKCS12_SAFEBAG_new(...) #1

declare dso_local i32 @PKCS12_BAGS_free(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
