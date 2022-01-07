; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_set_cred_option.c_import_cred.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_set_cred_option.c_import_cred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@GSS_C_NO_CREDENTIAL = common dso_local global i64 0, align 8
@GSS_S_FAILURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, i32, i64*, %struct.TYPE_3__*)* @import_cred to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @import_cred(i64* %0, i32 %1, i64* %2, %struct.TYPE_3__* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  store i64* %0, i64** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %9, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  %17 = load i64*, i64** %8, align 8
  %18 = icmp eq i64* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %4
  %20 = load i64*, i64** %8, align 8
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @GSS_C_NO_CREDENTIAL, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %19, %4
  %25 = load i64*, i64** %6, align 8
  store i64 0, i64* %25, align 8
  %26 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %26, i64* %5, align 8
  br label %160

27:                                               ; preds = %19
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32* @krb5_storage_from_mem(i32 %30, i32 %33)
  store i32* %34, i32** %14, align 8
  %35 = load i32*, i32** %14, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %27
  %38 = load i64*, i64** %6, align 8
  store i64 0, i64* %38, align 8
  %39 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %39, i64* %5, align 8
  br label %160

40:                                               ; preds = %27
  %41 = load i32*, i32** %14, align 8
  %42 = call i64 @krb5_ret_string(i32* %41, i8** %16)
  store i64 %42, i64* %11, align 8
  %43 = load i64, i64* %11, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i64, i64* %11, align 8
  %47 = load i64*, i64** %6, align 8
  store i64 %46, i64* %47, align 8
  %48 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %48, i64* %10, align 8
  br label %125

49:                                               ; preds = %40
  %50 = load i8*, i8** %16, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 0
  %52 = load i8, i8* %51, align 1
  %53 = icmp ne i8 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %49
  %55 = load i32, i32* %7, align 4
  %56 = load i8*, i8** %16, align 8
  %57 = call i64 @krb5_cc_resolve(i32 %55, i8* %56, i32** %15)
  store i64 %57, i64* %11, align 8
  %58 = load i64, i64* %11, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load i64, i64* %11, align 8
  %62 = load i64*, i64** %6, align 8
  store i64 %61, i64* %62, align 8
  %63 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %63, i64* %10, align 8
  br label %125

64:                                               ; preds = %54
  br label %65

65:                                               ; preds = %64, %49
  %66 = load i8*, i8** %16, align 8
  %67 = call i32 @free(i8* %66)
  store i8* null, i8** %16, align 8
  %68 = load i32*, i32** %14, align 8
  %69 = call i64 @krb5_ret_string(i32* %68, i8** %16)
  store i64 %69, i64* %11, align 8
  %70 = load i64, i64* %11, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %65
  %73 = load i8*, i8** %16, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 0
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load i32, i32* %7, align 4
  %80 = load i8*, i8** %16, align 8
  %81 = call i64 @krb5_parse_name(i32 %79, i8* %80, i32** %12)
  store i64 %81, i64* %11, align 8
  br label %82

82:                                               ; preds = %78, %72, %65
  %83 = load i64, i64* %11, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load i64, i64* %11, align 8
  %87 = load i64*, i64** %6, align 8
  store i64 %86, i64* %87, align 8
  %88 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %88, i64* %10, align 8
  br label %125

89:                                               ; preds = %82
  %90 = load i8*, i8** %16, align 8
  %91 = call i32 @free(i8* %90)
  store i8* null, i8** %16, align 8
  %92 = load i32*, i32** %14, align 8
  %93 = call i64 @krb5_ret_string(i32* %92, i8** %16)
  store i64 %93, i64* %11, align 8
  %94 = load i64, i64* %11, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %89
  %97 = load i64, i64* %11, align 8
  %98 = load i64*, i64** %6, align 8
  store i64 %97, i64* %98, align 8
  %99 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %99, i64* %10, align 8
  br label %125

100:                                              ; preds = %89
  %101 = load i8*, i8** %16, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 0
  %103 = load i8, i8* %102, align 1
  %104 = icmp ne i8 %103, 0
  br i1 %104, label %105, label %116

105:                                              ; preds = %100
  %106 = load i32, i32* %7, align 4
  %107 = load i8*, i8** %16, align 8
  %108 = call i64 @krb5_kt_resolve(i32 %106, i8* %107, i32** %13)
  store i64 %108, i64* %11, align 8
  %109 = load i64, i64* %11, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %105
  %112 = load i64, i64* %11, align 8
  %113 = load i64*, i64** %6, align 8
  store i64 %112, i64* %113, align 8
  %114 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %114, i64* %10, align 8
  br label %125

115:                                              ; preds = %105
  br label %116

116:                                              ; preds = %115, %100
  %117 = load i8*, i8** %16, align 8
  %118 = call i32 @free(i8* %117)
  store i8* null, i8** %16, align 8
  %119 = load i64*, i64** %6, align 8
  %120 = load i32*, i32** %15, align 8
  %121 = load i32*, i32** %12, align 8
  %122 = load i32*, i32** %13, align 8
  %123 = load i64*, i64** %8, align 8
  %124 = call i64 @_gsskrb5_krb5_import_cred(i64* %119, i32* %120, i32* %121, i32* %122, i64* %123)
  store i64 %124, i64* %10, align 8
  br label %125

125:                                              ; preds = %116, %111, %96, %85, %60, %45
  %126 = load i32*, i32** %15, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %128, label %132

128:                                              ; preds = %125
  %129 = load i32, i32* %7, align 4
  %130 = load i32*, i32** %15, align 8
  %131 = call i32 @krb5_cc_close(i32 %129, i32* %130)
  br label %132

132:                                              ; preds = %128, %125
  %133 = load i32*, i32** %12, align 8
  %134 = icmp ne i32* %133, null
  br i1 %134, label %135, label %139

135:                                              ; preds = %132
  %136 = load i32, i32* %7, align 4
  %137 = load i32*, i32** %12, align 8
  %138 = call i32 @krb5_free_principal(i32 %136, i32* %137)
  br label %139

139:                                              ; preds = %135, %132
  %140 = load i32*, i32** %13, align 8
  %141 = icmp ne i32* %140, null
  br i1 %141, label %142, label %146

142:                                              ; preds = %139
  %143 = load i32, i32* %7, align 4
  %144 = load i32*, i32** %13, align 8
  %145 = call i32 @krb5_kt_close(i32 %143, i32* %144)
  br label %146

146:                                              ; preds = %142, %139
  %147 = load i8*, i8** %16, align 8
  %148 = icmp ne i8* %147, null
  br i1 %148, label %149, label %152

149:                                              ; preds = %146
  %150 = load i8*, i8** %16, align 8
  %151 = call i32 @free(i8* %150)
  br label %152

152:                                              ; preds = %149, %146
  %153 = load i32*, i32** %14, align 8
  %154 = icmp ne i32* %153, null
  br i1 %154, label %155, label %158

155:                                              ; preds = %152
  %156 = load i32*, i32** %14, align 8
  %157 = call i32 @krb5_storage_free(i32* %156)
  br label %158

158:                                              ; preds = %155, %152
  %159 = load i64, i64* %10, align 8
  store i64 %159, i64* %5, align 8
  br label %160

160:                                              ; preds = %158, %37, %24
  %161 = load i64, i64* %5, align 8
  ret i64 %161
}

declare dso_local i32* @krb5_storage_from_mem(i32, i32) #1

declare dso_local i64 @krb5_ret_string(i32*, i8**) #1

declare dso_local i64 @krb5_cc_resolve(i32, i8*, i32**) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @krb5_parse_name(i32, i8*, i32**) #1

declare dso_local i64 @krb5_kt_resolve(i32, i8*, i32**) #1

declare dso_local i64 @_gsskrb5_krb5_import_cred(i64*, i32*, i32*, i32*, i64*) #1

declare dso_local i32 @krb5_cc_close(i32, i32*) #1

declare dso_local i32 @krb5_free_principal(i32, i32*) #1

declare dso_local i32 @krb5_kt_close(i32, i32*) #1

declare dso_local i32 @krb5_storage_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
