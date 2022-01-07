; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_string2key.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_string2key.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32*, i64 }

@args = common dso_local global i32 0, align 4
@num_args = common dso_local global i32 0, align 4
@help = common dso_local global i64 0, align 8
@version = common dso_local global i64 0, align 8
@version5 = common dso_local global i32 0, align 4
@version4 = common dso_local global i64 0, align 8
@afs = common dso_local global i64 0, align 8
@keytype_str = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"krb5_string_to_enctype\00", align 1
@ETYPE_DES_CBC_CRC = common dso_local global i64 0, align 8
@ETYPE_DES_CBC_MD4 = common dso_local global i64 0, align 8
@ETYPE_DES_CBC_MD5 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [53 x i8] c"DES is the only valid keytype for AFS and Kerberos 4\00", align 1
@principal = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"Kerberos v5 principal: \00", align 1
@stdin = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@cell = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"AFS cell: \00", align 1
@password = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"Password: \00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"Kerberos 5 (%s)\00", align 1
@KRB5_PW_SALT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"Kerberos 4\00", align 1
@KRB5_AFS3_SALT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [4 x i8] c"AFS\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__, align 8
  %9 = alloca i32, align 4
  %10 = alloca [1024 x i8], align 16
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i8**, i8*** %5, align 8
  %15 = load i32, i32* @args, align 4
  %16 = load i32, i32* @num_args, align 4
  %17 = call i32 @krb5_program_setup(i32* %6, i32 %13, i8** %14, i32 %15, i32 %16, i32* null)
  store i32 %17, i32* %9, align 4
  %18 = load i64, i64* @help, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = call i32 @usage(i32 0)
  br label %22

22:                                               ; preds = %20, %2
  %23 = load i64, i64* @version, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = call i32 @print_version(i32* null)
  store i32 0, i32* %3, align 4
  br label %193

27:                                               ; preds = %22
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %4, align 4
  %30 = sub nsw i32 %29, %28
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i8**, i8*** %5, align 8
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds i8*, i8** %32, i64 %33
  store i8** %34, i8*** %5, align 8
  %35 = load i32, i32* %4, align 4
  %36 = icmp sgt i32 %35, 1
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = call i32 @usage(i32 1)
  br label %39

39:                                               ; preds = %37, %27
  %40 = load i32, i32* @version5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %39
  %43 = load i64, i64* @version4, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  %46 = load i64, i64* @afs, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  store i32 1, i32* @version5, align 4
  br label %49

49:                                               ; preds = %48, %45, %42, %39
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @keytype_str, align 4
  %52 = call i64 @krb5_string_to_enctype(i32 %50, i32 %51, i64* %11)
  store i64 %52, i64* %12, align 8
  %53 = load i64, i64* %12, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load i32, i32* %6, align 4
  %57 = load i64, i64* %12, align 8
  %58 = call i32 @krb5_err(i32 %56, i32 1, i64 %57, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %59

59:                                               ; preds = %55, %49
  %60 = load i64, i64* %11, align 8
  %61 = load i64, i64* @ETYPE_DES_CBC_CRC, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %86

63:                                               ; preds = %59
  %64 = load i64, i64* %11, align 8
  %65 = load i64, i64* @ETYPE_DES_CBC_MD4, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %86

67:                                               ; preds = %63
  %68 = load i64, i64* %11, align 8
  %69 = load i64, i64* @ETYPE_DES_CBC_MD5, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %86

71:                                               ; preds = %67
  %72 = load i64, i64* @afs, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = load i64, i64* @version4, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %74, %71
  %78 = load i32, i32* @version5, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %77
  %81 = load i64, i64* @ETYPE_DES_CBC_CRC, align 8
  store i64 %81, i64* %11, align 8
  br label %85

82:                                               ; preds = %77
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @krb5_errx(i32 %83, i32 1, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  br label %85

85:                                               ; preds = %82, %80
  br label %86

86:                                               ; preds = %85, %74, %67, %63, %59
  %87 = load i32, i32* @version5, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %106

89:                                               ; preds = %86
  %90 = load i32*, i32** @principal, align 8
  %91 = icmp eq i32* %90, null
  br i1 %91, label %92, label %106

92:                                               ; preds = %89
  %93 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %94 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %95 = load i32, i32* @stdin, align 4
  %96 = call i32* @fgets(i8* %94, i32 1024, i32 %95)
  %97 = icmp eq i32* %96, null
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  store i32 1, i32* %3, align 4
  br label %193

99:                                               ; preds = %92
  %100 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %101 = call i64 @strcspn(i8* %100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %102 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 %101
  store i8 0, i8* %102, align 1
  %103 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %104 = call i8* @estrdup(i8* %103)
  %105 = bitcast i8* %104 to i32*
  store i32* %105, i32** @principal, align 8
  br label %106

106:                                              ; preds = %99, %89, %86
  %107 = load i64, i64* @afs, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %126

109:                                              ; preds = %106
  %110 = load i32*, i32** @cell, align 8
  %111 = icmp eq i32* %110, null
  br i1 %111, label %112, label %126

112:                                              ; preds = %109
  %113 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %114 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %115 = load i32, i32* @stdin, align 4
  %116 = call i32* @fgets(i8* %114, i32 1024, i32 %115)
  %117 = icmp eq i32* %116, null
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  store i32 1, i32* %3, align 4
  br label %193

119:                                              ; preds = %112
  %120 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %121 = call i64 @strcspn(i8* %120, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %122 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 %121
  store i8 0, i8* %122, align 1
  %123 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %124 = call i8* @estrdup(i8* %123)
  %125 = bitcast i8* %124 to i32*
  store i32* %125, i32** @cell, align 8
  br label %126

126:                                              ; preds = %119, %109, %106
  %127 = load i8**, i8*** %5, align 8
  %128 = getelementptr inbounds i8*, i8** %127, i64 0
  %129 = load i8*, i8** %128, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %131, label %135

131:                                              ; preds = %126
  %132 = load i8**, i8*** %5, align 8
  %133 = getelementptr inbounds i8*, i8** %132, i64 0
  %134 = load i8*, i8** %133, align 8
  store i8* %134, i8** @password, align 8
  br label %135

135:                                              ; preds = %131, %126
  %136 = load i8*, i8** @password, align 8
  %137 = icmp eq i8* %136, null
  br i1 %137, label %138, label %145

138:                                              ; preds = %135
  %139 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %140 = call i64 @UI_UTIL_read_pw_string(i8* %139, i32 1024, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 0)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %138
  store i32 1, i32* %3, align 4
  br label %193

143:                                              ; preds = %138
  %144 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  store i8* %144, i8** @password, align 8
  br label %145

145:                                              ; preds = %143, %135
  %146 = load i32, i32* @version5, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %161

148:                                              ; preds = %145
  %149 = load i32, i32* %6, align 4
  %150 = load i32*, i32** @principal, align 8
  %151 = call i32 @krb5_parse_name(i32 %149, i32* %150, i32* %7)
  %152 = load i32, i32* %6, align 4
  %153 = load i32, i32* %7, align 4
  %154 = call i32 @krb5_get_pw_salt(i32 %152, i32 %153, %struct.TYPE_7__* %8)
  %155 = load i32, i32* %6, align 4
  %156 = load i64, i64* %11, align 8
  %157 = load i8*, i8** @password, align 8
  %158 = call i32 @tokey(i32 %155, i64 %156, i8* %157, %struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %159 = load i32, i32* %6, align 4
  %160 = call i32 @krb5_free_salt(i32 %159, %struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %8)
  br label %161

161:                                              ; preds = %148, %145
  %162 = load i64, i64* @version4, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %175

164:                                              ; preds = %161
  %165 = load i32, i32* @KRB5_PW_SALT, align 4
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  store i32 %165, i32* %166, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 1
  store i64 0, i64* %168, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  store i32* null, i32** %170, align 8
  %171 = load i32, i32* %6, align 4
  %172 = load i64, i64* @ETYPE_DES_CBC_MD5, align 8
  %173 = load i8*, i8** @password, align 8
  %174 = call i32 @tokey(i32 %171, i64 %172, i8* %173, %struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  br label %175

175:                                              ; preds = %164, %161
  %176 = load i64, i64* @afs, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %192

178:                                              ; preds = %175
  %179 = load i32, i32* @KRB5_AFS3_SALT, align 4
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  store i32 %179, i32* %180, align 8
  %181 = load i32*, i32** @cell, align 8
  %182 = call i64 @strlen(i32* %181)
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 1
  store i64 %182, i64* %184, align 8
  %185 = load i32*, i32** @cell, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 0
  store i32* %185, i32** %187, align 8
  %188 = load i32, i32* %6, align 4
  %189 = load i64, i64* @ETYPE_DES_CBC_MD5, align 8
  %190 = load i8*, i8** @password, align 8
  %191 = call i32 @tokey(i32 %188, i64 %189, i8* %190, %struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  br label %192

192:                                              ; preds = %178, %175
  store i32 0, i32* %3, align 4
  br label %193

193:                                              ; preds = %192, %142, %118, %98, %25
  %194 = load i32, i32* %3, align 4
  ret i32 %194
}

declare dso_local i32 @krb5_program_setup(i32*, i32, i8**, i32, i32, i32*) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @print_version(i32*) #1

declare dso_local i64 @krb5_string_to_enctype(i32, i32, i64*) #1

declare dso_local i32 @krb5_err(i32, i32, i64, i8*) #1

declare dso_local i32 @krb5_errx(i32, i32, i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32* @fgets(i8*, i32, i32) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i8* @estrdup(i8*) #1

declare dso_local i64 @UI_UTIL_read_pw_string(i8*, i32, i8*, i32) #1

declare dso_local i32 @krb5_parse_name(i32, i32*, i32*) #1

declare dso_local i32 @krb5_get_pw_salt(i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @tokey(i32, i64, i8*, %struct.TYPE_7__* byval(%struct.TYPE_7__) align 8, i8*) #1

declare dso_local i32 @krb5_free_salt(i32, %struct.TYPE_7__* byval(%struct.TYPE_7__) align 8) #1

declare dso_local i64 @strlen(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
