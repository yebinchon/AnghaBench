; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_x509_vfy.c_internal_verify.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_x509_vfy.c_internal_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32 (i32, %struct.TYPE_9__*)*, i32*, i32*, %struct.TYPE_8__*, i64 (%struct.TYPE_9__*, i32*, i32*)*, i64 }
%struct.TYPE_8__ = type { i32 }

@X509_V_FLAG_PARTIAL_CHAIN = common dso_local global i32 0, align 4
@X509_V_ERR_UNABLE_TO_VERIFY_LEAF_SIGNATURE = common dso_local global i32 0, align 4
@X509_V_FLAG_CHECK_SS_SIGNATURE = common dso_local global i32 0, align 4
@X509_V_ERR_UNABLE_TO_DECODE_ISSUER_PUBLIC_KEY = common dso_local global i32 0, align 4
@X509_V_ERR_CERT_SIGNATURE_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @internal_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @internal_verify(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @sk_X509_num(i32 %10)
  %12 = sub nsw i32 %11, 1
  store i32 %12, i32* %4, align 4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32* @sk_X509_value(i32 %15, i32 %16)
  store i32* %17, i32** %5, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 7
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32*, i32** %5, align 8
  store i32* %23, i32** %6, align 8
  store i32* null, i32** %5, align 8
  br label %121

24:                                               ; preds = %1
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 6
  %27 = load i64 (%struct.TYPE_9__*, i32*, i32*)*, i64 (%struct.TYPE_9__*, i32*, i32*)** %26, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = call i64 %27(%struct.TYPE_9__* %28, i32* %29, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i32*, i32** %5, align 8
  store i32* %34, i32** %6, align 8
  br label %65

35:                                               ; preds = %24
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 5
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @X509_V_FLAG_PARTIAL_CHAIN, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = load i32*, i32** %5, align 8
  store i32* %45, i32** %6, align 8
  br label %121

46:                                               ; preds = %35
  %47 = load i32, i32* %4, align 4
  %48 = icmp sle i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* @X509_V_ERR_UNABLE_TO_VERIFY_LEAF_SIGNATURE, align 4
  %53 = call i32 @verify_cb_cert(%struct.TYPE_9__* %50, i32* %51, i32 0, i32 %52)
  store i32 %53, i32* %2, align 4
  br label %158

54:                                               ; preds = %46
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %4, align 4
  %64 = call i32* @sk_X509_value(i32 %62, i32 %63)
  store i32* %64, i32** %6, align 8
  br label %65

65:                                               ; preds = %54, %33
  br label %66

66:                                               ; preds = %156, %65
  %67 = load i32, i32* %4, align 4
  %68 = icmp sge i32 %67, 0
  br i1 %68, label %69, label %157

69:                                               ; preds = %66
  %70 = load i32*, i32** %6, align 8
  %71 = load i32*, i32** %5, align 8
  %72 = icmp ne i32* %70, %71
  br i1 %72, label %82, label %73

73:                                               ; preds = %69
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 5
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @X509_V_FLAG_CHECK_SS_SIGNATURE, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %120

82:                                               ; preds = %73, %69
  %83 = load i32*, i32** %5, align 8
  %84 = call i32* @X509_get0_pubkey(i32* %83)
  store i32* %84, i32** %7, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %104

86:                                               ; preds = %82
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %88 = load i32*, i32** %5, align 8
  %89 = load i32*, i32** %5, align 8
  %90 = load i32*, i32** %6, align 8
  %91 = icmp ne i32* %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %86
  %93 = load i32, i32* %4, align 4
  %94 = add nsw i32 %93, 1
  br label %97

95:                                               ; preds = %86
  %96 = load i32, i32* %4, align 4
  br label %97

97:                                               ; preds = %95, %92
  %98 = phi i32 [ %94, %92 ], [ %96, %95 ]
  %99 = load i32, i32* @X509_V_ERR_UNABLE_TO_DECODE_ISSUER_PUBLIC_KEY, align 4
  %100 = call i32 @verify_cb_cert(%struct.TYPE_9__* %87, i32* %88, i32 %98, i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %97
  store i32 0, i32* %2, align 4
  br label %158

103:                                              ; preds = %97
  br label %119

104:                                              ; preds = %82
  %105 = load i32*, i32** %6, align 8
  %106 = load i32*, i32** %7, align 8
  %107 = call i64 @X509_verify(i32* %105, i32* %106)
  %108 = icmp sle i64 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %104
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %111 = load i32*, i32** %6, align 8
  %112 = load i32, i32* %4, align 4
  %113 = load i32, i32* @X509_V_ERR_CERT_SIGNATURE_FAILURE, align 4
  %114 = call i32 @verify_cb_cert(%struct.TYPE_9__* %110, i32* %111, i32 %112, i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %109
  store i32 0, i32* %2, align 4
  br label %158

117:                                              ; preds = %109
  br label %118

118:                                              ; preds = %117, %104
  br label %119

119:                                              ; preds = %118, %103
  br label %120

120:                                              ; preds = %119, %73
  br label %121

121:                                              ; preds = %120, %44, %22
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %123 = load i32*, i32** %6, align 8
  %124 = load i32, i32* %4, align 4
  %125 = call i32 @x509_check_cert_time(%struct.TYPE_9__* %122, i32* %123, i32 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %121
  store i32 0, i32* %2, align 4
  br label %158

128:                                              ; preds = %121
  %129 = load i32*, i32** %5, align 8
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 4
  store i32* %129, i32** %131, align 8
  %132 = load i32*, i32** %6, align 8
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 3
  store i32* %132, i32** %134, align 8
  %135 = load i32, i32* %4, align 4
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 8
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 2
  %140 = load i32 (i32, %struct.TYPE_9__*)*, i32 (i32, %struct.TYPE_9__*)** %139, align 8
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %142 = call i32 %140(i32 1, %struct.TYPE_9__* %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %128
  store i32 0, i32* %2, align 4
  br label %158

145:                                              ; preds = %128
  %146 = load i32, i32* %4, align 4
  %147 = add nsw i32 %146, -1
  store i32 %147, i32* %4, align 4
  %148 = icmp sge i32 %147, 0
  br i1 %148, label %149, label %156

149:                                              ; preds = %145
  %150 = load i32*, i32** %6, align 8
  store i32* %150, i32** %5, align 8
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %4, align 4
  %155 = call i32* @sk_X509_value(i32 %153, i32 %154)
  store i32* %155, i32** %6, align 8
  br label %156

156:                                              ; preds = %149, %145
  br label %66

157:                                              ; preds = %66
  store i32 1, i32* %2, align 4
  br label %158

158:                                              ; preds = %157, %144, %127, %116, %102, %49
  %159 = load i32, i32* %2, align 4
  ret i32 %159
}

declare dso_local i32 @sk_X509_num(i32) #1

declare dso_local i32* @sk_X509_value(i32, i32) #1

declare dso_local i32 @verify_cb_cert(%struct.TYPE_9__*, i32*, i32, i32) #1

declare dso_local i32* @X509_get0_pubkey(i32*) #1

declare dso_local i64 @X509_verify(i32*, i32*) #1

declare dso_local i32 @x509_check_cert_time(%struct.TYPE_9__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
