; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bio/extr_b_addr.c_BIO_parse_hostserv.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bio/extr_b_addr.c_BIO_parse_hostserv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BIO_PARSE_PRIO_HOST = common dso_local global i32 0, align 4
@BIO_F_BIO_PARSE_HOSTSERV = common dso_local global i32 0, align 4
@BIO_R_AMBIGUOUS_HOST_OR_SERVICE = common dso_local global i32 0, align 4
@BIO_R_MALFORMED_HOST_OR_SERVICE = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BIO_parse_hostserv(i8* %0, i8** %1, i8** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* null, i8** %10, align 8
  store i64 0, i64* %11, align 8
  store i8* null, i8** %12, align 8
  store i64 0, i64* %13, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 91
  br i1 %18, label %19, label %52

19:                                               ; preds = %4
  %20 = load i8*, i8** %6, align 8
  %21 = call i8* @strchr(i8* %20, i8 signext 93)
  store i8* %21, i8** %12, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %164

24:                                               ; preds = %19
  %25 = load i8*, i8** %6, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  store i8* %26, i8** %10, align 8
  %27 = load i8*, i8** %12, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = ptrtoint i8* %27 to i64
  %30 = ptrtoint i8* %28 to i64
  %31 = sub i64 %29, %30
  store i64 %31, i64* %11, align 8
  %32 = load i8*, i8** %12, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %12, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %24
  store i8* null, i8** %12, align 8
  br label %51

39:                                               ; preds = %24
  %40 = load i8*, i8** %12, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 58
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %164

45:                                               ; preds = %39
  %46 = load i8*, i8** %12, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %12, align 8
  %48 = load i8*, i8** %12, align 8
  %49 = call i64 @strlen(i8* %48)
  store i64 %49, i64* %13, align 8
  br label %50

50:                                               ; preds = %45
  br label %51

51:                                               ; preds = %50, %38
  br label %89

52:                                               ; preds = %4
  %53 = load i8*, i8** %6, align 8
  %54 = call i8* @strrchr(i8* %53, i8 signext 58)
  store i8* %54, i8** %14, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = call i8* @strchr(i8* %55, i8 signext 58)
  store i8* %56, i8** %12, align 8
  %57 = load i8*, i8** %12, align 8
  %58 = load i8*, i8** %14, align 8
  %59 = icmp ne i8* %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  br label %160

61:                                               ; preds = %52
  %62 = load i8*, i8** %12, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %75

64:                                               ; preds = %61
  %65 = load i8*, i8** %6, align 8
  store i8* %65, i8** %10, align 8
  %66 = load i8*, i8** %12, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = ptrtoint i8* %66 to i64
  %69 = ptrtoint i8* %67 to i64
  %70 = sub i64 %68, %69
  store i64 %70, i64* %11, align 8
  %71 = load i8*, i8** %12, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %12, align 8
  %73 = load i8*, i8** %12, align 8
  %74 = call i64 @strlen(i8* %73)
  store i64 %74, i64* %13, align 8
  br label %88

75:                                               ; preds = %61
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @BIO_PARSE_PRIO_HOST, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load i8*, i8** %6, align 8
  store i8* %80, i8** %10, align 8
  %81 = load i8*, i8** %10, align 8
  %82 = call i64 @strlen(i8* %81)
  store i64 %82, i64* %11, align 8
  br label %87

83:                                               ; preds = %75
  %84 = load i8*, i8** %6, align 8
  store i8* %84, i8** %12, align 8
  %85 = load i8*, i8** %12, align 8
  %86 = call i64 @strlen(i8* %85)
  store i64 %86, i64* %13, align 8
  br label %87

87:                                               ; preds = %83, %79
  br label %88

88:                                               ; preds = %87, %64
  br label %89

89:                                               ; preds = %88, %51
  %90 = load i8*, i8** %12, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %97

92:                                               ; preds = %89
  %93 = load i8*, i8** %12, align 8
  %94 = call i8* @strchr(i8* %93, i8 signext 58)
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  br label %164

97:                                               ; preds = %92, %89
  %98 = load i8*, i8** %10, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %128

100:                                              ; preds = %97
  %101 = load i8**, i8*** %7, align 8
  %102 = icmp ne i8** %101, null
  br i1 %102, label %103, label %128

103:                                              ; preds = %100
  %104 = load i64, i64* %11, align 8
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %115, label %106

106:                                              ; preds = %103
  %107 = load i64, i64* %11, align 8
  %108 = icmp eq i64 %107, 1
  br i1 %108, label %109, label %117

109:                                              ; preds = %106
  %110 = load i8*, i8** %10, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 0
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 42
  br i1 %114, label %115, label %117

115:                                              ; preds = %109, %103
  %116 = load i8**, i8*** %7, align 8
  store i8* null, i8** %116, align 8
  br label %127

117:                                              ; preds = %109, %106
  %118 = load i8*, i8** %10, align 8
  %119 = load i64, i64* %11, align 8
  %120 = call i8* @OPENSSL_strndup(i8* %118, i64 %119)
  %121 = load i8**, i8*** %7, align 8
  store i8* %120, i8** %121, align 8
  %122 = load i8**, i8*** %7, align 8
  %123 = load i8*, i8** %122, align 8
  %124 = icmp eq i8* %123, null
  br i1 %124, label %125, label %126

125:                                              ; preds = %117
  br label %168

126:                                              ; preds = %117
  br label %127

127:                                              ; preds = %126, %115
  br label %128

128:                                              ; preds = %127, %100, %97
  %129 = load i8*, i8** %12, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %131, label %159

131:                                              ; preds = %128
  %132 = load i8**, i8*** %8, align 8
  %133 = icmp ne i8** %132, null
  br i1 %133, label %134, label %159

134:                                              ; preds = %131
  %135 = load i64, i64* %13, align 8
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %146, label %137

137:                                              ; preds = %134
  %138 = load i64, i64* %13, align 8
  %139 = icmp eq i64 %138, 1
  br i1 %139, label %140, label %148

140:                                              ; preds = %137
  %141 = load i8*, i8** %12, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 0
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %144, 42
  br i1 %145, label %146, label %148

146:                                              ; preds = %140, %134
  %147 = load i8**, i8*** %8, align 8
  store i8* null, i8** %147, align 8
  br label %158

148:                                              ; preds = %140, %137
  %149 = load i8*, i8** %12, align 8
  %150 = load i64, i64* %13, align 8
  %151 = call i8* @OPENSSL_strndup(i8* %149, i64 %150)
  %152 = load i8**, i8*** %8, align 8
  store i8* %151, i8** %152, align 8
  %153 = load i8**, i8*** %8, align 8
  %154 = load i8*, i8** %153, align 8
  %155 = icmp eq i8* %154, null
  br i1 %155, label %156, label %157

156:                                              ; preds = %148
  br label %168

157:                                              ; preds = %148
  br label %158

158:                                              ; preds = %157, %146
  br label %159

159:                                              ; preds = %158, %131, %128
  store i32 1, i32* %5, align 4
  br label %172

160:                                              ; preds = %60
  %161 = load i32, i32* @BIO_F_BIO_PARSE_HOSTSERV, align 4
  %162 = load i32, i32* @BIO_R_AMBIGUOUS_HOST_OR_SERVICE, align 4
  %163 = call i32 @BIOerr(i32 %161, i32 %162)
  store i32 0, i32* %5, align 4
  br label %172

164:                                              ; preds = %96, %44, %23
  %165 = load i32, i32* @BIO_F_BIO_PARSE_HOSTSERV, align 4
  %166 = load i32, i32* @BIO_R_MALFORMED_HOST_OR_SERVICE, align 4
  %167 = call i32 @BIOerr(i32 %165, i32 %166)
  store i32 0, i32* %5, align 4
  br label %172

168:                                              ; preds = %156, %125
  %169 = load i32, i32* @BIO_F_BIO_PARSE_HOSTSERV, align 4
  %170 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %171 = call i32 @BIOerr(i32 %169, i32 %170)
  store i32 0, i32* %5, align 4
  br label %172

172:                                              ; preds = %168, %164, %160, %159
  %173 = load i32, i32* %5, align 4
  ret i32 %173
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @OPENSSL_strndup(i8*, i64) #1

declare dso_local i32 @BIOerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
