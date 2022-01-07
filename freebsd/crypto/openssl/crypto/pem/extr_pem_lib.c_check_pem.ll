; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/pem/extr_pem_lib.c_check_pem.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/pem/extr_pem_lib.c_check_pem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@PEM_STRING_EVP_PKEY = common dso_local global i8* null, align 8
@PEM_STRING_PKCS8 = common dso_local global i8* null, align 8
@PEM_STRING_PKCS8INF = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"PRIVATE KEY\00", align 1
@PEM_STRING_PARAMETERS = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"PARAMETERS\00", align 1
@PEM_STRING_DHXPARAMS = common dso_local global i8* null, align 8
@PEM_STRING_DHPARAMS = common dso_local global i8* null, align 8
@PEM_STRING_X509_OLD = common dso_local global i8* null, align 8
@PEM_STRING_X509 = common dso_local global i8* null, align 8
@PEM_STRING_X509_REQ_OLD = common dso_local global i8* null, align 8
@PEM_STRING_X509_REQ = common dso_local global i8* null, align 8
@PEM_STRING_X509_TRUSTED = common dso_local global i8* null, align 8
@PEM_STRING_PKCS7 = common dso_local global i8* null, align 8
@PEM_STRING_PKCS7_SIGNED = common dso_local global i8* null, align 8
@PEM_STRING_CMS = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @check_pem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_pem(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i64 @strcmp(i8* %12, i8* %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %182

17:                                               ; preds = %2
  %18 = load i8*, i8** %5, align 8
  %19 = load i8*, i8** @PEM_STRING_EVP_PKEY, align 8
  %20 = call i64 @strcmp(i8* %18, i8* %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %53

22:                                               ; preds = %17
  %23 = load i8*, i8** %4, align 8
  %24 = load i8*, i8** @PEM_STRING_PKCS8, align 8
  %25 = call i64 @strcmp(i8* %23, i8* %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 1, i32* %3, align 4
  br label %182

28:                                               ; preds = %22
  %29 = load i8*, i8** %4, align 8
  %30 = load i8*, i8** @PEM_STRING_PKCS8INF, align 8
  %31 = call i64 @strcmp(i8* %29, i8* %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 1, i32* %3, align 4
  br label %182

34:                                               ; preds = %28
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @pem_check_suffix(i8* %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %34
  %40 = load i8*, i8** %4, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call %struct.TYPE_3__* @EVP_PKEY_asn1_find_str(i32** null, i8* %40, i32 %41)
  store %struct.TYPE_3__* %42, %struct.TYPE_3__** %7, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %44 = icmp ne %struct.TYPE_3__* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32 1, i32* %3, align 4
  br label %182

51:                                               ; preds = %45, %39
  br label %52

52:                                               ; preds = %51, %34
  store i32 0, i32* %3, align 4
  br label %182

53:                                               ; preds = %17
  %54 = load i8*, i8** %5, align 8
  %55 = load i8*, i8** @PEM_STRING_PARAMETERS, align 8
  %56 = call i64 @strcmp(i8* %54, i8* %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %82

58:                                               ; preds = %53
  %59 = load i8*, i8** %4, align 8
  %60 = call i32 @pem_check_suffix(i8* %59, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %81

63:                                               ; preds = %58
  %64 = load i8*, i8** %4, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call %struct.TYPE_3__* @EVP_PKEY_asn1_find_str(i32** %10, i8* %64, i32 %65)
  store %struct.TYPE_3__* %66, %struct.TYPE_3__** %9, align 8
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %68 = icmp ne %struct.TYPE_3__* %67, null
  br i1 %68, label %69, label %80

69:                                               ; preds = %63
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  store i32 1, i32* %11, align 4
  br label %76

75:                                               ; preds = %69
  store i32 0, i32* %11, align 4
  br label %76

76:                                               ; preds = %75, %74
  %77 = load i32*, i32** %10, align 8
  %78 = call i32 @ENGINE_finish(i32* %77)
  %79 = load i32, i32* %11, align 4
  store i32 %79, i32* %3, align 4
  br label %182

80:                                               ; preds = %63
  br label %81

81:                                               ; preds = %80, %58
  store i32 0, i32* %3, align 4
  br label %182

82:                                               ; preds = %53
  %83 = load i8*, i8** %4, align 8
  %84 = load i8*, i8** @PEM_STRING_DHXPARAMS, align 8
  %85 = call i64 @strcmp(i8* %83, i8* %84)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = load i8*, i8** %5, align 8
  %89 = load i8*, i8** @PEM_STRING_DHPARAMS, align 8
  %90 = call i64 @strcmp(i8* %88, i8* %89)
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  store i32 1, i32* %3, align 4
  br label %182

93:                                               ; preds = %87, %82
  %94 = load i8*, i8** %4, align 8
  %95 = load i8*, i8** @PEM_STRING_X509_OLD, align 8
  %96 = call i64 @strcmp(i8* %94, i8* %95)
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %93
  %99 = load i8*, i8** %5, align 8
  %100 = load i8*, i8** @PEM_STRING_X509, align 8
  %101 = call i64 @strcmp(i8* %99, i8* %100)
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  store i32 1, i32* %3, align 4
  br label %182

104:                                              ; preds = %98, %93
  %105 = load i8*, i8** %4, align 8
  %106 = load i8*, i8** @PEM_STRING_X509_REQ_OLD, align 8
  %107 = call i64 @strcmp(i8* %105, i8* %106)
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %104
  %110 = load i8*, i8** %5, align 8
  %111 = load i8*, i8** @PEM_STRING_X509_REQ, align 8
  %112 = call i64 @strcmp(i8* %110, i8* %111)
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %109
  store i32 1, i32* %3, align 4
  br label %182

115:                                              ; preds = %109, %104
  %116 = load i8*, i8** %4, align 8
  %117 = load i8*, i8** @PEM_STRING_X509, align 8
  %118 = call i64 @strcmp(i8* %116, i8* %117)
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %115
  %121 = load i8*, i8** %5, align 8
  %122 = load i8*, i8** @PEM_STRING_X509_TRUSTED, align 8
  %123 = call i64 @strcmp(i8* %121, i8* %122)
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %120
  store i32 1, i32* %3, align 4
  br label %182

126:                                              ; preds = %120, %115
  %127 = load i8*, i8** %4, align 8
  %128 = load i8*, i8** @PEM_STRING_X509_OLD, align 8
  %129 = call i64 @strcmp(i8* %127, i8* %128)
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %126
  %132 = load i8*, i8** %5, align 8
  %133 = load i8*, i8** @PEM_STRING_X509_TRUSTED, align 8
  %134 = call i64 @strcmp(i8* %132, i8* %133)
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %131
  store i32 1, i32* %3, align 4
  br label %182

137:                                              ; preds = %131, %126
  %138 = load i8*, i8** %4, align 8
  %139 = load i8*, i8** @PEM_STRING_X509, align 8
  %140 = call i64 @strcmp(i8* %138, i8* %139)
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %137
  %143 = load i8*, i8** %5, align 8
  %144 = load i8*, i8** @PEM_STRING_PKCS7, align 8
  %145 = call i64 @strcmp(i8* %143, i8* %144)
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %142
  store i32 1, i32* %3, align 4
  br label %182

148:                                              ; preds = %142, %137
  %149 = load i8*, i8** %4, align 8
  %150 = load i8*, i8** @PEM_STRING_PKCS7_SIGNED, align 8
  %151 = call i64 @strcmp(i8* %149, i8* %150)
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %148
  %154 = load i8*, i8** %5, align 8
  %155 = load i8*, i8** @PEM_STRING_PKCS7, align 8
  %156 = call i64 @strcmp(i8* %154, i8* %155)
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %153
  store i32 1, i32* %3, align 4
  br label %182

159:                                              ; preds = %153, %148
  %160 = load i8*, i8** %4, align 8
  %161 = load i8*, i8** @PEM_STRING_X509, align 8
  %162 = call i64 @strcmp(i8* %160, i8* %161)
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %159
  %165 = load i8*, i8** %5, align 8
  %166 = load i8*, i8** @PEM_STRING_CMS, align 8
  %167 = call i64 @strcmp(i8* %165, i8* %166)
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %164
  store i32 1, i32* %3, align 4
  br label %182

170:                                              ; preds = %164, %159
  %171 = load i8*, i8** %4, align 8
  %172 = load i8*, i8** @PEM_STRING_PKCS7, align 8
  %173 = call i64 @strcmp(i8* %171, i8* %172)
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %170
  %176 = load i8*, i8** %5, align 8
  %177 = load i8*, i8** @PEM_STRING_CMS, align 8
  %178 = call i64 @strcmp(i8* %176, i8* %177)
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %175
  store i32 1, i32* %3, align 4
  br label %182

181:                                              ; preds = %175, %170
  store i32 0, i32* %3, align 4
  br label %182

182:                                              ; preds = %181, %180, %169, %158, %147, %136, %125, %114, %103, %92, %81, %76, %52, %50, %33, %27, %16
  %183 = load i32, i32* %3, align 4
  ret i32 %183
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @pem_check_suffix(i8*, i8*) #1

declare dso_local %struct.TYPE_3__* @EVP_PKEY_asn1_find_str(i32**, i8*, i32) #1

declare dso_local i32 @ENGINE_finish(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
