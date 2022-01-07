; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ocsp/extr_ocsp_ht.c_parse_http_line1.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ocsp/extr_ocsp_ht.c_parse_http_line1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OCSP_F_PARSE_HTTP_LINE1 = common dso_local global i32 0, align 4
@OCSP_R_SERVER_RESPONSE_PARSE_ERROR = common dso_local global i32 0, align 4
@OCSP_R_SERVER_RESPONSE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"Code=\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c",Reason=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @parse_http_line1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_http_line1(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  store i8* %8, i8** %5, align 8
  br label %9

9:                                                ; preds = %23, %1
  %10 = load i8*, i8** %5, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = load i8*, i8** %5, align 8
  %16 = load i8, i8* %15, align 1
  %17 = call i64 @ossl_isspace(i8 signext %16)
  %18 = icmp ne i64 %17, 0
  %19 = xor i1 %18, true
  br label %20

20:                                               ; preds = %14, %9
  %21 = phi i1 [ false, %9 ], [ %19, %14 ]
  br i1 %21, label %22, label %26

22:                                               ; preds = %20
  br label %23

23:                                               ; preds = %22
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %5, align 8
  br label %9

26:                                               ; preds = %20
  %27 = load i8*, i8** %5, align 8
  %28 = load i8, i8* %27, align 1
  %29 = icmp ne i8 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* @OCSP_F_PARSE_HTTP_LINE1, align 4
  %32 = load i32, i32* @OCSP_R_SERVER_RESPONSE_PARSE_ERROR, align 4
  %33 = call i32 @OCSPerr(i32 %31, i32 %32)
  store i32 0, i32* %2, align 4
  br label %151

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %47, %34
  %36 = load i8*, i8** %5, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load i8*, i8** %5, align 8
  %42 = load i8, i8* %41, align 1
  %43 = call i64 @ossl_isspace(i8 signext %42)
  %44 = icmp ne i64 %43, 0
  br label %45

45:                                               ; preds = %40, %35
  %46 = phi i1 [ false, %35 ], [ %44, %40 ]
  br i1 %46, label %47, label %50

47:                                               ; preds = %45
  %48 = load i8*, i8** %5, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %5, align 8
  br label %35

50:                                               ; preds = %45
  %51 = load i8*, i8** %5, align 8
  %52 = load i8, i8* %51, align 1
  %53 = icmp ne i8 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* @OCSP_F_PARSE_HTTP_LINE1, align 4
  %56 = load i32, i32* @OCSP_R_SERVER_RESPONSE_PARSE_ERROR, align 4
  %57 = call i32 @OCSPerr(i32 %55, i32 %56)
  store i32 0, i32* %2, align 4
  br label %151

58:                                               ; preds = %50
  %59 = load i8*, i8** %5, align 8
  store i8* %59, i8** %6, align 8
  br label %60

60:                                               ; preds = %74, %58
  %61 = load i8*, i8** %6, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load i8*, i8** %6, align 8
  %67 = load i8, i8* %66, align 1
  %68 = call i64 @ossl_isspace(i8 signext %67)
  %69 = icmp ne i64 %68, 0
  %70 = xor i1 %69, true
  br label %71

71:                                               ; preds = %65, %60
  %72 = phi i1 [ false, %60 ], [ %70, %65 ]
  br i1 %72, label %73, label %77

73:                                               ; preds = %71
  br label %74

74:                                               ; preds = %73
  %75 = load i8*, i8** %6, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %6, align 8
  br label %60

77:                                               ; preds = %71
  %78 = load i8*, i8** %6, align 8
  %79 = load i8, i8* %78, align 1
  %80 = icmp ne i8 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = load i32, i32* @OCSP_F_PARSE_HTTP_LINE1, align 4
  %83 = load i32, i32* @OCSP_R_SERVER_RESPONSE_PARSE_ERROR, align 4
  %84 = call i32 @OCSPerr(i32 %82, i32 %83)
  store i32 0, i32* %2, align 4
  br label %151

85:                                               ; preds = %77
  %86 = load i8*, i8** %6, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %6, align 8
  store i8 0, i8* %86, align 1
  %88 = load i8*, i8** %5, align 8
  %89 = call i32 @strtoul(i8* %88, i8** %7, i32 10)
  store i32 %89, i32* %4, align 4
  %90 = load i8*, i8** %7, align 8
  %91 = load i8, i8* %90, align 1
  %92 = icmp ne i8 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %85
  store i32 0, i32* %2, align 4
  br label %151

94:                                               ; preds = %85
  br label %95

95:                                               ; preds = %107, %94
  %96 = load i8*, i8** %6, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %95
  %101 = load i8*, i8** %6, align 8
  %102 = load i8, i8* %101, align 1
  %103 = call i64 @ossl_isspace(i8 signext %102)
  %104 = icmp ne i64 %103, 0
  br label %105

105:                                              ; preds = %100, %95
  %106 = phi i1 [ false, %95 ], [ %104, %100 ]
  br i1 %106, label %107, label %110

107:                                              ; preds = %105
  %108 = load i8*, i8** %6, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %6, align 8
  br label %95

110:                                              ; preds = %105
  %111 = load i8*, i8** %6, align 8
  %112 = load i8, i8* %111, align 1
  %113 = icmp ne i8 %112, 0
  br i1 %113, label %114, label %132

114:                                              ; preds = %110
  %115 = load i8*, i8** %6, align 8
  %116 = load i8*, i8** %6, align 8
  %117 = call i32 @strlen(i8* %116)
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %115, i64 %118
  %120 = getelementptr inbounds i8, i8* %119, i64 -1
  store i8* %120, i8** %7, align 8
  br label %121

121:                                              ; preds = %128, %114
  %122 = load i8*, i8** %7, align 8
  %123 = load i8, i8* %122, align 1
  %124 = call i64 @ossl_isspace(i8 signext %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %121
  %127 = load i8*, i8** %7, align 8
  store i8 0, i8* %127, align 1
  br label %128

128:                                              ; preds = %126
  %129 = load i8*, i8** %7, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 -1
  store i8* %130, i8** %7, align 8
  br label %121

131:                                              ; preds = %121
  br label %132

132:                                              ; preds = %131, %110
  %133 = load i32, i32* %4, align 4
  %134 = icmp ne i32 %133, 200
  br i1 %134, label %135, label %150

135:                                              ; preds = %132
  %136 = load i32, i32* @OCSP_F_PARSE_HTTP_LINE1, align 4
  %137 = load i32, i32* @OCSP_R_SERVER_RESPONSE_ERROR, align 4
  %138 = call i32 @OCSPerr(i32 %136, i32 %137)
  %139 = load i8*, i8** %6, align 8
  %140 = load i8, i8* %139, align 1
  %141 = icmp ne i8 %140, 0
  br i1 %141, label %145, label %142

142:                                              ; preds = %135
  %143 = load i8*, i8** %5, align 8
  %144 = call i32 (i32, i8*, i8*, ...) @ERR_add_error_data(i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %143)
  br label %149

145:                                              ; preds = %135
  %146 = load i8*, i8** %5, align 8
  %147 = load i8*, i8** %6, align 8
  %148 = call i32 (i32, i8*, i8*, ...) @ERR_add_error_data(i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %146, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %147)
  br label %149

149:                                              ; preds = %145, %142
  store i32 0, i32* %2, align 4
  br label %151

150:                                              ; preds = %132
  store i32 1, i32* %2, align 4
  br label %151

151:                                              ; preds = %150, %149, %93, %81, %54, %30
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local i64 @ossl_isspace(i8 signext) #1

declare dso_local i32 @OCSPerr(i32, i32) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ERR_add_error_data(i32, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
