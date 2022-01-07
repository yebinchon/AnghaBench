; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_der_get.c_der_get_octet_string_ber.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_der_get.c_der_get_octet_string_ber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@ASN1_C_UNIV = common dso_local global i64 0, align 8
@ASN1_BAD_ID = common dso_local global i32 0, align 4
@PRIM = common dso_local global i64 0, align 8
@UT_EndOfContent = common dso_local global i32 0, align 4
@UT_OctetString = common dso_local global i32 0, align 4
@ASN1_OVERRUN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ASN1_INDEF_OVERRUN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @der_get_octet_string_ber(i8* %0, i64 %1, %struct.TYPE_3__* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32 0, i32* %14, align 4
  %19 = load i64, i64* %7, align 8
  store i64 %19, i64* %17, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i32 0, i32* %21, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  store i32* null, i32** %23, align 8
  br label %24

24:                                               ; preds = %133, %4
  %25 = load i64, i64* %7, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %140

27:                                               ; preds = %24
  %28 = load i8*, i8** %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @der_get_tag(i8* %28, i64 %29, i64* %12, i64* %11, i32* %13, i64* %15)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %154

34:                                               ; preds = %27
  %35 = load i64, i64* %12, align 8
  %36 = load i64, i64* @ASN1_C_UNIV, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @ASN1_BAD_ID, align 4
  store i32 %39, i32* %10, align 4
  br label %154

40:                                               ; preds = %34
  %41 = load i64, i64* %11, align 8
  %42 = load i64, i64* @PRIM, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %40
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* @UT_EndOfContent, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = load i32, i32* %14, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  br label %140

52:                                               ; preds = %48
  %53 = load i32, i32* %14, align 4
  %54 = add i32 %53, -1
  store i32 %54, i32* %14, align 4
  br label %55

55:                                               ; preds = %52, %44, %40
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* @UT_OctetString, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32, i32* @ASN1_BAD_ID, align 4
  store i32 %60, i32* %10, align 4
  br label %154

61:                                               ; preds = %55
  %62 = load i64, i64* %15, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 %62
  store i8* %64, i8** %6, align 8
  %65 = load i64, i64* %15, align 8
  %66 = load i64, i64* %7, align 8
  %67 = sub i64 %66, %65
  store i64 %67, i64* %7, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = load i64, i64* %7, align 8
  %70 = call i32 @der_get_length(i8* %68, i64 %69, i64* %16, i64* %15)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %61
  br label %154

74:                                               ; preds = %61
  %75 = load i64, i64* %15, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 %75
  store i8* %77, i8** %6, align 8
  %78 = load i64, i64* %15, align 8
  %79 = load i64, i64* %7, align 8
  %80 = sub i64 %79, %78
  store i64 %80, i64* %7, align 8
  %81 = load i64, i64* %16, align 8
  %82 = load i64, i64* %7, align 8
  %83 = icmp ugt i64 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %74
  %85 = load i32, i32* @ASN1_OVERRUN, align 4
  store i32 %85, i32* %5, align 4
  br label %164

86:                                               ; preds = %74
  %87 = load i64, i64* %11, align 8
  %88 = load i64, i64* @PRIM, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %130

90:                                               ; preds = %86
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = sext i32 %96 to i64
  %98 = load i64, i64* %16, align 8
  %99 = add i64 %97, %98
  %100 = trunc i64 %99 to i32
  %101 = call i8* @realloc(i32* %93, i32 %100)
  store i8* %101, i8** %18, align 8
  %102 = load i8*, i8** %18, align 8
  %103 = icmp eq i8* %102, null
  br i1 %103, label %104, label %106

104:                                              ; preds = %90
  %105 = load i32, i32* @ENOMEM, align 4
  store i32 %105, i32* %10, align 4
  br label %154

106:                                              ; preds = %90
  %107 = load i8*, i8** %18, align 8
  %108 = bitcast i8* %107 to i32*
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 1
  store i32* %108, i32** %110, align 8
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = bitcast i32* %113 to i8*
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %114, i64 %118
  %120 = load i8*, i8** %6, align 8
  %121 = load i64, i64* %16, align 8
  %122 = call i32 @memcpy(i8* %119, i8* %120, i64 %121)
  %123 = load i64, i64* %16, align 8
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = sext i32 %126 to i64
  %128 = add i64 %127, %123
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %125, align 8
  br label %133

130:                                              ; preds = %86
  %131 = load i32, i32* %14, align 4
  %132 = add i32 %131, 1
  store i32 %132, i32* %14, align 4
  br label %133

133:                                              ; preds = %130, %106
  %134 = load i64, i64* %16, align 8
  %135 = load i8*, i8** %6, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 %134
  store i8* %136, i8** %6, align 8
  %137 = load i64, i64* %16, align 8
  %138 = load i64, i64* %7, align 8
  %139 = sub i64 %138, %137
  store i64 %139, i64* %7, align 8
  br label %24

140:                                              ; preds = %51, %24
  %141 = load i32, i32* %14, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %140
  %144 = load i32, i32* @ASN1_INDEF_OVERRUN, align 4
  store i32 %144, i32* %5, align 4
  br label %164

145:                                              ; preds = %140
  %146 = load i64*, i64** %9, align 8
  %147 = icmp ne i64* %146, null
  br i1 %147, label %148, label %153

148:                                              ; preds = %145
  %149 = load i64, i64* %17, align 8
  %150 = load i64, i64* %7, align 8
  %151 = sub i64 %149, %150
  %152 = load i64*, i64** %9, align 8
  store i64 %151, i64* %152, align 8
  br label %153

153:                                              ; preds = %148, %145
  store i32 0, i32* %5, align 4
  br label %164

154:                                              ; preds = %104, %73, %59, %38, %33
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 1
  %157 = load i32*, i32** %156, align 8
  %158 = call i32 @free(i32* %157)
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 1
  store i32* null, i32** %160, align 8
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 0
  store i32 0, i32* %162, align 8
  %163 = load i32, i32* %10, align 4
  store i32 %163, i32* %5, align 4
  br label %164

164:                                              ; preds = %154, %153, %143, %84
  %165 = load i32, i32* %5, align 4
  ret i32 %165
}

declare dso_local i32 @der_get_tag(i8*, i64, i64*, i64*, i32*, i64*) #1

declare dso_local i32 @der_get_length(i8*, i64, i64*, i64*) #1

declare dso_local i8* @realloc(i32*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
