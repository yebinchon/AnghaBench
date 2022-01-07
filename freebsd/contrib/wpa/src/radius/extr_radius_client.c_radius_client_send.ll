; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_client.c_radius_client_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_client.c_radius_client_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_client_data = type { i64, i64, i32, %struct.hostapd_radius_servers* }
%struct.hostapd_radius_servers = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i32, i32* }
%struct.TYPE_3__ = type { i64, i32, i32* }
%struct.radius_msg = type { i32 }
%struct.wpabuf = type { i32 }

@RADIUS_ACCT = common dso_local global i32 0, align 4
@RADIUS_ACCT_INTERIM = common dso_local global i32 0, align 4
@HOSTAPD_MODULE_RADIUS = common dso_local global i32 0, align 4
@HOSTAPD_LEVEL_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"No accounting server configured\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"accounting\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"No authentication server configured\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"authentication\00", align 1
@HOSTAPD_LEVEL_DEBUG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"Sending RADIUS message to %s server\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radius_client_send(%struct.radius_client_data* %0, %struct.radius_msg* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.radius_client_data*, align 8
  %7 = alloca %struct.radius_msg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.hostapd_radius_servers*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.wpabuf*, align 8
  store %struct.radius_client_data* %0, %struct.radius_client_data** %6, align 8
  store %struct.radius_msg* %1, %struct.radius_msg** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %17 = load %struct.radius_client_data*, %struct.radius_client_data** %6, align 8
  %18 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %17, i32 0, i32 3
  %19 = load %struct.hostapd_radius_servers*, %struct.hostapd_radius_servers** %18, align 8
  store %struct.hostapd_radius_servers* %19, %struct.hostapd_radius_servers** %10, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @RADIUS_ACCT, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @RADIUS_ACCT_INTERIM, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %89

27:                                               ; preds = %23, %4
  %28 = load %struct.hostapd_radius_servers*, %struct.hostapd_radius_servers** %10, align 8
  %29 = getelementptr inbounds %struct.hostapd_radius_servers, %struct.hostapd_radius_servers* %28, i32 0, i32 2
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = icmp ne %struct.TYPE_3__* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = load %struct.radius_client_data*, %struct.radius_client_data** %6, align 8
  %34 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load %struct.radius_client_data*, %struct.radius_client_data** %6, align 8
  %39 = call i32 @radius_client_init_acct(%struct.radius_client_data* %38)
  br label %40

40:                                               ; preds = %37, %32, %27
  %41 = load %struct.hostapd_radius_servers*, %struct.hostapd_radius_servers** %10, align 8
  %42 = getelementptr inbounds %struct.hostapd_radius_servers, %struct.hostapd_radius_servers* %41, i32 0, i32 2
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = icmp eq %struct.TYPE_3__* %43, null
  br i1 %44, label %57, label %45

45:                                               ; preds = %40
  %46 = load %struct.radius_client_data*, %struct.radius_client_data** %6, align 8
  %47 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %45
  %51 = load %struct.hostapd_radius_servers*, %struct.hostapd_radius_servers** %10, align 8
  %52 = getelementptr inbounds %struct.hostapd_radius_servers, %struct.hostapd_radius_servers* %51, i32 0, i32 2
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %64

57:                                               ; preds = %50, %45, %40
  %58 = load %struct.radius_client_data*, %struct.radius_client_data** %6, align 8
  %59 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @HOSTAPD_MODULE_RADIUS, align 4
  %62 = load i32, i32* @HOSTAPD_LEVEL_INFO, align 4
  %63 = call i32 (i32, i32*, i32, i32, i8*, ...) @hostapd_logger(i32 %60, i32* null, i32 %61, i32 %62, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %190

64:                                               ; preds = %50
  %65 = load %struct.hostapd_radius_servers*, %struct.hostapd_radius_servers** %10, align 8
  %66 = getelementptr inbounds %struct.hostapd_radius_servers, %struct.hostapd_radius_servers* %65, i32 0, i32 2
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  store i32* %69, i32** %11, align 8
  %70 = load %struct.hostapd_radius_servers*, %struct.hostapd_radius_servers** %10, align 8
  %71 = getelementptr inbounds %struct.hostapd_radius_servers, %struct.hostapd_radius_servers* %70, i32 0, i32 2
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %12, align 8
  %75 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %76 = load i32*, i32** %11, align 8
  %77 = load i64, i64* %12, align 8
  %78 = call i32 @radius_msg_finish_acct(%struct.radius_msg* %75, i32* %76, i64 %77)
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  %79 = load %struct.radius_client_data*, %struct.radius_client_data** %6, align 8
  %80 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %14, align 4
  %83 = load %struct.hostapd_radius_servers*, %struct.hostapd_radius_servers** %10, align 8
  %84 = getelementptr inbounds %struct.hostapd_radius_servers, %struct.hostapd_radius_servers* %83, i32 0, i32 2
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 8
  br label %151

89:                                               ; preds = %23
  %90 = load %struct.hostapd_radius_servers*, %struct.hostapd_radius_servers** %10, align 8
  %91 = getelementptr inbounds %struct.hostapd_radius_servers, %struct.hostapd_radius_servers* %90, i32 0, i32 1
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = icmp ne %struct.TYPE_4__* %92, null
  br i1 %93, label %94, label %102

94:                                               ; preds = %89
  %95 = load %struct.radius_client_data*, %struct.radius_client_data** %6, align 8
  %96 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp slt i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load %struct.radius_client_data*, %struct.radius_client_data** %6, align 8
  %101 = call i32 @radius_client_init_auth(%struct.radius_client_data* %100)
  br label %102

102:                                              ; preds = %99, %94, %89
  %103 = load %struct.hostapd_radius_servers*, %struct.hostapd_radius_servers** %10, align 8
  %104 = getelementptr inbounds %struct.hostapd_radius_servers, %struct.hostapd_radius_servers* %103, i32 0, i32 1
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = icmp eq %struct.TYPE_4__* %105, null
  br i1 %106, label %119, label %107

107:                                              ; preds = %102
  %108 = load %struct.radius_client_data*, %struct.radius_client_data** %6, align 8
  %109 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp slt i64 %110, 0
  br i1 %111, label %119, label %112

112:                                              ; preds = %107
  %113 = load %struct.hostapd_radius_servers*, %struct.hostapd_radius_servers** %10, align 8
  %114 = getelementptr inbounds %struct.hostapd_radius_servers, %struct.hostapd_radius_servers* %113, i32 0, i32 1
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  %118 = icmp eq i32* %117, null
  br i1 %118, label %119, label %126

119:                                              ; preds = %112, %107, %102
  %120 = load %struct.radius_client_data*, %struct.radius_client_data** %6, align 8
  %121 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @HOSTAPD_MODULE_RADIUS, align 4
  %124 = load i32, i32* @HOSTAPD_LEVEL_INFO, align 4
  %125 = call i32 (i32, i32*, i32, i32, i8*, ...) @hostapd_logger(i32 %122, i32* null, i32 %123, i32 %124, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %190

126:                                              ; preds = %112
  %127 = load %struct.hostapd_radius_servers*, %struct.hostapd_radius_servers** %10, align 8
  %128 = getelementptr inbounds %struct.hostapd_radius_servers, %struct.hostapd_radius_servers* %127, i32 0, i32 1
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  store i32* %131, i32** %11, align 8
  %132 = load %struct.hostapd_radius_servers*, %struct.hostapd_radius_servers** %10, align 8
  %133 = getelementptr inbounds %struct.hostapd_radius_servers, %struct.hostapd_radius_servers* %132, i32 0, i32 1
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  store i64 %136, i64* %12, align 8
  %137 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %138 = load i32*, i32** %11, align 8
  %139 = load i64, i64* %12, align 8
  %140 = call i32 @radius_msg_finish(%struct.radius_msg* %137, i32* %138, i64 %139)
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8** %13, align 8
  %141 = load %struct.radius_client_data*, %struct.radius_client_data** %6, align 8
  %142 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %14, align 4
  %145 = load %struct.hostapd_radius_servers*, %struct.hostapd_radius_servers** %10, align 8
  %146 = getelementptr inbounds %struct.hostapd_radius_servers, %struct.hostapd_radius_servers* %145, i32 0, i32 1
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %148, align 8
  br label %151

151:                                              ; preds = %126, %64
  %152 = load %struct.radius_client_data*, %struct.radius_client_data** %6, align 8
  %153 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @HOSTAPD_MODULE_RADIUS, align 4
  %156 = load i32, i32* @HOSTAPD_LEVEL_DEBUG, align 4
  %157 = load i8*, i8** %13, align 8
  %158 = call i32 (i32, i32*, i32, i32, i8*, ...) @hostapd_logger(i32 %154, i32* null, i32 %155, i32 %156, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8* %157)
  %159 = load %struct.hostapd_radius_servers*, %struct.hostapd_radius_servers** %10, align 8
  %160 = getelementptr inbounds %struct.hostapd_radius_servers, %struct.hostapd_radius_servers* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %151
  %164 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %165 = call i32 @radius_msg_dump(%struct.radius_msg* %164)
  br label %166

166:                                              ; preds = %163, %151
  %167 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %168 = call %struct.wpabuf* @radius_msg_get_buf(%struct.radius_msg* %167)
  store %struct.wpabuf* %168, %struct.wpabuf** %16, align 8
  %169 = load i32, i32* %14, align 4
  %170 = load %struct.wpabuf*, %struct.wpabuf** %16, align 8
  %171 = call i32 @wpabuf_head(%struct.wpabuf* %170)
  %172 = load %struct.wpabuf*, %struct.wpabuf** %16, align 8
  %173 = call i32 @wpabuf_len(%struct.wpabuf* %172)
  %174 = call i32 @send(i32 %169, i32 %171, i32 %173, i32 0)
  store i32 %174, i32* %15, align 4
  %175 = load i32, i32* %15, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %166
  %178 = load %struct.radius_client_data*, %struct.radius_client_data** %6, align 8
  %179 = load i32, i32* %14, align 4
  %180 = load i32, i32* %8, align 4
  %181 = call i32 @radius_client_handle_send_error(%struct.radius_client_data* %178, i32 %179, i32 %180)
  br label %182

182:                                              ; preds = %177, %166
  %183 = load %struct.radius_client_data*, %struct.radius_client_data** %6, align 8
  %184 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %185 = load i32, i32* %8, align 4
  %186 = load i32*, i32** %11, align 8
  %187 = load i64, i64* %12, align 8
  %188 = load i32*, i32** %9, align 8
  %189 = call i32 @radius_client_list_add(%struct.radius_client_data* %183, %struct.radius_msg* %184, i32 %185, i32* %186, i64 %187, i32* %188)
  store i32 0, i32* %5, align 4
  br label %190

190:                                              ; preds = %182, %119, %57
  %191 = load i32, i32* %5, align 4
  ret i32 %191
}

declare dso_local i32 @radius_client_init_acct(%struct.radius_client_data*) #1

declare dso_local i32 @hostapd_logger(i32, i32*, i32, i32, i8*, ...) #1

declare dso_local i32 @radius_msg_finish_acct(%struct.radius_msg*, i32*, i64) #1

declare dso_local i32 @radius_client_init_auth(%struct.radius_client_data*) #1

declare dso_local i32 @radius_msg_finish(%struct.radius_msg*, i32*, i64) #1

declare dso_local i32 @radius_msg_dump(%struct.radius_msg*) #1

declare dso_local %struct.wpabuf* @radius_msg_get_buf(%struct.radius_msg*) #1

declare dso_local i32 @send(i32, i32, i32, i32) #1

declare dso_local i32 @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @radius_client_handle_send_error(%struct.radius_client_data*, i32, i32) #1

declare dso_local i32 @radius_client_list_add(%struct.radius_client_data*, %struct.radius_msg*, i32, i32*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
