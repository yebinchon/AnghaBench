; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_client.c_radius_client_timer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_client.c_radius_client_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_client_data = type { i32, i32, i64, i32, %struct.radius_msg_list* }
%struct.radius_msg_list = type { i64, i64, i64, %struct.radius_msg_list* }
%struct.os_reltime = type { i64 }

@RADIUS_AUTH = common dso_local global i64 0, align 8
@RADIUS_CLIENT_NUM_FAILOVER = common dso_local global i64 0, align 8
@RADIUS_ACCT = common dso_local global i64 0, align 8
@RADIUS_ACCT_INTERIM = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"RADIUS: Message removed from queue - restart from beginning\00", align 1
@HOSTAPD_MODULE_RADIUS = common dso_local global i32 0, align 4
@HOSTAPD_LEVEL_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Next RADIUS client retransmit in %ld seconds\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @radius_client_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radius_client_timer(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.radius_client_data*, align 8
  %6 = alloca %struct.os_reltime, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.radius_msg_list*, align 8
  %9 = alloca %struct.radius_msg_list*, align 8
  %10 = alloca %struct.radius_msg_list*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = bitcast i8* %15 to %struct.radius_client_data*
  store %struct.radius_client_data* %16, %struct.radius_client_data** %5, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %17 = load %struct.radius_client_data*, %struct.radius_client_data** %5, align 8
  %18 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %17, i32 0, i32 4
  %19 = load %struct.radius_msg_list*, %struct.radius_msg_list** %18, align 8
  store %struct.radius_msg_list* %19, %struct.radius_msg_list** %8, align 8
  %20 = load %struct.radius_msg_list*, %struct.radius_msg_list** %8, align 8
  %21 = icmp ne %struct.radius_msg_list* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  br label %212

23:                                               ; preds = %2
  %24 = call i32 @os_get_reltime(%struct.os_reltime* %6)
  br label %25

25:                                               ; preds = %84, %23
  %26 = load %struct.radius_msg_list*, %struct.radius_msg_list** %8, align 8
  %27 = icmp ne %struct.radius_msg_list* %26, null
  br i1 %27, label %28, label %88

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.os_reltime, %struct.os_reltime* %6, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.radius_msg_list*, %struct.radius_msg_list** %8, align 8
  %32 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sge i64 %30, %33
  br i1 %34, label %35, label %84

35:                                               ; preds = %28
  %36 = load %struct.radius_msg_list*, %struct.radius_msg_list** %8, align 8
  %37 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @RADIUS_AUTH, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load %struct.radius_client_data*, %struct.radius_client_data** %5, align 8
  %43 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  br label %49

45:                                               ; preds = %35
  %46 = load %struct.radius_client_data*, %struct.radius_client_data** %5, align 8
  %47 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  br label %49

49:                                               ; preds = %45, %41
  %50 = phi i32 [ %44, %41 ], [ %48, %45 ]
  store i32 %50, i32* %14, align 4
  %51 = load %struct.radius_msg_list*, %struct.radius_msg_list** %8, align 8
  %52 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @RADIUS_CLIENT_NUM_FAILOVER, align 8
  %55 = icmp sgt i64 %53, %54
  br i1 %55, label %64, label %56

56:                                               ; preds = %49
  %57 = load i32, i32* %14, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %83

59:                                               ; preds = %56
  %60 = load %struct.radius_msg_list*, %struct.radius_msg_list** %8, align 8
  %61 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp sgt i64 %62, 0
  br i1 %63, label %64, label %83

64:                                               ; preds = %59, %49
  %65 = load %struct.radius_msg_list*, %struct.radius_msg_list** %8, align 8
  %66 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @RADIUS_ACCT, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %76, label %70

70:                                               ; preds = %64
  %71 = load %struct.radius_msg_list*, %struct.radius_msg_list** %8, align 8
  %72 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @RADIUS_ACCT_INTERIM, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %70, %64
  %77 = load i32, i32* %12, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %12, align 4
  br label %82

79:                                               ; preds = %70
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %11, align 4
  br label %82

82:                                               ; preds = %79, %76
  br label %83

83:                                               ; preds = %82, %59, %56
  br label %84

84:                                               ; preds = %83, %28
  %85 = load %struct.radius_msg_list*, %struct.radius_msg_list** %8, align 8
  %86 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %85, i32 0, i32 3
  %87 = load %struct.radius_msg_list*, %struct.radius_msg_list** %86, align 8
  store %struct.radius_msg_list* %87, %struct.radius_msg_list** %8, align 8
  br label %25

88:                                               ; preds = %25
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load %struct.radius_client_data*, %struct.radius_client_data** %5, align 8
  %93 = call i32 @radius_client_auth_failover(%struct.radius_client_data* %92)
  br label %94

94:                                               ; preds = %91, %88
  %95 = load i32, i32* %12, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load %struct.radius_client_data*, %struct.radius_client_data** %5, align 8
  %99 = call i32 @radius_client_acct_failover(%struct.radius_client_data* %98)
  br label %100

100:                                              ; preds = %97, %94
  %101 = load %struct.radius_client_data*, %struct.radius_client_data** %5, align 8
  %102 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %101, i32 0, i32 4
  %103 = load %struct.radius_msg_list*, %struct.radius_msg_list** %102, align 8
  store %struct.radius_msg_list* %103, %struct.radius_msg_list** %8, align 8
  store i64 0, i64* %7, align 8
  store %struct.radius_msg_list* null, %struct.radius_msg_list** %9, align 8
  br label %104

104:                                              ; preds = %175, %156, %139, %100
  %105 = load %struct.radius_msg_list*, %struct.radius_msg_list** %8, align 8
  %106 = icmp ne %struct.radius_msg_list* %105, null
  br i1 %106, label %107, label %180

107:                                              ; preds = %104
  %108 = load %struct.radius_client_data*, %struct.radius_client_data** %5, align 8
  %109 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  store i64 %110, i64* %13, align 8
  %111 = getelementptr inbounds %struct.os_reltime, %struct.os_reltime* %6, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.radius_msg_list*, %struct.radius_msg_list** %8, align 8
  %114 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp sge i64 %112, %115
  br i1 %116, label %117, label %150

117:                                              ; preds = %107
  %118 = load %struct.radius_client_data*, %struct.radius_client_data** %5, align 8
  %119 = load %struct.radius_msg_list*, %struct.radius_msg_list** %8, align 8
  %120 = getelementptr inbounds %struct.os_reltime, %struct.os_reltime* %6, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call i64 @radius_client_retransmit(%struct.radius_client_data* %118, %struct.radius_msg_list* %119, i64 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %150

124:                                              ; preds = %117
  %125 = load %struct.radius_msg_list*, %struct.radius_msg_list** %9, align 8
  %126 = icmp ne %struct.radius_msg_list* %125, null
  br i1 %126, label %127, label %133

127:                                              ; preds = %124
  %128 = load %struct.radius_msg_list*, %struct.radius_msg_list** %8, align 8
  %129 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %128, i32 0, i32 3
  %130 = load %struct.radius_msg_list*, %struct.radius_msg_list** %129, align 8
  %131 = load %struct.radius_msg_list*, %struct.radius_msg_list** %9, align 8
  %132 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %131, i32 0, i32 3
  store %struct.radius_msg_list* %130, %struct.radius_msg_list** %132, align 8
  br label %139

133:                                              ; preds = %124
  %134 = load %struct.radius_msg_list*, %struct.radius_msg_list** %8, align 8
  %135 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %134, i32 0, i32 3
  %136 = load %struct.radius_msg_list*, %struct.radius_msg_list** %135, align 8
  %137 = load %struct.radius_client_data*, %struct.radius_client_data** %5, align 8
  %138 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %137, i32 0, i32 4
  store %struct.radius_msg_list* %136, %struct.radius_msg_list** %138, align 8
  br label %139

139:                                              ; preds = %133, %127
  %140 = load %struct.radius_msg_list*, %struct.radius_msg_list** %8, align 8
  store %struct.radius_msg_list* %140, %struct.radius_msg_list** %10, align 8
  %141 = load %struct.radius_msg_list*, %struct.radius_msg_list** %8, align 8
  %142 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %141, i32 0, i32 3
  %143 = load %struct.radius_msg_list*, %struct.radius_msg_list** %142, align 8
  store %struct.radius_msg_list* %143, %struct.radius_msg_list** %8, align 8
  %144 = load %struct.radius_msg_list*, %struct.radius_msg_list** %10, align 8
  %145 = call i32 @radius_client_msg_free(%struct.radius_msg_list* %144)
  %146 = load %struct.radius_client_data*, %struct.radius_client_data** %5, align 8
  %147 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = add i64 %148, -1
  store i64 %149, i64* %147, align 8
  br label %104

150:                                              ; preds = %117, %107
  %151 = load i64, i64* %13, align 8
  %152 = load %struct.radius_client_data*, %struct.radius_client_data** %5, align 8
  %153 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %151, %154
  br i1 %155, label %156, label %162

156:                                              ; preds = %150
  %157 = load i32, i32* @MSG_DEBUG, align 4
  %158 = call i32 @wpa_printf(i32 %157, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %159 = load %struct.radius_client_data*, %struct.radius_client_data** %5, align 8
  %160 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %159, i32 0, i32 4
  %161 = load %struct.radius_msg_list*, %struct.radius_msg_list** %160, align 8
  store %struct.radius_msg_list* %161, %struct.radius_msg_list** %8, align 8
  store %struct.radius_msg_list* null, %struct.radius_msg_list** %9, align 8
  br label %104

162:                                              ; preds = %150
  %163 = load i64, i64* %7, align 8
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %171, label %165

165:                                              ; preds = %162
  %166 = load %struct.radius_msg_list*, %struct.radius_msg_list** %8, align 8
  %167 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* %7, align 8
  %170 = icmp slt i64 %168, %169
  br i1 %170, label %171, label %175

171:                                              ; preds = %165, %162
  %172 = load %struct.radius_msg_list*, %struct.radius_msg_list** %8, align 8
  %173 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  store i64 %174, i64* %7, align 8
  br label %175

175:                                              ; preds = %171, %165
  %176 = load %struct.radius_msg_list*, %struct.radius_msg_list** %8, align 8
  store %struct.radius_msg_list* %176, %struct.radius_msg_list** %9, align 8
  %177 = load %struct.radius_msg_list*, %struct.radius_msg_list** %8, align 8
  %178 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %177, i32 0, i32 3
  %179 = load %struct.radius_msg_list*, %struct.radius_msg_list** %178, align 8
  store %struct.radius_msg_list* %179, %struct.radius_msg_list** %8, align 8
  br label %104

180:                                              ; preds = %104
  %181 = load %struct.radius_client_data*, %struct.radius_client_data** %5, align 8
  %182 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %181, i32 0, i32 4
  %183 = load %struct.radius_msg_list*, %struct.radius_msg_list** %182, align 8
  %184 = icmp ne %struct.radius_msg_list* %183, null
  br i1 %184, label %185, label %212

185:                                              ; preds = %180
  %186 = load i64, i64* %7, align 8
  %187 = getelementptr inbounds %struct.os_reltime, %struct.os_reltime* %6, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = icmp slt i64 %186, %188
  br i1 %189, label %190, label %193

190:                                              ; preds = %185
  %191 = getelementptr inbounds %struct.os_reltime, %struct.os_reltime* %6, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  store i64 %192, i64* %7, align 8
  br label %193

193:                                              ; preds = %190, %185
  %194 = load %struct.radius_client_data*, %struct.radius_client_data** %5, align 8
  %195 = call i32 @eloop_cancel_timeout(void (i8*, i8*)* @radius_client_timer, %struct.radius_client_data* %194, i32* null)
  %196 = load i64, i64* %7, align 8
  %197 = getelementptr inbounds %struct.os_reltime, %struct.os_reltime* %6, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = sub nsw i64 %196, %198
  %200 = load %struct.radius_client_data*, %struct.radius_client_data** %5, align 8
  %201 = call i32 @eloop_register_timeout(i64 %199, i32 0, void (i8*, i8*)* @radius_client_timer, %struct.radius_client_data* %200, i32* null)
  %202 = load %struct.radius_client_data*, %struct.radius_client_data** %5, align 8
  %203 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @HOSTAPD_MODULE_RADIUS, align 4
  %206 = load i32, i32* @HOSTAPD_LEVEL_DEBUG, align 4
  %207 = load i64, i64* %7, align 8
  %208 = getelementptr inbounds %struct.os_reltime, %struct.os_reltime* %6, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = sub nsw i64 %207, %209
  %211 = call i32 @hostapd_logger(i32 %204, i32* null, i32 %205, i32 %206, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %210)
  br label %212

212:                                              ; preds = %22, %193, %180
  ret void
}

declare dso_local i32 @os_get_reltime(%struct.os_reltime*) #1

declare dso_local i32 @radius_client_auth_failover(%struct.radius_client_data*) #1

declare dso_local i32 @radius_client_acct_failover(%struct.radius_client_data*) #1

declare dso_local i64 @radius_client_retransmit(%struct.radius_client_data*, %struct.radius_msg_list*, i64) #1

declare dso_local i32 @radius_client_msg_free(%struct.radius_msg_list*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @eloop_cancel_timeout(void (i8*, i8*)*, %struct.radius_client_data*, i32*) #1

declare dso_local i32 @eloop_register_timeout(i64, i32, void (i8*, i8*)*, %struct.radius_client_data*, i32*) #1

declare dso_local i32 @hostapd_logger(i32, i32*, i32, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
