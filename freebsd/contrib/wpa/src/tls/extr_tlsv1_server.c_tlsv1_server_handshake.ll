; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_server.c_tlsv1_server_handshake.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_server.c_tlsv1_server_handshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_server = type { i64, i32, i32, i64, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"TLSv1: No input data to server\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"TLSv1: Processing received record failed\00", align 1
@TLS_ALERT_LEVEL_FATAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"TLSv1: Partial processing not yet supported\00", align 1
@TLS_ALERT_INTERNAL_ERROR = common dso_local global i32 0, align 4
@FAILED = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"TLSv1: Drop alert loop\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @tlsv1_server_handshake(%struct.tlsv1_server* %0, i32* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.tlsv1_server*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.tlsv1_server* %0, %struct.tlsv1_server** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  store i32* null, i32** %12, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %4
  %23 = load i64, i64* %8, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22, %4
  %26 = load i32, i32* @MSG_DEBUG, align 4
  %27 = call i32 @wpa_printf(i32 %26, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %5, align 8
  br label %155

28:                                               ; preds = %22
  %29 = load i32*, i32** %7, align 8
  store i32* %29, i32** %10, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = load i64, i64* %8, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32* %32, i32** %11, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i32* @os_malloc(i64 %33)
  store i32* %34, i32** %13, align 8
  %35 = load i32*, i32** %13, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  store i32* null, i32** %5, align 8
  br label %155

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %105, %38
  %40 = load i32*, i32** %10, align 8
  %41 = load i32*, i32** %11, align 8
  %42 = icmp ult i32* %40, %41
  br i1 %42, label %43, label %110

43:                                               ; preds = %39
  %44 = load i64, i64* %8, align 8
  store i64 %44, i64* %18, align 8
  %45 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %46 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %45, i32 0, i32 4
  %47 = load i32*, i32** %10, align 8
  %48 = load i32*, i32** %11, align 8
  %49 = load i32*, i32** %10, align 8
  %50 = ptrtoint i32* %48 to i64
  %51 = ptrtoint i32* %49 to i64
  %52 = sub i64 %50, %51
  %53 = sdiv exact i64 %52, 4
  %54 = trunc i64 %53 to i32
  %55 = load i32*, i32** %13, align 8
  %56 = call i32 @tlsv1_record_receive(i32* %46, i32* %47, i32 %54, i32* %55, i64* %18, i32* %16)
  store i32 %56, i32* %19, align 4
  %57 = load i32, i32* %19, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %43
  %60 = load i32, i32* @MSG_DEBUG, align 4
  %61 = call i32 @wpa_printf(i32 %60, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %62 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %63 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %64 = load i32, i32* %16, align 4
  %65 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %62, i32 %63, i32 %64)
  br label %116

66:                                               ; preds = %43
  %67 = load i32, i32* %19, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  %70 = load i32, i32* @MSG_DEBUG, align 4
  %71 = call i32 @wpa_printf(i32 %70, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %72 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %73 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %74 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %75 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %72, i32 %73, i32 %74)
  br label %116

76:                                               ; preds = %66
  %77 = load i32*, i32** %10, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %17, align 4
  %80 = load i32*, i32** %13, align 8
  store i32* %80, i32** %14, align 8
  %81 = load i32*, i32** %13, align 8
  %82 = load i64, i64* %18, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  store i32* %83, i32** %15, align 8
  br label %84

84:                                               ; preds = %101, %76
  %85 = load i32*, i32** %14, align 8
  %86 = load i32*, i32** %15, align 8
  %87 = icmp ult i32* %85, %86
  br i1 %87, label %88, label %105

88:                                               ; preds = %84
  %89 = load i32*, i32** %15, align 8
  %90 = load i32*, i32** %14, align 8
  %91 = ptrtoint i32* %89 to i64
  %92 = ptrtoint i32* %90 to i64
  %93 = sub i64 %91, %92
  %94 = sdiv exact i64 %93, 4
  store i64 %94, i64* %18, align 8
  %95 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %96 = load i32, i32* %17, align 4
  %97 = load i32*, i32** %14, align 8
  %98 = call i64 @tlsv1_server_process_handshake(%struct.tlsv1_server* %95, i32 %96, i32* %97, i64* %18)
  %99 = icmp slt i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %88
  br label %116

101:                                              ; preds = %88
  %102 = load i64, i64* %18, align 8
  %103 = load i32*, i32** %14, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 %102
  store i32* %104, i32** %14, align 8
  br label %84

105:                                              ; preds = %84
  %106 = load i32, i32* %19, align 4
  %107 = load i32*, i32** %10, align 8
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  store i32* %109, i32** %10, align 8
  br label %39

110:                                              ; preds = %39
  %111 = load i32*, i32** %13, align 8
  %112 = call i32 @os_free(i32* %111)
  store i32* null, i32** %13, align 8
  %113 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %114 = load i64*, i64** %9, align 8
  %115 = call i32* @tlsv1_server_handshake_write(%struct.tlsv1_server* %113, i64* %114)
  store i32* %115, i32** %12, align 8
  br label %116

116:                                              ; preds = %110, %100, %69, %59
  %117 = load i32*, i32** %13, align 8
  %118 = call i32 @os_free(i32* %117)
  %119 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %120 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %153

123:                                              ; preds = %116
  %124 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %125 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @FAILED, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %134

129:                                              ; preds = %123
  %130 = load i32, i32* @MSG_DEBUG, align 4
  %131 = call i32 @wpa_printf(i32 %130, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %132 = load i32*, i32** %12, align 8
  %133 = call i32 @os_free(i32* %132)
  store i32* null, i32** %5, align 8
  br label %155

134:                                              ; preds = %123
  %135 = load i64, i64* @FAILED, align 8
  %136 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %137 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %136, i32 0, i32 0
  store i64 %135, i64* %137, align 8
  %138 = load i32*, i32** %12, align 8
  %139 = call i32 @os_free(i32* %138)
  %140 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %141 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %142 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %141, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %145 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = load i64*, i64** %9, align 8
  %148 = call i32* @tlsv1_server_send_alert(%struct.tlsv1_server* %140, i64 %143, i32 %146, i64* %147)
  store i32* %148, i32** %12, align 8
  %149 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %150 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %150, align 8
  br label %153

153:                                              ; preds = %134, %116
  %154 = load i32*, i32** %12, align 8
  store i32* %154, i32** %5, align 8
  br label %155

155:                                              ; preds = %153, %129, %37, %25
  %156 = load i32*, i32** %5, align 8
  ret i32* %156
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32* @os_malloc(i64) #1

declare dso_local i32 @tlsv1_record_receive(i32*, i32*, i32, i32*, i64*, i32*) #1

declare dso_local i32 @tlsv1_server_alert(%struct.tlsv1_server*, i32, i32) #1

declare dso_local i64 @tlsv1_server_process_handshake(%struct.tlsv1_server*, i32, i32*, i64*) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32* @tlsv1_server_handshake_write(%struct.tlsv1_server*, i64*) #1

declare dso_local i32* @tlsv1_server_send_alert(%struct.tlsv1_server*, i64, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
