; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ggate/ggated/extr_ggated.c_handshake.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ggate/ggated/extr_ggated.c_handshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.g_gate_version = type { i64, i64, i64, i32, i64, i32 }
%struct.g_gate_cinit = type { i64, i64, i64, i32, i64, i32 }
%struct.g_gate_sinit = type { i64, i64, i64, i32, i64, i32 }
%struct.ggd_connection = type { i64, i32, i32, i64 }
%struct.ggd_export = type { i32 }

@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Receiving version packet.\00", align 1
@MSG_WAITALL = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Malformed version packet.\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Version packet received.\00", align 1
@GGATE_MAGIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Invalid magic field.\00", align 1
@GGATE_VERSION = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"Version %u is not supported.\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"Error while sending version packet: %s.\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Receiving initial packet.\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Malformed initial packet.\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"Initial packet received.\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"Found existing connection (token=%lu).\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [32 x i8] c"Cannot allocate new connection.\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"New connection created (token=%lu).\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"Sending initial packet.\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"Error while sending initial packet: %s.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr*, i32)* @handshake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handshake(%struct.sockaddr* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.g_gate_version, align 8
  %7 = alloca %struct.g_gate_cinit, align 8
  %8 = alloca %struct.g_gate_sinit, align 8
  %9 = alloca %struct.ggd_connection*, align 8
  %10 = alloca %struct.ggd_export*, align 8
  %11 = alloca i32, align 4
  store %struct.sockaddr* %0, %struct.sockaddr** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %13 = call i32 @log_connection(%struct.sockaddr* %12)
  %14 = load i32, i32* @LOG_DEBUG, align 4
  %15 = call i32 (i32, i8*, ...) @g_gate_log(i32 %14, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @MSG_WAITALL, align 4
  %18 = call i32 @g_gate_recv(i32 %16, %struct.g_gate_version* %6, i32 48, i32 %17)
  store i32 %18, i32* %11, align 4
  %19 = call i32 @g_gate_swap2h_version(%struct.g_gate_version* %6)
  %20 = load i32, i32* %11, align 4
  %21 = sext i32 %20 to i64
  %22 = icmp ne i64 %21, 48
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @LOG_WARNING, align 4
  %25 = call i32 (i32, i8*, ...) @g_gate_log(i32 %24, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %186

26:                                               ; preds = %2
  %27 = load i32, i32* @LOG_DEBUG, align 4
  %28 = call i32 (i32, i8*, ...) @g_gate_log(i32 %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %29 = getelementptr inbounds %struct.g_gate_version, %struct.g_gate_version* %6, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @GGATE_MAGIC, align 4
  %32 = load i32, i32* @GGATE_MAGIC, align 4
  %33 = call i32 @strlen(i32 %32)
  %34 = call i64 @memcmp(i32 %30, i32 %31, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %26
  %37 = load i32, i32* @LOG_WARNING, align 4
  %38 = call i32 (i32, i8*, ...) @g_gate_log(i32 %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %186

39:                                               ; preds = %26
  %40 = getelementptr inbounds %struct.g_gate_version, %struct.g_gate_version* %6, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @GGATE_VERSION, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load i32, i32* @LOG_WARNING, align 4
  %46 = getelementptr inbounds %struct.g_gate_version, %struct.g_gate_version* %6, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 (i32, i8*, ...) @g_gate_log(i32 %45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i64 %47)
  store i32 0, i32* %3, align 4
  br label %186

49:                                               ; preds = %39
  %50 = getelementptr inbounds %struct.g_gate_version, %struct.g_gate_version* %6, i32 0, i32 4
  store i64 0, i64* %50, align 8
  %51 = call i32 @g_gate_swap2n_version(%struct.g_gate_version* %6)
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @g_gate_send(i32 %52, %struct.g_gate_version* %6, i32 48, i32 0)
  store i32 %53, i32* %11, align 4
  %54 = call i32 @g_gate_swap2h_version(%struct.g_gate_version* %6)
  %55 = load i32, i32* %11, align 4
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %63

57:                                               ; preds = %49
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @errno, align 4
  %60 = load i32, i32* @errno, align 4
  %61 = call i32 @strerror(i32 %60)
  %62 = call i32 (i32, i32, i8*, ...) @sendfail(i32 %58, i32 %59, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %61)
  store i32 0, i32* %3, align 4
  br label %186

63:                                               ; preds = %49
  %64 = load i32, i32* @LOG_DEBUG, align 4
  %65 = call i32 (i32, i8*, ...) @g_gate_log(i32 %64, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %66 = load i32, i32* %5, align 4
  %67 = bitcast %struct.g_gate_cinit* %7 to %struct.g_gate_version*
  %68 = load i32, i32* @MSG_WAITALL, align 4
  %69 = call i32 @g_gate_recv(i32 %66, %struct.g_gate_version* %67, i32 48, i32 %68)
  store i32 %69, i32* %11, align 4
  %70 = bitcast %struct.g_gate_cinit* %7 to %struct.g_gate_version*
  %71 = call i32 @g_gate_swap2h_cinit(%struct.g_gate_version* %70)
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = icmp ne i64 %73, 48
  br i1 %74, label %75, label %78

75:                                               ; preds = %63
  %76 = load i32, i32* @LOG_WARNING, align 4
  %77 = call i32 (i32, i8*, ...) @g_gate_log(i32 %76, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %186

78:                                               ; preds = %63
  %79 = load i32, i32* @LOG_DEBUG, align 4
  %80 = call i32 (i32, i8*, ...) @g_gate_log(i32 %79, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %81 = bitcast %struct.g_gate_cinit* %7 to %struct.g_gate_version*
  %82 = call %struct.ggd_connection* @connection_find(%struct.g_gate_version* %81)
  store %struct.ggd_connection* %82, %struct.ggd_connection** %9, align 8
  %83 = load %struct.ggd_connection*, %struct.ggd_connection** %9, align 8
  %84 = icmp ne %struct.ggd_connection* %83, null
  br i1 %84, label %85, label %101

85:                                               ; preds = %78
  %86 = load i32, i32* @LOG_DEBUG, align 4
  %87 = load %struct.ggd_connection*, %struct.ggd_connection** %9, align 8
  %88 = getelementptr inbounds %struct.ggd_connection, %struct.ggd_connection* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = call i32 (i32, i8*, ...) @g_gate_log(i32 %86, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i64 %89)
  %91 = load %struct.ggd_connection*, %struct.ggd_connection** %9, align 8
  %92 = bitcast %struct.g_gate_cinit* %7 to %struct.g_gate_version*
  %93 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @connection_add(%struct.ggd_connection* %91, %struct.g_gate_version* %92, %struct.sockaddr* %93, i32 %94)
  %96 = icmp eq i32 %95, -1
  br i1 %96, label %97, label %100

97:                                               ; preds = %85
  %98 = load %struct.ggd_connection*, %struct.ggd_connection** %9, align 8
  %99 = call i32 @connection_remove(%struct.ggd_connection* %98)
  store i32 0, i32* %3, align 4
  br label %186

100:                                              ; preds = %85
  br label %118

101:                                              ; preds = %78
  %102 = bitcast %struct.g_gate_cinit* %7 to %struct.g_gate_version*
  %103 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %104 = load i32, i32* %5, align 4
  %105 = call %struct.ggd_connection* @connection_new(%struct.g_gate_version* %102, %struct.sockaddr* %103, i32 %104)
  store %struct.ggd_connection* %105, %struct.ggd_connection** %9, align 8
  %106 = load %struct.ggd_connection*, %struct.ggd_connection** %9, align 8
  %107 = icmp eq %struct.ggd_connection* %106, null
  br i1 %107, label %108, label %112

108:                                              ; preds = %101
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* @ENOMEM, align 4
  %111 = call i32 (i32, i32, i8*, ...) @sendfail(i32 %109, i32 %110, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %186

112:                                              ; preds = %101
  %113 = load i32, i32* @LOG_DEBUG, align 4
  %114 = load %struct.ggd_connection*, %struct.ggd_connection** %9, align 8
  %115 = getelementptr inbounds %struct.ggd_connection, %struct.ggd_connection* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = call i32 (i32, i8*, ...) @g_gate_log(i32 %113, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i64 %116)
  br label %118

118:                                              ; preds = %112, %100
  %119 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %120 = bitcast %struct.g_gate_cinit* %7 to %struct.g_gate_version*
  %121 = load %struct.ggd_connection*, %struct.ggd_connection** %9, align 8
  %122 = call %struct.ggd_export* @exports_find(%struct.sockaddr* %119, %struct.g_gate_version* %120, %struct.ggd_connection* %121)
  store %struct.ggd_export* %122, %struct.ggd_export** %10, align 8
  %123 = load %struct.ggd_export*, %struct.ggd_export** %10, align 8
  %124 = icmp eq %struct.ggd_export* %123, null
  br i1 %124, label %125, label %131

125:                                              ; preds = %118
  %126 = load i32, i32* %5, align 4
  %127 = load i32, i32* @errno, align 4
  %128 = call i32 (i32, i32, i8*, ...) @sendfail(i32 %126, i32 %127, i8* null)
  %129 = load %struct.ggd_connection*, %struct.ggd_connection** %9, align 8
  %130 = call i32 @connection_remove(%struct.ggd_connection* %129)
  store i32 0, i32* %3, align 4
  br label %186

131:                                              ; preds = %118
  %132 = load %struct.ggd_connection*, %struct.ggd_connection** %9, align 8
  %133 = getelementptr inbounds %struct.ggd_connection, %struct.ggd_connection* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %149

136:                                              ; preds = %131
  %137 = load %struct.ggd_connection*, %struct.ggd_connection** %9, align 8
  %138 = getelementptr inbounds %struct.ggd_connection, %struct.ggd_connection* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = call i64 @g_gate_mediasize(i32 %139)
  %141 = load %struct.ggd_connection*, %struct.ggd_connection** %9, align 8
  %142 = getelementptr inbounds %struct.ggd_connection, %struct.ggd_connection* %141, i32 0, i32 0
  store i64 %140, i64* %142, align 8
  %143 = load %struct.ggd_connection*, %struct.ggd_connection** %9, align 8
  %144 = getelementptr inbounds %struct.ggd_connection, %struct.ggd_connection* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @g_gate_sectorsize(i32 %145)
  %147 = load %struct.ggd_connection*, %struct.ggd_connection** %9, align 8
  %148 = getelementptr inbounds %struct.ggd_connection, %struct.ggd_connection* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 8
  br label %149

149:                                              ; preds = %136, %131
  %150 = load %struct.ggd_connection*, %struct.ggd_connection** %9, align 8
  %151 = getelementptr inbounds %struct.ggd_connection, %struct.ggd_connection* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = getelementptr inbounds %struct.g_gate_sinit, %struct.g_gate_sinit* %8, i32 0, i32 1
  store i64 %152, i64* %153, align 8
  %154 = load %struct.ggd_connection*, %struct.ggd_connection** %9, align 8
  %155 = getelementptr inbounds %struct.ggd_connection, %struct.ggd_connection* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = getelementptr inbounds %struct.g_gate_sinit, %struct.g_gate_sinit* %8, i32 0, i32 3
  store i32 %156, i32* %157, align 8
  %158 = getelementptr inbounds %struct.g_gate_sinit, %struct.g_gate_sinit* %8, i32 0, i32 2
  store i64 0, i64* %158, align 8
  %159 = load i32, i32* @LOG_DEBUG, align 4
  %160 = call i32 (i32, i8*, ...) @g_gate_log(i32 %159, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0))
  %161 = bitcast %struct.g_gate_sinit* %8 to %struct.g_gate_version*
  %162 = call i32 @g_gate_swap2n_sinit(%struct.g_gate_version* %161)
  %163 = load i32, i32* %5, align 4
  %164 = bitcast %struct.g_gate_sinit* %8 to %struct.g_gate_version*
  %165 = call i32 @g_gate_send(i32 %163, %struct.g_gate_version* %164, i32 48, i32 0)
  store i32 %165, i32* %11, align 4
  %166 = bitcast %struct.g_gate_sinit* %8 to %struct.g_gate_version*
  %167 = call i32 @g_gate_swap2h_sinit(%struct.g_gate_version* %166)
  %168 = load i32, i32* %11, align 4
  %169 = icmp eq i32 %168, -1
  br i1 %169, label %170, label %176

170:                                              ; preds = %149
  %171 = load i32, i32* %5, align 4
  %172 = load i32, i32* @errno, align 4
  %173 = load i32, i32* @errno, align 4
  %174 = call i32 @strerror(i32 %173)
  %175 = call i32 (i32, i32, i8*, ...) @sendfail(i32 %171, i32 %172, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i64 0, i64 0), i32 %174)
  store i32 0, i32* %3, align 4
  br label %186

176:                                              ; preds = %149
  %177 = load %struct.ggd_connection*, %struct.ggd_connection** %9, align 8
  %178 = call i64 @connection_ready(%struct.ggd_connection* %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %176
  %181 = load %struct.ggd_connection*, %struct.ggd_connection** %9, align 8
  %182 = call i32 @connection_launch(%struct.ggd_connection* %181)
  %183 = load %struct.ggd_connection*, %struct.ggd_connection** %9, align 8
  %184 = call i32 @connection_remove(%struct.ggd_connection* %183)
  br label %185

185:                                              ; preds = %180, %176
  store i32 1, i32* %3, align 4
  br label %186

186:                                              ; preds = %185, %170, %125, %108, %97, %75, %57, %44, %36, %23
  %187 = load i32, i32* %3, align 4
  ret i32 %187
}

declare dso_local i32 @log_connection(%struct.sockaddr*) #1

declare dso_local i32 @g_gate_log(i32, i8*, ...) #1

declare dso_local i32 @g_gate_recv(i32, %struct.g_gate_version*, i32, i32) #1

declare dso_local i32 @g_gate_swap2h_version(%struct.g_gate_version*) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @g_gate_swap2n_version(%struct.g_gate_version*) #1

declare dso_local i32 @g_gate_send(i32, %struct.g_gate_version*, i32, i32) #1

declare dso_local i32 @sendfail(i32, i32, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @g_gate_swap2h_cinit(%struct.g_gate_version*) #1

declare dso_local %struct.ggd_connection* @connection_find(%struct.g_gate_version*) #1

declare dso_local i32 @connection_add(%struct.ggd_connection*, %struct.g_gate_version*, %struct.sockaddr*, i32) #1

declare dso_local i32 @connection_remove(%struct.ggd_connection*) #1

declare dso_local %struct.ggd_connection* @connection_new(%struct.g_gate_version*, %struct.sockaddr*, i32) #1

declare dso_local %struct.ggd_export* @exports_find(%struct.sockaddr*, %struct.g_gate_version*, %struct.ggd_connection*) #1

declare dso_local i64 @g_gate_mediasize(i32) #1

declare dso_local i32 @g_gate_sectorsize(i32) #1

declare dso_local i32 @g_gate_swap2n_sinit(%struct.g_gate_version*) #1

declare dso_local i32 @g_gate_swap2h_sinit(%struct.g_gate_version*) #1

declare dso_local i64 @connection_ready(%struct.ggd_connection*) #1

declare dso_local i32 @connection_launch(%struct.ggd_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
