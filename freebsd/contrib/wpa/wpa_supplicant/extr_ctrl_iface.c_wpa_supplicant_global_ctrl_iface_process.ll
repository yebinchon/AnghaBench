; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_wpa_supplicant_global_ctrl_iface_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_wpa_supplicant_global_ctrl_iface_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_global = type { i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"IFNAME=\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"PING\00", align 1
@MSG_EXCESSIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"RX global ctrl_iface\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"OK\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"PONG\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"INTERFACE_ADD \00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"INTERFACE_REMOVE \00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"INTERFACE_LIST\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"INTERFACES\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"TERMINATE\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"SUSPEND\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"RESUME\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"SET \00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"DUP_NETWORK \00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"SAVE_CONFIG\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"STATUS\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"RELOG\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"UNKNOWN COMMAND\0A\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"FAIL\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @wpa_supplicant_global_ctrl_iface_process(%struct.wpa_global* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wpa_global*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.wpa_global* %0, %struct.wpa_global** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 2048, i32* %9, align 4
  %13 = load i32, i32* @MSG_DEBUG, align 4
  store i32 %13, i32* %11, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = call i64 @os_strncmp(i8* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 7
  %20 = call i8* @os_strchr(i8* %19, i8 signext 32)
  store i8* %20, i8** %12, align 8
  %21 = load i8*, i8** %12, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %17
  %24 = load i8*, i8** %12, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %12, align 8
  store i8 0, i8* %24, align 1
  %26 = load %struct.wpa_global*, %struct.wpa_global** %5, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 7
  %29 = load i8*, i8** %12, align 8
  %30 = load i64*, i64** %7, align 8
  %31 = call i8* @wpas_global_ctrl_iface_ifname(%struct.wpa_global* %26, i8* %28, i8* %29, i64* %30)
  store i8* %31, i8** %4, align 8
  br label %209

32:                                               ; preds = %17
  br label %33

33:                                               ; preds = %32, %3
  %34 = load %struct.wpa_global*, %struct.wpa_global** %5, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load i64*, i64** %7, align 8
  %37 = call i8* @wpas_global_ctrl_iface_redir(%struct.wpa_global* %34, i8* %35, i64* %36)
  store i8* %37, i8** %8, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i8*, i8** %8, align 8
  store i8* %41, i8** %4, align 8
  br label %209

42:                                               ; preds = %33
  %43 = load i8*, i8** %6, align 8
  %44 = call i64 @os_strcmp(i8* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* @MSG_EXCESSIVE, align 4
  store i32 %47, i32* %11, align 4
  br label %48

48:                                               ; preds = %46, %42
  %49 = load i32, i32* %11, align 4
  %50 = load i8*, i8** %6, align 8
  %51 = bitcast i8* %50 to i32*
  %52 = load i8*, i8** %6, align 8
  %53 = call i32 @os_strlen(i8* %52)
  %54 = call i32 @wpa_hexdump_ascii(i32 %49, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32* %51, i32 %53)
  %55 = call i8* @os_malloc(i32 2048)
  store i8* %55, i8** %8, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %48
  %59 = load i64*, i64** %7, align 8
  store i64 1, i64* %59, align 8
  store i8* null, i8** %4, align 8
  br label %209

60:                                               ; preds = %48
  %61 = load i8*, i8** %8, align 8
  %62 = call i32 @os_memcpy(i8* %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 3)
  store i32 3, i32* %10, align 4
  %63 = load i8*, i8** %6, align 8
  %64 = call i64 @os_strcmp(i8* %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load i8*, i8** %8, align 8
  %68 = call i32 @os_memcpy(i8* %67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 5)
  store i32 5, i32* %10, align 4
  br label %198

69:                                               ; preds = %60
  %70 = load i8*, i8** %6, align 8
  %71 = call i64 @os_strncmp(i8* %70, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 14)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %69
  %74 = load %struct.wpa_global*, %struct.wpa_global** %5, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 14
  %77 = call i64 @wpa_supplicant_global_iface_add(%struct.wpa_global* %74, i8* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  store i32 -1, i32* %10, align 4
  br label %80

80:                                               ; preds = %79, %73
  br label %197

81:                                               ; preds = %69
  %82 = load i8*, i8** %6, align 8
  %83 = call i64 @os_strncmp(i8* %82, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 17)
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %81
  %86 = load %struct.wpa_global*, %struct.wpa_global** %5, align 8
  %87 = load i8*, i8** %6, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 17
  %89 = call i64 @wpa_supplicant_global_iface_remove(%struct.wpa_global* %86, i8* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  store i32 -1, i32* %10, align 4
  br label %92

92:                                               ; preds = %91, %85
  br label %196

93:                                               ; preds = %81
  %94 = load i8*, i8** %6, align 8
  %95 = call i64 @os_strcmp(i8* %94, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = load %struct.wpa_global*, %struct.wpa_global** %5, align 8
  %99 = load i8*, i8** %8, align 8
  %100 = call i32 @wpa_supplicant_global_iface_list(%struct.wpa_global* %98, i8* %99, i32 2048)
  store i32 %100, i32* %10, align 4
  br label %195

101:                                              ; preds = %93
  %102 = load i8*, i8** %6, align 8
  %103 = call i64 @os_strncmp(i8* %102, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 10)
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %101
  %106 = load %struct.wpa_global*, %struct.wpa_global** %5, align 8
  %107 = load i8*, i8** %6, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 10
  %109 = load i8*, i8** %8, align 8
  %110 = call i32 @wpa_supplicant_global_iface_interfaces(%struct.wpa_global* %106, i8* %108, i8* %109, i32 2048)
  store i32 %110, i32* %10, align 4
  br label %194

111:                                              ; preds = %101
  %112 = load i8*, i8** %6, align 8
  %113 = call i64 @os_strcmp(i8* %112, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %111
  %116 = load %struct.wpa_global*, %struct.wpa_global** %5, align 8
  %117 = call i32 @wpa_supplicant_terminate_proc(%struct.wpa_global* %116)
  br label %193

118:                                              ; preds = %111
  %119 = load i8*, i8** %6, align 8
  %120 = call i64 @os_strcmp(i8* %119, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %118
  %123 = load %struct.wpa_global*, %struct.wpa_global** %5, align 8
  %124 = call i32 @wpas_notify_suspend(%struct.wpa_global* %123)
  br label %192

125:                                              ; preds = %118
  %126 = load i8*, i8** %6, align 8
  %127 = call i64 @os_strcmp(i8* %126, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %125
  %130 = load %struct.wpa_global*, %struct.wpa_global** %5, align 8
  %131 = call i32 @wpas_notify_resume(%struct.wpa_global* %130)
  br label %191

132:                                              ; preds = %125
  %133 = load i8*, i8** %6, align 8
  %134 = call i64 @os_strncmp(i8* %133, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i32 4)
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %132
  %137 = load %struct.wpa_global*, %struct.wpa_global** %5, align 8
  %138 = load i8*, i8** %6, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 4
  %140 = call i64 @wpas_global_ctrl_iface_set(%struct.wpa_global* %137, i8* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %136
  store i32 -1, i32* %10, align 4
  br label %143

143:                                              ; preds = %142, %136
  br label %190

144:                                              ; preds = %132
  %145 = load i8*, i8** %6, align 8
  %146 = call i64 @os_strncmp(i8* %145, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i32 12)
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %148, label %156

148:                                              ; preds = %144
  %149 = load %struct.wpa_global*, %struct.wpa_global** %5, align 8
  %150 = load i8*, i8** %6, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 12
  %152 = call i64 @wpas_global_ctrl_iface_dup_network(%struct.wpa_global* %149, i8* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %148
  store i32 -1, i32* %10, align 4
  br label %155

155:                                              ; preds = %154, %148
  br label %189

156:                                              ; preds = %144
  %157 = load i8*, i8** %6, align 8
  %158 = call i64 @os_strcmp(i8* %157, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0))
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %156
  %161 = load %struct.wpa_global*, %struct.wpa_global** %5, align 8
  %162 = call i64 @wpas_global_ctrl_iface_save_config(%struct.wpa_global* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %160
  store i32 -1, i32* %10, align 4
  br label %165

165:                                              ; preds = %164, %160
  br label %188

166:                                              ; preds = %156
  %167 = load i8*, i8** %6, align 8
  %168 = call i64 @os_strcmp(i8* %167, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %166
  %171 = load %struct.wpa_global*, %struct.wpa_global** %5, align 8
  %172 = load i8*, i8** %8, align 8
  %173 = call i32 @wpas_global_ctrl_iface_status(%struct.wpa_global* %171, i8* %172, i32 2048)
  store i32 %173, i32* %10, align 4
  br label %187

174:                                              ; preds = %166
  %175 = load i8*, i8** %6, align 8
  %176 = call i64 @os_strncmp(i8* %175, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i32 5)
  %177 = icmp eq i64 %176, 0
  br i1 %177, label %178, label %183

178:                                              ; preds = %174
  %179 = call i64 (...) @wpa_debug_reopen_file()
  %180 = icmp slt i64 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %178
  store i32 -1, i32* %10, align 4
  br label %182

182:                                              ; preds = %181, %178
  br label %186

183:                                              ; preds = %174
  %184 = load i8*, i8** %8, align 8
  %185 = call i32 @os_memcpy(i8* %184, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0), i32 16)
  store i32 16, i32* %10, align 4
  br label %186

186:                                              ; preds = %183, %182
  br label %187

187:                                              ; preds = %186, %170
  br label %188

188:                                              ; preds = %187, %165
  br label %189

189:                                              ; preds = %188, %155
  br label %190

190:                                              ; preds = %189, %143
  br label %191

191:                                              ; preds = %190, %129
  br label %192

192:                                              ; preds = %191, %122
  br label %193

193:                                              ; preds = %192, %115
  br label %194

194:                                              ; preds = %193, %105
  br label %195

195:                                              ; preds = %194, %97
  br label %196

196:                                              ; preds = %195, %92
  br label %197

197:                                              ; preds = %196, %80
  br label %198

198:                                              ; preds = %197, %66
  %199 = load i32, i32* %10, align 4
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %198
  %202 = load i8*, i8** %8, align 8
  %203 = call i32 @os_memcpy(i8* %202, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i32 5)
  store i32 5, i32* %10, align 4
  br label %204

204:                                              ; preds = %201, %198
  %205 = load i32, i32* %10, align 4
  %206 = sext i32 %205 to i64
  %207 = load i64*, i64** %7, align 8
  store i64 %206, i64* %207, align 8
  %208 = load i8*, i8** %8, align 8
  store i8* %208, i8** %4, align 8
  br label %209

209:                                              ; preds = %204, %58, %40, %23
  %210 = load i8*, i8** %4, align 8
  ret i8* %210
}

declare dso_local i64 @os_strncmp(i8*, i8*, i32) #1

declare dso_local i8* @os_strchr(i8*, i8 signext) #1

declare dso_local i8* @wpas_global_ctrl_iface_ifname(%struct.wpa_global*, i8*, i8*, i64*) #1

declare dso_local i8* @wpas_global_ctrl_iface_redir(%struct.wpa_global*, i8*, i64*) #1

declare dso_local i64 @os_strcmp(i8*, i8*) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i32*, i32) #1

declare dso_local i32 @os_strlen(i8*) #1

declare dso_local i8* @os_malloc(i32) #1

declare dso_local i32 @os_memcpy(i8*, i8*, i32) #1

declare dso_local i64 @wpa_supplicant_global_iface_add(%struct.wpa_global*, i8*) #1

declare dso_local i64 @wpa_supplicant_global_iface_remove(%struct.wpa_global*, i8*) #1

declare dso_local i32 @wpa_supplicant_global_iface_list(%struct.wpa_global*, i8*, i32) #1

declare dso_local i32 @wpa_supplicant_global_iface_interfaces(%struct.wpa_global*, i8*, i8*, i32) #1

declare dso_local i32 @wpa_supplicant_terminate_proc(%struct.wpa_global*) #1

declare dso_local i32 @wpas_notify_suspend(%struct.wpa_global*) #1

declare dso_local i32 @wpas_notify_resume(%struct.wpa_global*) #1

declare dso_local i64 @wpas_global_ctrl_iface_set(%struct.wpa_global*, i8*) #1

declare dso_local i64 @wpas_global_ctrl_iface_dup_network(%struct.wpa_global*, i8*) #1

declare dso_local i64 @wpas_global_ctrl_iface_save_config(%struct.wpa_global*) #1

declare dso_local i32 @wpas_global_ctrl_iface_status(%struct.wpa_global*, i8*, i32) #1

declare dso_local i64 @wpa_debug_reopen_file(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
