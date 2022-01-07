; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_x509_vfy.c_crl_akid_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_x509_vfy.c_crl_akid_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@X509_V_OK = common dso_local global i64 0, align 8
@CRL_SCORE_ISSUER_NAME = common dso_local global i32 0, align 4
@CRL_SCORE_AKID = common dso_local global i32 0, align 4
@CRL_SCORE_ISSUER_CERT = common dso_local global i32 0, align 4
@CRL_SCORE_SAME_PATH = common dso_local global i32 0, align 4
@X509_V_FLAG_EXTENDED_CRL_SUPPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.TYPE_9__*, i32**, i32*)* @crl_akid_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crl_akid_check(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1, i32** %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i32** %2, i32*** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32* null, i32** %9, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %14 = call i32* @X509_CRL_get_issuer(%struct.TYPE_9__* %13)
  store i32* %14, i32** %10, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @sk_X509_num(i32 %21)
  %23 = sub nsw i32 %22, 1
  %24 = icmp ne i32 %18, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i32, i32* %11, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %11, align 4
  br label %28

28:                                               ; preds = %25, %4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %11, align 4
  %33 = call i32* @sk_X509_value(i32 %31, i32 %32)
  store i32* %33, i32** %9, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @X509_check_akid(i32* %34, i32 %37)
  %39 = load i64, i64* @X509_V_OK, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %57

41:                                               ; preds = %28
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @CRL_SCORE_ISSUER_NAME, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %41
  %48 = load i32, i32* @CRL_SCORE_AKID, align 4
  %49 = load i32, i32* @CRL_SCORE_ISSUER_CERT, align 4
  %50 = or i32 %48, %49
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %50
  store i32 %53, i32* %51, align 4
  %54 = load i32*, i32** %9, align 8
  %55 = load i32**, i32*** %7, align 8
  store i32* %54, i32** %55, align 8
  br label %149

56:                                               ; preds = %41
  br label %57

57:                                               ; preds = %56, %28
  %58 = load i32, i32* %11, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %11, align 4
  br label %60

60:                                               ; preds = %97, %57
  %61 = load i32, i32* %11, align 4
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @sk_X509_num(i32 %64)
  %66 = icmp slt i32 %61, %65
  br i1 %66, label %67, label %100

67:                                               ; preds = %60
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %11, align 4
  %72 = call i32* @sk_X509_value(i32 %70, i32 %71)
  store i32* %72, i32** %9, align 8
  %73 = load i32*, i32** %9, align 8
  %74 = call i32 @X509_get_subject_name(i32* %73)
  %75 = load i32*, i32** %10, align 8
  %76 = call i64 @X509_NAME_cmp(i32 %74, i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %67
  br label %97

79:                                               ; preds = %67
  %80 = load i32*, i32** %9, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @X509_check_akid(i32* %80, i32 %83)
  %85 = load i64, i64* @X509_V_OK, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %79
  %88 = load i32, i32* @CRL_SCORE_AKID, align 4
  %89 = load i32, i32* @CRL_SCORE_SAME_PATH, align 4
  %90 = or i32 %88, %89
  %91 = load i32*, i32** %8, align 8
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %90
  store i32 %93, i32* %91, align 4
  %94 = load i32*, i32** %9, align 8
  %95 = load i32**, i32*** %7, align 8
  store i32* %94, i32** %95, align 8
  br label %149

96:                                               ; preds = %79
  br label %97

97:                                               ; preds = %96, %78
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %11, align 4
  br label %60

100:                                              ; preds = %60
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 2
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @X509_V_FLAG_EXTENDED_CRL_SUPPORT, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %100
  br label %149

110:                                              ; preds = %100
  store i32 0, i32* %12, align 4
  br label %111

111:                                              ; preds = %146, %110
  %112 = load i32, i32* %12, align 4
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @sk_X509_num(i32 %115)
  %117 = icmp slt i32 %112, %116
  br i1 %117, label %118, label %149

118:                                              ; preds = %111
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %12, align 4
  %123 = call i32* @sk_X509_value(i32 %121, i32 %122)
  store i32* %123, i32** %9, align 8
  %124 = load i32*, i32** %9, align 8
  %125 = call i32 @X509_get_subject_name(i32* %124)
  %126 = load i32*, i32** %10, align 8
  %127 = call i64 @X509_NAME_cmp(i32 %125, i32* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %118
  br label %146

130:                                              ; preds = %118
  %131 = load i32*, i32** %9, align 8
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i64 @X509_check_akid(i32* %131, i32 %134)
  %136 = load i64, i64* @X509_V_OK, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %145

138:                                              ; preds = %130
  %139 = load i32*, i32** %9, align 8
  %140 = load i32**, i32*** %7, align 8
  store i32* %139, i32** %140, align 8
  %141 = load i32, i32* @CRL_SCORE_AKID, align 4
  %142 = load i32*, i32** %8, align 8
  %143 = load i32, i32* %142, align 4
  %144 = or i32 %143, %141
  store i32 %144, i32* %142, align 4
  br label %149

145:                                              ; preds = %130
  br label %146

146:                                              ; preds = %145, %129
  %147 = load i32, i32* %12, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %12, align 4
  br label %111

149:                                              ; preds = %47, %87, %109, %138, %111
  ret void
}

declare dso_local i32* @X509_CRL_get_issuer(%struct.TYPE_9__*) #1

declare dso_local i32 @sk_X509_num(i32) #1

declare dso_local i32* @sk_X509_value(i32, i32) #1

declare dso_local i64 @X509_check_akid(i32*, i32) #1

declare dso_local i64 @X509_NAME_cmp(i32, i32*) #1

declare dso_local i32 @X509_get_subject_name(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
