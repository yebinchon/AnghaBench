; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_osu_client.c_process_est_cert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_osu_client.c_process_est_cert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hs20_osu_client = type { i32 }

@SHA256_MAC_LEN = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"PPS for certificate credential - fqdn=%s\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Invalid SHA256 hash value\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"Invalid client certificate SHA256 hash value in PPS\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Cert/est_cert.der\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"Could not find client certificate from EST\00", align 1
@.str.5 = private unnamed_addr constant [67 x i8] c"Client certificate from EST does not match fingerprint from PPS MO\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"Client certificate from EST matches PPS MO\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"SP/%s/client-ca.pem\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"Cert/est-cacerts.pem\00", align 1
@.str.9 = private unnamed_addr constant [52 x i8] c"Could not move est-cacerts.pem to client-ca.pem: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [22 x i8] c"SP/%s/client-cert.pem\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"Cert/est_cert.pem\00", align 1
@.str.12 = private unnamed_addr constant [51 x i8] c"Could not move est_cert.pem to client-cert.pem: %s\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"SP/%s/client-key.pem\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"Cert/privkey-plain.pem\00", align 1
@.str.16 = private unnamed_addr constant [55 x i8] c"Could not move privkey-plain.pem to client-key.pem: %s\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"Cert/est-req.b64\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"Cert/est-req.pem\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"Cert\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hs20_osu_client*, i32*, i8*)* @process_est_cert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_est_cert(%struct.hs20_osu_client* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hs20_osu_client*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca [200 x i8], align 16
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  store %struct.hs20_osu_client* %0, %struct.hs20_osu_client** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %19 = load i32, i32* @SHA256_MAC_LEN, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %8, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %9, align 8
  %23 = load i32, i32* @SHA256_MAC_LEN, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %10, align 8
  %26 = load i32, i32* @MSG_INFO, align 4
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 (i32, i8*, ...) @wpa_printf(i32 %26, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %27)
  %29 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %30 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = call i8* @xml_node_get_text(i32 %31, i32* %32)
  store i8* %33, i8** %15, align 8
  %34 = load i8*, i8** %15, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %150

37:                                               ; preds = %3
  %38 = load i8*, i8** %15, align 8
  %39 = load i32, i32* @SHA256_MAC_LEN, align 4
  %40 = call i64 @hexstr2bin(i8* %38, i32* %22, i32 %39)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %37
  %43 = load i32, i32* @MSG_INFO, align 4
  %44 = call i32 (i32, i8*, ...) @wpa_printf(i32 %43, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %46 = call i32 @write_result(%struct.hs20_osu_client* %45, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %47 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %48 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i8*, i8** %15, align 8
  %51 = call i32 @xml_node_get_text_free(i32 %49, i8* %50)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %150

52:                                               ; preds = %37
  %53 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %54 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i8*, i8** %15, align 8
  %57 = call i32 @xml_node_get_text_free(i32 %55, i8* %56)
  %58 = call i8* @os_readfile(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i64* %13)
  store i8* %58, i8** %11, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %52
  %62 = load i32, i32* @MSG_INFO, align 4
  %63 = call i32 (i32, i8*, ...) @wpa_printf(i32 %62, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  %64 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %65 = call i32 @write_result(%struct.hs20_osu_client* %64, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %150

66:                                               ; preds = %52
  %67 = bitcast i8** %11 to i32**
  %68 = call i64 @sha256_vector(i32 1, i32** %67, i64* %13, i32* %25)
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load i8*, i8** %11, align 8
  %72 = call i32 @os_free(i8* %71)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %150

73:                                               ; preds = %66
  %74 = load i8*, i8** %11, align 8
  %75 = call i32 @os_free(i8* %74)
  %76 = mul nuw i64 4, %20
  %77 = trunc i64 %76 to i32
  %78 = call i64 @os_memcmp(i32* %22, i32* %25, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %73
  %81 = load i32, i32* @MSG_INFO, align 4
  %82 = call i32 (i32, i8*, ...) @wpa_printf(i32 %81, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.5, i64 0, i64 0))
  %83 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %84 = call i32 @write_result(%struct.hs20_osu_client* %83, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %150

85:                                               ; preds = %73
  %86 = load i32, i32* @MSG_INFO, align 4
  %87 = call i32 (i32, i8*, ...) @wpa_printf(i32 %86, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0))
  %88 = call i32 @unlink(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %89 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %90 = load i8*, i8** %7, align 8
  %91 = call i32 @os_snprintf(i8* %89, i32 200, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* %90)
  %92 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %93 = call i64 @rename(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8* %92)
  %94 = icmp slt i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %85
  %96 = load i32, i32* @MSG_INFO, align 4
  %97 = load i32, i32* @errno, align 4
  %98 = call i8* @strerror(i32 %97)
  %99 = call i32 (i32, i8*, ...) @wpa_printf(i32 %96, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.9, i64 0, i64 0), i8* %98)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %150

100:                                              ; preds = %85
  %101 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %102 = call i8* @os_readfile(i8* %101, i64* %14)
  store i8* %102, i8** %12, align 8
  %103 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %104 = load i8*, i8** %7, align 8
  %105 = call i32 @os_snprintf(i8* %103, i32 200, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i8* %104)
  %106 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %107 = call i64 @rename(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i8* %106)
  %108 = icmp slt i64 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %100
  %110 = load i32, i32* @MSG_INFO, align 4
  %111 = load i32, i32* @errno, align 4
  %112 = call i8* @strerror(i32 %111)
  %113 = call i32 (i32, i8*, ...) @wpa_printf(i32 %110, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.12, i64 0, i64 0), i8* %112)
  %114 = load i8*, i8** %12, align 8
  %115 = call i32 @os_free(i8* %114)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %150

116:                                              ; preds = %100
  %117 = load i8*, i8** %12, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %134

119:                                              ; preds = %116
  %120 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %121 = call i32* @fopen(i8* %120, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  store i32* %121, i32** %18, align 8
  %122 = load i32*, i32** %18, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %131

124:                                              ; preds = %119
  %125 = load i8*, i8** %12, align 8
  %126 = load i64, i64* %14, align 8
  %127 = load i32*, i32** %18, align 8
  %128 = call i32 @fwrite(i8* %125, i64 %126, i32 1, i32* %127)
  %129 = load i32*, i32** %18, align 8
  %130 = call i32 @fclose(i32* %129)
  br label %131

131:                                              ; preds = %124, %119
  %132 = load i8*, i8** %12, align 8
  %133 = call i32 @os_free(i8* %132)
  br label %134

134:                                              ; preds = %131, %116
  %135 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %136 = load i8*, i8** %7, align 8
  %137 = call i32 @os_snprintf(i8* %135, i32 200, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i8* %136)
  %138 = getelementptr inbounds [200 x i8], [200 x i8]* %16, i64 0, i64 0
  %139 = call i64 @rename(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i8* %138)
  %140 = icmp slt i64 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %134
  %142 = load i32, i32* @MSG_INFO, align 4
  %143 = load i32, i32* @errno, align 4
  %144 = call i8* @strerror(i32 %143)
  %145 = call i32 (i32, i8*, ...) @wpa_printf(i32 %142, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.16, i64 0, i64 0), i8* %144)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %150

146:                                              ; preds = %134
  %147 = call i32 @unlink(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0))
  %148 = call i32 @unlink(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0))
  %149 = call i32 @rmdir(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %150

150:                                              ; preds = %146, %141, %109, %95, %80, %70, %61, %42, %36
  %151 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %151)
  %152 = load i32, i32* %4, align 4
  ret i32 %152
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #2

declare dso_local i8* @xml_node_get_text(i32, i32*) #2

declare dso_local i64 @hexstr2bin(i8*, i32*, i32) #2

declare dso_local i32 @write_result(%struct.hs20_osu_client*, i8*) #2

declare dso_local i32 @xml_node_get_text_free(i32, i8*) #2

declare dso_local i8* @os_readfile(i8*, i64*) #2

declare dso_local i64 @sha256_vector(i32, i32**, i64*, i32*) #2

declare dso_local i32 @os_free(i8*) #2

declare dso_local i64 @os_memcmp(i32*, i32*, i32) #2

declare dso_local i32 @unlink(i8*) #2

declare dso_local i32 @os_snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i64 @rename(i8*, i8*) #2

declare dso_local i8* @strerror(i32) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @fwrite(i8*, i64, i32, i32*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @rmdir(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
