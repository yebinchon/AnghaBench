; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_der_put.c_der_put_heim_integer.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_der_put.c_der_put_heim_integer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i64, i64 }

@ASN1_OVERFLOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @der_put_heim_integer(i8* %0, i64 %1, %struct.TYPE_3__* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %8, align 8
  store i64* %3, i64** %9, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %10, align 8
  store i32 0, i32* %11, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %4
  %22 = load i64, i64* %7, align 8
  %23 = icmp ult i64 %22, 1
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32, i32* @ASN1_OVERFLOW, align 4
  store i32 %25, i32* %5, align 4
  br label %145

26:                                               ; preds = %21
  %27 = load i8*, i8** %6, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 -1
  store i8* %28, i8** %6, align 8
  store i8 0, i8* %27, align 1
  %29 = load i64*, i64** %9, align 8
  %30 = icmp ne i64* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i64*, i64** %9, align 8
  store i64 1, i64* %32, align 8
  br label %33

33:                                               ; preds = %31, %26
  store i32 0, i32* %5, align 4
  br label %145

34:                                               ; preds = %4
  %35 = load i64, i64* %7, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ult i64 %35, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @ASN1_OVERFLOW, align 4
  store i32 %41, i32* %5, align 4
  br label %145

42:                                               ; preds = %34
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %7, align 8
  %47 = sub i64 %46, %45
  store i64 %47, i64* %7, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %103

52:                                               ; preds = %42
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = sub i64 %55, 1
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %12, align 4
  store i32 1, i32* %13, align 4
  br label %58

58:                                               ; preds = %83, %52
  %59 = load i32, i32* %12, align 4
  %60 = icmp sge i32 %59, 0
  br i1 %60, label %61, label %86

61:                                               ; preds = %58
  %62 = load i8*, i8** %10, align 8
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = xor i32 %67, 255
  %69 = trunc i32 %68 to i8
  %70 = load i8*, i8** %6, align 8
  store i8 %69, i8* %70, align 1
  %71 = load i32, i32* %13, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %61
  %74 = load i8*, i8** %6, align 8
  %75 = load i8, i8* %74, align 1
  %76 = add i8 %75, 1
  store i8 %76, i8* %74, align 1
  %77 = icmp ne i8 %76, 0
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  store i32 %79, i32* %13, align 4
  br label %80

80:                                               ; preds = %73, %61
  %81 = load i8*, i8** %6, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 -1
  store i8* %82, i8** %6, align 8
  br label %83

83:                                               ; preds = %80
  %84 = load i32, i32* %12, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %12, align 4
  br label %58

86:                                               ; preds = %58
  %87 = load i8*, i8** %6, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 1
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = icmp slt i32 %90, 128
  br i1 %91, label %92, label %102

92:                                               ; preds = %86
  %93 = load i64, i64* %7, align 8
  %94 = icmp ult i64 %93, 1
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  %96 = load i32, i32* @ASN1_OVERFLOW, align 4
  store i32 %96, i32* %5, align 4
  br label %145

97:                                               ; preds = %92
  %98 = load i8*, i8** %6, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 -1
  store i8* %99, i8** %6, align 8
  store i8 -1, i8* %98, align 1
  %100 = load i64, i64* %7, align 8
  %101 = add i64 %100, -1
  store i64 %101, i64* %7, align 8
  store i32 1, i32* %11, align 4
  br label %102

102:                                              ; preds = %97, %86
  br label %133

103:                                              ; preds = %42
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i8*, i8** %6, align 8
  %108 = sub i64 0, %106
  %109 = getelementptr inbounds i8, i8* %107, i64 %108
  store i8* %109, i8** %6, align 8
  %110 = load i8*, i8** %6, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 1
  %112 = load i8*, i8** %10, align 8
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @memcpy(i8* %111, i8* %112, i64 %115)
  %117 = load i8*, i8** %6, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 1
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i32
  %121 = icmp sge i32 %120, 128
  br i1 %121, label %122, label %132

122:                                              ; preds = %103
  %123 = load i64, i64* %7, align 8
  %124 = icmp ult i64 %123, 1
  br i1 %124, label %125, label %127

125:                                              ; preds = %122
  %126 = load i32, i32* @ASN1_OVERFLOW, align 4
  store i32 %126, i32* %5, align 4
  br label %145

127:                                              ; preds = %122
  %128 = load i8*, i8** %6, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 0
  store i8 0, i8* %129, align 1
  %130 = load i64, i64* %7, align 8
  %131 = add i64 %130, -1
  store i64 %131, i64* %7, align 8
  store i32 1, i32* %11, align 4
  br label %132

132:                                              ; preds = %127, %103
  br label %133

133:                                              ; preds = %132, %102
  %134 = load i64*, i64** %9, align 8
  %135 = icmp ne i64* %134, null
  br i1 %135, label %136, label %144

136:                                              ; preds = %133
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load i32, i32* %11, align 4
  %141 = sext i32 %140 to i64
  %142 = add i64 %139, %141
  %143 = load i64*, i64** %9, align 8
  store i64 %142, i64* %143, align 8
  br label %144

144:                                              ; preds = %136, %133
  store i32 0, i32* %5, align 4
  br label %145

145:                                              ; preds = %144, %125, %95, %40, %33, %24
  %146 = load i32, i32* %5, align 4
  ret i32 %146
}

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
