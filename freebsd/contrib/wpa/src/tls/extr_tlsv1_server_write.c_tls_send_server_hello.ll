; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_server_write.c_tls_send_server_hello.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_server_write.c_tls_send_server_hello.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_server = type { i32, i64, %struct.TYPE_2__*, i64, i64, i64 }
%struct.TYPE_2__ = type { i64, i64 }

@CHANGE_CIPHER_SPEC = common dso_local global i32 0, align 4
@CLIENT_CERTIFICATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.tlsv1_server*, i64*)* @tls_send_server_hello to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @tls_send_server_hello(%struct.tlsv1_server* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.tlsv1_server*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.tlsv1_server* %0, %struct.tlsv1_server** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 0, i32* %10, align 4
  store i8* null, i8** %11, align 8
  store i64 0, i64* %12, align 8
  %13 = load i64*, i64** %5, align 8
  store i64 0, i64* %13, align 8
  %14 = load %struct.tlsv1_server*, %struct.tlsv1_server** %4, align 8
  %15 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %14, i32 0, i32 5
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %2
  %19 = load %struct.tlsv1_server*, %struct.tlsv1_server** %4, align 8
  %20 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %18
  %26 = load %struct.tlsv1_server*, %struct.tlsv1_server** %4, align 8
  %27 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i8* @os_readfile(i64 %30, i64* %12)
  store i8* %31, i8** %11, align 8
  store i32 1, i32* %10, align 4
  br label %57

32:                                               ; preds = %18, %2
  %33 = load %struct.tlsv1_server*, %struct.tlsv1_server** %4, align 8
  %34 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = load %struct.tlsv1_server*, %struct.tlsv1_server** %4, align 8
  %39 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %37, %32
  %43 = load %struct.tlsv1_server*, %struct.tlsv1_server** %4, align 8
  %44 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %42
  %50 = load %struct.tlsv1_server*, %struct.tlsv1_server** %4, align 8
  %51 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %50, i32 0, i32 2
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i8* @os_readfile(i64 %54, i64* %12)
  store i8* %55, i8** %11, align 8
  br label %56

56:                                               ; preds = %49, %42, %37
  br label %57

57:                                               ; preds = %56, %25
  %58 = load i8*, i8** %11, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %57
  store i64 0, i64* %12, align 8
  br label %61

61:                                               ; preds = %60, %57
  %62 = load %struct.tlsv1_server*, %struct.tlsv1_server** %4, align 8
  %63 = call i32 @tls_server_cert_chain_der_len(%struct.tlsv1_server* %62)
  %64 = add nsw i32 1000, %63
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* %12, align 8
  %67 = add i64 %65, %66
  store i64 %67, i64* %9, align 8
  %68 = load i64, i64* %9, align 8
  %69 = call i8* @os_malloc(i64 %68)
  store i8* %69, i8** %6, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = icmp eq i8* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %61
  %73 = load i8*, i8** %11, align 8
  %74 = call i32 @os_free(i8* %73)
  store i8* null, i8** %3, align 8
  br label %166

75:                                               ; preds = %61
  %76 = load i8*, i8** %6, align 8
  store i8* %76, i8** %8, align 8
  %77 = load i8*, i8** %6, align 8
  %78 = load i64, i64* %9, align 8
  %79 = getelementptr inbounds i8, i8* %77, i64 %78
  store i8* %79, i8** %7, align 8
  %80 = load %struct.tlsv1_server*, %struct.tlsv1_server** %4, align 8
  %81 = load i8*, i8** %7, align 8
  %82 = call i64 @tls_write_server_hello(%struct.tlsv1_server* %80, i8** %8, i8* %81)
  %83 = icmp slt i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %75
  %85 = load i8*, i8** %6, align 8
  %86 = call i32 @os_free(i8* %85)
  %87 = load i8*, i8** %11, align 8
  %88 = call i32 @os_free(i8* %87)
  store i8* null, i8** %3, align 8
  br label %166

89:                                               ; preds = %75
  %90 = load %struct.tlsv1_server*, %struct.tlsv1_server** %4, align 8
  %91 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %120

94:                                               ; preds = %89
  %95 = load i8*, i8** %11, align 8
  %96 = call i32 @os_free(i8* %95)
  %97 = load %struct.tlsv1_server*, %struct.tlsv1_server** %4, align 8
  %98 = load i8*, i8** %7, align 8
  %99 = call i64 @tls_write_server_change_cipher_spec(%struct.tlsv1_server* %97, i8** %8, i8* %98)
  %100 = icmp slt i64 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %94
  %102 = load %struct.tlsv1_server*, %struct.tlsv1_server** %4, align 8
  %103 = load i8*, i8** %7, align 8
  %104 = call i64 @tls_write_server_finished(%struct.tlsv1_server* %102, i8** %8, i8* %103)
  %105 = icmp slt i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %101, %94
  %107 = load i8*, i8** %6, align 8
  %108 = call i32 @os_free(i8* %107)
  store i8* null, i8** %3, align 8
  br label %166

109:                                              ; preds = %101
  %110 = load i8*, i8** %8, align 8
  %111 = load i8*, i8** %6, align 8
  %112 = ptrtoint i8* %110 to i64
  %113 = ptrtoint i8* %111 to i64
  %114 = sub i64 %112, %113
  %115 = load i64*, i64** %5, align 8
  store i64 %114, i64* %115, align 8
  %116 = load i32, i32* @CHANGE_CIPHER_SPEC, align 4
  %117 = load %struct.tlsv1_server*, %struct.tlsv1_server** %4, align 8
  %118 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 8
  %119 = load i8*, i8** %6, align 8
  store i8* %119, i8** %3, align 8
  br label %166

120:                                              ; preds = %89
  %121 = load %struct.tlsv1_server*, %struct.tlsv1_server** %4, align 8
  %122 = load i8*, i8** %7, align 8
  %123 = call i64 @tls_write_server_certificate(%struct.tlsv1_server* %121, i8** %8, i8* %122)
  %124 = icmp slt i64 %123, 0
  br i1 %124, label %148, label %125

125:                                              ; preds = %120
  %126 = load %struct.tlsv1_server*, %struct.tlsv1_server** %4, align 8
  %127 = load i8*, i8** %7, align 8
  %128 = load i32, i32* %10, align 4
  %129 = load i8*, i8** %11, align 8
  %130 = load i64, i64* %12, align 8
  %131 = call i64 @tls_write_server_certificate_status(%struct.tlsv1_server* %126, i8** %8, i8* %127, i32 %128, i8* %129, i64 %130)
  %132 = icmp slt i64 %131, 0
  br i1 %132, label %148, label %133

133:                                              ; preds = %125
  %134 = load %struct.tlsv1_server*, %struct.tlsv1_server** %4, align 8
  %135 = load i8*, i8** %7, align 8
  %136 = call i64 @tls_write_server_key_exchange(%struct.tlsv1_server* %134, i8** %8, i8* %135)
  %137 = icmp slt i64 %136, 0
  br i1 %137, label %148, label %138

138:                                              ; preds = %133
  %139 = load %struct.tlsv1_server*, %struct.tlsv1_server** %4, align 8
  %140 = load i8*, i8** %7, align 8
  %141 = call i64 @tls_write_server_certificate_request(%struct.tlsv1_server* %139, i8** %8, i8* %140)
  %142 = icmp slt i64 %141, 0
  br i1 %142, label %148, label %143

143:                                              ; preds = %138
  %144 = load %struct.tlsv1_server*, %struct.tlsv1_server** %4, align 8
  %145 = load i8*, i8** %7, align 8
  %146 = call i64 @tls_write_server_hello_done(%struct.tlsv1_server* %144, i8** %8, i8* %145)
  %147 = icmp slt i64 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %143, %138, %133, %125, %120
  %149 = load i8*, i8** %6, align 8
  %150 = call i32 @os_free(i8* %149)
  %151 = load i8*, i8** %11, align 8
  %152 = call i32 @os_free(i8* %151)
  store i8* null, i8** %3, align 8
  br label %166

153:                                              ; preds = %143
  %154 = load i8*, i8** %11, align 8
  %155 = call i32 @os_free(i8* %154)
  %156 = load i8*, i8** %8, align 8
  %157 = load i8*, i8** %6, align 8
  %158 = ptrtoint i8* %156 to i64
  %159 = ptrtoint i8* %157 to i64
  %160 = sub i64 %158, %159
  %161 = load i64*, i64** %5, align 8
  store i64 %160, i64* %161, align 8
  %162 = load i32, i32* @CLIENT_CERTIFICATE, align 4
  %163 = load %struct.tlsv1_server*, %struct.tlsv1_server** %4, align 8
  %164 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 8
  %165 = load i8*, i8** %6, align 8
  store i8* %165, i8** %3, align 8
  br label %166

166:                                              ; preds = %153, %148, %109, %106, %84, %72
  %167 = load i8*, i8** %3, align 8
  ret i8* %167
}

declare dso_local i8* @os_readfile(i64, i64*) #1

declare dso_local i32 @tls_server_cert_chain_der_len(%struct.tlsv1_server*) #1

declare dso_local i8* @os_malloc(i64) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i64 @tls_write_server_hello(%struct.tlsv1_server*, i8**, i8*) #1

declare dso_local i64 @tls_write_server_change_cipher_spec(%struct.tlsv1_server*, i8**, i8*) #1

declare dso_local i64 @tls_write_server_finished(%struct.tlsv1_server*, i8**, i8*) #1

declare dso_local i64 @tls_write_server_certificate(%struct.tlsv1_server*, i8**, i8*) #1

declare dso_local i64 @tls_write_server_certificate_status(%struct.tlsv1_server*, i8**, i8*, i32, i8*, i64) #1

declare dso_local i64 @tls_write_server_key_exchange(%struct.tlsv1_server*, i8**, i8*) #1

declare dso_local i64 @tls_write_server_certificate_request(%struct.tlsv1_server*, i8**, i8*) #1

declare dso_local i64 @tls_write_server_hello_done(%struct.tlsv1_server*, i8**, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
