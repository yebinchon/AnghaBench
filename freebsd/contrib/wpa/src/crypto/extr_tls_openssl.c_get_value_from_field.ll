; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_openssl.c_get_value_from_field.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_openssl.c_get_value_from_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_dn_field_order_cnt = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"CN\00", align 1
@NID_commonName = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@NID_countryName = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@NID_localityName = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"ST\00", align 1
@NID_stateOrProvinceName = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@NID_organizationName = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c"OU\00", align 1
@NID_organizationalUnitName = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [13 x i8] c"emailAddress\00", align 1
@NID_pkcs9_emailAddress = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [46 x i8] c"TLS: Unknown field '%s' in check_cert_subject\00", align 1
@.str.10 = private unnamed_addr constant [78 x i8] c"TLS: Distinguished Name field '%s' value is not defined in check_cert_subject\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, %struct.tls_dn_field_order_cnt*)* @get_value_from_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_value_from_field(i32* %0, i8* %1, %struct.tls_dn_field_order_cnt* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.tls_dn_field_order_cnt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.tls_dn_field_order_cnt* %2, %struct.tls_dn_field_order_cnt** %7, align 8
  store i8* null, i8** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i64 @os_strcmp(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %118

16:                                               ; preds = %3
  %17 = load i8*, i8** %6, align 8
  %18 = call i8* @str_token(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %9)
  store i8* %18, i8** %10, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %118

22:                                               ; preds = %16
  %23 = load i8*, i8** %10, align 8
  %24 = call i64 @os_strcmp(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load i32, i32* @NID_commonName, align 4
  store i32 %27, i32* %8, align 4
  %28 = load %struct.tls_dn_field_order_cnt*, %struct.tls_dn_field_order_cnt** %7, align 8
  %29 = getelementptr inbounds %struct.tls_dn_field_order_cnt, %struct.tls_dn_field_order_cnt* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  br label %102

32:                                               ; preds = %22
  %33 = load i8*, i8** %10, align 8
  %34 = call i64 @os_strcmp(i8* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load i32, i32* @NID_countryName, align 4
  store i32 %37, i32* %8, align 4
  %38 = load %struct.tls_dn_field_order_cnt*, %struct.tls_dn_field_order_cnt** %7, align 8
  %39 = getelementptr inbounds %struct.tls_dn_field_order_cnt, %struct.tls_dn_field_order_cnt* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  br label %101

42:                                               ; preds = %32
  %43 = load i8*, i8** %10, align 8
  %44 = call i64 @os_strcmp(i8* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load i32, i32* @NID_localityName, align 4
  store i32 %47, i32* %8, align 4
  %48 = load %struct.tls_dn_field_order_cnt*, %struct.tls_dn_field_order_cnt** %7, align 8
  %49 = getelementptr inbounds %struct.tls_dn_field_order_cnt, %struct.tls_dn_field_order_cnt* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  br label %100

52:                                               ; preds = %42
  %53 = load i8*, i8** %10, align 8
  %54 = call i64 @os_strcmp(i8* %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load i32, i32* @NID_stateOrProvinceName, align 4
  store i32 %57, i32* %8, align 4
  %58 = load %struct.tls_dn_field_order_cnt*, %struct.tls_dn_field_order_cnt** %7, align 8
  %59 = getelementptr inbounds %struct.tls_dn_field_order_cnt, %struct.tls_dn_field_order_cnt* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  br label %99

62:                                               ; preds = %52
  %63 = load i8*, i8** %10, align 8
  %64 = call i64 @os_strcmp(i8* %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = load i32, i32* @NID_organizationName, align 4
  store i32 %67, i32* %8, align 4
  %68 = load %struct.tls_dn_field_order_cnt*, %struct.tls_dn_field_order_cnt** %7, align 8
  %69 = getelementptr inbounds %struct.tls_dn_field_order_cnt, %struct.tls_dn_field_order_cnt* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  br label %98

72:                                               ; preds = %62
  %73 = load i8*, i8** %10, align 8
  %74 = call i64 @os_strcmp(i8* %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %72
  %77 = load i32, i32* @NID_organizationalUnitName, align 4
  store i32 %77, i32* %8, align 4
  %78 = load %struct.tls_dn_field_order_cnt*, %struct.tls_dn_field_order_cnt** %7, align 8
  %79 = getelementptr inbounds %struct.tls_dn_field_order_cnt, %struct.tls_dn_field_order_cnt* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 4
  br label %97

82:                                               ; preds = %72
  %83 = load i8*, i8** %10, align 8
  %84 = call i64 @os_strcmp(i8* %83, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %82
  %87 = load i32, i32* @NID_pkcs9_emailAddress, align 4
  store i32 %87, i32* %8, align 4
  %88 = load %struct.tls_dn_field_order_cnt*, %struct.tls_dn_field_order_cnt** %7, align 8
  %89 = getelementptr inbounds %struct.tls_dn_field_order_cnt, %struct.tls_dn_field_order_cnt* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 4
  br label %96

92:                                               ; preds = %82
  %93 = load i32, i32* @MSG_ERROR, align 4
  %94 = load i8*, i8** %10, align 8
  %95 = call i32 @wpa_printf(i32 %93, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0), i8* %94)
  store i32 0, i32* %4, align 4
  br label %118

96:                                               ; preds = %86
  br label %97

97:                                               ; preds = %96, %76
  br label %98

98:                                               ; preds = %97, %66
  br label %99

99:                                               ; preds = %98, %56
  br label %100

100:                                              ; preds = %99, %46
  br label %101

101:                                              ; preds = %100, %36
  br label %102

102:                                              ; preds = %101, %26
  %103 = load i8*, i8** %6, align 8
  %104 = call i8* @str_token(i8* %103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %9)
  store i8* %104, i8** %11, align 8
  %105 = load i8*, i8** %11, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %111, label %107

107:                                              ; preds = %102
  %108 = load i32, i32* @MSG_ERROR, align 4
  %109 = load i8*, i8** %10, align 8
  %110 = call i32 @wpa_printf(i32 %108, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.10, i64 0, i64 0), i8* %109)
  store i32 0, i32* %4, align 4
  br label %118

111:                                              ; preds = %102
  %112 = load i32*, i32** %5, align 8
  %113 = load i32, i32* %8, align 4
  %114 = load i8*, i8** %10, align 8
  %115 = load i8*, i8** %11, align 8
  %116 = load %struct.tls_dn_field_order_cnt*, %struct.tls_dn_field_order_cnt** %7, align 8
  %117 = call i32 @match_dn_field(i32* %112, i32 %113, i8* %114, i8* %115, %struct.tls_dn_field_order_cnt* %116)
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %111, %107, %92, %21, %15
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i64 @os_strcmp(i8*, i8*) #1

declare dso_local i8* @str_token(i8*, i8*, i8**) #1

declare dso_local i32 @wpa_printf(i32, i8*, i8*) #1

declare dso_local i32 @match_dn_field(i32*, i32, i8*, i8*, %struct.tls_dn_field_order_cnt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
