; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_build.c_p2p_buf_add_device_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_build.c_p2p_buf_add_device_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.p2p_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, i64, i64*, i64, i64 }
%struct.p2p_device = type { i64 }

@P2P_ATTR_DEVICE_INFO = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i64 0, align 8
@WPS_NOT_READY = common dso_local global i64 0, align 8
@WPS_PBC = common dso_local global i64 0, align 8
@WPS_CONFIG_PUSHBUTTON = common dso_local global i64 0, align 8
@WPS_P2PS = common dso_local global i64 0, align 8
@WPS_CONFIG_P2PS = common dso_local global i64 0, align 8
@WPS_PIN_DISPLAY = common dso_local global i64 0, align 8
@WPS_PIN_KEYPAD = common dso_local global i64 0, align 8
@WPS_CONFIG_DISPLAY = common dso_local global i64 0, align 8
@WPS_CONFIG_KEYPAD = common dso_local global i64 0, align 8
@WPS_DEV_TYPE_LEN = common dso_local global i64 0, align 8
@ATTR_DEV_NAME = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"P2P: * Device Info\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @p2p_buf_add_device_info(%struct.wpabuf* %0, %struct.p2p_data* %1, %struct.p2p_device* %2) #0 {
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.p2p_data*, align 8
  %6 = alloca %struct.p2p_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.wpabuf* %0, %struct.wpabuf** %4, align 8
  store %struct.p2p_data* %1, %struct.p2p_data** %5, align 8
  store %struct.p2p_device* %2, %struct.p2p_device** %6, align 8
  %11 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %12 = load i64, i64* @P2P_ATTR_DEVICE_INFO, align 8
  %13 = call i32 @wpabuf_put_u8(%struct.wpabuf* %11, i64 %12)
  %14 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %15 = call i32* @wpabuf_put(%struct.wpabuf* %14, i32 2)
  store i32* %15, i32** %7, align 8
  %16 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %17 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %18 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 5
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ETH_ALEN, align 8
  %23 = call i32 @wpabuf_put_data(%struct.wpabuf* %16, i64 %21, i64 %22)
  store i64 0, i64* %8, align 8
  %24 = load %struct.p2p_device*, %struct.p2p_device** %6, align 8
  %25 = icmp ne %struct.p2p_device* %24, null
  br i1 %25, label %26, label %73

26:                                               ; preds = %3
  %27 = load %struct.p2p_device*, %struct.p2p_device** %6, align 8
  %28 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @WPS_NOT_READY, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %73

32:                                               ; preds = %26
  %33 = load %struct.p2p_device*, %struct.p2p_device** %6, align 8
  %34 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @WPS_PBC, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load i64, i64* @WPS_CONFIG_PUSHBUTTON, align 8
  %40 = load i64, i64* %8, align 8
  %41 = or i64 %40, %39
  store i64 %41, i64* %8, align 8
  br label %72

42:                                               ; preds = %32
  %43 = load %struct.p2p_device*, %struct.p2p_device** %6, align 8
  %44 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @WPS_P2PS, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load i64, i64* @WPS_CONFIG_P2PS, align 8
  %50 = load i64, i64* %8, align 8
  %51 = or i64 %50, %49
  store i64 %51, i64* %8, align 8
  br label %71

52:                                               ; preds = %42
  %53 = load %struct.p2p_device*, %struct.p2p_device** %6, align 8
  %54 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @WPS_PIN_DISPLAY, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %64, label %58

58:                                               ; preds = %52
  %59 = load %struct.p2p_device*, %struct.p2p_device** %6, align 8
  %60 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @WPS_PIN_KEYPAD, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %58, %52
  %65 = load i64, i64* @WPS_CONFIG_DISPLAY, align 8
  %66 = load i64, i64* @WPS_CONFIG_KEYPAD, align 8
  %67 = or i64 %65, %66
  %68 = load i64, i64* %8, align 8
  %69 = or i64 %68, %67
  store i64 %69, i64* %8, align 8
  br label %70

70:                                               ; preds = %64, %58
  br label %71

71:                                               ; preds = %70, %48
  br label %72

72:                                               ; preds = %71, %38
  br label %110

73:                                               ; preds = %26, %3
  %74 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %75 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %97

80:                                               ; preds = %73
  %81 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %82 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = load i64, i64* @WPS_CONFIG_PUSHBUTTON, align 8
  %88 = load i64, i64* @WPS_CONFIG_DISPLAY, align 8
  %89 = or i64 %87, %88
  %90 = load i64, i64* @WPS_CONFIG_KEYPAD, align 8
  %91 = or i64 %89, %90
  %92 = load i64, i64* @WPS_CONFIG_P2PS, align 8
  %93 = or i64 %91, %92
  %94 = and i64 %86, %93
  %95 = load i64, i64* %8, align 8
  %96 = or i64 %95, %94
  store i64 %96, i64* %8, align 8
  br label %109

97:                                               ; preds = %73
  %98 = load i64, i64* @WPS_CONFIG_PUSHBUTTON, align 8
  %99 = load i64, i64* %8, align 8
  %100 = or i64 %99, %98
  store i64 %100, i64* %8, align 8
  %101 = load i64, i64* @WPS_CONFIG_DISPLAY, align 8
  %102 = load i64, i64* @WPS_CONFIG_KEYPAD, align 8
  %103 = or i64 %101, %102
  %104 = load i64, i64* %8, align 8
  %105 = or i64 %104, %103
  store i64 %105, i64* %8, align 8
  %106 = load i64, i64* @WPS_CONFIG_P2PS, align 8
  %107 = load i64, i64* %8, align 8
  %108 = or i64 %107, %106
  store i64 %108, i64* %8, align 8
  br label %109

109:                                              ; preds = %97, %80
  br label %110

110:                                              ; preds = %109, %72
  %111 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %112 = load i64, i64* %8, align 8
  %113 = call i32 @wpabuf_put_be16(%struct.wpabuf* %111, i64 %112)
  %114 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %115 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %116 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %115, i32 0, i32 0
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 4
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @wpabuf_put_data(%struct.wpabuf* %114, i64 %119, i64 8)
  %121 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %122 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %123 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %122, i32 0, i32 0
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @wpabuf_put_u8(%struct.wpabuf* %121, i64 %126)
  store i64 0, i64* %10, align 8
  br label %128

128:                                              ; preds = %148, %110
  %129 = load i64, i64* %10, align 8
  %130 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %131 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %130, i32 0, i32 0
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = icmp ult i64 %129, %134
  br i1 %135, label %136, label %151

136:                                              ; preds = %128
  %137 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %138 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %139 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %138, i32 0, i32 0
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 3
  %142 = load i64*, i64** %141, align 8
  %143 = load i64, i64* %10, align 8
  %144 = getelementptr inbounds i64, i64* %142, i64 %143
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @WPS_DEV_TYPE_LEN, align 8
  %147 = call i32 @wpabuf_put_data(%struct.wpabuf* %137, i64 %145, i64 %146)
  br label %148

148:                                              ; preds = %136
  %149 = load i64, i64* %10, align 8
  %150 = add i64 %149, 1
  store i64 %150, i64* %10, align 8
  br label %128

151:                                              ; preds = %128
  %152 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %153 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %152, i32 0, i32 0
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %165

158:                                              ; preds = %151
  %159 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %160 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %159, i32 0, i32 0
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = call i64 @os_strlen(i64 %163)
  br label %166

165:                                              ; preds = %151
  br label %166

166:                                              ; preds = %165, %158
  %167 = phi i64 [ %164, %158 ], [ 0, %165 ]
  store i64 %167, i64* %9, align 8
  %168 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %169 = load i64, i64* @ATTR_DEV_NAME, align 8
  %170 = call i32 @wpabuf_put_be16(%struct.wpabuf* %168, i64 %169)
  %171 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %172 = load i64, i64* %9, align 8
  %173 = call i32 @wpabuf_put_be16(%struct.wpabuf* %171, i64 %172)
  %174 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %175 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %176 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %175, i32 0, i32 0
  %177 = load %struct.TYPE_2__*, %struct.TYPE_2__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 2
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* %9, align 8
  %181 = call i32 @wpabuf_put_data(%struct.wpabuf* %174, i64 %179, i64 %180)
  %182 = load i32*, i32** %7, align 8
  %183 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %184 = call i32* @wpabuf_put(%struct.wpabuf* %183, i32 0)
  %185 = load i32*, i32** %7, align 8
  %186 = ptrtoint i32* %184 to i64
  %187 = ptrtoint i32* %185 to i64
  %188 = sub i64 %186, %187
  %189 = sdiv exact i64 %188, 4
  %190 = sub nsw i64 %189, 2
  %191 = trunc i64 %190 to i32
  %192 = call i32 @WPA_PUT_LE16(i32* %182, i32 %191)
  %193 = load i32, i32* @MSG_DEBUG, align 4
  %194 = call i32 @wpa_printf(i32 %193, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i64) #1

declare dso_local i32* @wpabuf_put(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i64, i64) #1

declare dso_local i32 @wpabuf_put_be16(%struct.wpabuf*, i64) #1

declare dso_local i64 @os_strlen(i64) #1

declare dso_local i32 @WPA_PUT_LE16(i32*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
