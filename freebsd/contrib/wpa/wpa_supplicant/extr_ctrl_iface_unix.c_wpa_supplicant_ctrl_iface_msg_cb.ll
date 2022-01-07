; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface_unix.c_wpa_supplicant_ctrl_iface_msg_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface_unix.c_wpa_supplicant_ctrl_iface_msg_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.ctrl_iface_priv*, i32*, %struct.TYPE_2__* }
%struct.ctrl_iface_priv = type { i64, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.ctrl_iface_global_priv* }
%struct.ctrl_iface_global_priv = type { i64, i32, i32, i32 }

@WPA_MSG_NO_GLOBAL = common dso_local global i32 0, align 4
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"CTRL: Had to throttle global event message for sock %d\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"CTRL: Had to throttle %u global event message(s) for sock %d\00", align 1
@WPA_MSG_PER_INTERFACE = common dso_local global i32 0, align 4
@WPA_MSG_ONLY_GLOBAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"CTRL: Had to throttle event message for sock %d\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"CTRL: Had to throttle %u event message(s) for sock %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i8*, i64)* @wpa_supplicant_ctrl_iface_msg_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_supplicant_ctrl_iface_msg_cb(i8* %0, i32 %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.wpa_supplicant*, align 8
  %12 = alloca %struct.ctrl_iface_priv*, align 8
  %13 = alloca %struct.ctrl_iface_global_priv*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.wpa_supplicant*
  store %struct.wpa_supplicant* %15, %struct.wpa_supplicant** %11, align 8
  %16 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %11, align 8
  %17 = icmp eq %struct.wpa_supplicant* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  br label %198

19:                                               ; preds = %5
  %20 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %11, align 8
  %21 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.ctrl_iface_global_priv*, %struct.ctrl_iface_global_priv** %23, align 8
  store %struct.ctrl_iface_global_priv* %24, %struct.ctrl_iface_global_priv** %13, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @WPA_MSG_NO_GLOBAL, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %117

28:                                               ; preds = %19
  %29 = load %struct.ctrl_iface_global_priv*, %struct.ctrl_iface_global_priv** %13, align 8
  %30 = icmp ne %struct.ctrl_iface_global_priv* %29, null
  br i1 %30, label %31, label %117

31:                                               ; preds = %28
  %32 = load %struct.ctrl_iface_global_priv*, %struct.ctrl_iface_global_priv** %13, align 8
  %33 = getelementptr inbounds %struct.ctrl_iface_global_priv, %struct.ctrl_iface_global_priv* %32, i32 0, i32 1
  %34 = call i32 @dl_list_empty(i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %117, label %36

36:                                               ; preds = %31
  %37 = load %struct.ctrl_iface_global_priv*, %struct.ctrl_iface_global_priv** %13, align 8
  %38 = getelementptr inbounds %struct.ctrl_iface_global_priv, %struct.ctrl_iface_global_priv* %37, i32 0, i32 3
  %39 = call i32 @dl_list_empty(i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load %struct.ctrl_iface_global_priv*, %struct.ctrl_iface_global_priv** %13, align 8
  %43 = getelementptr inbounds %struct.ctrl_iface_global_priv, %struct.ctrl_iface_global_priv* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @wpas_ctrl_iface_throttle(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %78

47:                                               ; preds = %41, %36
  %48 = load %struct.ctrl_iface_global_priv*, %struct.ctrl_iface_global_priv** %13, align 8
  %49 = getelementptr inbounds %struct.ctrl_iface_global_priv, %struct.ctrl_iface_global_priv* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load i32, i32* @MSG_MSGDUMP, align 4
  %54 = load %struct.ctrl_iface_global_priv*, %struct.ctrl_iface_global_priv** %13, align 8
  %55 = getelementptr inbounds %struct.ctrl_iface_global_priv, %struct.ctrl_iface_global_priv* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = call i32 (i32, i8*, i64, ...) @wpa_printf(i32 %53, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %57)
  br label %59

59:                                               ; preds = %52, %47
  %60 = load %struct.ctrl_iface_global_priv*, %struct.ctrl_iface_global_priv** %13, align 8
  %61 = getelementptr inbounds %struct.ctrl_iface_global_priv, %struct.ctrl_iface_global_priv* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %61, align 8
  %64 = load %struct.ctrl_iface_global_priv*, %struct.ctrl_iface_global_priv** %13, align 8
  %65 = getelementptr inbounds %struct.ctrl_iface_global_priv, %struct.ctrl_iface_global_priv* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.ctrl_iface_global_priv*, %struct.ctrl_iface_global_priv** %13, align 8
  %68 = getelementptr inbounds %struct.ctrl_iface_global_priv, %struct.ctrl_iface_global_priv* %67, i32 0, i32 3
  %69 = call i32 @wpas_ctrl_msg_queue_limit(i64 %66, i32* %68)
  %70 = load %struct.ctrl_iface_global_priv*, %struct.ctrl_iface_global_priv** %13, align 8
  %71 = getelementptr inbounds %struct.ctrl_iface_global_priv, %struct.ctrl_iface_global_priv* %70, i32 0, i32 3
  %72 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %11, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i8*, i8** %9, align 8
  %76 = load i64, i64* %10, align 8
  %77 = call i32 @wpas_ctrl_msg_queue(i32* %71, %struct.wpa_supplicant* %72, i32 %73, i32 %74, i8* %75, i64 %76)
  br label %116

78:                                               ; preds = %41
  %79 = load %struct.ctrl_iface_global_priv*, %struct.ctrl_iface_global_priv** %13, align 8
  %80 = getelementptr inbounds %struct.ctrl_iface_global_priv, %struct.ctrl_iface_global_priv* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %78
  %84 = load i32, i32* @MSG_MSGDUMP, align 4
  %85 = load %struct.ctrl_iface_global_priv*, %struct.ctrl_iface_global_priv** %13, align 8
  %86 = getelementptr inbounds %struct.ctrl_iface_global_priv, %struct.ctrl_iface_global_priv* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.ctrl_iface_global_priv*, %struct.ctrl_iface_global_priv** %13, align 8
  %89 = getelementptr inbounds %struct.ctrl_iface_global_priv, %struct.ctrl_iface_global_priv* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i32 (i32, i8*, i64, ...) @wpa_printf(i32 %84, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i64 %87, i32 %90)
  br label %92

92:                                               ; preds = %83, %78
  %93 = load %struct.ctrl_iface_global_priv*, %struct.ctrl_iface_global_priv** %13, align 8
  %94 = getelementptr inbounds %struct.ctrl_iface_global_priv, %struct.ctrl_iface_global_priv* %93, i32 0, i32 0
  store i64 0, i64* %94, align 8
  %95 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %11, align 8
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* @WPA_MSG_PER_INTERFACE, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  br label %104

100:                                              ; preds = %92
  %101 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %11, align 8
  %102 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  br label %104

104:                                              ; preds = %100, %99
  %105 = phi i32* [ null, %99 ], [ %103, %100 ]
  %106 = load %struct.ctrl_iface_global_priv*, %struct.ctrl_iface_global_priv** %13, align 8
  %107 = getelementptr inbounds %struct.ctrl_iface_global_priv, %struct.ctrl_iface_global_priv* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.ctrl_iface_global_priv*, %struct.ctrl_iface_global_priv** %13, align 8
  %110 = getelementptr inbounds %struct.ctrl_iface_global_priv, %struct.ctrl_iface_global_priv* %109, i32 0, i32 1
  %111 = load i32, i32* %7, align 4
  %112 = load i8*, i8** %9, align 8
  %113 = load i64, i64* %10, align 8
  %114 = load %struct.ctrl_iface_global_priv*, %struct.ctrl_iface_global_priv** %13, align 8
  %115 = call i32 @wpa_supplicant_ctrl_iface_send(%struct.wpa_supplicant* %95, i32* %105, i32 %108, i32* %110, i32 %111, i8* %112, i64 %113, %struct.ctrl_iface_priv* null, %struct.ctrl_iface_global_priv* %114)
  br label %116

116:                                              ; preds = %104, %59
  br label %117

117:                                              ; preds = %116, %31, %28, %19
  %118 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %11, align 8
  %119 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %118, i32 0, i32 0
  %120 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %119, align 8
  store %struct.ctrl_iface_priv* %120, %struct.ctrl_iface_priv** %12, align 8
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* @WPA_MSG_ONLY_GLOBAL, align 4
  %123 = icmp ne i32 %121, %122
  br i1 %123, label %124, label %198

124:                                              ; preds = %117
  %125 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %12, align 8
  %126 = icmp ne %struct.ctrl_iface_priv* %125, null
  br i1 %126, label %127, label %198

127:                                              ; preds = %124
  %128 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %12, align 8
  %129 = getelementptr inbounds %struct.ctrl_iface_priv, %struct.ctrl_iface_priv* %128, i32 0, i32 3
  %130 = call i32 @dl_list_empty(i32* %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %127
  %133 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %12, align 8
  %134 = getelementptr inbounds %struct.ctrl_iface_priv, %struct.ctrl_iface_priv* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = call i64 @wpas_ctrl_iface_throttle(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %169

138:                                              ; preds = %132, %127
  %139 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %12, align 8
  %140 = getelementptr inbounds %struct.ctrl_iface_priv, %struct.ctrl_iface_priv* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %138
  %144 = load i32, i32* @MSG_MSGDUMP, align 4
  %145 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %12, align 8
  %146 = getelementptr inbounds %struct.ctrl_iface_priv, %struct.ctrl_iface_priv* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = sext i32 %147 to i64
  %149 = call i32 (i32, i8*, i64, ...) @wpa_printf(i32 %144, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i64 %148)
  br label %150

150:                                              ; preds = %143, %138
  %151 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %12, align 8
  %152 = getelementptr inbounds %struct.ctrl_iface_priv, %struct.ctrl_iface_priv* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = add nsw i64 %153, 1
  store i64 %154, i64* %152, align 8
  %155 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %12, align 8
  %156 = getelementptr inbounds %struct.ctrl_iface_priv, %struct.ctrl_iface_priv* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %12, align 8
  %159 = getelementptr inbounds %struct.ctrl_iface_priv, %struct.ctrl_iface_priv* %158, i32 0, i32 3
  %160 = call i32 @wpas_ctrl_msg_queue_limit(i64 %157, i32* %159)
  %161 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %12, align 8
  %162 = getelementptr inbounds %struct.ctrl_iface_priv, %struct.ctrl_iface_priv* %161, i32 0, i32 3
  %163 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %11, align 8
  %164 = load i32, i32* %7, align 4
  %165 = load i32, i32* %8, align 4
  %166 = load i8*, i8** %9, align 8
  %167 = load i64, i64* %10, align 8
  %168 = call i32 @wpas_ctrl_msg_queue(i32* %162, %struct.wpa_supplicant* %163, i32 %164, i32 %165, i8* %166, i64 %167)
  br label %197

169:                                              ; preds = %132
  %170 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %12, align 8
  %171 = getelementptr inbounds %struct.ctrl_iface_priv, %struct.ctrl_iface_priv* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %183

174:                                              ; preds = %169
  %175 = load i32, i32* @MSG_MSGDUMP, align 4
  %176 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %12, align 8
  %177 = getelementptr inbounds %struct.ctrl_iface_priv, %struct.ctrl_iface_priv* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %12, align 8
  %180 = getelementptr inbounds %struct.ctrl_iface_priv, %struct.ctrl_iface_priv* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = call i32 (i32, i8*, i64, ...) @wpa_printf(i32 %175, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i64 %178, i32 %181)
  br label %183

183:                                              ; preds = %174, %169
  %184 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %12, align 8
  %185 = getelementptr inbounds %struct.ctrl_iface_priv, %struct.ctrl_iface_priv* %184, i32 0, i32 0
  store i64 0, i64* %185, align 8
  %186 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %11, align 8
  %187 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %12, align 8
  %188 = getelementptr inbounds %struct.ctrl_iface_priv, %struct.ctrl_iface_priv* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %12, align 8
  %191 = getelementptr inbounds %struct.ctrl_iface_priv, %struct.ctrl_iface_priv* %190, i32 0, i32 1
  %192 = load i32, i32* %7, align 4
  %193 = load i8*, i8** %9, align 8
  %194 = load i64, i64* %10, align 8
  %195 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %12, align 8
  %196 = call i32 @wpa_supplicant_ctrl_iface_send(%struct.wpa_supplicant* %186, i32* null, i32 %189, i32* %191, i32 %192, i8* %193, i64 %194, %struct.ctrl_iface_priv* %195, %struct.ctrl_iface_global_priv* null)
  br label %197

197:                                              ; preds = %183, %150
  br label %198

198:                                              ; preds = %18, %197, %124, %117
  ret void
}

declare dso_local i32 @dl_list_empty(i32*) #1

declare dso_local i64 @wpas_ctrl_iface_throttle(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i64, ...) #1

declare dso_local i32 @wpas_ctrl_msg_queue_limit(i64, i32*) #1

declare dso_local i32 @wpas_ctrl_msg_queue(i32*, %struct.wpa_supplicant*, i32, i32, i8*, i64) #1

declare dso_local i32 @wpa_supplicant_ctrl_iface_send(%struct.wpa_supplicant*, i32*, i32, i32*, i32, i8*, i64, %struct.ctrl_iface_priv*, %struct.ctrl_iface_global_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
