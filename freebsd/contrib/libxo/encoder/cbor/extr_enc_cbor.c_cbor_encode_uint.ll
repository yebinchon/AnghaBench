; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libxo/encoder/cbor/extr_enc_cbor.c_cbor_encode_uint.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libxo/encoder/cbor/extr_enc_cbor.c_cbor_encode_uint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@CBOR_LEN64 = common dso_local global i32 0, align 4
@CBOR_LEN32 = common dso_local global i32 0, align 4
@CBOR_LEN16 = common dso_local global i32 0, align 4
@CBOR_LEN8 = common dso_local global i32 0, align 4
@CBOR_MINOR_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i64, i32)* @cbor_encode_uint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cbor_encode_uint(%struct.TYPE_3__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %7, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp ugt i64 %13, 4294967296
  br i1 %14, label %15, label %23

15:                                               ; preds = %3
  %16 = load i32, i32* @CBOR_LEN64, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %7, align 8
  %19 = load i8, i8* %17, align 1
  %20 = sext i8 %19 to i32
  %21 = or i32 %20, %16
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %17, align 1
  store i32 64, i32* %9, align 4
  br label %71

23:                                               ; preds = %3
  %24 = load i64, i64* %5, align 8
  %25 = icmp ugt i64 %24, 65536
  br i1 %25, label %26, label %34

26:                                               ; preds = %23
  %27 = load i32, i32* @CBOR_LEN32, align 4
  %28 = load i8*, i8** %7, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %7, align 8
  %30 = load i8, i8* %28, align 1
  %31 = sext i8 %30 to i32
  %32 = or i32 %31, %27
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %28, align 1
  store i32 32, i32* %9, align 4
  br label %70

34:                                               ; preds = %23
  %35 = load i64, i64* %5, align 8
  %36 = icmp ugt i64 %35, 256
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = load i32, i32* @CBOR_LEN16, align 4
  %39 = load i8*, i8** %7, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %7, align 8
  %41 = load i8, i8* %39, align 1
  %42 = sext i8 %41 to i32
  %43 = or i32 %42, %38
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %39, align 1
  store i32 16, i32* %9, align 4
  br label %69

45:                                               ; preds = %34
  %46 = load i64, i64* %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = zext i32 %47 to i64
  %49 = icmp ugt i64 %46, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load i32, i32* @CBOR_LEN8, align 4
  %52 = load i8*, i8** %7, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %7, align 8
  %54 = load i8, i8* %52, align 1
  %55 = sext i8 %54 to i32
  %56 = or i32 %55, %51
  %57 = trunc i32 %56 to i8
  store i8 %57, i8* %52, align 1
  store i32 8, i32* %9, align 4
  br label %68

58:                                               ; preds = %45
  %59 = load i64, i64* %5, align 8
  %60 = load i64, i64* @CBOR_MINOR_MASK, align 8
  %61 = and i64 %59, %60
  %62 = load i8*, i8** %7, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %7, align 8
  %64 = load i8, i8* %62, align 1
  %65 = sext i8 %64 to i64
  %66 = or i64 %65, %61
  %67 = trunc i64 %66 to i8
  store i8 %67, i8* %62, align 1
  store i32 0, i32* %9, align 4
  br label %68

68:                                               ; preds = %58, %50
  br label %69

69:                                               ; preds = %68, %37
  br label %70

70:                                               ; preds = %69, %26
  br label %71

71:                                               ; preds = %70, %15
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %92

74:                                               ; preds = %71
  %75 = load i32, i32* %9, align 4
  %76 = sub nsw i32 %75, 8
  store i32 %76, i32* %8, align 4
  br label %77

77:                                               ; preds = %88, %74
  %78 = load i32, i32* %8, align 4
  %79 = icmp sge i32 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %77
  %81 = load i64, i64* %5, align 8
  %82 = load i32, i32* %8, align 4
  %83 = zext i32 %82 to i64
  %84 = lshr i64 %81, %83
  %85 = trunc i64 %84 to i8
  %86 = load i8*, i8** %7, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %7, align 8
  store i8 %85, i8* %86, align 1
  br label %88

88:                                               ; preds = %80
  %89 = load i32, i32* %8, align 4
  %90 = sub nsw i32 %89, 8
  store i32 %90, i32* %8, align 4
  br label %77

91:                                               ; preds = %77
  br label %92

92:                                               ; preds = %91, %71
  %93 = load i8*, i8** %7, align 8
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  store i8* %93, i8** %95, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
