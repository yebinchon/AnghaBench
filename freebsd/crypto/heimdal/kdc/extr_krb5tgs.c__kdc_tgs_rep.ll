; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_krb5tgs.c__kdc_tgs_rep.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_krb5tgs.c__kdc_tgs_rep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct.TYPE_17__ = type { i32, i32* }
%struct.TYPE_16__ = type { i64, i32* }
%struct.sockaddr = type { i32 }

@ETYPE_NULL = common dso_local global i32 0, align 4
@KRB5KDC_ERR_PREAUTH_REQUIRED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"TGS-REQ from %s without PA-DATA\00", align 1
@KRB5_PADATA_TGS_REQ = common dso_local global i32 0, align 4
@KRB5KDC_ERR_PADATA_TYPE_NOSUPP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"TGS-REQ from %s without PA-TGS-REQ\00", align 1
@HDB_ERR_NOT_FOUND_HERE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed parsing TGS-REQ from %s\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Failed building TGS-REP to %s\00", align 1
@KRB5KRB_ERR_RESPONSE_TOO_BIG = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [23 x i8] c"Reply packet too large\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_kdc_tgs_rep(i32 %0, %struct.TYPE_15__* %1, %struct.TYPE_17__* %2, %struct.TYPE_16__* %3, i8* %4, %struct.sockaddr* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.sockaddr*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  store i32 %0, i32* %8, align 4
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %9, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %10, align 8
  store %struct.TYPE_16__* %3, %struct.TYPE_16__** %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.sockaddr* %5, %struct.sockaddr** %13, align 8
  store i32 %6, i32* %14, align 4
  store i32* null, i32** %15, align 8
  store i32 0, i32* %17, align 4
  store i32* null, i32** %19, align 8
  store i32* null, i32** %20, align 8
  store i8* null, i8** %21, align 8
  %27 = load i32, i32* @ETYPE_NULL, align 4
  store i32 %27, i32* %22, align 4
  store i32* null, i32** %23, align 8
  store i32 0, i32* %24, align 4
  store i32* null, i32** %25, align 8
  store i32* null, i32** %26, align 8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %7
  %33 = load i64, i64* @KRB5KDC_ERR_PREAUTH_REQUIRED, align 8
  store i64 %33, i64* %16, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = call i32 @kdc_log(i32 %34, %struct.TYPE_15__* %35, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %36)
  br label %109

38:                                               ; preds = %7
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %40 = load i32, i32* @KRB5_PADATA_TGS_REQ, align 4
  %41 = call i32* @_kdc_find_padata(%struct.TYPE_17__* %39, i32* %17, i32 %40)
  store i32* %41, i32** %18, align 8
  %42 = load i32*, i32** %18, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load i64, i64* @KRB5KDC_ERR_PADATA_TYPE_NOSUPP, align 8
  store i64 %45, i64* %16, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %48 = load i8*, i8** %12, align 8
  %49 = call i32 @kdc_log(i32 %46, %struct.TYPE_15__* %47, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %48)
  br label %109

50:                                               ; preds = %38
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 0
  %55 = load i32*, i32** %18, align 8
  %56 = load i8*, i8** %12, align 8
  %57 = load %struct.sockaddr*, %struct.sockaddr** %13, align 8
  %58 = call i64 @tgs_parse_request(i32 %51, %struct.TYPE_15__* %52, i32* %54, i32* %55, i32** %19, i32* %22, i32** %20, i8** %21, i8* %56, %struct.sockaddr* %57, i32** %25, i32** %26, i32** %15, i32** %23, i32* %24)
  store i64 %58, i64* %16, align 8
  %59 = load i64, i64* %16, align 8
  %60 = load i64, i64* @HDB_ERR_NOT_FOUND_HERE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %50
  br label %109

63:                                               ; preds = %50
  %64 = load i64, i64* %16, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %69 = load i8*, i8** %12, align 8
  %70 = call i32 @kdc_log(i32 %67, %struct.TYPE_15__* %68, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %69)
  br label %109

71:                                               ; preds = %63
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  %77 = load i32*, i32** %19, align 8
  %78 = load i32, i32* %22, align 4
  %79 = load i32*, i32** %23, align 8
  %80 = load i32, i32* %24, align 4
  %81 = load i32*, i32** %20, align 8
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %83 = load i8*, i8** %12, align 8
  %84 = load %struct.sockaddr*, %struct.sockaddr** %13, align 8
  %85 = call i64 @tgs_build_reply(i32 %72, %struct.TYPE_15__* %73, %struct.TYPE_17__* %74, i32* %76, i32* %77, i32 %78, i32* %79, i32 %80, i32* %81, %struct.TYPE_16__* %82, i8* %83, i8** %21, i32** %15, %struct.sockaddr* %84)
  store i64 %85, i64* %16, align 8
  %86 = load i64, i64* %16, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %71
  %89 = load i32, i32* %8, align 4
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %91 = load i8*, i8** %12, align 8
  %92 = call i32 @kdc_log(i32 %89, %struct.TYPE_15__* %90, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %91)
  br label %109

93:                                               ; preds = %71
  %94 = load i32, i32* %14, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %93
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp sgt i64 %99, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %96
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %106 = call i32 @krb5_data_free(%struct.TYPE_16__* %105)
  %107 = load i64, i64* @KRB5KRB_ERR_RESPONSE_TOO_BIG, align 8
  store i64 %107, i64* %16, align 8
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8** %21, align 8
  br label %108

108:                                              ; preds = %104, %96, %93
  br label %109

109:                                              ; preds = %108, %88, %66, %62, %44, %32
  %110 = load i32*, i32** %23, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %116

112:                                              ; preds = %109
  %113 = load i32, i32* %8, align 4
  %114 = load i32*, i32** %23, align 8
  %115 = call i32 @krb5_free_keyblock(i32 %113, i32* %114)
  br label %116

116:                                              ; preds = %112, %109
  %117 = load i64, i64* %16, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %135

119:                                              ; preds = %116
  %120 = load i64, i64* %16, align 8
  %121 = load i64, i64* @HDB_ERR_NOT_FOUND_HERE, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %135

123:                                              ; preds = %119
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = icmp eq i32* %126, null
  br i1 %127, label %128, label %135

128:                                              ; preds = %123
  %129 = load i32, i32* %8, align 4
  %130 = load i64, i64* %16, align 8
  %131 = load i32*, i32** %25, align 8
  %132 = load i32*, i32** %26, align 8
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %134 = call i32 @krb5_mk_error(i32 %129, i64 %130, i32* null, i32* null, i32* null, i32* null, i32* %131, i32* %132, %struct.TYPE_16__* %133)
  store i64 0, i64* %16, align 8
  br label %135

135:                                              ; preds = %128, %123, %119, %116
  %136 = load i32*, i32** %25, align 8
  %137 = call i32 @free(i32* %136)
  %138 = load i32*, i32** %26, align 8
  %139 = call i32 @free(i32* %138)
  %140 = load i32*, i32** %20, align 8
  %141 = icmp ne i32* %140, null
  br i1 %141, label %142, label %146

142:                                              ; preds = %135
  %143 = load i32, i32* %8, align 4
  %144 = load i32*, i32** %20, align 8
  %145 = call i32 @krb5_free_ticket(i32 %143, i32* %144)
  br label %146

146:                                              ; preds = %142, %135
  %147 = load i32*, i32** %19, align 8
  %148 = icmp ne i32* %147, null
  br i1 %148, label %149, label %153

149:                                              ; preds = %146
  %150 = load i32, i32* %8, align 4
  %151 = load i32*, i32** %19, align 8
  %152 = call i32 @_kdc_free_ent(i32 %150, i32* %151)
  br label %153

153:                                              ; preds = %149, %146
  %154 = load i32*, i32** %15, align 8
  %155 = icmp ne i32* %154, null
  br i1 %155, label %156, label %161

156:                                              ; preds = %153
  %157 = load i32*, i32** %15, align 8
  %158 = call i32 @free_AuthorizationData(i32* %157)
  %159 = load i32*, i32** %15, align 8
  %160 = call i32 @free(i32* %159)
  br label %161

161:                                              ; preds = %156, %153
  %162 = load i64, i64* %16, align 8
  ret i64 %162
}

declare dso_local i32 @kdc_log(i32, %struct.TYPE_15__*, i32, i8*, i8*) #1

declare dso_local i32* @_kdc_find_padata(%struct.TYPE_17__*, i32*, i32) #1

declare dso_local i64 @tgs_parse_request(i32, %struct.TYPE_15__*, i32*, i32*, i32**, i32*, i32**, i8**, i8*, %struct.sockaddr*, i32**, i32**, i32**, i32**, i32*) #1

declare dso_local i64 @tgs_build_reply(i32, %struct.TYPE_15__*, %struct.TYPE_17__*, i32*, i32*, i32, i32*, i32, i32*, %struct.TYPE_16__*, i8*, i8**, i32**, %struct.sockaddr*) #1

declare dso_local i32 @krb5_data_free(%struct.TYPE_16__*) #1

declare dso_local i32 @krb5_free_keyblock(i32, i32*) #1

declare dso_local i32 @krb5_mk_error(i32, i64, i32*, i32*, i32*, i32*, i32*, i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @krb5_free_ticket(i32, i32*) #1

declare dso_local i32 @_kdc_free_ent(i32, i32*) #1

declare dso_local i32 @free_AuthorizationData(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
