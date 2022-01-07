; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_events.c_wpa_supplicant_pick_network.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_events.c_wpa_supplicant_pick_network.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_bss = type { i32 }
%struct.wpa_supplicant = type { i64, i32, i32, i64, %struct.TYPE_2__*, %struct.wpa_ssid*, i32* }
%struct.TYPE_2__ = type { i32, %struct.wpa_ssid**, %struct.wpa_ssid* }
%struct.wpa_ssid = type { i64, i32, i32, i32, i64, %struct.wpa_ssid* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"No APs found - clear blacklist and try again\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"PSK/passphrase not yet available for the selected network\00", align 1
@WPA_CTRL_REQ_PSK_PASSPHRASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpa_bss* @wpa_supplicant_pick_network(%struct.wpa_supplicant* %0, %struct.wpa_ssid** %1) #0 {
  %3 = alloca %struct.wpa_bss*, align 8
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca %struct.wpa_ssid**, align 8
  %6 = alloca %struct.wpa_bss*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wpa_ssid*, align 8
  %9 = alloca %struct.wpa_ssid*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store %struct.wpa_ssid** %1, %struct.wpa_ssid*** %5, align 8
  store %struct.wpa_bss* null, %struct.wpa_bss** %6, align 8
  store %struct.wpa_ssid* null, %struct.wpa_ssid** %8, align 8
  %12 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %13 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %12, i32 0, i32 6
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %18 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %2
  store %struct.wpa_bss* null, %struct.wpa_bss** %3, align 8
  br label %191

22:                                               ; preds = %16
  %23 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %24 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %23, i32 0, i32 5
  %25 = load %struct.wpa_ssid*, %struct.wpa_ssid** %24, align 8
  %26 = icmp ne %struct.wpa_ssid* %25, null
  br i1 %26, label %27, label %52

27:                                               ; preds = %22
  %28 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %29 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %28, i32 0, i32 4
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load %struct.wpa_ssid*, %struct.wpa_ssid** %31, align 8
  store %struct.wpa_ssid* %32, %struct.wpa_ssid** %9, align 8
  br label %33

33:                                               ; preds = %44, %27
  %34 = load %struct.wpa_ssid*, %struct.wpa_ssid** %9, align 8
  %35 = icmp ne %struct.wpa_ssid* %34, null
  br i1 %35, label %36, label %48

36:                                               ; preds = %33
  %37 = load %struct.wpa_ssid*, %struct.wpa_ssid** %9, align 8
  %38 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %39 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %38, i32 0, i32 5
  %40 = load %struct.wpa_ssid*, %struct.wpa_ssid** %39, align 8
  %41 = icmp eq %struct.wpa_ssid* %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %48

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.wpa_ssid*, %struct.wpa_ssid** %9, align 8
  %46 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %45, i32 0, i32 5
  %47 = load %struct.wpa_ssid*, %struct.wpa_ssid** %46, align 8
  store %struct.wpa_ssid* %47, %struct.wpa_ssid** %9, align 8
  br label %33

48:                                               ; preds = %42, %33
  %49 = load %struct.wpa_ssid*, %struct.wpa_ssid** %9, align 8
  store %struct.wpa_ssid* %49, %struct.wpa_ssid** %8, align 8
  %50 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %51 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %50, i32 0, i32 5
  store %struct.wpa_ssid* null, %struct.wpa_ssid** %51, align 8
  br label %52

52:                                               ; preds = %48, %22
  br label %53

53:                                               ; preds = %141, %52
  %54 = load %struct.wpa_bss*, %struct.wpa_bss** %6, align 8
  %55 = icmp eq %struct.wpa_bss* %54, null
  br i1 %55, label %56, label %142

56:                                               ; preds = %53
  store i32 0, i32* %7, align 4
  br label %57

57:                                               ; preds = %110, %56
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %60 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %59, i32 0, i32 4
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %58, %63
  br i1 %64, label %65, label %113

65:                                               ; preds = %57
  %66 = load %struct.wpa_ssid*, %struct.wpa_ssid** %8, align 8
  %67 = icmp ne %struct.wpa_ssid* %66, null
  br i1 %67, label %68, label %93

68:                                               ; preds = %65
  %69 = load %struct.wpa_ssid*, %struct.wpa_ssid** %8, align 8
  %70 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %73 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %72, i32 0, i32 4
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load %struct.wpa_ssid**, %struct.wpa_ssid*** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.wpa_ssid*, %struct.wpa_ssid** %76, i64 %78
  %80 = load %struct.wpa_ssid*, %struct.wpa_ssid** %79, align 8
  %81 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %71, %82
  br i1 %83, label %84, label %93

84:                                               ; preds = %68
  %85 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %86 = load %struct.wpa_ssid*, %struct.wpa_ssid** %8, align 8
  %87 = load %struct.wpa_ssid**, %struct.wpa_ssid*** %5, align 8
  %88 = call %struct.wpa_bss* @wpa_supplicant_select_bss(%struct.wpa_supplicant* %85, %struct.wpa_ssid* %86, %struct.wpa_ssid** %87, i32 1)
  store %struct.wpa_bss* %88, %struct.wpa_bss** %6, align 8
  %89 = load %struct.wpa_bss*, %struct.wpa_bss** %6, align 8
  %90 = icmp ne %struct.wpa_bss* %89, null
  br i1 %90, label %91, label %92

91:                                               ; preds = %84
  br label %113

92:                                               ; preds = %84
  br label %93

93:                                               ; preds = %92, %68, %65
  %94 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %95 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %96 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %95, i32 0, i32 4
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load %struct.wpa_ssid**, %struct.wpa_ssid*** %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.wpa_ssid*, %struct.wpa_ssid** %99, i64 %101
  %103 = load %struct.wpa_ssid*, %struct.wpa_ssid** %102, align 8
  %104 = load %struct.wpa_ssid**, %struct.wpa_ssid*** %5, align 8
  %105 = call %struct.wpa_bss* @wpa_supplicant_select_bss(%struct.wpa_supplicant* %94, %struct.wpa_ssid* %103, %struct.wpa_ssid** %104, i32 0)
  store %struct.wpa_bss* %105, %struct.wpa_bss** %6, align 8
  %106 = load %struct.wpa_bss*, %struct.wpa_bss** %6, align 8
  %107 = icmp ne %struct.wpa_bss* %106, null
  br i1 %107, label %108, label %109

108:                                              ; preds = %93
  br label %113

109:                                              ; preds = %93
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %7, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %7, align 4
  br label %57

113:                                              ; preds = %108, %91, %57
  %114 = load %struct.wpa_bss*, %struct.wpa_bss** %6, align 8
  %115 = icmp eq %struct.wpa_bss* %114, null
  br i1 %115, label %116, label %136

116:                                              ; preds = %113
  %117 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %118 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %136

121:                                              ; preds = %116
  %122 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %123 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %136, label %126

126:                                              ; preds = %121
  %127 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %128 = load i32, i32* @MSG_DEBUG, align 4
  %129 = call i32 @wpa_dbg(%struct.wpa_supplicant* %127, i32 %128, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %130 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %131 = call i32 @wpa_blacklist_clear(%struct.wpa_supplicant* %130)
  %132 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %133 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %133, align 8
  br label %141

136:                                              ; preds = %121, %116, %113
  %137 = load %struct.wpa_bss*, %struct.wpa_bss** %6, align 8
  %138 = icmp eq %struct.wpa_bss* %137, null
  br i1 %138, label %139, label %140

139:                                              ; preds = %136
  br label %142

140:                                              ; preds = %136
  br label %141

141:                                              ; preds = %140, %126
  br label %53

142:                                              ; preds = %139, %53
  %143 = load %struct.wpa_ssid**, %struct.wpa_ssid*** %5, align 8
  %144 = load %struct.wpa_ssid*, %struct.wpa_ssid** %143, align 8
  store %struct.wpa_ssid* %144, %struct.wpa_ssid** %9, align 8
  %145 = load %struct.wpa_bss*, %struct.wpa_bss** %6, align 8
  %146 = icmp ne %struct.wpa_bss* %145, null
  br i1 %146, label %147, label %189

147:                                              ; preds = %142
  %148 = load %struct.wpa_ssid*, %struct.wpa_ssid** %9, align 8
  %149 = icmp ne %struct.wpa_ssid* %148, null
  br i1 %149, label %150, label %189

150:                                              ; preds = %147
  %151 = load %struct.wpa_ssid*, %struct.wpa_ssid** %9, align 8
  %152 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %151, i32 0, i32 4
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %189

155:                                              ; preds = %150
  %156 = load %struct.wpa_ssid*, %struct.wpa_ssid** %9, align 8
  %157 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %189, label %160

160:                                              ; preds = %155
  %161 = load %struct.wpa_ssid*, %struct.wpa_ssid** %9, align 8
  %162 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %189, label %165

165:                                              ; preds = %160
  %166 = load %struct.wpa_ssid*, %struct.wpa_ssid** %9, align 8
  %167 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %189, label %170

170:                                              ; preds = %165
  store i8* null, i8** %11, align 8
  %171 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %172 = load i32, i32* @MSG_DEBUG, align 4
  %173 = call i32 @wpa_dbg(%struct.wpa_supplicant* %171, i32 %172, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  %174 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %175 = load %struct.wpa_ssid*, %struct.wpa_ssid** %9, align 8
  %176 = load i32, i32* @WPA_CTRL_REQ_PSK_PASSPHRASE, align 4
  %177 = call i32 @wpas_notify_network_request(%struct.wpa_supplicant* %174, %struct.wpa_ssid* %175, i32 %176, i32* null)
  %178 = load i32, i32* @WPA_CTRL_REQ_PSK_PASSPHRASE, align 4
  %179 = call i8* @wpa_supplicant_ctrl_req_to_string(i32 %178, i32* null, i8** %11)
  store i8* %179, i8** %10, align 8
  %180 = load i8*, i8** %10, align 8
  %181 = icmp eq i8* %180, null
  br i1 %181, label %182, label %183

182:                                              ; preds = %170
  store %struct.wpa_bss* null, %struct.wpa_bss** %3, align 8
  br label %191

183:                                              ; preds = %170
  %184 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %185 = load %struct.wpa_ssid*, %struct.wpa_ssid** %9, align 8
  %186 = load i8*, i8** %10, align 8
  %187 = load i8*, i8** %11, align 8
  %188 = call i32 @wpas_send_ctrl_req(%struct.wpa_supplicant* %184, %struct.wpa_ssid* %185, i8* %186, i8* %187)
  store %struct.wpa_bss* null, %struct.wpa_bss** %6, align 8
  br label %189

189:                                              ; preds = %183, %165, %160, %155, %150, %147, %142
  %190 = load %struct.wpa_bss*, %struct.wpa_bss** %6, align 8
  store %struct.wpa_bss* %190, %struct.wpa_bss** %3, align 8
  br label %191

191:                                              ; preds = %189, %182, %21
  %192 = load %struct.wpa_bss*, %struct.wpa_bss** %3, align 8
  ret %struct.wpa_bss* %192
}

declare dso_local %struct.wpa_bss* @wpa_supplicant_select_bss(%struct.wpa_supplicant*, %struct.wpa_ssid*, %struct.wpa_ssid**, i32) #1

declare dso_local i32 @wpa_dbg(%struct.wpa_supplicant*, i32, i8*) #1

declare dso_local i32 @wpa_blacklist_clear(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpas_notify_network_request(%struct.wpa_supplicant*, %struct.wpa_ssid*, i32, i32*) #1

declare dso_local i8* @wpa_supplicant_ctrl_req_to_string(i32, i32*, i8**) #1

declare dso_local i32 @wpas_send_ctrl_req(%struct.wpa_supplicant*, %struct.wpa_ssid*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
