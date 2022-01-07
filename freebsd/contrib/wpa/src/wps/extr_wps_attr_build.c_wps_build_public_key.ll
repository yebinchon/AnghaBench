; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_attr_build.c_wps_build_public_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_attr_build.c_wps_build_public_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_data = type { i32, %struct.wpabuf*, %struct.wpabuf*, i64, i32*, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32*, i32*, i64, i32*, i32*, i32* }
%struct.wpabuf = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"WPS:  * Public Key\00", align 1
@DEV_PW_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"WPS: Using pre-configured DH keys\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"WPS: wps->wps->dh_pubkey == NULL\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"WPS: Generate new DH keys\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"WPS: Failed to initialize Diffie-Hellman handshake\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"WPS: DH Private Key\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"WPS: DH own Public Key\00", align 1
@ATTR_PUBLIC_KEY = common dso_local global i32 0, align 4
@DEV_PW_NFC_CONNECTION_HANDOVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_build_public_key(%struct.wps_data* %0, %struct.wpabuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wps_data*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  store %struct.wps_data* %0, %struct.wps_data** %4, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %5, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %6, align 8
  %7 = load i32, i32* @MSG_DEBUG, align 4
  %8 = call i32 @wpa_printf(i32 %7, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %10 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %9, i32 0, i32 4
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @wpabuf_clear_free(i32* %11)
  %13 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %14 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %13, i32 0, i32 4
  store i32* null, i32** %14, align 8
  %15 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %16 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @DEV_PW_DEFAULT, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %74

20:                                               ; preds = %2
  %21 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %22 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %21, i32 0, i32 6
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 6
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %74

27:                                               ; preds = %20
  %28 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %29 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %28, i32 0, i32 6
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 5
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %74

34:                                               ; preds = %27
  %35 = load i32, i32* @MSG_DEBUG, align 4
  %36 = call i32 @wpa_printf(i32 %35, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %38 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %37, i32 0, i32 6
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 4
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %34
  %44 = load i32, i32* @MSG_DEBUG, align 4
  %45 = call i32 @wpa_printf(i32 %44, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %146

46:                                               ; preds = %34
  %47 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %48 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %47, i32 0, i32 6
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 6
  %51 = load i32*, i32** %50, align 8
  %52 = call i8* @wpabuf_dup(i32* %51)
  %53 = bitcast i8* %52 to i32*
  %54 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %55 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %54, i32 0, i32 4
  store i32* %53, i32** %55, align 8
  %56 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %57 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %56, i32 0, i32 6
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 5
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %62 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %61, i32 0, i32 5
  store i32* %60, i32** %62, align 8
  %63 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %64 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %63, i32 0, i32 6
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 5
  store i32* null, i32** %66, align 8
  %67 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %68 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %67, i32 0, i32 6
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 4
  %71 = load i32*, i32** %70, align 8
  %72 = call i8* @wpabuf_dup(i32* %71)
  %73 = bitcast i8* %72 to %struct.wpabuf*
  store %struct.wpabuf* %73, %struct.wpabuf** %6, align 8
  br label %88

74:                                               ; preds = %27, %20, %2
  %75 = load i32, i32* @MSG_DEBUG, align 4
  %76 = call i32 @wpa_printf(i32 %75, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %77 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %78 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %77, i32 0, i32 5
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @dh5_free(i32* %79)
  %81 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %82 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %81, i32 0, i32 4
  %83 = call i32* @dh5_init(i32** %82, %struct.wpabuf** %6)
  %84 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %85 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %84, i32 0, i32 5
  store i32* %83, i32** %85, align 8
  %86 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %87 = call %struct.wpabuf* @wpabuf_zeropad(%struct.wpabuf* %86, i32 192)
  store %struct.wpabuf* %87, %struct.wpabuf** %6, align 8
  br label %88

88:                                               ; preds = %74, %46
  %89 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %90 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %89, i32 0, i32 5
  %91 = load i32*, i32** %90, align 8
  %92 = icmp eq i32* %91, null
  br i1 %92, label %101, label %93

93:                                               ; preds = %88
  %94 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %95 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %94, i32 0, i32 4
  %96 = load i32*, i32** %95, align 8
  %97 = icmp eq i32* %96, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %93
  %99 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %100 = icmp eq %struct.wpabuf* %99, null
  br i1 %100, label %101, label %106

101:                                              ; preds = %98, %93, %88
  %102 = load i32, i32* @MSG_DEBUG, align 4
  %103 = call i32 @wpa_printf(i32 %102, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0))
  %104 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %105 = call i32 @wpabuf_free(%struct.wpabuf* %104)
  store i32 -1, i32* %3, align 4
  br label %146

106:                                              ; preds = %98
  %107 = load i32, i32* @MSG_DEBUG, align 4
  %108 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %109 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %108, i32 0, i32 4
  %110 = load i32*, i32** %109, align 8
  %111 = call i32 @wpa_hexdump_buf_key(i32 %107, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32* %110)
  %112 = load i32, i32* @MSG_DEBUG, align 4
  %113 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %114 = call i32 @wpa_hexdump_buf(i32 %112, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), %struct.wpabuf* %113)
  %115 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %116 = load i32, i32* @ATTR_PUBLIC_KEY, align 4
  %117 = call i32 @wpabuf_put_be16(%struct.wpabuf* %115, i32 %116)
  %118 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %119 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %120 = call i32 @wpabuf_len(%struct.wpabuf* %119)
  %121 = call i32 @wpabuf_put_be16(%struct.wpabuf* %118, i32 %120)
  %122 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %123 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %124 = call i32 @wpabuf_put_buf(%struct.wpabuf* %122, %struct.wpabuf* %123)
  %125 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %126 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %106
  %130 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %131 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %130, i32 0, i32 2
  %132 = load %struct.wpabuf*, %struct.wpabuf** %131, align 8
  %133 = call i32 @wpabuf_free(%struct.wpabuf* %132)
  %134 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %135 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %136 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %135, i32 0, i32 2
  store %struct.wpabuf* %134, %struct.wpabuf** %136, align 8
  br label %145

137:                                              ; preds = %106
  %138 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %139 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %138, i32 0, i32 1
  %140 = load %struct.wpabuf*, %struct.wpabuf** %139, align 8
  %141 = call i32 @wpabuf_free(%struct.wpabuf* %140)
  %142 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %143 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %144 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %143, i32 0, i32 1
  store %struct.wpabuf* %142, %struct.wpabuf** %144, align 8
  br label %145

145:                                              ; preds = %137, %129
  store i32 0, i32* %3, align 4
  br label %146

146:                                              ; preds = %145, %101, %43
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpabuf_clear_free(i32*) #1

declare dso_local i8* @wpabuf_dup(i32*) #1

declare dso_local i32 @dh5_free(i32*) #1

declare dso_local i32* @dh5_init(i32**, %struct.wpabuf**) #1

declare dso_local %struct.wpabuf* @wpabuf_zeropad(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i32 @wpa_hexdump_buf_key(i32, i8*, i32*) #1

declare dso_local i32 @wpa_hexdump_buf(i32, i8*, %struct.wpabuf*) #1

declare dso_local i32 @wpabuf_put_be16(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_put_buf(%struct.wpabuf*, %struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
