; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/pae/extr_ieee802_1x_kay.c_ieee802_1x_mka_decode_basic_body.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/pae/extr_ieee802_1x_kay.c_ieee802_1x_mka_decode_basic_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802_1x_mka_participant = type { %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ieee802_1x_kay = type { i64 }
%struct.ieee802_1x_mka_basic_body = type { i64, i32, i64, i32, i32, i32, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.ieee802_1x_kay_peer = type { i64, i64, i32, i8*, i32, i32 }

@MKA_VERSION_ID = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"KaY: Peer's version(%d) greater than MKA current version(%d)\00", align 1
@.str.1 = private unnamed_addr constant [74 x i8] c"KaY: I must be key server - ignore MKPDU claiming to be from a key server\00", align 1
@MKA_HDR_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"KaY: Too small body length %zu\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"KaY: Peer is not included in my CA - ignore MKPDU\00", align 1
@MI_LEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [53 x i8] c"KaY: Peer using my MI - selected a new random MI: %s\00", align 1
@MSG_WARNING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [92 x i8] c"KaY: duplicated SCI detected - maybe active attacker or peer selected new MI - ignore MKPDU\00", align 1
@MKA_HELLO_TIME = common dso_local global double 0.000000e+00, align 8
@.str.6 = private unnamed_addr constant [50 x i8] c"KaY: No potential peer entry found - ignore MKPDU\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"KaY: The peer MN did not increase - ignore MKPDU\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ieee802_1x_mka_participant* (%struct.ieee802_1x_kay*, i32*, i64)* @ieee802_1x_mka_decode_basic_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ieee802_1x_mka_participant* @ieee802_1x_mka_decode_basic_body(%struct.ieee802_1x_kay* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.ieee802_1x_mka_participant*, align 8
  %5 = alloca %struct.ieee802_1x_kay*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ieee802_1x_mka_participant*, align 8
  %9 = alloca %struct.ieee802_1x_mka_basic_body*, align 8
  %10 = alloca %struct.ieee802_1x_kay_peer*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.ieee802_1x_kay* %0, %struct.ieee802_1x_kay** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = bitcast i32* %14 to %struct.ieee802_1x_mka_basic_body*
  store %struct.ieee802_1x_mka_basic_body* %15, %struct.ieee802_1x_mka_basic_body** %9, align 8
  %16 = load %struct.ieee802_1x_mka_basic_body*, %struct.ieee802_1x_mka_basic_body** %9, align 8
  %17 = getelementptr inbounds %struct.ieee802_1x_mka_basic_body, %struct.ieee802_1x_mka_basic_body* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @MKA_VERSION_ID, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %3
  %22 = load i32, i32* @MSG_DEBUG, align 4
  %23 = load %struct.ieee802_1x_mka_basic_body*, %struct.ieee802_1x_mka_basic_body** %9, align 8
  %24 = getelementptr inbounds %struct.ieee802_1x_mka_basic_body, %struct.ieee802_1x_mka_basic_body* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @MKA_VERSION_ID, align 8
  %27 = call i32 (i32, i8*, ...) @wpa_printf(i32 %22, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i64 %25, i64 %26)
  br label %28

28:                                               ; preds = %21, %3
  %29 = load %struct.ieee802_1x_kay*, %struct.ieee802_1x_kay** %5, align 8
  %30 = getelementptr inbounds %struct.ieee802_1x_kay, %struct.ieee802_1x_kay* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load %struct.ieee802_1x_mka_basic_body*, %struct.ieee802_1x_mka_basic_body** %9, align 8
  %35 = getelementptr inbounds %struct.ieee802_1x_mka_basic_body, %struct.ieee802_1x_mka_basic_body* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @MSG_DEBUG, align 4
  %40 = call i32 (i32, i8*, ...) @wpa_printf(i32 %39, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0))
  store %struct.ieee802_1x_mka_participant* null, %struct.ieee802_1x_mka_participant** %4, align 8
  br label %238

41:                                               ; preds = %33, %28
  %42 = load %struct.ieee802_1x_mka_basic_body*, %struct.ieee802_1x_mka_basic_body** %9, align 8
  %43 = call i64 @get_mka_param_body_len(%struct.ieee802_1x_mka_basic_body* %42)
  store i64 %43, i64* %12, align 8
  %44 = load i64, i64* %12, align 8
  %45 = load i32, i32* @MKA_HDR_LEN, align 4
  %46 = sext i32 %45 to i64
  %47 = sub i64 56, %46
  %48 = icmp ult i64 %44, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = load i32, i32* @MSG_DEBUG, align 4
  %51 = load i64, i64* %12, align 8
  %52 = call i32 (i32, i8*, ...) @wpa_printf(i32 %50, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %51)
  store %struct.ieee802_1x_mka_participant* null, %struct.ieee802_1x_mka_participant** %4, align 8
  br label %238

53:                                               ; preds = %41
  %54 = load i64, i64* %12, align 8
  %55 = load i32, i32* @MKA_HDR_LEN, align 4
  %56 = sext i32 %55 to i64
  %57 = sub i64 56, %56
  %58 = sub i64 %54, %57
  store i64 %58, i64* %11, align 8
  %59 = load %struct.ieee802_1x_kay*, %struct.ieee802_1x_kay** %5, align 8
  %60 = load %struct.ieee802_1x_mka_basic_body*, %struct.ieee802_1x_mka_basic_body** %9, align 8
  %61 = getelementptr inbounds %struct.ieee802_1x_mka_basic_body, %struct.ieee802_1x_mka_basic_body* %60, i32 0, i32 8
  %62 = load i32, i32* %61, align 8
  %63 = load i64, i64* %11, align 8
  %64 = call %struct.ieee802_1x_mka_participant* @ieee802_1x_kay_get_participant(%struct.ieee802_1x_kay* %59, i32 %62, i64 %63)
  store %struct.ieee802_1x_mka_participant* %64, %struct.ieee802_1x_mka_participant** %8, align 8
  %65 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %8, align 8
  %66 = icmp ne %struct.ieee802_1x_mka_participant* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %53
  %68 = load i32, i32* @MSG_DEBUG, align 4
  %69 = call i32 (i32, i8*, ...) @wpa_printf(i32 %68, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  store %struct.ieee802_1x_mka_participant* null, %struct.ieee802_1x_mka_participant** %4, align 8
  br label %238

70:                                               ; preds = %53
  %71 = load %struct.ieee802_1x_mka_basic_body*, %struct.ieee802_1x_mka_basic_body** %9, align 8
  %72 = getelementptr inbounds %struct.ieee802_1x_mka_basic_body, %struct.ieee802_1x_mka_basic_body* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %8, align 8
  %75 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @MI_LEN, align 4
  %78 = call i64 @os_memcmp(i32 %73, i32 %76, i32 %77)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %70
  %81 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %8, align 8
  %82 = call i32 @reset_participant_mi(%struct.ieee802_1x_mka_participant* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %80
  store %struct.ieee802_1x_mka_participant* null, %struct.ieee802_1x_mka_participant** %4, align 8
  br label %238

85:                                               ; preds = %80
  %86 = load i32, i32* @MSG_DEBUG, align 4
  %87 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %8, align 8
  %88 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @mi_txt(i32 %89)
  %91 = call i32 (i32, i8*, ...) @wpa_printf(i32 %86, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %85, %70
  %93 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %8, align 8
  %94 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.ieee802_1x_mka_basic_body*, %struct.ieee802_1x_mka_basic_body** %9, align 8
  %98 = getelementptr inbounds %struct.ieee802_1x_mka_basic_body, %struct.ieee802_1x_mka_basic_body* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @MI_LEN, align 4
  %101 = call i32 @os_memcpy(i32 %96, i32 %99, i32 %100)
  %102 = load %struct.ieee802_1x_mka_basic_body*, %struct.ieee802_1x_mka_basic_body** %9, align 8
  %103 = getelementptr inbounds %struct.ieee802_1x_mka_basic_body, %struct.ieee802_1x_mka_basic_body* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %8, align 8
  %106 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  store i32 %104, i32* %107, align 4
  %108 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %8, align 8
  %109 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.ieee802_1x_mka_basic_body*, %struct.ieee802_1x_mka_basic_body** %9, align 8
  %113 = getelementptr inbounds %struct.ieee802_1x_mka_basic_body, %struct.ieee802_1x_mka_basic_body* %112, i32 0, i32 7
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @os_memcpy(i32 %111, i32 %115, i32 4)
  %117 = load %struct.ieee802_1x_mka_basic_body*, %struct.ieee802_1x_mka_basic_body** %9, align 8
  %118 = getelementptr inbounds %struct.ieee802_1x_mka_basic_body, %struct.ieee802_1x_mka_basic_body* %117, i32 0, i32 7
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %8, align 8
  %122 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  store i32 %120, i32* %123, align 4
  %124 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %8, align 8
  %125 = load %struct.ieee802_1x_mka_basic_body*, %struct.ieee802_1x_mka_basic_body** %9, align 8
  %126 = getelementptr inbounds %struct.ieee802_1x_mka_basic_body, %struct.ieee802_1x_mka_basic_body* %125, i32 0, i32 6
  %127 = load i32, i32* %126, align 4
  %128 = call %struct.ieee802_1x_kay_peer* @ieee802_1x_kay_get_peer(%struct.ieee802_1x_mka_participant* %124, i32 %127)
  store %struct.ieee802_1x_kay_peer* %128, %struct.ieee802_1x_kay_peer** %10, align 8
  %129 = load %struct.ieee802_1x_kay_peer*, %struct.ieee802_1x_kay_peer** %10, align 8
  %130 = icmp ne %struct.ieee802_1x_kay_peer* %129, null
  br i1 %130, label %195, label %131

131:                                              ; preds = %92
  %132 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %8, align 8
  %133 = load %struct.ieee802_1x_mka_basic_body*, %struct.ieee802_1x_mka_basic_body** %9, align 8
  %134 = getelementptr inbounds %struct.ieee802_1x_mka_basic_body, %struct.ieee802_1x_mka_basic_body* %133, i32 0, i32 7
  %135 = call %struct.ieee802_1x_kay_peer* @ieee802_1x_kay_get_peer_sci(%struct.ieee802_1x_mka_participant* %132, %struct.TYPE_6__* %134)
  store %struct.ieee802_1x_kay_peer* %135, %struct.ieee802_1x_kay_peer** %10, align 8
  %136 = load %struct.ieee802_1x_kay_peer*, %struct.ieee802_1x_kay_peer** %10, align 8
  %137 = icmp ne %struct.ieee802_1x_kay_peer* %136, null
  br i1 %137, label %138, label %158

138:                                              ; preds = %131
  %139 = load i32, i32* @MSG_WARNING, align 4
  %140 = call i32 (i32, i8*, ...) @wpa_printf(i32 %139, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.5, i64 0, i64 0))
  %141 = call i64 @time(i32* null)
  %142 = sitofp i64 %141 to double
  %143 = load double, double* @MKA_HELLO_TIME, align 8
  %144 = fmul double %143, 1.500000e+00
  %145 = fdiv double %144, 1.000000e+03
  %146 = fadd double %142, %145
  %147 = fptosi double %146 to i64
  store i64 %147, i64* %13, align 8
  %148 = load %struct.ieee802_1x_kay_peer*, %struct.ieee802_1x_kay_peer** %10, align 8
  %149 = getelementptr inbounds %struct.ieee802_1x_kay_peer, %struct.ieee802_1x_kay_peer* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* %13, align 8
  %152 = icmp sgt i64 %150, %151
  br i1 %152, label %153, label %157

153:                                              ; preds = %138
  %154 = load i64, i64* %13, align 8
  %155 = load %struct.ieee802_1x_kay_peer*, %struct.ieee802_1x_kay_peer** %10, align 8
  %156 = getelementptr inbounds %struct.ieee802_1x_kay_peer, %struct.ieee802_1x_kay_peer* %155, i32 0, i32 0
  store i64 %154, i64* %156, align 8
  br label %157

157:                                              ; preds = %153, %138
  store %struct.ieee802_1x_mka_participant* null, %struct.ieee802_1x_mka_participant** %4, align 8
  br label %238

158:                                              ; preds = %131
  %159 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %8, align 8
  %160 = load %struct.ieee802_1x_mka_basic_body*, %struct.ieee802_1x_mka_basic_body** %9, align 8
  %161 = getelementptr inbounds %struct.ieee802_1x_mka_basic_body, %struct.ieee802_1x_mka_basic_body* %160, i32 0, i32 6
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.ieee802_1x_mka_basic_body*, %struct.ieee802_1x_mka_basic_body** %9, align 8
  %164 = getelementptr inbounds %struct.ieee802_1x_mka_basic_body, %struct.ieee802_1x_mka_basic_body* %163, i32 0, i32 5
  %165 = load i32, i32* %164, align 8
  %166 = call i64 @be_to_host32(i32 %165)
  %167 = call %struct.ieee802_1x_kay_peer* @ieee802_1x_kay_create_potential_peer(%struct.ieee802_1x_mka_participant* %159, i32 %162, i64 %166)
  store %struct.ieee802_1x_kay_peer* %167, %struct.ieee802_1x_kay_peer** %10, align 8
  %168 = load %struct.ieee802_1x_kay_peer*, %struct.ieee802_1x_kay_peer** %10, align 8
  %169 = icmp ne %struct.ieee802_1x_kay_peer* %168, null
  br i1 %169, label %173, label %170

170:                                              ; preds = %158
  %171 = load i32, i32* @MSG_DEBUG, align 4
  %172 = call i32 (i32, i8*, ...) @wpa_printf(i32 %171, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0))
  store %struct.ieee802_1x_mka_participant* null, %struct.ieee802_1x_mka_participant** %4, align 8
  br label %238

173:                                              ; preds = %158
  %174 = load %struct.ieee802_1x_mka_basic_body*, %struct.ieee802_1x_mka_basic_body** %9, align 8
  %175 = getelementptr inbounds %struct.ieee802_1x_mka_basic_body, %struct.ieee802_1x_mka_basic_body* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.ieee802_1x_kay_peer*, %struct.ieee802_1x_kay_peer** %10, align 8
  %178 = getelementptr inbounds %struct.ieee802_1x_kay_peer, %struct.ieee802_1x_kay_peer* %177, i32 0, i32 5
  store i32 %176, i32* %178, align 4
  %179 = load %struct.ieee802_1x_mka_basic_body*, %struct.ieee802_1x_mka_basic_body** %9, align 8
  %180 = getelementptr inbounds %struct.ieee802_1x_mka_basic_body, %struct.ieee802_1x_mka_basic_body* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.ieee802_1x_kay_peer*, %struct.ieee802_1x_kay_peer** %10, align 8
  %183 = getelementptr inbounds %struct.ieee802_1x_kay_peer, %struct.ieee802_1x_kay_peer* %182, i32 0, i32 4
  store i32 %181, i32* %183, align 8
  %184 = load %struct.ieee802_1x_mka_basic_body*, %struct.ieee802_1x_mka_basic_body** %9, align 8
  %185 = getelementptr inbounds %struct.ieee802_1x_mka_basic_body, %struct.ieee802_1x_mka_basic_body* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = inttoptr i64 %186 to i8*
  %188 = load %struct.ieee802_1x_kay_peer*, %struct.ieee802_1x_kay_peer** %10, align 8
  %189 = getelementptr inbounds %struct.ieee802_1x_kay_peer, %struct.ieee802_1x_kay_peer* %188, i32 0, i32 3
  store i8* %187, i8** %189, align 8
  %190 = load %struct.ieee802_1x_mka_basic_body*, %struct.ieee802_1x_mka_basic_body** %9, align 8
  %191 = getelementptr inbounds %struct.ieee802_1x_mka_basic_body, %struct.ieee802_1x_mka_basic_body* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.ieee802_1x_kay_peer*, %struct.ieee802_1x_kay_peer** %10, align 8
  %194 = getelementptr inbounds %struct.ieee802_1x_kay_peer, %struct.ieee802_1x_kay_peer* %193, i32 0, i32 2
  store i32 %192, i32* %194, align 8
  br label %236

195:                                              ; preds = %92
  %196 = load %struct.ieee802_1x_kay_peer*, %struct.ieee802_1x_kay_peer** %10, align 8
  %197 = getelementptr inbounds %struct.ieee802_1x_kay_peer, %struct.ieee802_1x_kay_peer* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.ieee802_1x_mka_basic_body*, %struct.ieee802_1x_mka_basic_body** %9, align 8
  %200 = getelementptr inbounds %struct.ieee802_1x_mka_basic_body, %struct.ieee802_1x_mka_basic_body* %199, i32 0, i32 5
  %201 = load i32, i32* %200, align 8
  %202 = call i64 @be_to_host32(i32 %201)
  %203 = icmp slt i64 %198, %202
  br i1 %203, label %204, label %232

204:                                              ; preds = %195
  %205 = load %struct.ieee802_1x_mka_basic_body*, %struct.ieee802_1x_mka_basic_body** %9, align 8
  %206 = getelementptr inbounds %struct.ieee802_1x_mka_basic_body, %struct.ieee802_1x_mka_basic_body* %205, i32 0, i32 5
  %207 = load i32, i32* %206, align 8
  %208 = call i64 @be_to_host32(i32 %207)
  %209 = load %struct.ieee802_1x_kay_peer*, %struct.ieee802_1x_kay_peer** %10, align 8
  %210 = getelementptr inbounds %struct.ieee802_1x_kay_peer, %struct.ieee802_1x_kay_peer* %209, i32 0, i32 1
  store i64 %208, i64* %210, align 8
  %211 = load %struct.ieee802_1x_mka_basic_body*, %struct.ieee802_1x_mka_basic_body** %9, align 8
  %212 = getelementptr inbounds %struct.ieee802_1x_mka_basic_body, %struct.ieee802_1x_mka_basic_body* %211, i32 0, i32 4
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.ieee802_1x_kay_peer*, %struct.ieee802_1x_kay_peer** %10, align 8
  %215 = getelementptr inbounds %struct.ieee802_1x_kay_peer, %struct.ieee802_1x_kay_peer* %214, i32 0, i32 5
  store i32 %213, i32* %215, align 4
  %216 = load %struct.ieee802_1x_mka_basic_body*, %struct.ieee802_1x_mka_basic_body** %9, align 8
  %217 = getelementptr inbounds %struct.ieee802_1x_mka_basic_body, %struct.ieee802_1x_mka_basic_body* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.ieee802_1x_kay_peer*, %struct.ieee802_1x_kay_peer** %10, align 8
  %220 = getelementptr inbounds %struct.ieee802_1x_kay_peer, %struct.ieee802_1x_kay_peer* %219, i32 0, i32 4
  store i32 %218, i32* %220, align 8
  %221 = load %struct.ieee802_1x_mka_basic_body*, %struct.ieee802_1x_mka_basic_body** %9, align 8
  %222 = getelementptr inbounds %struct.ieee802_1x_mka_basic_body, %struct.ieee802_1x_mka_basic_body* %221, i32 0, i32 2
  %223 = load i64, i64* %222, align 8
  %224 = inttoptr i64 %223 to i8*
  %225 = load %struct.ieee802_1x_kay_peer*, %struct.ieee802_1x_kay_peer** %10, align 8
  %226 = getelementptr inbounds %struct.ieee802_1x_kay_peer, %struct.ieee802_1x_kay_peer* %225, i32 0, i32 3
  store i8* %224, i8** %226, align 8
  %227 = load %struct.ieee802_1x_mka_basic_body*, %struct.ieee802_1x_mka_basic_body** %9, align 8
  %228 = getelementptr inbounds %struct.ieee802_1x_mka_basic_body, %struct.ieee802_1x_mka_basic_body* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 8
  %230 = load %struct.ieee802_1x_kay_peer*, %struct.ieee802_1x_kay_peer** %10, align 8
  %231 = getelementptr inbounds %struct.ieee802_1x_kay_peer, %struct.ieee802_1x_kay_peer* %230, i32 0, i32 2
  store i32 %229, i32* %231, align 8
  br label %235

232:                                              ; preds = %195
  %233 = load i32, i32* @MSG_WARNING, align 4
  %234 = call i32 (i32, i8*, ...) @wpa_printf(i32 %233, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0))
  store %struct.ieee802_1x_mka_participant* null, %struct.ieee802_1x_mka_participant** %4, align 8
  br label %238

235:                                              ; preds = %204
  br label %236

236:                                              ; preds = %235, %173
  %237 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %8, align 8
  store %struct.ieee802_1x_mka_participant* %237, %struct.ieee802_1x_mka_participant** %4, align 8
  br label %238

238:                                              ; preds = %236, %232, %170, %157, %84, %67, %49, %38
  %239 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %4, align 8
  ret %struct.ieee802_1x_mka_participant* %239
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @get_mka_param_body_len(%struct.ieee802_1x_mka_basic_body*) #1

declare dso_local %struct.ieee802_1x_mka_participant* @ieee802_1x_kay_get_participant(%struct.ieee802_1x_kay*, i32, i64) #1

declare dso_local i64 @os_memcmp(i32, i32, i32) #1

declare dso_local i32 @reset_participant_mi(%struct.ieee802_1x_mka_participant*) #1

declare dso_local i32 @mi_txt(i32) #1

declare dso_local i32 @os_memcpy(i32, i32, i32) #1

declare dso_local %struct.ieee802_1x_kay_peer* @ieee802_1x_kay_get_peer(%struct.ieee802_1x_mka_participant*, i32) #1

declare dso_local %struct.ieee802_1x_kay_peer* @ieee802_1x_kay_get_peer_sci(%struct.ieee802_1x_mka_participant*, %struct.TYPE_6__*) #1

declare dso_local i64 @time(i32*) #1

declare dso_local %struct.ieee802_1x_kay_peer* @ieee802_1x_kay_create_potential_peer(%struct.ieee802_1x_mka_participant*, i32, i64) #1

declare dso_local i64 @be_to_host32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
