; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_sae.c_sae_write_commit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_sae.c_sae_write_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sae_data = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i64, i32 }
%struct.wpabuf = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"SAE: Anti-clogging token\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"SAE: own commit-scalar\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"SAE: own commit-element(x)\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"SAE: own commit-element(y)\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"SAE: own commit-element\00", align 1
@WLAN_EID_EXTENSION = common dso_local global i64 0, align 8
@WLAN_EID_EXT_PASSWORD_IDENTIFIER = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [33 x i8] c"SAE: own Password Identifier: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sae_write_commit(%struct.sae_data* %0, %struct.wpabuf* %1, %struct.wpabuf* %2, i8* %3) #0 {
  %5 = alloca %struct.sae_data*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.wpabuf*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  store %struct.sae_data* %0, %struct.sae_data** %5, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %6, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %11 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp eq %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  br label %178

15:                                               ; preds = %4
  %16 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %17 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %18 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @wpabuf_put_le16(%struct.wpabuf* %16, i32 %19)
  %21 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %22 = icmp ne %struct.wpabuf* %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %15
  %24 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %25 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %26 = call i32 @wpabuf_put_buf(%struct.wpabuf* %24, %struct.wpabuf* %25)
  %27 = load i32, i32* @MSG_DEBUG, align 4
  %28 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %29 = call i32* @wpabuf_head(%struct.wpabuf* %28)
  %30 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %31 = call i32 @wpabuf_len(%struct.wpabuf* %30)
  %32 = call i32 @wpa_hexdump(i32 %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32* %29, i32 %31)
  br label %33

33:                                               ; preds = %23, %15
  %34 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %35 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %36 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32* @wpabuf_put(%struct.wpabuf* %34, i32 %39)
  store i32* %40, i32** %9, align 8
  %41 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %42 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %48 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %53 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @crypto_bignum_to_bin(i32 %45, i32* %46, i32 %51, i32 %56)
  %58 = load i32, i32* @MSG_DEBUG, align 4
  %59 = load i32*, i32** %9, align 8
  %60 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %61 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @wpa_hexdump(i32 %58, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32* %59, i32 %64)
  %66 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %67 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %124

72:                                               ; preds = %33
  %73 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %74 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %75 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = mul nsw i32 2, %78
  %80 = call i32* @wpabuf_put(%struct.wpabuf* %73, i32 %79)
  store i32* %80, i32** %9, align 8
  %81 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %82 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %87 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load i32*, i32** %9, align 8
  %92 = load i32*, i32** %9, align 8
  %93 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %94 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %93, i32 0, i32 0
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %92, i64 %98
  %100 = call i32 @crypto_ec_point_to_bin(i64 %85, i32 %90, i32* %91, i32* %99)
  %101 = load i32, i32* @MSG_DEBUG, align 4
  %102 = load i32*, i32** %9, align 8
  %103 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %104 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %103, i32 0, i32 0
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @wpa_hexdump(i32 %101, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32* %102, i32 %107)
  %109 = load i32, i32* @MSG_DEBUG, align 4
  %110 = load i32*, i32** %9, align 8
  %111 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %112 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %111, i32 0, i32 0
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %110, i64 %116
  %118 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %119 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %118, i32 0, i32 0
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @wpa_hexdump(i32 %109, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32* %117, i32 %122)
  br label %157

124:                                              ; preds = %33
  %125 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %126 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %127 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %126, i32 0, i32 0
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32* @wpabuf_put(%struct.wpabuf* %125, i32 %130)
  store i32* %131, i32** %9, align 8
  %132 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %133 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %132, i32 0, i32 0
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32*, i32** %9, align 8
  %138 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %139 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %138, i32 0, i32 0
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %144 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %143, i32 0, i32 0
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @crypto_bignum_to_bin(i32 %136, i32* %137, i32 %142, i32 %147)
  %149 = load i32, i32* @MSG_DEBUG, align 4
  %150 = load i32*, i32** %9, align 8
  %151 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %152 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %151, i32 0, i32 0
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @wpa_hexdump(i32 %149, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32* %150, i32 %155)
  br label %157

157:                                              ; preds = %124, %72
  %158 = load i8*, i8** %8, align 8
  %159 = icmp ne i8* %158, null
  br i1 %159, label %160, label %178

160:                                              ; preds = %157
  %161 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %162 = load i64, i64* @WLAN_EID_EXTENSION, align 8
  %163 = call i32 @wpabuf_put_u8(%struct.wpabuf* %161, i64 %162)
  %164 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %165 = load i8*, i8** %8, align 8
  %166 = call i64 @os_strlen(i8* %165)
  %167 = add nsw i64 1, %166
  %168 = call i32 @wpabuf_put_u8(%struct.wpabuf* %164, i64 %167)
  %169 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %170 = load i64, i64* @WLAN_EID_EXT_PASSWORD_IDENTIFIER, align 8
  %171 = call i32 @wpabuf_put_u8(%struct.wpabuf* %169, i64 %170)
  %172 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %173 = load i8*, i8** %8, align 8
  %174 = call i32 @wpabuf_put_str(%struct.wpabuf* %172, i8* %173)
  %175 = load i32, i32* @MSG_DEBUG, align 4
  %176 = load i8*, i8** %8, align 8
  %177 = call i32 @wpa_printf(i32 %175, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i8* %176)
  br label %178

178:                                              ; preds = %14, %160, %157
  ret void
}

declare dso_local i32 @wpabuf_put_le16(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_buf(%struct.wpabuf*, %struct.wpabuf*) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

declare dso_local i32* @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32* @wpabuf_put(%struct.wpabuf*, i32) #1

declare dso_local i32 @crypto_bignum_to_bin(i32, i32*, i32, i32) #1

declare dso_local i32 @crypto_ec_point_to_bin(i64, i32, i32*, i32*) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i64) #1

declare dso_local i64 @os_strlen(i8*) #1

declare dso_local i32 @wpabuf_put_str(%struct.wpabuf*, i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
