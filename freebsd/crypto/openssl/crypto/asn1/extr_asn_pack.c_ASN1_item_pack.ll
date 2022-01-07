; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_asn_pack.c_ASN1_item_pack.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_asn_pack.c_ASN1_item_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32 }

@ASN1_F_ASN1_ITEM_PACK = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@ASN1_R_ENCODE_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @ASN1_item_pack(i8* %0, i32* %1, %struct.TYPE_6__** %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__**, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_6__** %2, %struct.TYPE_6__*** %7, align 8
  %9 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %10 = icmp eq %struct.TYPE_6__** %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = icmp eq %struct.TYPE_6__* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %11, %3
  %16 = call %struct.TYPE_6__* (...) @ASN1_STRING_new()
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %8, align 8
  %17 = icmp eq %struct.TYPE_6__* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i32, i32* @ASN1_F_ASN1_ITEM_PACK, align 4
  %20 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %21 = call i32 @ASN1err(i32 %19, i32 %20)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %77

22:                                               ; preds = %15
  br label %26

23:                                               ; preds = %11
  %24 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  store %struct.TYPE_6__* %25, %struct.TYPE_6__** %8, align 8
  br label %26

26:                                               ; preds = %23, %22
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @OPENSSL_free(i32* %29)
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i32* null, i32** %32, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @ASN1_item_i2d(i8* %33, i32** %35, i32* %36)
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = icmp eq i32 %37, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %26
  %42 = load i32, i32* @ASN1_F_ASN1_ITEM_PACK, align 4
  %43 = load i32, i32* @ASN1_R_ENCODE_ERROR, align 4
  %44 = call i32 @ASN1err(i32 %42, i32 %43)
  br label %66

45:                                               ; preds = %26
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i32, i32* @ASN1_F_ASN1_ITEM_PACK, align 4
  %52 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %53 = call i32 @ASN1err(i32 %51, i32 %52)
  br label %66

54:                                               ; preds = %45
  %55 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %56 = icmp ne %struct.TYPE_6__** %55, null
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = icmp eq %struct.TYPE_6__* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %63 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  store %struct.TYPE_6__* %62, %struct.TYPE_6__** %63, align 8
  br label %64

64:                                               ; preds = %61, %57, %54
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %65, %struct.TYPE_6__** %4, align 8
  br label %77

66:                                               ; preds = %50, %41
  %67 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %68 = icmp eq %struct.TYPE_6__** %67, null
  br i1 %68, label %73, label %69

69:                                               ; preds = %66
  %70 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = icmp eq %struct.TYPE_6__* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %69, %66
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %75 = call i32 @ASN1_STRING_free(%struct.TYPE_6__* %74)
  br label %76

76:                                               ; preds = %73, %69
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %77

77:                                               ; preds = %76, %64, %18
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  ret %struct.TYPE_6__* %78
}

declare dso_local %struct.TYPE_6__* @ASN1_STRING_new(...) #1

declare dso_local i32 @ASN1err(i32, i32) #1

declare dso_local i32 @OPENSSL_free(i32*) #1

declare dso_local i32 @ASN1_item_i2d(i8*, i32**, i32*) #1

declare dso_local i32 @ASN1_STRING_free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
