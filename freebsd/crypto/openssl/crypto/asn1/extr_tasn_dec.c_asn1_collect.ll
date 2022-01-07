; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_tasn_dec.c_asn1_collect.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_tasn_dec.c_asn1_collect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ASN1_F_ASN1_COLLECT = common dso_local global i32 0, align 4
@ASN1_R_UNEXPECTED_EOC = common dso_local global i32 0, align 4
@ERR_R_NESTED_ASN1_ERROR = common dso_local global i32 0, align 4
@ASN1_MAX_STRING_NEST = common dso_local global i32 0, align 4
@ASN1_R_NESTED_ASN1_STRING = common dso_local global i32 0, align 4
@ASN1_R_MISSING_EOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8**, i64, i8, i32, i32, i32)* @asn1_collect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asn1_collect(i32* %0, i8** %1, i64 %2, i8 signext %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8, align 1
  %20 = alloca i8, align 1
  store i32* %0, i32** %9, align 8
  store i8** %1, i8*** %10, align 8
  store i64 %2, i64* %11, align 8
  store i8 %3, i8* %12, align 1
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %21 = load i8**, i8*** %10, align 8
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %16, align 8
  %23 = load i8, i8* %12, align 1
  %24 = sext i8 %23 to i32
  %25 = and i32 %24, 1
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %12, align 1
  %27 = load i32*, i32** %9, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %37, label %29

29:                                               ; preds = %7
  %30 = load i8, i8* %12, align 1
  %31 = icmp ne i8 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %29
  %33 = load i64, i64* %11, align 8
  %34 = load i8**, i8*** %10, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 %33
  store i8* %36, i8** %34, align 8
  store i32 1, i32* %8, align 4
  br label %115

37:                                               ; preds = %29, %7
  br label %38

38:                                               ; preds = %97, %37
  %39 = load i64, i64* %11, align 8
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %41, label %105

41:                                               ; preds = %38
  %42 = load i8*, i8** %16, align 8
  store i8* %42, i8** %17, align 8
  %43 = load i64, i64* %11, align 8
  %44 = call i64 @asn1_check_eoc(i8** %16, i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = load i8, i8* %12, align 1
  %48 = icmp ne i8 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* @ASN1_F_ASN1_COLLECT, align 4
  %51 = load i32, i32* @ASN1_R_UNEXPECTED_EOC, align 4
  %52 = call i32 @ASN1err(i32 %50, i32 %51)
  store i32 0, i32* %8, align 4
  br label %115

53:                                               ; preds = %46
  store i8 0, i8* %12, align 1
  br label %105

54:                                               ; preds = %41
  %55 = load i64, i64* %11, align 8
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %14, align 4
  %58 = call i32 @asn1_check_tlen(i64* %18, i32* null, i32* null, i8* %20, i8* %19, i8** %16, i64 %55, i32 %56, i32 %57, i32 0, i32* null)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %54
  %61 = load i32, i32* @ASN1_F_ASN1_COLLECT, align 4
  %62 = load i32, i32* @ERR_R_NESTED_ASN1_ERROR, align 4
  %63 = call i32 @ASN1err(i32 %61, i32 %62)
  store i32 0, i32* %8, align 4
  br label %115

64:                                               ; preds = %54
  %65 = load i8, i8* %19, align 1
  %66 = icmp ne i8 %65, 0
  br i1 %66, label %67, label %87

67:                                               ; preds = %64
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* @ASN1_MAX_STRING_NEST, align 4
  %70 = icmp sge i32 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load i32, i32* @ASN1_F_ASN1_COLLECT, align 4
  %73 = load i32, i32* @ASN1_R_NESTED_ASN1_STRING, align 4
  %74 = call i32 @ASN1err(i32 %72, i32 %73)
  store i32 0, i32* %8, align 4
  br label %115

75:                                               ; preds = %67
  %76 = load i32*, i32** %9, align 8
  %77 = load i64, i64* %18, align 8
  %78 = load i8, i8* %20, align 1
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* %15, align 4
  %82 = add nsw i32 %81, 1
  %83 = call i32 @asn1_collect(i32* %76, i8** %16, i64 %77, i8 signext %78, i32 %79, i32 %80, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %75
  store i32 0, i32* %8, align 4
  br label %115

86:                                               ; preds = %75
  br label %97

87:                                               ; preds = %64
  %88 = load i64, i64* %18, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %87
  %91 = load i32*, i32** %9, align 8
  %92 = load i64, i64* %18, align 8
  %93 = call i32 @collect_data(i32* %91, i8** %16, i64 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %90
  store i32 0, i32* %8, align 4
  br label %115

96:                                               ; preds = %90, %87
  br label %97

97:                                               ; preds = %96, %86
  %98 = load i8*, i8** %16, align 8
  %99 = load i8*, i8** %17, align 8
  %100 = ptrtoint i8* %98 to i64
  %101 = ptrtoint i8* %99 to i64
  %102 = sub i64 %100, %101
  %103 = load i64, i64* %11, align 8
  %104 = sub nsw i64 %103, %102
  store i64 %104, i64* %11, align 8
  br label %38

105:                                              ; preds = %53, %38
  %106 = load i8, i8* %12, align 1
  %107 = icmp ne i8 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %105
  %109 = load i32, i32* @ASN1_F_ASN1_COLLECT, align 4
  %110 = load i32, i32* @ASN1_R_MISSING_EOC, align 4
  %111 = call i32 @ASN1err(i32 %109, i32 %110)
  store i32 0, i32* %8, align 4
  br label %115

112:                                              ; preds = %105
  %113 = load i8*, i8** %16, align 8
  %114 = load i8**, i8*** %10, align 8
  store i8* %113, i8** %114, align 8
  store i32 1, i32* %8, align 4
  br label %115

115:                                              ; preds = %112, %108, %95, %85, %71, %60, %49, %32
  %116 = load i32, i32* %8, align 4
  ret i32 %116
}

declare dso_local i64 @asn1_check_eoc(i8**, i64) #1

declare dso_local i32 @ASN1err(i32, i32) #1

declare dso_local i32 @asn1_check_tlen(i64*, i32*, i32*, i8*, i8*, i8**, i64, i32, i32, i32, i32*) #1

declare dso_local i32 @collect_data(i32*, i8**, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
