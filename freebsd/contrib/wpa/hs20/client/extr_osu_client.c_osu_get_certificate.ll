; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_osu_client.c_osu_get_certificate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_osu_client.c_osu_get_certificate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hs20_osu_client = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"enrollmentProtocol\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"getCertificate - enrollmentProtocol=%s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"EST\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Unsupported enrollmentProtocol\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"enrollmentServerURI\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"Could not find enrollmentServerURI node\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Could not get URL text\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"enrollmentServerURI: %s\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"estUserID\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"Could not find estUserID node\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"Could not get estUserID text\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"estUserID: %s\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"estPassword\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"Could not find estPassword node\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"Could not get estPassword text\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"estPassword: %s\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"Cert\00", align 1
@S_IRWXU = common dso_local global i32 0, align 4
@S_IRWXG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @osu_get_certificate(%struct.hs20_osu_client* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hs20_osu_client*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.hs20_osu_client* %0, %struct.hs20_osu_client** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i32 -1, i32* %11, align 4
  %12 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %13 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = call i8* @xml_node_get_attr_value(i32 %14, i32* %15, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i8* %16, i8** %10, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %189

20:                                               ; preds = %2
  %21 = load i32, i32* @MSG_INFO, align 4
  %22 = load i8*, i8** %10, align 8
  %23 = call i32 (i32, i8*, ...) @wpa_printf(i32 %21, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  %24 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = call i32 @write_summary(%struct.hs20_osu_client* %24, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  %27 = load i8*, i8** %10, align 8
  %28 = call i64 @os_strcasecmp(i8* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %20
  %31 = load i32, i32* @MSG_INFO, align 4
  %32 = call i32 (i32, i8*, ...) @wpa_printf(i32 %31, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %33 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %34 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %10, align 8
  %37 = call i32 @xml_node_get_attr_value_free(i32 %35, i8* %36)
  store i32 -1, i32* %3, align 4
  br label %189

38:                                               ; preds = %20
  %39 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %40 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %10, align 8
  %43 = call i32 @xml_node_get_attr_value_free(i32 %41, i8* %42)
  %44 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %45 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %5, align 8
  %48 = call i32* @get_node(i32 %46, i32* %47, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  store i32* %48, i32** %6, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %59

51:                                               ; preds = %38
  %52 = load i32, i32* @MSG_INFO, align 4
  %53 = call i32 (i32, i8*, ...) @wpa_printf(i32 %52, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  %54 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %55 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %10, align 8
  %58 = call i32 @xml_node_get_attr_value_free(i32 %56, i8* %57)
  store i32 -1, i32* %3, align 4
  br label %189

59:                                               ; preds = %38
  %60 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %61 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %6, align 8
  %64 = call i8* @xml_node_get_text(i32 %62, i32* %63)
  store i8* %64, i8** %7, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = icmp eq i8* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %59
  %68 = load i32, i32* @MSG_INFO, align 4
  %69 = call i32 (i32, i8*, ...) @wpa_printf(i32 %68, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %189

70:                                               ; preds = %59
  %71 = load i32, i32* @MSG_INFO, align 4
  %72 = load i8*, i8** %7, align 8
  %73 = call i32 (i32, i8*, ...) @wpa_printf(i32 %71, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i8* %72)
  %74 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %75 = load i8*, i8** %7, align 8
  %76 = call i32 @write_summary(%struct.hs20_osu_client* %74, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i8* %75)
  %77 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %78 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** %5, align 8
  %81 = call i32* @get_node(i32 %79, i32* %80, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  store i32* %81, i32** %6, align 8
  %82 = load i32*, i32** %6, align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %84, label %92

84:                                               ; preds = %70
  %85 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %86 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %84
  %90 = load i32, i32* @MSG_INFO, align 4
  %91 = call i32 (i32, i8*, ...) @wpa_printf(i32 %90, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  br label %172

92:                                               ; preds = %84, %70
  %93 = load i32*, i32** %6, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %113

95:                                               ; preds = %92
  %96 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %97 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32*, i32** %6, align 8
  %100 = call i8* @xml_node_get_text(i32 %98, i32* %99)
  store i8* %100, i8** %8, align 8
  %101 = load i8*, i8** %8, align 8
  %102 = icmp eq i8* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %95
  %104 = load i32, i32* @MSG_INFO, align 4
  %105 = call i32 (i32, i8*, ...) @wpa_printf(i32 %104, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
  br label %172

106:                                              ; preds = %95
  %107 = load i32, i32* @MSG_INFO, align 4
  %108 = load i8*, i8** %8, align 8
  %109 = call i32 (i32, i8*, ...) @wpa_printf(i32 %107, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* %108)
  %110 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %111 = load i8*, i8** %8, align 8
  %112 = call i32 @write_summary(%struct.hs20_osu_client* %110, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* %111)
  br label %113

113:                                              ; preds = %106, %92
  %114 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %115 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** %5, align 8
  %118 = call i32* @get_node(i32 %116, i32* %117, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  store i32* %118, i32** %6, align 8
  %119 = load i32*, i32** %6, align 8
  %120 = icmp eq i32* %119, null
  br i1 %120, label %121, label %129

121:                                              ; preds = %113
  %122 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %123 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %121
  %127 = load i32, i32* @MSG_INFO, align 4
  %128 = call i32 (i32, i8*, ...) @wpa_printf(i32 %127, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0))
  br label %172

129:                                              ; preds = %121, %113
  %130 = load i32*, i32** %6, align 8
  %131 = icmp ne i32* %130, null
  br i1 %131, label %132, label %147

132:                                              ; preds = %129
  %133 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %134 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32*, i32** %6, align 8
  %137 = call i8* @xml_node_get_base64_text(i32 %135, i32* %136, i32* null)
  store i8* %137, i8** %9, align 8
  %138 = load i8*, i8** %9, align 8
  %139 = icmp eq i8* %138, null
  br i1 %139, label %140, label %143

140:                                              ; preds = %132
  %141 = load i32, i32* @MSG_INFO, align 4
  %142 = call i32 (i32, i8*, ...) @wpa_printf(i32 %141, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0))
  br label %172

143:                                              ; preds = %132
  %144 = load i32, i32* @MSG_INFO, align 4
  %145 = load i8*, i8** %9, align 8
  %146 = call i32 (i32, i8*, ...) @wpa_printf(i32 %144, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i8* %145)
  br label %147

147:                                              ; preds = %143, %129
  %148 = load i32, i32* @S_IRWXU, align 4
  %149 = call i32 @mkdir(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i32 %148)
  %150 = load i32, i32* @S_IRWXU, align 4
  %151 = load i32, i32* @S_IRWXG, align 4
  %152 = or i32 %150, %151
  %153 = call i32 @android_update_permission(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i32 %152)
  %154 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %155 = load i8*, i8** %7, align 8
  %156 = call i64 @est_load_cacerts(%struct.hs20_osu_client* %154, i8* %155)
  %157 = icmp slt i64 %156, 0
  br i1 %157, label %170, label %158

158:                                              ; preds = %147
  %159 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %160 = load i8*, i8** %7, align 8
  %161 = call i64 @est_build_csr(%struct.hs20_osu_client* %159, i8* %160)
  %162 = icmp slt i64 %161, 0
  br i1 %162, label %170, label %163

163:                                              ; preds = %158
  %164 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %165 = load i8*, i8** %7, align 8
  %166 = load i8*, i8** %8, align 8
  %167 = load i8*, i8** %9, align 8
  %168 = call i64 @est_simple_enroll(%struct.hs20_osu_client* %164, i8* %165, i8* %166, i8* %167)
  %169 = icmp slt i64 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %163, %158, %147
  br label %172

171:                                              ; preds = %163
  store i32 0, i32* %11, align 4
  br label %172

172:                                              ; preds = %171, %170, %140, %126, %103, %89
  %173 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %174 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load i8*, i8** %7, align 8
  %177 = call i32 @xml_node_get_text_free(i32 %175, i8* %176)
  %178 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %179 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i8*, i8** %8, align 8
  %182 = call i32 @xml_node_get_text_free(i32 %180, i8* %181)
  %183 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %184 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load i8*, i8** %9, align 8
  %187 = call i32 @xml_node_get_text_free(i32 %185, i8* %186)
  %188 = load i32, i32* %11, align 4
  store i32 %188, i32* %3, align 4
  br label %189

189:                                              ; preds = %172, %67, %51, %30, %19
  %190 = load i32, i32* %3, align 4
  ret i32 %190
}

declare dso_local i8* @xml_node_get_attr_value(i32, i32*, i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @write_summary(%struct.hs20_osu_client*, i8*, i8*) #1

declare dso_local i64 @os_strcasecmp(i8*, i8*) #1

declare dso_local i32 @xml_node_get_attr_value_free(i32, i8*) #1

declare dso_local i32* @get_node(i32, i32*, i8*) #1

declare dso_local i8* @xml_node_get_text(i32, i32*) #1

declare dso_local i8* @xml_node_get_base64_text(i32, i32*, i32*) #1

declare dso_local i32 @mkdir(i8*, i32) #1

declare dso_local i32 @android_update_permission(i8*, i32) #1

declare dso_local i64 @est_load_cacerts(%struct.hs20_osu_client*, i8*) #1

declare dso_local i64 @est_build_csr(%struct.hs20_osu_client*, i8*) #1

declare dso_local i64 @est_simple_enroll(%struct.hs20_osu_client*, i8*, i8*, i8*) #1

declare dso_local i32 @xml_node_get_text_free(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
