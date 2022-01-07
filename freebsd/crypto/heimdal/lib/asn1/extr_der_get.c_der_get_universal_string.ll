; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_der_get.c_der_get_universal_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_der_get.c_der_get_universal_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8* }

@ASN1_BAD_FORMAT = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ASN1_BAD_CHARACTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @der_get_universal_string(i8* %0, i64 %1, %struct.TYPE_3__* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %8, align 8
  store i64* %3, i64** %9, align 8
  %11 = load i64, i64* %7, align 8
  %12 = and i64 %11, 3
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = load i32, i32* @ASN1_BAD_FORMAT, align 4
  store i32 %15, i32* %5, align 4
  br label %124

16:                                               ; preds = %4
  %17 = load i64, i64* %7, align 8
  %18 = udiv i64 %17, 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* @UINT_MAX, align 4
  %25 = sext i32 %24 to i64
  %26 = udiv i64 %25, 1
  %27 = icmp ugt i64 %23, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %16
  %29 = load i32, i32* @ERANGE, align 4
  store i32 %29, i32* %5, align 4
  br label %124

30:                                               ; preds = %16
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = mul i64 %33, 1
  %35 = trunc i64 %34 to i32
  %36 = call i8* @malloc(i32 %35)
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %50

43:                                               ; preds = %30
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* @ENOMEM, align 4
  store i32 %49, i32* %5, align 4
  br label %124

50:                                               ; preds = %43, %30
  store i64 0, i64* %10, align 8
  br label %51

51:                                               ; preds = %114, %50
  %52 = load i64, i64* %10, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ult i64 %52, %55
  br i1 %56, label %57, label %117

57:                                               ; preds = %51
  %58 = load i8*, i8** %6, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = shl i32 %61, 24
  %63 = load i8*, i8** %6, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 1
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = shl i32 %66, 16
  %68 = or i32 %62, %67
  %69 = load i8*, i8** %6, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 2
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = shl i32 %72, 8
  %74 = or i32 %68, %73
  %75 = load i8*, i8** %6, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 3
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = or i32 %74, %78
  %80 = trunc i32 %79 to i8
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i8*, i8** %82, align 8
  %84 = load i64, i64* %10, align 8
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  store i8 %80, i8* %85, align 1
  %86 = load i8*, i8** %6, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 4
  store i8* %87, i8** %6, align 8
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = load i64, i64* %10, align 8
  %92 = getelementptr inbounds i8, i8* %90, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %113

96:                                               ; preds = %57
  %97 = load i64, i64* %10, align 8
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = sub i64 %100, 1
  %102 = icmp ne i64 %97, %101
  br i1 %102, label %103, label %113

103:                                              ; preds = %96
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @free(i8* %106)
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 1
  store i8* null, i8** %109, align 8
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  store i64 0, i64* %111, align 8
  %112 = load i32, i32* @ASN1_BAD_CHARACTER, align 4
  store i32 %112, i32* %5, align 4
  br label %124

113:                                              ; preds = %96, %57
  br label %114

114:                                              ; preds = %113
  %115 = load i64, i64* %10, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %10, align 8
  br label %51

117:                                              ; preds = %51
  %118 = load i64*, i64** %9, align 8
  %119 = icmp ne i64* %118, null
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load i64, i64* %7, align 8
  %122 = load i64*, i64** %9, align 8
  store i64 %121, i64* %122, align 8
  br label %123

123:                                              ; preds = %120, %117
  store i32 0, i32* %5, align 4
  br label %124

124:                                              ; preds = %123, %103, %48, %28, %14
  %125 = load i32, i32* %5, align 4
  ret i32 %125
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
