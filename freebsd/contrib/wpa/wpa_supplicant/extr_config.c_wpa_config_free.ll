; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config.c_wpa_config_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config.c_wpa_config_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_config = type { %struct.wpa_config*, %struct.wpa_config*, %struct.wpa_config*, %struct.wpa_config*, %struct.wpa_config*, %struct.wpa_config*, i32, %struct.wpa_config*, %struct.wpa_config*, i32, i32, i32, %struct.wpa_config*, %struct.wpa_config*, %struct.TYPE_2__, %struct.wpa_config*, %struct.wpa_config*, %struct.wpa_config*, %struct.wpa_config*, %struct.wpa_config*, %struct.wpa_config*, %struct.wpa_config*, %struct.wpa_config*, %struct.wpa_config*, %struct.wpa_config*, i32, %struct.wpa_config*, %struct.wpa_config*, %struct.wpa_config*, %struct.wpa_config*, %struct.wpa_config*, %struct.wpa_config*, %struct.wpa_config*, i32*, i32, %struct.wpa_cred*, %struct.wpa_ssid* }
%struct.TYPE_2__ = type { %struct.wpa_config* }
%struct.wpa_cred = type { %struct.wpa_cred* }
%struct.wpa_ssid = type { %struct.wpa_ssid* }

@MAX_WPS_VENDOR_EXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpa_config_free(%struct.wpa_config* %0) #0 {
  %2 = alloca %struct.wpa_config*, align 8
  %3 = alloca %struct.wpa_ssid*, align 8
  %4 = alloca %struct.wpa_ssid*, align 8
  %5 = alloca %struct.wpa_cred*, align 8
  %6 = alloca %struct.wpa_cred*, align 8
  %7 = alloca i32, align 4
  store %struct.wpa_config* %0, %struct.wpa_config** %2, align 8
  store %struct.wpa_ssid* null, %struct.wpa_ssid** %4, align 8
  %8 = load %struct.wpa_config*, %struct.wpa_config** %2, align 8
  %9 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %8, i32 0, i32 36
  %10 = load %struct.wpa_ssid*, %struct.wpa_ssid** %9, align 8
  store %struct.wpa_ssid* %10, %struct.wpa_ssid** %3, align 8
  br label %11

11:                                               ; preds = %14, %1
  %12 = load %struct.wpa_ssid*, %struct.wpa_ssid** %3, align 8
  %13 = icmp ne %struct.wpa_ssid* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  %15 = load %struct.wpa_ssid*, %struct.wpa_ssid** %3, align 8
  store %struct.wpa_ssid* %15, %struct.wpa_ssid** %4, align 8
  %16 = load %struct.wpa_ssid*, %struct.wpa_ssid** %3, align 8
  %17 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %16, i32 0, i32 0
  %18 = load %struct.wpa_ssid*, %struct.wpa_ssid** %17, align 8
  store %struct.wpa_ssid* %18, %struct.wpa_ssid** %3, align 8
  %19 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %20 = call i32 @wpa_config_free_ssid(%struct.wpa_ssid* %19)
  br label %11

21:                                               ; preds = %11
  %22 = load %struct.wpa_config*, %struct.wpa_config** %2, align 8
  %23 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %22, i32 0, i32 35
  %24 = load %struct.wpa_cred*, %struct.wpa_cred** %23, align 8
  store %struct.wpa_cred* %24, %struct.wpa_cred** %5, align 8
  br label %25

25:                                               ; preds = %28, %21
  %26 = load %struct.wpa_cred*, %struct.wpa_cred** %5, align 8
  %27 = icmp ne %struct.wpa_cred* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load %struct.wpa_cred*, %struct.wpa_cred** %5, align 8
  store %struct.wpa_cred* %29, %struct.wpa_cred** %6, align 8
  %30 = load %struct.wpa_cred*, %struct.wpa_cred** %5, align 8
  %31 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %30, i32 0, i32 0
  %32 = load %struct.wpa_cred*, %struct.wpa_cred** %31, align 8
  store %struct.wpa_cred* %32, %struct.wpa_cred** %5, align 8
  %33 = load %struct.wpa_cred*, %struct.wpa_cred** %6, align 8
  %34 = call i32 @wpa_config_free_cred(%struct.wpa_cred* %33)
  br label %25

35:                                               ; preds = %25
  %36 = load %struct.wpa_config*, %struct.wpa_config** %2, align 8
  %37 = call i32 @wpa_config_flush_blobs(%struct.wpa_config* %36)
  %38 = load %struct.wpa_config*, %struct.wpa_config** %2, align 8
  %39 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %38, i32 0, i32 34
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @wpabuf_free(i32 %40)
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %55, %35
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @MAX_WPS_VENDOR_EXT, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %42
  %47 = load %struct.wpa_config*, %struct.wpa_config** %2, align 8
  %48 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %47, i32 0, i32 33
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @wpabuf_free(i32 %53)
  br label %55

55:                                               ; preds = %46
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %42

58:                                               ; preds = %42
  %59 = load %struct.wpa_config*, %struct.wpa_config** %2, align 8
  %60 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %59, i32 0, i32 32
  %61 = load %struct.wpa_config*, %struct.wpa_config** %60, align 8
  %62 = call i32 @os_free(%struct.wpa_config* %61)
  %63 = load %struct.wpa_config*, %struct.wpa_config** %2, align 8
  %64 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %63, i32 0, i32 31
  %65 = load %struct.wpa_config*, %struct.wpa_config** %64, align 8
  %66 = call i32 @os_free(%struct.wpa_config* %65)
  %67 = load %struct.wpa_config*, %struct.wpa_config** %2, align 8
  %68 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %67, i32 0, i32 30
  %69 = load %struct.wpa_config*, %struct.wpa_config** %68, align 8
  %70 = call i32 @os_free(%struct.wpa_config* %69)
  %71 = load %struct.wpa_config*, %struct.wpa_config** %2, align 8
  %72 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %71, i32 0, i32 29
  %73 = load %struct.wpa_config*, %struct.wpa_config** %72, align 8
  %74 = call i32 @os_free(%struct.wpa_config* %73)
  %75 = load %struct.wpa_config*, %struct.wpa_config** %2, align 8
  %76 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %75, i32 0, i32 28
  %77 = load %struct.wpa_config*, %struct.wpa_config** %76, align 8
  %78 = call i32 @os_free(%struct.wpa_config* %77)
  %79 = load %struct.wpa_config*, %struct.wpa_config** %2, align 8
  %80 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %79, i32 0, i32 27
  %81 = load %struct.wpa_config*, %struct.wpa_config** %80, align 8
  %82 = call i32 @os_free(%struct.wpa_config* %81)
  %83 = load %struct.wpa_config*, %struct.wpa_config** %2, align 8
  %84 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %83, i32 0, i32 26
  %85 = load %struct.wpa_config*, %struct.wpa_config** %84, align 8
  %86 = call i32 @os_free(%struct.wpa_config* %85)
  %87 = load %struct.wpa_config*, %struct.wpa_config** %2, align 8
  %88 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %87, i32 0, i32 25
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @str_clear_free(i32 %89)
  %91 = load %struct.wpa_config*, %struct.wpa_config** %2, align 8
  %92 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %91, i32 0, i32 24
  %93 = load %struct.wpa_config*, %struct.wpa_config** %92, align 8
  %94 = call i32 @os_free(%struct.wpa_config* %93)
  %95 = load %struct.wpa_config*, %struct.wpa_config** %2, align 8
  %96 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %95, i32 0, i32 23
  %97 = load %struct.wpa_config*, %struct.wpa_config** %96, align 8
  %98 = call i32 @os_free(%struct.wpa_config* %97)
  %99 = load %struct.wpa_config*, %struct.wpa_config** %2, align 8
  %100 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %99, i32 0, i32 22
  %101 = load %struct.wpa_config*, %struct.wpa_config** %100, align 8
  %102 = call i32 @os_free(%struct.wpa_config* %101)
  %103 = load %struct.wpa_config*, %struct.wpa_config** %2, align 8
  %104 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %103, i32 0, i32 21
  %105 = load %struct.wpa_config*, %struct.wpa_config** %104, align 8
  %106 = call i32 @os_free(%struct.wpa_config* %105)
  %107 = load %struct.wpa_config*, %struct.wpa_config** %2, align 8
  %108 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %107, i32 0, i32 20
  %109 = load %struct.wpa_config*, %struct.wpa_config** %108, align 8
  %110 = call i32 @os_free(%struct.wpa_config* %109)
  %111 = load %struct.wpa_config*, %struct.wpa_config** %2, align 8
  %112 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %111, i32 0, i32 19
  %113 = load %struct.wpa_config*, %struct.wpa_config** %112, align 8
  %114 = call i32 @os_free(%struct.wpa_config* %113)
  %115 = load %struct.wpa_config*, %struct.wpa_config** %2, align 8
  %116 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %115, i32 0, i32 18
  %117 = load %struct.wpa_config*, %struct.wpa_config** %116, align 8
  %118 = call i32 @os_free(%struct.wpa_config* %117)
  %119 = load %struct.wpa_config*, %struct.wpa_config** %2, align 8
  %120 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %119, i32 0, i32 17
  %121 = load %struct.wpa_config*, %struct.wpa_config** %120, align 8
  %122 = call i32 @os_free(%struct.wpa_config* %121)
  %123 = load %struct.wpa_config*, %struct.wpa_config** %2, align 8
  %124 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %123, i32 0, i32 16
  %125 = load %struct.wpa_config*, %struct.wpa_config** %124, align 8
  %126 = call i32 @os_free(%struct.wpa_config* %125)
  %127 = load %struct.wpa_config*, %struct.wpa_config** %2, align 8
  %128 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %127, i32 0, i32 15
  %129 = load %struct.wpa_config*, %struct.wpa_config** %128, align 8
  %130 = call i32 @os_free(%struct.wpa_config* %129)
  %131 = load %struct.wpa_config*, %struct.wpa_config** %2, align 8
  %132 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %131, i32 0, i32 14
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = load %struct.wpa_config*, %struct.wpa_config** %133, align 8
  %135 = call i32 @os_free(%struct.wpa_config* %134)
  %136 = load %struct.wpa_config*, %struct.wpa_config** %2, align 8
  %137 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %136, i32 0, i32 13
  %138 = load %struct.wpa_config*, %struct.wpa_config** %137, align 8
  %139 = call i32 @os_free(%struct.wpa_config* %138)
  %140 = load %struct.wpa_config*, %struct.wpa_config** %2, align 8
  %141 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %140, i32 0, i32 12
  %142 = load %struct.wpa_config*, %struct.wpa_config** %141, align 8
  %143 = call i32 @os_free(%struct.wpa_config* %142)
  %144 = load %struct.wpa_config*, %struct.wpa_config** %2, align 8
  %145 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %144, i32 0, i32 11
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @wpabuf_free(i32 %146)
  %148 = load %struct.wpa_config*, %struct.wpa_config** %2, align 8
  %149 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %148, i32 0, i32 10
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @wpabuf_free(i32 %150)
  %152 = load %struct.wpa_config*, %struct.wpa_config** %2, align 8
  %153 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %152, i32 0, i32 9
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @wpabuf_free(i32 %154)
  %156 = load %struct.wpa_config*, %struct.wpa_config** %2, align 8
  %157 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %156, i32 0, i32 8
  %158 = load %struct.wpa_config*, %struct.wpa_config** %157, align 8
  %159 = call i32 @os_free(%struct.wpa_config* %158)
  %160 = load %struct.wpa_config*, %struct.wpa_config** %2, align 8
  %161 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %160, i32 0, i32 7
  %162 = load %struct.wpa_config*, %struct.wpa_config** %161, align 8
  %163 = call i32 @os_free(%struct.wpa_config* %162)
  %164 = load %struct.wpa_config*, %struct.wpa_config** %2, align 8
  %165 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %164, i32 0, i32 6
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @wpabuf_free(i32 %166)
  %168 = load %struct.wpa_config*, %struct.wpa_config** %2, align 8
  %169 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %168, i32 0, i32 5
  %170 = load %struct.wpa_config*, %struct.wpa_config** %169, align 8
  %171 = call i32 @os_free(%struct.wpa_config* %170)
  %172 = load %struct.wpa_config*, %struct.wpa_config** %2, align 8
  %173 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %172, i32 0, i32 4
  %174 = load %struct.wpa_config*, %struct.wpa_config** %173, align 8
  %175 = call i32 @os_free(%struct.wpa_config* %174)
  %176 = load %struct.wpa_config*, %struct.wpa_config** %2, align 8
  %177 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %176, i32 0, i32 3
  %178 = load %struct.wpa_config*, %struct.wpa_config** %177, align 8
  %179 = call i32 @os_free(%struct.wpa_config* %178)
  %180 = load %struct.wpa_config*, %struct.wpa_config** %2, align 8
  %181 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %180, i32 0, i32 2
  %182 = load %struct.wpa_config*, %struct.wpa_config** %181, align 8
  %183 = call i32 @os_free(%struct.wpa_config* %182)
  %184 = load %struct.wpa_config*, %struct.wpa_config** %2, align 8
  %185 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %184, i32 0, i32 1
  %186 = load %struct.wpa_config*, %struct.wpa_config** %185, align 8
  %187 = call i32 @os_free(%struct.wpa_config* %186)
  %188 = load %struct.wpa_config*, %struct.wpa_config** %2, align 8
  %189 = call i32 @os_free(%struct.wpa_config* %188)
  ret void
}

declare dso_local i32 @wpa_config_free_ssid(%struct.wpa_ssid*) #1

declare dso_local i32 @wpa_config_free_cred(%struct.wpa_cred*) #1

declare dso_local i32 @wpa_config_flush_blobs(%struct.wpa_config*) #1

declare dso_local i32 @wpabuf_free(i32) #1

declare dso_local i32 @os_free(%struct.wpa_config*) #1

declare dso_local i32 @str_clear_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
