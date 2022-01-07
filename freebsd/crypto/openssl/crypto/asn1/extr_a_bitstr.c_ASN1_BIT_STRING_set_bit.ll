; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_a_bitstr.c_ASN1_BIT_STRING_set_bit.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_a_bitstr.c_ASN1_BIT_STRING_set_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i8* }

@ASN1_STRING_FLAG_BITS_LEFT = common dso_local global i32 0, align 4
@ASN1_F_ASN1_BIT_STRING_SET_BIT = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ASN1_BIT_STRING_set_bit(%struct.TYPE_3__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = sdiv i32 %12, 8
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %6, align 4
  %15 = and i32 %14, 7
  %16 = sub nsw i32 7, %15
  %17 = shl i32 1, %16
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = xor i32 %18, -1
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %22, %3
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = icmp eq %struct.TYPE_3__* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %142

27:                                               ; preds = %23
  %28 = load i32, i32* @ASN1_STRING_FLAG_BITS_LEFT, align 4
  %29 = or i32 %28, 7
  %30 = xor i32 %29, -1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 1
  %40 = icmp slt i32 %37, %39
  br i1 %40, label %46, label %41

41:                                               ; preds = %27
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = load i8*, i8** %43, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %96

46:                                               ; preds = %41, %27
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  store i32 1, i32* %4, align 4
  br label %142

50:                                               ; preds = %46
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  %59 = call i8* @OPENSSL_clear_realloc(i8* %53, i32 %56, i32 %58)
  store i8* %59, i8** %11, align 8
  %60 = load i8*, i8** %11, align 8
  %61 = icmp eq i8* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %50
  %63 = load i32, i32* @ASN1_F_ASN1_BIT_STRING_SET_BIT, align 4
  %64 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %65 = call i32 @ASN1err(i32 %63, i32 %64)
  store i32 0, i32* %4, align 4
  br label %142

66:                                               ; preds = %50
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = sub nsw i32 %68, %71
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %88

74:                                               ; preds = %66
  %75 = load i8*, i8** %11, align 8
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %75, i64 %79
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, 1
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = sub nsw i32 %82, %85
  %87 = call i32 @memset(i8* %80, i32 0, i32 %86)
  br label %88

88:                                               ; preds = %74, %66
  %89 = load i8*, i8** %11, align 8
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 2
  store i8* %89, i8** %91, align 8
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, 1
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  br label %96

96:                                               ; preds = %88, %41
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 2
  %99 = load i8*, i8** %98, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %99, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = load i32, i32* %10, align 4
  %106 = and i32 %104, %105
  %107 = load i32, i32* %9, align 4
  %108 = or i32 %106, %107
  %109 = trunc i32 %108 to i8
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 2
  %112 = load i8*, i8** %111, align 8
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  store i8 %109, i8* %115, align 1
  br label %116

116:                                              ; preds = %136, %96
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = icmp sgt i32 %119, 0
  br i1 %120, label %121, label %134

121:                                              ; preds = %116
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 2
  %124 = load i8*, i8** %123, align 8
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = sub nsw i32 %127, 1
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %124, i64 %129
  %131 = load i8, i8* %130, align 1
  %132 = zext i8 %131 to i32
  %133 = icmp eq i32 %132, 0
  br label %134

134:                                              ; preds = %121, %116
  %135 = phi i1 [ false, %116 ], [ %133, %121 ]
  br i1 %135, label %136, label %141

136:                                              ; preds = %134
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %139, -1
  store i32 %140, i32* %138, align 4
  br label %116

141:                                              ; preds = %134
  store i32 1, i32* %4, align 4
  br label %142

142:                                              ; preds = %141, %62, %49, %26
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

declare dso_local i8* @OPENSSL_clear_realloc(i8*, i32, i32) #1

declare dso_local i32 @ASN1err(i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
