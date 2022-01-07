; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_extra.c_decode_heim_any.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_extra.c_decode_heim_any.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32* }

@ASN1_OVERFLOW = common dso_local global i32 0, align 4
@ASN1_INDEFINITE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @decode_heim_any(i8* %0, i64 %1, %struct.TYPE_4__* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %8, align 8
  store i64* %3, i64** %9, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %18 = call i32 @memset(%struct.TYPE_4__* %17, i32 0, i32 16)
  %19 = load i8*, i8** %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @der_get_tag(i8* %19, i64 %20, i32* %13, i32* %14, i32* %15, i64* %12)
  store i32 %21, i32* %16, align 4
  %22 = load i32, i32* %16, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* %16, align 4
  store i32 %25, i32* %5, align 4
  br label %116

26:                                               ; preds = %4
  %27 = load i64, i64* %12, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp ugt i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @ASN1_OVERFLOW, align 4
  store i32 %31, i32* %5, align 4
  br label %116

32:                                               ; preds = %26
  %33 = load i8*, i8** %6, align 8
  %34 = load i64, i64* %12, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* %12, align 8
  %38 = sub i64 %36, %37
  %39 = call i32 @der_get_length(i8* %35, i64 %38, i64* %11, i64* %10)
  store i32 %39, i32* %16, align 4
  %40 = load i32, i32* %16, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  %43 = load i32, i32* %16, align 4
  store i32 %43, i32* %5, align 4
  br label %116

44:                                               ; preds = %32
  %45 = load i64, i64* %11, align 8
  %46 = load i64, i64* @ASN1_INDEFINITE, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %62

48:                                               ; preds = %44
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* %10, align 8
  %51 = load i64, i64* %12, align 8
  %52 = add i64 %50, %51
  %53 = icmp ult i64 %49, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* @ASN1_OVERFLOW, align 4
  store i32 %55, i32* %5, align 4
  br label %116

56:                                               ; preds = %48
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* %10, align 8
  %59 = load i64, i64* %12, align 8
  %60 = add i64 %58, %59
  %61 = sub i64 %57, %60
  store i64 %61, i64* %11, align 8
  br label %73

62:                                               ; preds = %44
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* %11, align 8
  %65 = load i64, i64* %10, align 8
  %66 = add i64 %64, %65
  %67 = load i64, i64* %12, align 8
  %68 = add i64 %66, %67
  %69 = icmp ult i64 %63, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %62
  %71 = load i32, i32* @ASN1_OVERFLOW, align 4
  store i32 %71, i32* %5, align 4
  br label %116

72:                                               ; preds = %62
  br label %73

73:                                               ; preds = %72, %56
  %74 = load i64, i64* %11, align 8
  %75 = load i64, i64* %10, align 8
  %76 = add i64 %74, %75
  %77 = load i64, i64* %12, align 8
  %78 = add i64 %76, %77
  %79 = call i32* @malloc(i64 %78)
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  store i32* %79, i32** %81, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %73
  %87 = load i32, i32* @ENOMEM, align 4
  store i32 %87, i32* %5, align 4
  br label %116

88:                                               ; preds = %73
  %89 = load i64, i64* %11, align 8
  %90 = load i64, i64* %10, align 8
  %91 = add i64 %89, %90
  %92 = load i64, i64* %12, align 8
  %93 = add i64 %91, %92
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = load i8*, i8** %6, align 8
  %100 = load i64, i64* %11, align 8
  %101 = load i64, i64* %10, align 8
  %102 = add i64 %100, %101
  %103 = load i64, i64* %12, align 8
  %104 = add i64 %102, %103
  %105 = call i32 @memcpy(i32* %98, i8* %99, i64 %104)
  %106 = load i64*, i64** %9, align 8
  %107 = icmp ne i64* %106, null
  br i1 %107, label %108, label %115

108:                                              ; preds = %88
  %109 = load i64, i64* %11, align 8
  %110 = load i64, i64* %10, align 8
  %111 = add i64 %109, %110
  %112 = load i64, i64* %12, align 8
  %113 = add i64 %111, %112
  %114 = load i64*, i64** %9, align 8
  store i64 %113, i64* %114, align 8
  br label %115

115:                                              ; preds = %108, %88
  store i32 0, i32* %5, align 4
  br label %116

116:                                              ; preds = %115, %86, %70, %54, %42, %30, %24
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @der_get_tag(i8*, i64, i32*, i32*, i32*, i64*) #1

declare dso_local i32 @der_get_length(i8*, i64, i64*, i64*) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
