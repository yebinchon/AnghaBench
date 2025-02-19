; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers_p2p.c_wpas_dbus_handler_p2p_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers_p2p.c_wpas_dbus_handler_p2p_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.wpa_supplicant* }
%struct.wpa_dbus_dict_entry = type { i64, i32, i64, i32, i32*, i32*, i32* }

@P2P_FIND_START_WITH_FULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Timeout\00", align 1
@DBUS_TYPE_INT32 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"RequestedDeviceTypes\00", align 1
@DBUS_TYPE_ARRAY = common dso_local global i64 0, align 8
@WPAS_DBUS_TYPE_BINARRAY = common dso_local global i64 0, align 8
@WPS_DEV_TYPE_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"DiscoveryType\00", align 1
@DBUS_TYPE_STRING = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"start_with_full\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"social\00", align 1
@P2P_FIND_ONLY_SOCIAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"progressive\00", align 1
@P2P_FIND_PROGRESSIVE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"freq\00", align 1
@DBUS_TYPE_UINT32 = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [25 x i8] c"Could not start P2P find\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @wpas_dbus_handler_p2p_find(i32* %0, %struct.wpa_supplicant* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca %struct.wpa_dbus_dict_entry, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.wpa_supplicant* %1, %struct.wpa_supplicant** %5, align 8
  store i32* null, i32** %7, align 8
  store i32 0, i32* %10, align 4
  %16 = load i32, i32* @P2P_FIND_START_WITH_FULL, align 4
  store i32 %16, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32* null, i32** %14, align 8
  store i32 0, i32* %15, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @dbus_message_iter_init(i32* %17, i32* %8)
  %19 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %6, i32 0, i32 4
  store i32* null, i32** %19, align 8
  %20 = call i32 @wpa_dbus_dict_open_read(i32* %8, i32* %9, i32* null)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  br label %192

23:                                               ; preds = %2
  br label %24

24:                                               ; preds = %167, %23
  %25 = call i64 @wpa_dbus_dict_has_dict_entry(i32* %9)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %169

27:                                               ; preds = %24
  %28 = call i32 @wpa_dbus_dict_get_entry(i32* %9, %struct.wpa_dbus_dict_entry* %6)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  br label %192

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %6, i32 0, i32 4
  %33 = load i32*, i32** %32, align 8
  %34 = call i64 @os_strcmp(i32* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %6, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @DBUS_TYPE_INT32, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %6, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %10, align 4
  br label %167

44:                                               ; preds = %36, %31
  %45 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %6, i32 0, i32 4
  %46 = load i32*, i32** %45, align 8
  %47 = call i64 @os_strcmp(i32* %46, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %110

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %6, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @DBUS_TYPE_ARRAY, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %59, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %6, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @WPAS_DBUS_TYPE_BINARRAY, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %54, %49
  br label %190

60:                                               ; preds = %54
  %61 = load i32*, i32** %14, align 8
  %62 = call i32 @os_free(i32* %61)
  %63 = load i32, i32* @WPS_DEV_TYPE_LEN, align 4
  %64 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %6, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = mul i32 %63, %65
  %67 = call i32* @os_malloc(i32 %66)
  store i32* %67, i32** %14, align 8
  %68 = load i32*, i32** %14, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %60
  br label %190

71:                                               ; preds = %60
  store i32 0, i32* %13, align 4
  br label %72

72:                                               ; preds = %104, %71
  %73 = load i32, i32* %13, align 4
  %74 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %6, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = icmp ult i32 %73, %75
  br i1 %76, label %77, label %107

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %6, i32 0, i32 6
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %13, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @wpabuf_len(i32 %83)
  %85 = load i32, i32* @WPS_DEV_TYPE_LEN, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %77
  br label %190

88:                                               ; preds = %77
  %89 = load i32*, i32** %14, align 8
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* @WPS_DEV_TYPE_LEN, align 4
  %92 = mul i32 %90, %91
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %89, i64 %93
  %95 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %6, i32 0, i32 6
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %13, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @wpabuf_head(i32 %100)
  %102 = load i32, i32* @WPS_DEV_TYPE_LEN, align 4
  %103 = call i32 @os_memcpy(i32* %94, i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %88
  %105 = load i32, i32* %13, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %13, align 4
  br label %72

107:                                              ; preds = %72
  %108 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %6, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  store i32 %109, i32* %12, align 4
  br label %166

110:                                              ; preds = %44
  %111 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %6, i32 0, i32 4
  %112 = load i32*, i32** %111, align 8
  %113 = call i64 @os_strcmp(i32* %112, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %145

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %6, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @DBUS_TYPE_STRING, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %145

120:                                              ; preds = %115
  %121 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %6, i32 0, i32 5
  %122 = load i32*, i32** %121, align 8
  %123 = call i64 @os_strcmp(i32* %122, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %120
  %126 = load i32, i32* @P2P_FIND_START_WITH_FULL, align 4
  store i32 %126, i32* %11, align 4
  br label %144

127:                                              ; preds = %120
  %128 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %6, i32 0, i32 5
  %129 = load i32*, i32** %128, align 8
  %130 = call i64 @os_strcmp(i32* %129, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %127
  %133 = load i32, i32* @P2P_FIND_ONLY_SOCIAL, align 4
  store i32 %133, i32* %11, align 4
  br label %143

134:                                              ; preds = %127
  %135 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %6, i32 0, i32 5
  %136 = load i32*, i32** %135, align 8
  %137 = call i64 @os_strcmp(i32* %136, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %134
  %140 = load i32, i32* @P2P_FIND_PROGRESSIVE, align 4
  store i32 %140, i32* %11, align 4
  br label %142

141:                                              ; preds = %134
  br label %190

142:                                              ; preds = %139
  br label %143

143:                                              ; preds = %142, %132
  br label %144

144:                                              ; preds = %143, %125
  br label %165

145:                                              ; preds = %115, %110
  %146 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %6, i32 0, i32 4
  %147 = load i32*, i32** %146, align 8
  %148 = call i64 @os_strcmp(i32* %147, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %150, label %163

150:                                              ; preds = %145
  %151 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %6, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @DBUS_TYPE_INT32, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %160, label %155

155:                                              ; preds = %150
  %156 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %6, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @DBUS_TYPE_UINT32, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %163

160:                                              ; preds = %155, %150
  %161 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %6, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  store i32 %162, i32* %15, align 4
  br label %164

163:                                              ; preds = %155, %145
  br label %190

164:                                              ; preds = %160
  br label %165

165:                                              ; preds = %164, %144
  br label %166

166:                                              ; preds = %165, %107
  br label %167

167:                                              ; preds = %166, %41
  %168 = call i32 @wpa_dbus_dict_entry_clear(%struct.wpa_dbus_dict_entry* %6)
  br label %24

169:                                              ; preds = %24
  %170 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %171 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %170, i32 0, i32 0
  %172 = load %struct.TYPE_2__*, %struct.TYPE_2__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 0
  %174 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %173, align 8
  store %struct.wpa_supplicant* %174, %struct.wpa_supplicant** %5, align 8
  %175 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %176 = load i32, i32* %10, align 4
  %177 = load i32, i32* %11, align 4
  %178 = load i32, i32* %12, align 4
  %179 = load i32*, i32** %14, align 8
  %180 = load i32, i32* %15, align 4
  %181 = call i64 @wpas_p2p_find(%struct.wpa_supplicant* %175, i32 %176, i32 %177, i32 %178, i32* %179, i32* null, i32 0, i32 0, i32* null, i32 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %169
  %184 = load i32*, i32** %4, align 8
  %185 = call i32* @wpas_dbus_error_unknown_error(i32* %184, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  store i32* %185, i32** %7, align 8
  br label %186

186:                                              ; preds = %183, %169
  %187 = load i32*, i32** %14, align 8
  %188 = call i32 @os_free(i32* %187)
  %189 = load i32*, i32** %7, align 8
  store i32* %189, i32** %3, align 8
  br label %200

190:                                              ; preds = %163, %141, %87, %70, %59
  %191 = call i32 @wpa_dbus_dict_entry_clear(%struct.wpa_dbus_dict_entry* %6)
  br label %192

192:                                              ; preds = %190, %30, %22
  %193 = load i32*, i32** %14, align 8
  %194 = call i32 @os_free(i32* %193)
  %195 = load i32*, i32** %4, align 8
  %196 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %6, i32 0, i32 4
  %197 = load i32*, i32** %196, align 8
  %198 = call i32* @wpas_dbus_error_invalid_args(i32* %195, i32* %197)
  store i32* %198, i32** %7, align 8
  %199 = load i32*, i32** %7, align 8
  store i32* %199, i32** %3, align 8
  br label %200

200:                                              ; preds = %192, %186
  %201 = load i32*, i32** %3, align 8
  ret i32* %201
}

declare dso_local i32 @dbus_message_iter_init(i32*, i32*) #1

declare dso_local i32 @wpa_dbus_dict_open_read(i32*, i32*, i32*) #1

declare dso_local i64 @wpa_dbus_dict_has_dict_entry(i32*) #1

declare dso_local i32 @wpa_dbus_dict_get_entry(i32*, %struct.wpa_dbus_dict_entry*) #1

declare dso_local i64 @os_strcmp(i32*, i8*) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32* @os_malloc(i32) #1

declare dso_local i32 @wpabuf_len(i32) #1

declare dso_local i32 @os_memcpy(i32*, i32, i32) #1

declare dso_local i32 @wpabuf_head(i32) #1

declare dso_local i32 @wpa_dbus_dict_entry_clear(%struct.wpa_dbus_dict_entry*) #1

declare dso_local i64 @wpas_p2p_find(%struct.wpa_supplicant*, i32, i32, i32, i32*, i32*, i32, i32, i32*, i32) #1

declare dso_local i32* @wpas_dbus_error_unknown_error(i32*, i8*) #1

declare dso_local i32* @wpas_dbus_error_invalid_args(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
