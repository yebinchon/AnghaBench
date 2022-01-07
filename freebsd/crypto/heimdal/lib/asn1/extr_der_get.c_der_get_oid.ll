; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_der_get.c_der_get_oid.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_der_get.c_der_get_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i64 }

@ASN1_OVERRUN = common dso_local global i32 0, align 4
@ASN1_BAD_LENGTH = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @der_get_oid(i8* %0, i64 %1, %struct.TYPE_4__* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %8, align 8
  store i64* %3, i64** %9, align 8
  %14 = load i64, i64* %7, align 8
  store i64 %14, i64* %11, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp ult i64 %15, 1
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @ASN1_OVERRUN, align 4
  store i32 %18, i32* %5, align 4
  br label %142

19:                                               ; preds = %4
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* %7, align 8
  %22 = add i64 %21, 1
  %23 = icmp ugt i64 %20, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @ASN1_BAD_LENGTH, align 4
  store i32 %25, i32* %5, align 4
  br label %142

26:                                               ; preds = %19
  %27 = load i64, i64* %7, align 8
  %28 = add i64 %27, 1
  %29 = load i32, i32* @UINT_MAX, align 4
  %30 = sext i32 %29 to i64
  %31 = udiv i64 %30, 1
  %32 = icmp ugt i64 %28, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* @ERANGE, align 4
  store i32 %34, i32* %5, align 4
  br label %142

35:                                               ; preds = %26
  %36 = load i64, i64* %7, align 8
  %37 = add i64 %36, 1
  %38 = mul i64 %37, 1
  %39 = call i8* @malloc(i64 %38)
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %35
  %47 = load i32, i32* @ENOMEM, align 4
  store i32 %47, i32* %5, align 4
  br label %142

48:                                               ; preds = %35
  %49 = load i8*, i8** %6, align 8
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = sdiv i32 %51, 40
  %53 = trunc i32 %52 to i8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  store i8 %53, i8* %57, align 1
  %58 = load i8*, i8** %6, align 8
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = srem i32 %60, 40
  %62 = trunc i32 %61 to i8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  store i8 %62, i8* %66, align 1
  %67 = load i64, i64* %7, align 8
  %68 = add i64 %67, -1
  store i64 %68, i64* %7, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %6, align 8
  store i64 2, i64* %10, align 8
  br label %71

71:                                               ; preds = %115, %48
  %72 = load i64, i64* %7, align 8
  %73 = icmp ugt i64 %72, 0
  br i1 %73, label %74, label %118

74:                                               ; preds = %71
  store i32 0, i32* %12, align 4
  br label %75

75:                                               ; preds = %105, %74
  %76 = load i64, i64* %7, align 8
  %77 = add i64 %76, -1
  store i64 %77, i64* %7, align 8
  %78 = load i32, i32* %12, align 4
  %79 = mul i32 %78, 128
  %80 = load i8*, i8** %6, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %6, align 8
  %82 = load i8, i8* %80, align 1
  %83 = zext i8 %82 to i32
  %84 = srem i32 %83, 128
  %85 = add i32 %79, %84
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* %12, align 4
  %88 = icmp ult i32 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %75
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %91 = call i32 @der_free_oid(%struct.TYPE_4__* %90)
  %92 = load i32, i32* @ASN1_OVERRUN, align 4
  store i32 %92, i32* %5, align 4
  br label %142

93:                                               ; preds = %75
  %94 = load i32, i32* %13, align 4
  store i32 %94, i32* %12, align 4
  br label %95

95:                                               ; preds = %93
  %96 = load i64, i64* %7, align 8
  %97 = icmp ugt i64 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %95
  %99 = load i8*, i8** %6, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 -1
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = and i32 %102, 128
  %104 = icmp ne i32 %103, 0
  br label %105

105:                                              ; preds = %98, %95
  %106 = phi i1 [ false, %95 ], [ %104, %98 ]
  br i1 %106, label %75, label %107

107:                                              ; preds = %105
  %108 = load i32, i32* %12, align 4
  %109 = trunc i32 %108 to i8
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = load i64, i64* %10, align 8
  %114 = getelementptr inbounds i8, i8* %112, i64 %113
  store i8 %109, i8* %114, align 1
  br label %115

115:                                              ; preds = %107
  %116 = load i64, i64* %10, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %10, align 8
  br label %71

118:                                              ; preds = %71
  %119 = load i64, i64* %10, align 8
  %120 = icmp ugt i64 %119, 2
  br i1 %120, label %121, label %132

121:                                              ; preds = %118
  %122 = load i8*, i8** %6, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 -1
  %124 = load i8, i8* %123, align 1
  %125 = zext i8 %124 to i32
  %126 = and i32 %125, 128
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %121
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %130 = call i32 @der_free_oid(%struct.TYPE_4__* %129)
  %131 = load i32, i32* @ASN1_OVERRUN, align 4
  store i32 %131, i32* %5, align 4
  br label %142

132:                                              ; preds = %121, %118
  %133 = load i64, i64* %10, align 8
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 1
  store i64 %133, i64* %135, align 8
  %136 = load i64*, i64** %9, align 8
  %137 = icmp ne i64* %136, null
  br i1 %137, label %138, label %141

138:                                              ; preds = %132
  %139 = load i64, i64* %11, align 8
  %140 = load i64*, i64** %9, align 8
  store i64 %139, i64* %140, align 8
  br label %141

141:                                              ; preds = %138, %132
  store i32 0, i32* %5, align 4
  br label %142

142:                                              ; preds = %141, %128, %89, %46, %33, %24, %17
  %143 = load i32, i32* %5, align 4
  ret i32 %143
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @der_free_oid(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
