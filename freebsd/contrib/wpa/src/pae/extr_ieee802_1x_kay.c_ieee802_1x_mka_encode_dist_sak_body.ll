; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/pae/extr_ieee802_1x_kay.c_ieee802_1x_mka_encode_dist_sak_body.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/pae/extr_ieee802_1x_kay.c_ieee802_1x_mka_encode_dist_sak_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.ieee802_1x_mka_participant = type { %struct.TYPE_7__, %struct.TYPE_6__*, %struct.data_key* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.data_key = type { i32, %struct.TYPE_5__, i64, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.wpabuf = type { i32 }
%struct.ieee802_1x_mka_dist_sak_body = type { i64, i32, i64, i64, i32 }

@MKA_DISTRIBUTED_SAK = common dso_local global i32 0, align 4
@MKA_HDR_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"KaY: No SAK available to build Distributed SAK parameter set\00", align 1
@CS_TABLE_SIZE = common dso_local global i32 0, align 4
@DEFAULT_CS_INDEX = common dso_local global i32 0, align 4
@cipher_suite_tbl = common dso_local global %struct.TYPE_8__* null, align 8
@CS_ID_LEN = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"KaY: AES wrap failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee802_1x_mka_participant*, %struct.wpabuf*)* @ieee802_1x_mka_encode_dist_sak_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee802_1x_mka_encode_dist_sak_body(%struct.ieee802_1x_mka_participant* %0, %struct.wpabuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee802_1x_mka_participant*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca %struct.ieee802_1x_mka_dist_sak_body*, align 8
  %7 = alloca %struct.data_key*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ieee802_1x_mka_participant* %0, %struct.ieee802_1x_mka_participant** %4, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %5, align 8
  %12 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %4, align 8
  %13 = call i32 @ieee802_1x_mka_get_dist_sak_length(%struct.ieee802_1x_mka_participant* %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call %struct.ieee802_1x_mka_dist_sak_body* @wpabuf_put(%struct.wpabuf* %14, i32 %15)
  store %struct.ieee802_1x_mka_dist_sak_body* %16, %struct.ieee802_1x_mka_dist_sak_body** %6, align 8
  %17 = load i32, i32* @MKA_DISTRIBUTED_SAK, align 4
  %18 = load %struct.ieee802_1x_mka_dist_sak_body*, %struct.ieee802_1x_mka_dist_sak_body** %6, align 8
  %19 = getelementptr inbounds %struct.ieee802_1x_mka_dist_sak_body, %struct.ieee802_1x_mka_dist_sak_body* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 8
  %20 = load %struct.ieee802_1x_mka_dist_sak_body*, %struct.ieee802_1x_mka_dist_sak_body** %6, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @MKA_HDR_LEN, align 4
  %23 = sub i32 %21, %22
  %24 = call i32 @set_mka_param_body_len(%struct.ieee802_1x_mka_dist_sak_body* %20, i32 %23)
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @MKA_HDR_LEN, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %2
  %29 = load %struct.ieee802_1x_mka_dist_sak_body*, %struct.ieee802_1x_mka_dist_sak_body** %6, align 8
  %30 = getelementptr inbounds %struct.ieee802_1x_mka_dist_sak_body, %struct.ieee802_1x_mka_dist_sak_body* %29, i32 0, i32 3
  store i64 0, i64* %30, align 8
  %31 = load %struct.ieee802_1x_mka_dist_sak_body*, %struct.ieee802_1x_mka_dist_sak_body** %6, align 8
  %32 = getelementptr inbounds %struct.ieee802_1x_mka_dist_sak_body, %struct.ieee802_1x_mka_dist_sak_body* %31, i32 0, i32 2
  store i64 0, i64* %32, align 8
  store i32 0, i32* %3, align 4
  br label %120

33:                                               ; preds = %2
  %34 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %4, align 8
  %35 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %34, i32 0, i32 2
  %36 = load %struct.data_key*, %struct.data_key** %35, align 8
  store %struct.data_key* %36, %struct.data_key** %7, align 8
  %37 = load %struct.data_key*, %struct.data_key** %7, align 8
  %38 = icmp ne %struct.data_key* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* @MSG_DEBUG, align 4
  %41 = call i32 @wpa_printf(i32 %40, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %120

42:                                               ; preds = %33
  %43 = load %struct.data_key*, %struct.data_key** %7, align 8
  %44 = getelementptr inbounds %struct.data_key, %struct.data_key* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.ieee802_1x_mka_dist_sak_body*, %struct.ieee802_1x_mka_dist_sak_body** %6, align 8
  %47 = getelementptr inbounds %struct.ieee802_1x_mka_dist_sak_body, %struct.ieee802_1x_mka_dist_sak_body* %46, i32 0, i32 3
  store i64 %45, i64* %47, align 8
  %48 = load %struct.data_key*, %struct.data_key** %7, align 8
  %49 = getelementptr inbounds %struct.data_key, %struct.data_key* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.ieee802_1x_mka_dist_sak_body*, %struct.ieee802_1x_mka_dist_sak_body** %6, align 8
  %52 = getelementptr inbounds %struct.ieee802_1x_mka_dist_sak_body, %struct.ieee802_1x_mka_dist_sak_body* %51, i32 0, i32 2
  store i64 %50, i64* %52, align 8
  %53 = load %struct.data_key*, %struct.data_key** %7, align 8
  %54 = getelementptr inbounds %struct.data_key, %struct.data_key* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @host_to_be32(i32 %56)
  %58 = load %struct.ieee802_1x_mka_dist_sak_body*, %struct.ieee802_1x_mka_dist_sak_body** %6, align 8
  %59 = getelementptr inbounds %struct.ieee802_1x_mka_dist_sak_body, %struct.ieee802_1x_mka_dist_sak_body* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 8
  %60 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %4, align 8
  %61 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %60, i32 0, i32 1
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @CS_TABLE_SIZE, align 4
  %67 = icmp uge i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %42
  store i32 -1, i32* %3, align 4
  br label %120

69:                                               ; preds = %42
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @DEFAULT_CS_INDEX, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %87

73:                                               ; preds = %69
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cipher_suite_tbl, align 8
  %75 = load i32, i32* %9, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @host_to_be64(i32 %79)
  store i32 %80, i32* %11, align 4
  %81 = load %struct.ieee802_1x_mka_dist_sak_body*, %struct.ieee802_1x_mka_dist_sak_body** %6, align 8
  %82 = getelementptr inbounds %struct.ieee802_1x_mka_dist_sak_body, %struct.ieee802_1x_mka_dist_sak_body* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* @CS_ID_LEN, align 4
  %85 = call i32 @os_memcpy(i64 %83, i32* %11, i32 %84)
  %86 = load i32, i32* @CS_ID_LEN, align 4
  store i32 %86, i32* %10, align 4
  br label %87

87:                                               ; preds = %73, %69
  %88 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %4, align 8
  %89 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %4, align 8
  %93 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cipher_suite_tbl, align 8
  %97 = load i32, i32* %9, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = sdiv i32 %101, 8
  %103 = load %struct.data_key*, %struct.data_key** %7, align 8
  %104 = getelementptr inbounds %struct.data_key, %struct.data_key* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.ieee802_1x_mka_dist_sak_body*, %struct.ieee802_1x_mka_dist_sak_body** %6, align 8
  %107 = getelementptr inbounds %struct.ieee802_1x_mka_dist_sak_body, %struct.ieee802_1x_mka_dist_sak_body* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i32, i32* %10, align 4
  %110 = sext i32 %109 to i64
  %111 = add nsw i64 %108, %110
  %112 = call i64 @aes_wrap(i32 %91, i32 %95, i32 %102, i32 %105, i64 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %87
  %115 = load i32, i32* @MSG_ERROR, align 4
  %116 = call i32 @wpa_printf(i32 %115, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %120

117:                                              ; preds = %87
  %118 = load %struct.ieee802_1x_mka_dist_sak_body*, %struct.ieee802_1x_mka_dist_sak_body** %6, align 8
  %119 = call i32 @ieee802_1x_mka_dump_dist_sak_body(%struct.ieee802_1x_mka_dist_sak_body* %118)
  store i32 0, i32* %3, align 4
  br label %120

120:                                              ; preds = %117, %114, %68, %39, %28
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i32 @ieee802_1x_mka_get_dist_sak_length(%struct.ieee802_1x_mka_participant*) #1

declare dso_local %struct.ieee802_1x_mka_dist_sak_body* @wpabuf_put(%struct.wpabuf*, i32) #1

declare dso_local i32 @set_mka_param_body_len(%struct.ieee802_1x_mka_dist_sak_body*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @host_to_be32(i32) #1

declare dso_local i32 @host_to_be64(i32) #1

declare dso_local i32 @os_memcpy(i64, i32*, i32) #1

declare dso_local i64 @aes_wrap(i32, i32, i32, i32, i64) #1

declare dso_local i32 @ieee802_1x_mka_dump_dist_sak_body(%struct.ieee802_1x_mka_dist_sak_body*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
