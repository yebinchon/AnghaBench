; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bio/extr_bss_acpt.c_acpt_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bio/extr_bss_acpt.c_acpt_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32*, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32*, i32*, i32*, i32, i32, i32*, i32*, i32, i32*, i32*, i32*, i32*, i32 }
%union.BIO_sock_info_u = type { i32* }

@BIO_F_ACPT_STATE = common dso_local global i32 0, align 4
@BIO_R_NO_ACCEPT_ADDR_OR_SERVICE_SPECIFIED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"hostname=\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c" service=\00", align 1
@AF_UNSPEC = common dso_local global i32 0, align 4
@BIO_R_UNAVAILABLE_IP_FAMILY = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@BIO_R_UNSUPPORTED_IP_FAMILY = common dso_local global i32 0, align 4
@BIO_LOOKUP_SERVER = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@BIO_R_LOOKUP_RETURNED_NOTHING = common dso_local global i32 0, align 4
@INVALID_SOCKET = common dso_local global i64 0, align 8
@SYS_F_SOCKET = common dso_local global i32 0, align 4
@BIO_R_UNABLE_TO_CREATE_SOCKET = common dso_local global i32 0, align 4
@BIO_SOCK_INFO_ADDRESS = common dso_local global i32 0, align 4
@BIO_RR_ACCEPT = common dso_local global i32 0, align 4
@BIO_CLOSE = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_16__*)* @acpt_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpt_state(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %union.BIO_sock_info_u, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %5, align 8
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  br label %11

11:                                               ; preds = %319, %2
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %318 [
    i32 135, label %15
    i32 133, label %63
    i32 134, label %112
    i32 132, label %153
    i32 136, label %201
    i32 131, label %309
  ]

15:                                               ; preds = %11
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 13
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %36

20:                                               ; preds = %15
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 12
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %36

25:                                               ; preds = %20
  %26 = load i32, i32* @BIO_F_ACPT_STATE, align 4
  %27 = load i32, i32* @BIO_R_NO_ACCEPT_ADDR_OR_SERVICE_SPECIFIED, align 4
  %28 = call i32 @BIOerr(i32 %26, i32 %27)
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 13
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 12
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @ERR_add_error_data(i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* %34)
  br label %320

36:                                               ; preds = %20, %15
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 9
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @OPENSSL_free(i32* %39)
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 9
  store i32* null, i32** %42, align 8
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 8
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @OPENSSL_free(i32* %45)
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 8
  store i32* null, i32** %48, align 8
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 4
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @OPENSSL_free(i32* %51)
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 4
  store i32* null, i32** %54, align 8
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @OPENSSL_free(i32* %57)
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 3
  store i32* null, i32** %60, align 8
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 0
  store i32 133, i32* %62, align 8
  br label %319

63:                                               ; preds = %11
  %64 = load i32, i32* @AF_UNSPEC, align 4
  store i32 %64, i32* %9, align 4
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 15
  %67 = load i32, i32* %66, align 8
  switch i32 %67, label %76 [
    i32 128, label %68
    i32 129, label %72
    i32 130, label %74
  ]

68:                                               ; preds = %63
  %69 = load i32, i32* @BIO_F_ACPT_STATE, align 4
  %70 = load i32, i32* @BIO_R_UNAVAILABLE_IP_FAMILY, align 4
  %71 = call i32 @BIOerr(i32 %69, i32 %70)
  br label %320

72:                                               ; preds = %63
  %73 = load i32, i32* @AF_INET, align 4
  store i32 %73, i32* %9, align 4
  br label %80

74:                                               ; preds = %63
  %75 = load i32, i32* @AF_UNSPEC, align 4
  store i32 %75, i32* %9, align 4
  br label %80

76:                                               ; preds = %63
  %77 = load i32, i32* @BIO_F_ACPT_STATE, align 4
  %78 = load i32, i32* @BIO_R_UNSUPPORTED_IP_FAMILY, align 4
  %79 = call i32 @BIOerr(i32 %77, i32 %78)
  br label %320

80:                                               ; preds = %74, %72
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 13
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 12
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* @BIO_LOOKUP_SERVER, align 4
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* @SOCK_STREAM, align 4
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 14
  %92 = call i32 @BIO_lookup(i32* %83, i32* %86, i32 %87, i32 %88, i32 %89, i32** %91)
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %80
  br label %320

95:                                               ; preds = %80
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 14
  %98 = load i32*, i32** %97, align 8
  %99 = icmp eq i32* %98, null
  br i1 %99, label %100, label %104

100:                                              ; preds = %95
  %101 = load i32, i32* @BIO_F_ACPT_STATE, align 4
  %102 = load i32, i32* @BIO_R_LOOKUP_RETURNED_NOTHING, align 4
  %103 = call i32 @BIOerr(i32 %101, i32 %102)
  br label %320

104:                                              ; preds = %95
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 14
  %107 = load i32*, i32** %106, align 8
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 11
  store i32* %107, i32** %109, align 8
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 0
  store i32 134, i32* %111, align 8
  br label %319

112:                                              ; preds = %11
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 11
  %115 = load i32*, i32** %114, align 8
  %116 = call i32 @BIO_ADDRINFO_family(i32* %115)
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 11
  %119 = load i32*, i32** %118, align 8
  %120 = call i32 @BIO_ADDRINFO_socktype(i32* %119)
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 11
  %123 = load i32*, i32** %122, align 8
  %124 = call i32 @BIO_ADDRINFO_protocol(i32* %123)
  %125 = call i32 @BIO_socket(i32 %116, i32 %120, i32 %124, i32 0)
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* %8, align 4
  %127 = load i64, i64* @INVALID_SOCKET, align 8
  %128 = trunc i64 %127 to i32
  %129 = icmp eq i32 %126, %128
  br i1 %129, label %130, label %144

130:                                              ; preds = %112
  %131 = load i32, i32* @SYS_F_SOCKET, align 4
  %132 = call i32 (...) @get_last_socket_error()
  %133 = call i32 @SYSerr(i32 %131, i32 %132)
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 13
  %136 = load i32*, i32** %135, align 8
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 12
  %139 = load i32*, i32** %138, align 8
  %140 = call i32 @ERR_add_error_data(i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %136, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* %139)
  %141 = load i32, i32* @BIO_F_ACPT_STATE, align 4
  %142 = load i32, i32* @BIO_R_UNABLE_TO_CREATE_SOCKET, align 4
  %143 = call i32 @BIOerr(i32 %141, i32 %142)
  br label %320

144:                                              ; preds = %112
  %145 = load i32, i32* %8, align 4
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 1
  store i32 %145, i32* %147, align 4
  %148 = load i32, i32* %8, align 4
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 8
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 0
  store i32 132, i32* %152, align 8
  br label %319

153:                                              ; preds = %11
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 11
  %159 = load i32*, i32** %158, align 8
  %160 = call i32 @BIO_ADDRINFO_address(i32* %159)
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 10
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @BIO_listen(i32 %156, i32 %160, i32 %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %171, label %166

166:                                              ; preds = %153
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @BIO_closesocket(i32 %169)
  br label %320

171:                                              ; preds = %153
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 7
  %174 = bitcast %union.BIO_sock_info_u* %10 to i32**
  store i32* %173, i32** %174, align 8
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @BIO_SOCK_INFO_ADDRESS, align 4
  %179 = call i32 @BIO_sock_info(i32 %177, i32 %178, %union.BIO_sock_info_u* %10)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %186, label %181

181:                                              ; preds = %171
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @BIO_closesocket(i32 %184)
  br label %320

186:                                              ; preds = %171
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 7
  %189 = call i8* @BIO_ADDR_hostname_string(i32* %188, i32 1)
  %190 = bitcast i8* %189 to i32*
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %191, i32 0, i32 9
  store i32* %190, i32** %192, align 8
  %193 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i32 0, i32 7
  %195 = call i8* @BIO_ADDR_service_string(i32* %194, i32 1)
  %196 = bitcast i8* %195 to i32*
  %197 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %197, i32 0, i32 8
  store i32* %196, i32** %198, align 8
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 0
  store i32 136, i32* %200, align 8
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %334

201:                                              ; preds = %11
  %202 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %202, i32 0, i32 1
  %204 = load i32*, i32** %203, align 8
  %205 = icmp ne i32* %204, null
  br i1 %205, label %206, label %209

206:                                              ; preds = %201
  %207 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %207, i32 0, i32 0
  store i32 131, i32* %208, align 8
  br label %319

209:                                              ; preds = %201
  %210 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %211 = call i32 @BIO_clear_retry_flags(%struct.TYPE_17__* %210)
  %212 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %212, i32 0, i32 2
  store i32 0, i32* %213, align 8
  %214 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %214, i32 0, i32 4
  %216 = load i32*, i32** %215, align 8
  %217 = call i32 @OPENSSL_free(i32* %216)
  %218 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %218, i32 0, i32 4
  store i32* null, i32** %219, align 8
  %220 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %220, i32 0, i32 3
  %222 = load i32*, i32** %221, align 8
  %223 = call i32 @OPENSSL_free(i32* %222)
  %224 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %224, i32 0, i32 3
  store i32* null, i32** %225, align 8
  %226 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %229, i32 0, i32 2
  %231 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %231, i32 0, i32 6
  %233 = load i32, i32* %232, align 8
  %234 = call i32 @BIO_accept_ex(i32 %228, i32* %230, i32 %233)
  store i32 %234, i32* %7, align 4
  %235 = load i32, i32* %7, align 4
  %236 = icmp slt i32 %235, 0
  br i1 %236, label %237, label %248

237:                                              ; preds = %209
  %238 = load i32, i32* %7, align 4
  %239 = call i32 @BIO_sock_should_retry(i32 %238)
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %247

241:                                              ; preds = %237
  %242 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %243 = call i32 @BIO_set_retry_special(%struct.TYPE_17__* %242)
  %244 = load i32, i32* @BIO_RR_ACCEPT, align 4
  %245 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %245, i32 0, i32 2
  store i32 %244, i32* %246, align 8
  br label %334

247:                                              ; preds = %237
  br label %248

248:                                              ; preds = %247, %209
  %249 = load i32, i32* %7, align 4
  %250 = icmp slt i32 %249, 0
  br i1 %250, label %251, label %253

251:                                              ; preds = %248
  %252 = load i32, i32* %7, align 4
  store i32 %252, i32* %8, align 4
  br label %320

253:                                              ; preds = %248
  %254 = load i32, i32* %7, align 4
  %255 = load i32, i32* @BIO_CLOSE, align 4
  %256 = call %struct.TYPE_17__* @BIO_new_socket(i32 %254, i32 %255)
  store %struct.TYPE_17__* %256, %struct.TYPE_17__** %5, align 8
  %257 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %258 = icmp eq %struct.TYPE_17__* %257, null
  br i1 %258, label %259, label %260

259:                                              ; preds = %253
  br label %320

260:                                              ; preds = %253
  %261 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %262 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %263 = call i32 @BIO_get_callback(%struct.TYPE_17__* %262)
  %264 = call i32 @BIO_set_callback(%struct.TYPE_17__* %261, i32 %263)
  %265 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %266 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %267 = call i32 @BIO_get_callback_arg(%struct.TYPE_17__* %266)
  %268 = call i32 @BIO_set_callback_arg(%struct.TYPE_17__* %265, i32 %267)
  %269 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %270 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %269, i32 0, i32 5
  %271 = load i32*, i32** %270, align 8
  %272 = icmp ne i32* %271, null
  br i1 %272, label %273, label %288

273:                                              ; preds = %260
  %274 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %275 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %274, i32 0, i32 5
  %276 = load i32*, i32** %275, align 8
  %277 = call %struct.TYPE_17__* @BIO_dup_chain(i32* %276)
  store %struct.TYPE_17__* %277, %struct.TYPE_17__** %6, align 8
  %278 = icmp eq %struct.TYPE_17__* %277, null
  br i1 %278, label %279, label %280

279:                                              ; preds = %273
  br label %320

280:                                              ; preds = %273
  %281 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %282 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %283 = call i32* @BIO_push(%struct.TYPE_17__* %281, %struct.TYPE_17__* %282)
  %284 = icmp ne i32* %283, null
  br i1 %284, label %286, label %285

285:                                              ; preds = %280
  br label %320

286:                                              ; preds = %280
  %287 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_17__* %287, %struct.TYPE_17__** %5, align 8
  br label %288

288:                                              ; preds = %286, %260
  %289 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %290 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %291 = call i32* @BIO_push(%struct.TYPE_17__* %289, %struct.TYPE_17__* %290)
  %292 = icmp eq i32* %291, null
  br i1 %292, label %293, label %294

293:                                              ; preds = %288
  br label %320

294:                                              ; preds = %288
  %295 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %296 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %295, i32 0, i32 2
  %297 = call i8* @BIO_ADDR_hostname_string(i32* %296, i32 1)
  %298 = bitcast i8* %297 to i32*
  %299 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %300 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %299, i32 0, i32 4
  store i32* %298, i32** %300, align 8
  %301 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %302 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %301, i32 0, i32 2
  %303 = call i8* @BIO_ADDR_service_string(i32* %302, i32 1)
  %304 = bitcast i8* %303 to i32*
  %305 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %306 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %305, i32 0, i32 3
  store i32* %304, i32** %306, align 8
  %307 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %308 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %307, i32 0, i32 0
  store i32 131, i32* %308, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %5, align 8
  store i32 1, i32* %8, align 4
  br label %334

309:                                              ; preds = %11
  %310 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %311 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %310, i32 0, i32 1
  %312 = load i32*, i32** %311, align 8
  %313 = icmp eq i32* %312, null
  br i1 %313, label %314, label %317

314:                                              ; preds = %309
  %315 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %316 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %315, i32 0, i32 0
  store i32 136, i32* %316, align 8
  br label %319

317:                                              ; preds = %309
  store i32 1, i32* %8, align 4
  br label %334

318:                                              ; preds = %11
  store i32 0, i32* %8, align 4
  br label %334

319:                                              ; preds = %314, %206, %144, %104, %36
  br label %11

320:                                              ; preds = %293, %285, %279, %259, %251, %181, %166, %130, %100, %94, %76, %68, %25
  %321 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %322 = icmp ne %struct.TYPE_17__* %321, null
  br i1 %322, label %323, label %326

323:                                              ; preds = %320
  %324 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %325 = call i32 @BIO_free(%struct.TYPE_17__* %324)
  br label %333

326:                                              ; preds = %320
  %327 = load i32, i32* %7, align 4
  %328 = icmp sge i32 %327, 0
  br i1 %328, label %329, label %332

329:                                              ; preds = %326
  %330 = load i32, i32* %7, align 4
  %331 = call i32 @BIO_closesocket(i32 %330)
  br label %332

332:                                              ; preds = %329, %326
  br label %333

333:                                              ; preds = %332, %323
  br label %334

334:                                              ; preds = %333, %318, %317, %294, %241, %186
  %335 = load i32, i32* %8, align 4
  ret i32 %335
}

declare dso_local i32 @BIOerr(i32, i32) #1

declare dso_local i32 @ERR_add_error_data(i32, i8*, i32*, i8*, i32*) #1

declare dso_local i32 @OPENSSL_free(i32*) #1

declare dso_local i32 @BIO_lookup(i32*, i32*, i32, i32, i32, i32**) #1

declare dso_local i32 @BIO_socket(i32, i32, i32, i32) #1

declare dso_local i32 @BIO_ADDRINFO_family(i32*) #1

declare dso_local i32 @BIO_ADDRINFO_socktype(i32*) #1

declare dso_local i32 @BIO_ADDRINFO_protocol(i32*) #1

declare dso_local i32 @SYSerr(i32, i32) #1

declare dso_local i32 @get_last_socket_error(...) #1

declare dso_local i32 @BIO_listen(i32, i32, i32) #1

declare dso_local i32 @BIO_ADDRINFO_address(i32*) #1

declare dso_local i32 @BIO_closesocket(i32) #1

declare dso_local i32 @BIO_sock_info(i32, i32, %union.BIO_sock_info_u*) #1

declare dso_local i8* @BIO_ADDR_hostname_string(i32*, i32) #1

declare dso_local i8* @BIO_ADDR_service_string(i32*, i32) #1

declare dso_local i32 @BIO_clear_retry_flags(%struct.TYPE_17__*) #1

declare dso_local i32 @BIO_accept_ex(i32, i32*, i32) #1

declare dso_local i32 @BIO_sock_should_retry(i32) #1

declare dso_local i32 @BIO_set_retry_special(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @BIO_new_socket(i32, i32) #1

declare dso_local i32 @BIO_set_callback(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @BIO_get_callback(%struct.TYPE_17__*) #1

declare dso_local i32 @BIO_set_callback_arg(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @BIO_get_callback_arg(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @BIO_dup_chain(i32*) #1

declare dso_local i32* @BIO_push(%struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local i32 @BIO_free(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
