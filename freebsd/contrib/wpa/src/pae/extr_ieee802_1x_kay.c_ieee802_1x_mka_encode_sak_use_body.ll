; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/pae/extr_ieee802_1x_kay.c_ieee802_1x_mka_encode_sak_use_body.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/pae/extr_ieee802_1x_kay.c_ieee802_1x_mka_encode_sak_use_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802_1x_mka_participant = type { %struct.TYPE_2__, %struct.TYPE_2__, i32, i8*, i8*, i64, i8*, i64, %struct.ieee802_1x_kay* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.ieee802_1x_kay = type { i64, i64, i64, i8*, i8*, i8*, i32 }
%struct.wpabuf = type { i32 }
%struct.ieee802_1x_mka_sak_use_body = type { i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i32, i64, i8*, i8*, i32 }

@MKA_SAK_USE = common dso_local global i32 0, align 4
@MKA_HDR_LEN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@MKA_BOUNDED_HELLO_TIME = common dso_local global i64 0, align 8
@MSG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"KaY: My LPN exhaustion\00", align 1
@Strict = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee802_1x_mka_participant*, %struct.wpabuf*)* @ieee802_1x_mka_encode_sak_use_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee802_1x_mka_encode_sak_use_body(%struct.ieee802_1x_mka_participant* %0, %struct.wpabuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee802_1x_mka_participant*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca %struct.ieee802_1x_mka_sak_use_body*, align 8
  %7 = alloca %struct.ieee802_1x_kay*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.ieee802_1x_mka_participant* %0, %struct.ieee802_1x_mka_participant** %4, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %5, align 8
  %10 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %4, align 8
  %11 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %10, i32 0, i32 8
  %12 = load %struct.ieee802_1x_kay*, %struct.ieee802_1x_kay** %11, align 8
  store %struct.ieee802_1x_kay* %12, %struct.ieee802_1x_kay** %7, align 8
  store i64 1, i64* %9, align 8
  %13 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %4, align 8
  %14 = call i32 @ieee802_1x_mka_get_sak_use_length(%struct.ieee802_1x_mka_participant* %13)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call %struct.ieee802_1x_mka_sak_use_body* @wpabuf_put(%struct.wpabuf* %15, i32 %16)
  store %struct.ieee802_1x_mka_sak_use_body* %17, %struct.ieee802_1x_mka_sak_use_body** %6, align 8
  %18 = load i32, i32* @MKA_SAK_USE, align 4
  %19 = load %struct.ieee802_1x_mka_sak_use_body*, %struct.ieee802_1x_mka_sak_use_body** %6, align 8
  %20 = getelementptr inbounds %struct.ieee802_1x_mka_sak_use_body, %struct.ieee802_1x_mka_sak_use_body* %19, i32 0, i32 15
  store i32 %18, i32* %20, align 8
  %21 = load %struct.ieee802_1x_mka_sak_use_body*, %struct.ieee802_1x_mka_sak_use_body** %6, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @MKA_HDR_LEN, align 4
  %24 = sub i32 %22, %23
  %25 = call i32 @set_mka_param_body_len(%struct.ieee802_1x_mka_sak_use_body* %21, i32 %24)
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @MKA_HDR_LEN, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %50

29:                                               ; preds = %2
  %30 = load i8*, i8** @TRUE, align 8
  %31 = ptrtoint i8* %30 to i32
  %32 = load %struct.ieee802_1x_mka_sak_use_body*, %struct.ieee802_1x_mka_sak_use_body** %6, align 8
  %33 = getelementptr inbounds %struct.ieee802_1x_mka_sak_use_body, %struct.ieee802_1x_mka_sak_use_body* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i8*, i8** @TRUE, align 8
  %35 = ptrtoint i8* %34 to i32
  %36 = load %struct.ieee802_1x_mka_sak_use_body*, %struct.ieee802_1x_mka_sak_use_body** %6, align 8
  %37 = getelementptr inbounds %struct.ieee802_1x_mka_sak_use_body, %struct.ieee802_1x_mka_sak_use_body* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.ieee802_1x_mka_sak_use_body*, %struct.ieee802_1x_mka_sak_use_body** %6, align 8
  %39 = getelementptr inbounds %struct.ieee802_1x_mka_sak_use_body, %struct.ieee802_1x_mka_sak_use_body* %38, i32 0, i32 12
  store i64 0, i64* %39, align 8
  %40 = load i8*, i8** @FALSE, align 8
  %41 = load %struct.ieee802_1x_mka_sak_use_body*, %struct.ieee802_1x_mka_sak_use_body** %6, align 8
  %42 = getelementptr inbounds %struct.ieee802_1x_mka_sak_use_body, %struct.ieee802_1x_mka_sak_use_body* %41, i32 0, i32 3
  store i8* %40, i8** %42, align 8
  %43 = load i8*, i8** @FALSE, align 8
  %44 = load %struct.ieee802_1x_mka_sak_use_body*, %struct.ieee802_1x_mka_sak_use_body** %6, align 8
  %45 = getelementptr inbounds %struct.ieee802_1x_mka_sak_use_body, %struct.ieee802_1x_mka_sak_use_body* %44, i32 0, i32 4
  store i8* %43, i8** %45, align 8
  %46 = load i8*, i8** @FALSE, align 8
  %47 = ptrtoint i8* %46 to i32
  %48 = load %struct.ieee802_1x_mka_sak_use_body*, %struct.ieee802_1x_mka_sak_use_body** %6, align 8
  %49 = getelementptr inbounds %struct.ieee802_1x_mka_sak_use_body, %struct.ieee802_1x_mka_sak_use_body* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  store i32 0, i32* %3, align 4
  br label %212

50:                                               ; preds = %2
  %51 = load %struct.ieee802_1x_kay*, %struct.ieee802_1x_kay** %7, align 8
  %52 = getelementptr inbounds %struct.ieee802_1x_kay, %struct.ieee802_1x_kay* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @MKA_BOUNDED_HELLO_TIME, align 8
  %55 = icmp sle i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = load %struct.ieee802_1x_mka_sak_use_body*, %struct.ieee802_1x_mka_sak_use_body** %6, align 8
  %58 = getelementptr inbounds %struct.ieee802_1x_mka_sak_use_body, %struct.ieee802_1x_mka_sak_use_body* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %4, align 8
  %60 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %4, align 8
  %61 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %60, i32 0, i32 1
  %62 = call i64 @ieee802_1x_mka_get_lpn(%struct.ieee802_1x_mka_participant* %59, %struct.TYPE_2__* %61)
  store i64 %62, i64* %9, align 8
  %63 = load i64, i64* %9, align 8
  %64 = load %struct.ieee802_1x_kay*, %struct.ieee802_1x_kay** %7, align 8
  %65 = getelementptr inbounds %struct.ieee802_1x_kay, %struct.ieee802_1x_kay* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp sgt i64 %63, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %50
  %69 = load i32, i32* @MSG_WARNING, align 4
  %70 = call i32 @wpa_printf(i32 %69, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %71 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %4, align 8
  %72 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %71, i32 0, i32 7
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %68
  %76 = load i8*, i8** @TRUE, align 8
  %77 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %4, align 8
  %78 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %77, i32 0, i32 6
  store i8* %76, i8** %78, align 8
  br label %79

79:                                               ; preds = %75, %68
  br label %80

80:                                               ; preds = %79, %50
  %81 = load i64, i64* %9, align 8
  %82 = call i8* @host_to_be32(i64 %81)
  %83 = load %struct.ieee802_1x_mka_sak_use_body*, %struct.ieee802_1x_mka_sak_use_body** %6, align 8
  %84 = getelementptr inbounds %struct.ieee802_1x_mka_sak_use_body, %struct.ieee802_1x_mka_sak_use_body* %83, i32 0, i32 14
  store i8* %82, i8** %84, align 8
  %85 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %4, align 8
  %86 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %4, align 8
  %87 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %86, i32 0, i32 0
  %88 = call i64 @ieee802_1x_mka_get_lpn(%struct.ieee802_1x_mka_participant* %85, %struct.TYPE_2__* %87)
  store i64 %88, i64* %9, align 8
  %89 = load i64, i64* %9, align 8
  %90 = call i8* @host_to_be32(i64 %89)
  %91 = load %struct.ieee802_1x_mka_sak_use_body*, %struct.ieee802_1x_mka_sak_use_body** %6, align 8
  %92 = getelementptr inbounds %struct.ieee802_1x_mka_sak_use_body, %struct.ieee802_1x_mka_sak_use_body* %91, i32 0, i32 13
  store i8* %90, i8** %92, align 8
  %93 = load %struct.ieee802_1x_kay*, %struct.ieee802_1x_kay** %7, align 8
  %94 = getelementptr inbounds %struct.ieee802_1x_kay, %struct.ieee802_1x_kay* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  %98 = zext i1 %97 to i32
  %99 = load %struct.ieee802_1x_mka_sak_use_body*, %struct.ieee802_1x_mka_sak_use_body** %6, align 8
  %100 = getelementptr inbounds %struct.ieee802_1x_mka_sak_use_body, %struct.ieee802_1x_mka_sak_use_body* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load %struct.ieee802_1x_kay*, %struct.ieee802_1x_kay** %7, align 8
  %102 = getelementptr inbounds %struct.ieee802_1x_kay, %struct.ieee802_1x_kay* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @Strict, align 8
  %105 = icmp ne i64 %103, %104
  %106 = zext i1 %105 to i32
  %107 = load %struct.ieee802_1x_mka_sak_use_body*, %struct.ieee802_1x_mka_sak_use_body** %6, align 8
  %108 = getelementptr inbounds %struct.ieee802_1x_mka_sak_use_body, %struct.ieee802_1x_mka_sak_use_body* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %4, align 8
  %110 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %109, i32 0, i32 5
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.ieee802_1x_mka_sak_use_body*, %struct.ieee802_1x_mka_sak_use_body** %6, align 8
  %113 = getelementptr inbounds %struct.ieee802_1x_mka_sak_use_body, %struct.ieee802_1x_mka_sak_use_body* %112, i32 0, i32 12
  store i64 %111, i64* %113, align 8
  %114 = load %struct.ieee802_1x_mka_sak_use_body*, %struct.ieee802_1x_mka_sak_use_body** %6, align 8
  %115 = getelementptr inbounds %struct.ieee802_1x_mka_sak_use_body, %struct.ieee802_1x_mka_sak_use_body* %114, i32 0, i32 11
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %4, align 8
  %118 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @os_memcpy(i32 %116, i32 %120, i32 4)
  %122 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %4, align 8
  %123 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = call i8* @host_to_be32(i64 %125)
  %127 = load %struct.ieee802_1x_mka_sak_use_body*, %struct.ieee802_1x_mka_sak_use_body** %6, align 8
  %128 = getelementptr inbounds %struct.ieee802_1x_mka_sak_use_body, %struct.ieee802_1x_mka_sak_use_body* %127, i32 0, i32 10
  store i8* %126, i8** %128, align 8
  %129 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %4, align 8
  %130 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %129, i32 0, i32 4
  %131 = load i8*, i8** %130, align 8
  %132 = load %struct.ieee802_1x_mka_sak_use_body*, %struct.ieee802_1x_mka_sak_use_body** %6, align 8
  %133 = getelementptr inbounds %struct.ieee802_1x_mka_sak_use_body, %struct.ieee802_1x_mka_sak_use_body* %132, i32 0, i32 3
  store i8* %131, i8** %133, align 8
  %134 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %4, align 8
  %135 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %134, i32 0, i32 3
  %136 = load i8*, i8** %135, align 8
  %137 = load %struct.ieee802_1x_mka_sak_use_body*, %struct.ieee802_1x_mka_sak_use_body** %6, align 8
  %138 = getelementptr inbounds %struct.ieee802_1x_mka_sak_use_body, %struct.ieee802_1x_mka_sak_use_body* %137, i32 0, i32 4
  store i8* %136, i8** %138, align 8
  %139 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %4, align 8
  %140 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.ieee802_1x_mka_sak_use_body*, %struct.ieee802_1x_mka_sak_use_body** %6, align 8
  %143 = getelementptr inbounds %struct.ieee802_1x_mka_sak_use_body, %struct.ieee802_1x_mka_sak_use_body* %142, i32 0, i32 9
  store i32 %141, i32* %143, align 4
  %144 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %4, align 8
  %145 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %4, align 8
  %149 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %147, %151
  br i1 %152, label %153, label %181

153:                                              ; preds = %80
  %154 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %4, align 8
  %155 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %181

159:                                              ; preds = %153
  %160 = load i8*, i8** @TRUE, align 8
  %161 = load %struct.ieee802_1x_mka_sak_use_body*, %struct.ieee802_1x_mka_sak_use_body** %6, align 8
  %162 = getelementptr inbounds %struct.ieee802_1x_mka_sak_use_body, %struct.ieee802_1x_mka_sak_use_body* %161, i32 0, i32 6
  store i8* %160, i8** %162, align 8
  %163 = load i8*, i8** @TRUE, align 8
  %164 = load %struct.ieee802_1x_mka_sak_use_body*, %struct.ieee802_1x_mka_sak_use_body** %6, align 8
  %165 = getelementptr inbounds %struct.ieee802_1x_mka_sak_use_body, %struct.ieee802_1x_mka_sak_use_body* %164, i32 0, i32 5
  store i8* %163, i8** %165, align 8
  %166 = load %struct.ieee802_1x_mka_sak_use_body*, %struct.ieee802_1x_mka_sak_use_body** %6, align 8
  %167 = getelementptr inbounds %struct.ieee802_1x_mka_sak_use_body, %struct.ieee802_1x_mka_sak_use_body* %166, i32 0, i32 8
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %4, align 8
  %170 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @os_memcpy(i32 %168, i32 %172, i32 4)
  %174 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %4, align 8
  %175 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = call i8* @host_to_be32(i64 %177)
  %179 = load %struct.ieee802_1x_mka_sak_use_body*, %struct.ieee802_1x_mka_sak_use_body** %6, align 8
  %180 = getelementptr inbounds %struct.ieee802_1x_mka_sak_use_body, %struct.ieee802_1x_mka_sak_use_body* %179, i32 0, i32 7
  store i8* %178, i8** %180, align 8
  br label %188

181:                                              ; preds = %153, %80
  %182 = load i8*, i8** @FALSE, align 8
  %183 = load %struct.ieee802_1x_mka_sak_use_body*, %struct.ieee802_1x_mka_sak_use_body** %6, align 8
  %184 = getelementptr inbounds %struct.ieee802_1x_mka_sak_use_body, %struct.ieee802_1x_mka_sak_use_body* %183, i32 0, i32 6
  store i8* %182, i8** %184, align 8
  %185 = load i8*, i8** @FALSE, align 8
  %186 = load %struct.ieee802_1x_mka_sak_use_body*, %struct.ieee802_1x_mka_sak_use_body** %6, align 8
  %187 = getelementptr inbounds %struct.ieee802_1x_mka_sak_use_body, %struct.ieee802_1x_mka_sak_use_body* %186, i32 0, i32 5
  store i8* %185, i8** %187, align 8
  br label %188

188:                                              ; preds = %181, %159
  %189 = load %struct.ieee802_1x_mka_sak_use_body*, %struct.ieee802_1x_mka_sak_use_body** %6, align 8
  %190 = getelementptr inbounds %struct.ieee802_1x_mka_sak_use_body, %struct.ieee802_1x_mka_sak_use_body* %189, i32 0, i32 4
  %191 = load i8*, i8** %190, align 8
  %192 = icmp ne i8* %191, null
  br i1 %192, label %193, label %200

193:                                              ; preds = %188
  %194 = load i8*, i8** @TRUE, align 8
  %195 = load %struct.ieee802_1x_kay*, %struct.ieee802_1x_kay** %7, align 8
  %196 = getelementptr inbounds %struct.ieee802_1x_kay, %struct.ieee802_1x_kay* %195, i32 0, i32 5
  store i8* %194, i8** %196, align 8
  %197 = load i8*, i8** @TRUE, align 8
  %198 = load %struct.ieee802_1x_kay*, %struct.ieee802_1x_kay** %7, align 8
  %199 = getelementptr inbounds %struct.ieee802_1x_kay, %struct.ieee802_1x_kay* %198, i32 0, i32 4
  store i8* %197, i8** %199, align 8
  br label %200

200:                                              ; preds = %193, %188
  %201 = load %struct.ieee802_1x_mka_sak_use_body*, %struct.ieee802_1x_mka_sak_use_body** %6, align 8
  %202 = getelementptr inbounds %struct.ieee802_1x_mka_sak_use_body, %struct.ieee802_1x_mka_sak_use_body* %201, i32 0, i32 3
  %203 = load i8*, i8** %202, align 8
  %204 = icmp ne i8* %203, null
  br i1 %204, label %205, label %209

205:                                              ; preds = %200
  %206 = load i8*, i8** @TRUE, align 8
  %207 = load %struct.ieee802_1x_kay*, %struct.ieee802_1x_kay** %7, align 8
  %208 = getelementptr inbounds %struct.ieee802_1x_kay, %struct.ieee802_1x_kay* %207, i32 0, i32 3
  store i8* %206, i8** %208, align 8
  br label %209

209:                                              ; preds = %205, %200
  %210 = load %struct.ieee802_1x_mka_sak_use_body*, %struct.ieee802_1x_mka_sak_use_body** %6, align 8
  %211 = call i32 @ieee802_1x_mka_dump_sak_use_body(%struct.ieee802_1x_mka_sak_use_body* %210)
  store i32 0, i32* %3, align 4
  br label %212

212:                                              ; preds = %209, %29
  %213 = load i32, i32* %3, align 4
  ret i32 %213
}

declare dso_local i32 @ieee802_1x_mka_get_sak_use_length(%struct.ieee802_1x_mka_participant*) #1

declare dso_local %struct.ieee802_1x_mka_sak_use_body* @wpabuf_put(%struct.wpabuf*, i32) #1

declare dso_local i32 @set_mka_param_body_len(%struct.ieee802_1x_mka_sak_use_body*, i32) #1

declare dso_local i64 @ieee802_1x_mka_get_lpn(%struct.ieee802_1x_mka_participant*, %struct.TYPE_2__*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i8* @host_to_be32(i64) #1

declare dso_local i32 @os_memcpy(i32, i32, i32) #1

declare dso_local i32 @ieee802_1x_mka_dump_sak_use_body(%struct.ieee802_1x_mka_sak_use_body*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
