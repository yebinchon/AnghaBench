; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast_pac.c_eap_fast_save_pac_bin.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast_pac.c_eap_fast_save_pac_bin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_fast_pac = type { i32, i32, i32, %struct.eap_fast_pac*, i32, i32, i32 }

@EAP_FAST_PAC_KEY_LEN = common dso_local global i32 0, align 4
@EAP_FAST_PAC_BINARY_MAGIC = common dso_local global i32 0, align 4
@EAP_FAST_PAC_BINARY_FORMAT_VERSION = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"EAP-FAST: Wrote %lu PAC entries into '%s' (bin)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eap_fast_save_pac_bin(%struct.eap_sm* %0, %struct.eap_fast_pac* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca %struct.eap_fast_pac*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.eap_fast_pac*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store %struct.eap_fast_pac* %1, %struct.eap_fast_pac** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 0, i64* %9, align 8
  store i64 6, i64* %8, align 8
  %13 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %6, align 8
  store %struct.eap_fast_pac* %13, %struct.eap_fast_pac** %10, align 8
  br label %14

14:                                               ; preds = %28, %3
  %15 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %10, align 8
  %16 = icmp ne %struct.eap_fast_pac* %15, null
  br i1 %16, label %17, label %47

17:                                               ; preds = %14
  %18 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %10, align 8
  %19 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sgt i32 %20, 65535
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %10, align 8
  %24 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp sgt i32 %25, 65535
  br i1 %26, label %27, label %28

27:                                               ; preds = %22, %17
  store i32 -1, i32* %4, align 4
  br label %150

28:                                               ; preds = %22
  %29 = load i32, i32* @EAP_FAST_PAC_KEY_LEN, align 4
  %30 = add nsw i32 2, %29
  %31 = add nsw i32 %30, 2
  %32 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %10, align 8
  %33 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %31, %34
  %36 = add nsw i32 %35, 2
  %37 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %10, align 8
  %38 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %36, %39
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* %8, align 8
  %43 = add i64 %42, %41
  store i64 %43, i64* %8, align 8
  %44 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %10, align 8
  %45 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %44, i32 0, i32 3
  %46 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %45, align 8
  store %struct.eap_fast_pac* %46, %struct.eap_fast_pac** %10, align 8
  br label %14

47:                                               ; preds = %14
  %48 = load i64, i64* %8, align 8
  %49 = call i32* @os_malloc(i64 %48)
  store i32* %49, i32** %11, align 8
  %50 = load i32*, i32** %11, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i32 -1, i32* %4, align 4
  br label %150

53:                                               ; preds = %47
  %54 = load i32*, i32** %11, align 8
  store i32* %54, i32** %12, align 8
  %55 = load i32*, i32** %12, align 8
  %56 = load i32, i32* @EAP_FAST_PAC_BINARY_MAGIC, align 4
  %57 = call i32 @WPA_PUT_BE32(i32* %55, i32 %56)
  %58 = load i32*, i32** %12, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 4
  store i32* %59, i32** %12, align 8
  %60 = load i32*, i32** %12, align 8
  %61 = load i32, i32* @EAP_FAST_PAC_BINARY_FORMAT_VERSION, align 4
  %62 = call i32 @WPA_PUT_BE16(i32* %60, i32 %61)
  %63 = load i32*, i32** %12, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 2
  store i32* %64, i32** %12, align 8
  %65 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %6, align 8
  store %struct.eap_fast_pac* %65, %struct.eap_fast_pac** %10, align 8
  br label %66

66:                                               ; preds = %69, %53
  %67 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %10, align 8
  %68 = icmp ne %struct.eap_fast_pac* %67, null
  br i1 %68, label %69, label %134

69:                                               ; preds = %66
  %70 = load i32*, i32** %12, align 8
  %71 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %10, align 8
  %72 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @WPA_PUT_BE16(i32* %70, i32 %73)
  %75 = load i32*, i32** %12, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 2
  store i32* %76, i32** %12, align 8
  %77 = load i32*, i32** %12, align 8
  %78 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %10, align 8
  %79 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @EAP_FAST_PAC_KEY_LEN, align 4
  %82 = call i32 @os_memcpy(i32* %77, i32 %80, i32 %81)
  %83 = load i32, i32* @EAP_FAST_PAC_KEY_LEN, align 4
  %84 = load i32*, i32** %12, align 8
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  store i32* %86, i32** %12, align 8
  %87 = load i32*, i32** %12, align 8
  %88 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %10, align 8
  %89 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @WPA_PUT_BE16(i32* %87, i32 %90)
  %92 = load i32*, i32** %12, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 2
  store i32* %93, i32** %12, align 8
  %94 = load i32*, i32** %12, align 8
  %95 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %10, align 8
  %96 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %10, align 8
  %99 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @os_memcpy(i32* %94, i32 %97, i32 %100)
  %102 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %10, align 8
  %103 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32*, i32** %12, align 8
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  store i32* %107, i32** %12, align 8
  %108 = load i32*, i32** %12, align 8
  %109 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %10, align 8
  %110 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @WPA_PUT_BE16(i32* %108, i32 %111)
  %113 = load i32*, i32** %12, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 2
  store i32* %114, i32** %12, align 8
  %115 = load i32*, i32** %12, align 8
  %116 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %10, align 8
  %117 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %10, align 8
  %120 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @os_memcpy(i32* %115, i32 %118, i32 %121)
  %123 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %10, align 8
  %124 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32*, i32** %12, align 8
  %127 = sext i32 %125 to i64
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  store i32* %128, i32** %12, align 8
  %129 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %10, align 8
  %130 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %129, i32 0, i32 3
  %131 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %130, align 8
  store %struct.eap_fast_pac* %131, %struct.eap_fast_pac** %10, align 8
  %132 = load i64, i64* %9, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* %9, align 8
  br label %66

134:                                              ; preds = %66
  %135 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %136 = load i8*, i8** %7, align 8
  %137 = load i32*, i32** %11, align 8
  %138 = bitcast i32* %137 to i8*
  %139 = load i64, i64* %8, align 8
  %140 = call i64 @eap_fast_write_pac(%struct.eap_sm* %135, i8* %136, i8* %138, i64 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %134
  %143 = load i32*, i32** %11, align 8
  %144 = call i32 @os_free(i32* %143)
  store i32 -1, i32* %4, align 4
  br label %150

145:                                              ; preds = %134
  %146 = load i32, i32* @MSG_DEBUG, align 4
  %147 = load i64, i64* %9, align 8
  %148 = load i8*, i8** %7, align 8
  %149 = call i32 @wpa_printf(i32 %146, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %147, i8* %148)
  store i32 0, i32* %4, align 4
  br label %150

150:                                              ; preds = %145, %142, %52, %27
  %151 = load i32, i32* %4, align 4
  ret i32 %151
}

declare dso_local i32* @os_malloc(i64) #1

declare dso_local i32 @WPA_PUT_BE32(i32*, i32) #1

declare dso_local i32 @WPA_PUT_BE16(i32*, i32) #1

declare dso_local i32 @os_memcpy(i32*, i32, i32) #1

declare dso_local i64 @eap_fast_write_pac(%struct.eap_sm*, i8*, i8*, i64) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
