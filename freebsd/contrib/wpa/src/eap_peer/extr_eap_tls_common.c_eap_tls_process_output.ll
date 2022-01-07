; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_tls_common.c_eap_tls_process_output.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_tls_common.c_eap_tls_process_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_ssl_data = type { i64, i64, i32*, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.wpabuf = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"SSL: %lu bytes left to be sent out (of total %lu bytes)\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"SSL: sending %lu bytes, more fragments will follow\00", align 1
@EAP_TYPE_PEAP = common dso_local global i64 0, align 8
@EAP_CODE_RESPONSE = common dso_local global i32 0, align 4
@EAP_TLS_FLAGS_MORE_FRAGMENTS = common dso_local global i32 0, align 4
@EAP_TLS_FLAGS_LENGTH_INCLUDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_ssl_data*, i64, i32, i32, i32, %struct.wpabuf**)* @eap_tls_process_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_tls_process_output(%struct.eap_ssl_data* %0, i64 %1, i32 %2, i32 %3, i32 %4, %struct.wpabuf** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.eap_ssl_data*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.wpabuf**, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.eap_ssl_data* %0, %struct.eap_ssl_data** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.wpabuf** %5, %struct.wpabuf*** %13, align 8
  %18 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %8, align 8
  %19 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %167

23:                                               ; preds = %6
  %24 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %8, align 8
  %25 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = call i64 @wpabuf_len(i32* %26)
  %28 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %8, align 8
  %29 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = sub i64 %27, %30
  store i64 %31, i64* %14, align 8
  %32 = load i32, i32* @MSG_DEBUG, align 4
  %33 = load i64, i64* %14, align 8
  %34 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %8, align 8
  %35 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = call i64 @wpabuf_len(i32* %36)
  %38 = call i32 (i32, i8*, i64, ...) @wpa_printf(i32 %32, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i64 %33, i64 %37)
  %39 = load i64, i64* %14, align 8
  %40 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %8, align 8
  %41 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ugt i64 %39, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %23
  store i32 1, i32* %16, align 4
  %45 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %8, align 8
  %46 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %14, align 8
  %48 = load i32, i32* @MSG_DEBUG, align 4
  %49 = load i64, i64* %14, align 8
  %50 = call i32 (i32, i8*, i64, ...) @wpa_printf(i32 %48, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i64 %49)
  br label %52

51:                                               ; preds = %23
  store i32 0, i32* %16, align 4
  br label %52

52:                                               ; preds = %51, %44
  %53 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %8, align 8
  %54 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %52
  %58 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %8, align 8
  %59 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = call i64 @wpabuf_len(i32* %60)
  %62 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %8, align 8
  %63 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ugt i64 %61, %64
  br i1 %65, label %71, label %66

66:                                               ; preds = %57
  %67 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %8, align 8
  %68 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %67, i32 0, i32 5
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br label %71

71:                                               ; preds = %66, %57
  %72 = phi i1 [ true, %57 ], [ %70, %66 ]
  br label %73

73:                                               ; preds = %71, %52
  %74 = phi i1 [ false, %52 ], [ %72, %71 ]
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %17, align 4
  %76 = load i32, i32* %17, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %97, label %78

78:                                               ; preds = %73
  %79 = load i64, i64* %9, align 8
  %80 = load i64, i64* @EAP_TYPE_PEAP, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %97

82:                                               ; preds = %78
  %83 = load i32, i32* %10, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %97

85:                                               ; preds = %82
  %86 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %8, align 8
  %87 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %86, i32 0, i32 4
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %8, align 8
  %92 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @tls_connection_established(i32 %90, i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %85
  store i32 1, i32* %17, align 4
  br label %97

97:                                               ; preds = %96, %85, %82, %78, %73
  %98 = load i64, i64* %9, align 8
  %99 = load i32, i32* %17, align 4
  %100 = mul nsw i32 %99, 4
  %101 = add nsw i32 1, %100
  %102 = sext i32 %101 to i64
  %103 = load i64, i64* %14, align 8
  %104 = add i64 %102, %103
  %105 = trunc i64 %104 to i32
  %106 = load i32, i32* @EAP_CODE_RESPONSE, align 4
  %107 = load i32, i32* %11, align 4
  %108 = call %struct.wpabuf* @eap_tls_msg_alloc(i64 %98, i32 %105, i32 %106, i32 %107)
  %109 = load %struct.wpabuf**, %struct.wpabuf*** %13, align 8
  store %struct.wpabuf* %108, %struct.wpabuf** %109, align 8
  %110 = load %struct.wpabuf**, %struct.wpabuf*** %13, align 8
  %111 = load %struct.wpabuf*, %struct.wpabuf** %110, align 8
  %112 = icmp eq %struct.wpabuf* %111, null
  br i1 %112, label %113, label %114

113:                                              ; preds = %97
  store i32 -1, i32* %7, align 4
  br label %167

114:                                              ; preds = %97
  %115 = load %struct.wpabuf**, %struct.wpabuf*** %13, align 8
  %116 = load %struct.wpabuf*, %struct.wpabuf** %115, align 8
  %117 = call i32* @wpabuf_put(%struct.wpabuf* %116, i32 1)
  store i32* %117, i32** %15, align 8
  %118 = load i32, i32* %10, align 4
  %119 = load i32*, i32** %15, align 8
  store i32 %118, i32* %119, align 4
  %120 = load i32, i32* %16, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %114
  %123 = load i32, i32* @EAP_TLS_FLAGS_MORE_FRAGMENTS, align 4
  %124 = load i32*, i32** %15, align 8
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, %123
  store i32 %126, i32* %124, align 4
  br label %127

127:                                              ; preds = %122, %114
  %128 = load i32, i32* %17, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %142

130:                                              ; preds = %127
  %131 = load i32, i32* @EAP_TLS_FLAGS_LENGTH_INCLUDED, align 4
  %132 = load i32*, i32** %15, align 8
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %133, %131
  store i32 %134, i32* %132, align 4
  %135 = load %struct.wpabuf**, %struct.wpabuf*** %13, align 8
  %136 = load %struct.wpabuf*, %struct.wpabuf** %135, align 8
  %137 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %8, align 8
  %138 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %137, i32 0, i32 2
  %139 = load i32*, i32** %138, align 8
  %140 = call i64 @wpabuf_len(i32* %139)
  %141 = call i32 @wpabuf_put_be32(%struct.wpabuf* %136, i64 %140)
  br label %142

142:                                              ; preds = %130, %127
  %143 = load %struct.wpabuf**, %struct.wpabuf*** %13, align 8
  %144 = load %struct.wpabuf*, %struct.wpabuf** %143, align 8
  %145 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %8, align 8
  %146 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %145, i32 0, i32 2
  %147 = load i32*, i32** %146, align 8
  %148 = call i64 @wpabuf_head_u8(i32* %147)
  %149 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %8, align 8
  %150 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = add i64 %148, %151
  %153 = load i64, i64* %14, align 8
  %154 = call i32 @wpabuf_put_data(%struct.wpabuf* %144, i64 %152, i64 %153)
  %155 = load i64, i64* %14, align 8
  %156 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %8, align 8
  %157 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = add i64 %158, %155
  store i64 %159, i64* %157, align 8
  %160 = load i32, i32* %16, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %165, label %162

162:                                              ; preds = %142
  %163 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %8, align 8
  %164 = call i32 @eap_peer_tls_reset_output(%struct.eap_ssl_data* %163)
  br label %165

165:                                              ; preds = %162, %142
  %166 = load i32, i32* %12, align 4
  store i32 %166, i32* %7, align 4
  br label %167

167:                                              ; preds = %165, %113, %22
  %168 = load i32, i32* %7, align 4
  ret i32 %168
}

declare dso_local i64 @wpabuf_len(i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i64, ...) #1

declare dso_local i32 @tls_connection_established(i32, i32) #1

declare dso_local %struct.wpabuf* @eap_tls_msg_alloc(i64, i32, i32, i32) #1

declare dso_local i32* @wpabuf_put(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_be32(%struct.wpabuf*, i64) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i64, i64) #1

declare dso_local i64 @wpabuf_head_u8(i32*) #1

declare dso_local i32 @eap_peer_tls_reset_output(%struct.eap_ssl_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
