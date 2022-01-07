; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_ts.c_create_query.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_ts.c_create_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__*, i32* }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"sha1\00", align 1
@V_ASN1_NULL = common dso_local global i32 0, align 4
@NONCE_LENGTH = common dso_local global i32 0, align 4
@bio_err = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"could not create query\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i32*, i8*, i32, i32)* @create_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @create_query(i32* %0, i8* %1, i32* %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_6__*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32* null, i32** %14, align 8
  store i32* null, i32** %16, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %17, align 8
  store i8* null, i8** %18, align 8
  store i32* null, i32** %19, align 8
  store i32* null, i32** %20, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %6
  %24 = call i32* @EVP_get_digestbyname(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32* %24, i32** %9, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  br label %130

27:                                               ; preds = %23, %6
  %28 = call i32* (...) @TS_REQ_new()
  store i32* %28, i32** %14, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  br label %130

31:                                               ; preds = %27
  %32 = load i32*, i32** %14, align 8
  %33 = call i32 @TS_REQ_set_version(i32* %32, i32 1)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  br label %130

36:                                               ; preds = %31
  %37 = call i32* (...) @TS_MSG_IMPRINT_new()
  store i32* %37, i32** %16, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  br label %130

40:                                               ; preds = %36
  %41 = call %struct.TYPE_6__* (...) @X509_ALGOR_new()
  store %struct.TYPE_6__* %41, %struct.TYPE_6__** %17, align 8
  %42 = icmp eq %struct.TYPE_6__* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  br label %130

44:                                               ; preds = %40
  %45 = load i32*, i32** %9, align 8
  %46 = call i32 @EVP_MD_type(i32* %45)
  %47 = call i32* @OBJ_nid2obj(i32 %46)
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  store i32* %47, i32** %49, align 8
  %50 = icmp eq i32* %47, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %130

52:                                               ; preds = %44
  %53 = call %struct.TYPE_7__* (...) @ASN1_TYPE_new()
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  store %struct.TYPE_7__* %53, %struct.TYPE_7__** %55, align 8
  %56 = icmp eq %struct.TYPE_7__* %53, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %130

58:                                               ; preds = %52
  %59 = load i32, i32* @V_ASN1_NULL, align 4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  store i32 %59, i32* %63, align 4
  %64 = load i32*, i32** %16, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %66 = call i32 @TS_MSG_IMPRINT_set_algo(i32* %64, %struct.TYPE_6__* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %58
  br label %130

69:                                               ; preds = %58
  %70 = load i32*, i32** %7, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = load i32*, i32** %9, align 8
  %73 = call i32 @create_digest(i32* %70, i8* %71, i32* %72, i8** %18)
  store i32 %73, i32* %15, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %130

76:                                               ; preds = %69
  %77 = load i32*, i32** %16, align 8
  %78 = load i8*, i8** %18, align 8
  %79 = load i32, i32* %15, align 4
  %80 = call i32 @TS_MSG_IMPRINT_set_msg(i32* %77, i8* %78, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %76
  br label %130

83:                                               ; preds = %76
  %84 = load i32*, i32** %14, align 8
  %85 = load i32*, i32** %16, align 8
  %86 = call i32 @TS_REQ_set_msg_imprint(i32* %84, i32* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %83
  br label %130

89:                                               ; preds = %83
  %90 = load i8*, i8** %10, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %97

92:                                               ; preds = %89
  %93 = load i8*, i8** %10, align 8
  %94 = call i32* @txt2obj(i8* %93)
  store i32* %94, i32** %19, align 8
  %95 = icmp eq i32* %94, null
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  br label %130

97:                                               ; preds = %92, %89
  %98 = load i32*, i32** %19, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %106

100:                                              ; preds = %97
  %101 = load i32*, i32** %14, align 8
  %102 = load i32*, i32** %19, align 8
  %103 = call i32 @TS_REQ_set_policy_id(i32* %101, i32* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %100
  br label %130

106:                                              ; preds = %100, %97
  %107 = load i32, i32* %11, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %106
  %110 = load i32, i32* @NONCE_LENGTH, align 4
  %111 = call i32* @create_nonce(i32 %110)
  store i32* %111, i32** %20, align 8
  %112 = icmp eq i32* %111, null
  br i1 %112, label %113, label %114

113:                                              ; preds = %109
  br label %130

114:                                              ; preds = %109, %106
  %115 = load i32*, i32** %20, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %123

117:                                              ; preds = %114
  %118 = load i32*, i32** %14, align 8
  %119 = load i32*, i32** %20, align 8
  %120 = call i32 @TS_REQ_set_nonce(i32* %118, i32* %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %117
  br label %130

123:                                              ; preds = %117, %114
  %124 = load i32*, i32** %14, align 8
  %125 = load i32, i32* %12, align 4
  %126 = call i32 @TS_REQ_set_cert_req(i32* %124, i32 %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %123
  br label %130

129:                                              ; preds = %123
  store i32 1, i32* %13, align 4
  br label %130

130:                                              ; preds = %129, %128, %122, %113, %105, %96, %88, %82, %75, %68, %57, %51, %43, %39, %35, %30, %26
  %131 = load i32, i32* %13, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %140, label %133

133:                                              ; preds = %130
  %134 = load i32*, i32** %14, align 8
  %135 = call i32 @TS_REQ_free(i32* %134)
  store i32* null, i32** %14, align 8
  %136 = load i32, i32* @bio_err, align 4
  %137 = call i32 @BIO_printf(i32 %136, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %138 = load i32, i32* @bio_err, align 4
  %139 = call i32 @ERR_print_errors(i32 %138)
  br label %140

140:                                              ; preds = %133, %130
  %141 = load i32*, i32** %16, align 8
  %142 = call i32 @TS_MSG_IMPRINT_free(i32* %141)
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %144 = call i32 @X509_ALGOR_free(%struct.TYPE_6__* %143)
  %145 = load i8*, i8** %18, align 8
  %146 = call i32 @OPENSSL_free(i8* %145)
  %147 = load i32*, i32** %19, align 8
  %148 = call i32 @ASN1_OBJECT_free(i32* %147)
  %149 = load i32*, i32** %20, align 8
  %150 = call i32 @ASN1_INTEGER_free(i32* %149)
  %151 = load i32*, i32** %14, align 8
  ret i32* %151
}

declare dso_local i32* @EVP_get_digestbyname(i8*) #1

declare dso_local i32* @TS_REQ_new(...) #1

declare dso_local i32 @TS_REQ_set_version(i32*, i32) #1

declare dso_local i32* @TS_MSG_IMPRINT_new(...) #1

declare dso_local %struct.TYPE_6__* @X509_ALGOR_new(...) #1

declare dso_local i32* @OBJ_nid2obj(i32) #1

declare dso_local i32 @EVP_MD_type(i32*) #1

declare dso_local %struct.TYPE_7__* @ASN1_TYPE_new(...) #1

declare dso_local i32 @TS_MSG_IMPRINT_set_algo(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @create_digest(i32*, i8*, i32*, i8**) #1

declare dso_local i32 @TS_MSG_IMPRINT_set_msg(i32*, i8*, i32) #1

declare dso_local i32 @TS_REQ_set_msg_imprint(i32*, i32*) #1

declare dso_local i32* @txt2obj(i8*) #1

declare dso_local i32 @TS_REQ_set_policy_id(i32*, i32*) #1

declare dso_local i32* @create_nonce(i32) #1

declare dso_local i32 @TS_REQ_set_nonce(i32*, i32*) #1

declare dso_local i32 @TS_REQ_set_cert_req(i32*, i32) #1

declare dso_local i32 @TS_REQ_free(i32*) #1

declare dso_local i32 @BIO_printf(i32, i8*) #1

declare dso_local i32 @ERR_print_errors(i32) #1

declare dso_local i32 @TS_MSG_IMPRINT_free(i32*) #1

declare dso_local i32 @X509_ALGOR_free(%struct.TYPE_6__*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @ASN1_OBJECT_free(i32*) #1

declare dso_local i32 @ASN1_INTEGER_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
