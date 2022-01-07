; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_tls_common.c_eap_peer_tls_process_helper.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_tls_common.c_eap_peer_tls_process_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_ssl_data = type { i32, %struct.wpabuf*, i32, i32 }
%struct.wpabuf = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"SSL: Received non-ACK when output fragments are waiting to be sent out\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"SSL: Using TLS version %s\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"TLSv1.3\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"SSL: Failed - tls_out available to report error (len=%u)\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"SSL: No data to be sent out\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eap_peer_tls_process_helper(%struct.eap_sm* %0, %struct.eap_ssl_data* %1, i32 %2, i32 %3, i32 %4, %struct.wpabuf* %5, %struct.wpabuf** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.eap_sm*, align 8
  %10 = alloca %struct.eap_ssl_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.wpabuf*, align 8
  %15 = alloca %struct.wpabuf**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [20 x i8], align 16
  store %struct.eap_sm* %0, %struct.eap_sm** %9, align 8
  store %struct.eap_ssl_data* %1, %struct.eap_ssl_data** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.wpabuf* %5, %struct.wpabuf** %14, align 8
  store %struct.wpabuf** %6, %struct.wpabuf*** %15, align 8
  store i32 0, i32* %16, align 4
  %19 = load %struct.wpabuf**, %struct.wpabuf*** %15, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %19, align 8
  %20 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %10, align 8
  %21 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %20, i32 0, i32 1
  %22 = load %struct.wpabuf*, %struct.wpabuf** %21, align 8
  %23 = icmp ne %struct.wpabuf* %22, null
  br i1 %23, label %24, label %37

24:                                               ; preds = %7
  %25 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %10, align 8
  %26 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %25, i32 0, i32 1
  %27 = load %struct.wpabuf*, %struct.wpabuf** %26, align 8
  %28 = call i64 @wpabuf_len(%struct.wpabuf* %27)
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %32 = call i64 @wpabuf_len(%struct.wpabuf* %31)
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @MSG_DEBUG, align 4
  %36 = call i32 (i32, i8*, ...) @wpa_printf(i32 %35, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %140

37:                                               ; preds = %30, %24, %7
  %38 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %10, align 8
  %39 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %38, i32 0, i32 1
  %40 = load %struct.wpabuf*, %struct.wpabuf** %39, align 8
  %41 = icmp eq %struct.wpabuf* %40, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %37
  %43 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %10, align 8
  %44 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %43, i32 0, i32 1
  %45 = load %struct.wpabuf*, %struct.wpabuf** %44, align 8
  %46 = call i64 @wpabuf_len(%struct.wpabuf* %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %79

48:                                               ; preds = %42, %37
  %49 = load %struct.eap_sm*, %struct.eap_sm** %9, align 8
  %50 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %10, align 8
  %51 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %52 = load %struct.wpabuf**, %struct.wpabuf*** %15, align 8
  %53 = call i32 @eap_tls_process_input(%struct.eap_sm* %49, %struct.eap_ssl_data* %50, %struct.wpabuf* %51, %struct.wpabuf** %52)
  store i32 %53, i32* %17, align 4
  %54 = load i32, i32* %17, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = load i32, i32* %17, align 4
  store i32 %57, i32* %8, align 4
  br label %140

58:                                               ; preds = %48
  %59 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %10, align 8
  %60 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %10, align 8
  %63 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = getelementptr inbounds [20 x i8], [20 x i8]* %18, i64 0, i64 0
  %66 = call i64 @tls_get_version(i32 %61, i32 %64, i8* %65, i32 20)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %58
  %69 = load i32, i32* @MSG_DEBUG, align 4
  %70 = getelementptr inbounds [20 x i8], [20 x i8]* %18, i64 0, i64 0
  %71 = call i32 (i32, i8*, ...) @wpa_printf(i32 %69, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %70)
  %72 = getelementptr inbounds [20 x i8], [20 x i8]* %18, i64 0, i64 0
  %73 = call i64 @os_strcmp(i8* %72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %74 = icmp eq i64 %73, 0
  %75 = zext i1 %74 to i32
  %76 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %10, align 8
  %77 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  br label %78

78:                                               ; preds = %68, %58
  br label %79

79:                                               ; preds = %78, %42
  %80 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %10, align 8
  %81 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %80, i32 0, i32 1
  %82 = load %struct.wpabuf*, %struct.wpabuf** %81, align 8
  %83 = icmp eq %struct.wpabuf* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %10, align 8
  %86 = call i32 @eap_peer_tls_reset_output(%struct.eap_ssl_data* %85)
  store i32 -1, i32* %8, align 4
  br label %140

87:                                               ; preds = %79
  %88 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %10, align 8
  %89 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %10, align 8
  %92 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i64 @tls_connection_get_failed(i32 %90, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %117

96:                                               ; preds = %87
  %97 = load i32, i32* @MSG_DEBUG, align 4
  %98 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %10, align 8
  %99 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %98, i32 0, i32 1
  %100 = load %struct.wpabuf*, %struct.wpabuf** %99, align 8
  %101 = call i64 @wpabuf_len(%struct.wpabuf* %100)
  %102 = trunc i64 %101 to i32
  %103 = call i32 (i32, i8*, ...) @wpa_printf(i32 %97, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i32 %102)
  store i32 -1, i32* %16, align 4
  %104 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %10, align 8
  %105 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %104, i32 0, i32 1
  %106 = load %struct.wpabuf*, %struct.wpabuf** %105, align 8
  %107 = call i64 @wpabuf_len(%struct.wpabuf* %106)
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %96
  %110 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %10, align 8
  %111 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %110, i32 0, i32 1
  %112 = load %struct.wpabuf*, %struct.wpabuf** %111, align 8
  %113 = call i32 @wpabuf_free(%struct.wpabuf* %112)
  %114 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %10, align 8
  %115 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %114, i32 0, i32 1
  store %struct.wpabuf* null, %struct.wpabuf** %115, align 8
  store i32 -1, i32* %8, align 4
  br label %140

116:                                              ; preds = %96
  br label %117

117:                                              ; preds = %116, %87
  %118 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %10, align 8
  %119 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %118, i32 0, i32 1
  %120 = load %struct.wpabuf*, %struct.wpabuf** %119, align 8
  %121 = call i64 @wpabuf_len(%struct.wpabuf* %120)
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %117
  %124 = load i32, i32* @MSG_DEBUG, align 4
  %125 = call i32 (i32, i8*, ...) @wpa_printf(i32 %124, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %126 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %10, align 8
  %127 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %126, i32 0, i32 1
  %128 = load %struct.wpabuf*, %struct.wpabuf** %127, align 8
  %129 = call i32 @wpabuf_free(%struct.wpabuf* %128)
  %130 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %10, align 8
  %131 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %130, i32 0, i32 1
  store %struct.wpabuf* null, %struct.wpabuf** %131, align 8
  store i32 1, i32* %8, align 4
  br label %140

132:                                              ; preds = %117
  %133 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %10, align 8
  %134 = load i32, i32* %11, align 4
  %135 = load i32, i32* %12, align 4
  %136 = load i32, i32* %13, align 4
  %137 = load i32, i32* %16, align 4
  %138 = load %struct.wpabuf**, %struct.wpabuf*** %15, align 8
  %139 = call i32 @eap_tls_process_output(%struct.eap_ssl_data* %133, i32 %134, i32 %135, i32 %136, i32 %137, %struct.wpabuf** %138)
  store i32 %139, i32* %8, align 4
  br label %140

140:                                              ; preds = %132, %123, %109, %84, %56, %34
  %141 = load i32, i32* %8, align 4
  ret i32 %141
}

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @eap_tls_process_input(%struct.eap_sm*, %struct.eap_ssl_data*, %struct.wpabuf*, %struct.wpabuf**) #1

declare dso_local i64 @tls_get_version(i32, i32, i8*, i32) #1

declare dso_local i64 @os_strcmp(i8*, i8*) #1

declare dso_local i32 @eap_peer_tls_reset_output(%struct.eap_ssl_data*) #1

declare dso_local i64 @tls_connection_get_failed(i32, i32) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i32 @eap_tls_process_output(%struct.eap_ssl_data*, i32, i32, i32, i32, %struct.wpabuf**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
