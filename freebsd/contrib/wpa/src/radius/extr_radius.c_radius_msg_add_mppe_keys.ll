; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius.c_radius_msg_add_mppe_keys.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius.c_radius_msg_add_mppe_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_msg = type { i32 }
%struct.radius_attr_hdr = type { i32 }
%struct.radius_attr_vendor = type { i32, i32 }

@RADIUS_VENDOR_ID_MICROSOFT = common dso_local global i32 0, align 4
@RADIUS_VENDOR_ATTR_MS_MPPE_SEND_KEY = common dso_local global i32 0, align 4
@RADIUS_ATTR_VENDOR_SPECIFIC = common dso_local global i32 0, align 4
@RADIUS_VENDOR_ATTR_MS_MPPE_RECV_KEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radius_msg_add_mppe_keys(%struct.radius_msg* %0, i32* %1, i32* %2, i64 %3, i32* %4, i64 %5, i32* %6, i64 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.radius_msg*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.radius_attr_hdr*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca %struct.radius_attr_vendor*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.radius_msg* %0, %struct.radius_msg** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i64 %3, i64* %13, align 8
  store i32* %4, i32** %14, align 8
  store i64 %5, i64* %15, align 8
  store i32* %6, i32** %16, align 8
  store i64 %7, i64* %17, align 8
  %26 = load i32, i32* @RADIUS_VENDOR_ID_MICROSOFT, align 4
  %27 = call i32 @htonl(i32 %26)
  store i32 %27, i32* %19, align 4
  store i32 14, i32* %24, align 4
  %28 = load i32, i32* %24, align 4
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* %15, align 8
  %31 = add i64 %29, %30
  %32 = add i64 %31, 16
  %33 = trunc i64 %32 to i32
  %34 = call i32* @os_malloc(i32 %33)
  store i32* %34, i32** %20, align 8
  %35 = load i32*, i32** %20, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %8
  store i32 0, i32* %9, align 4
  br label %158

38:                                               ; preds = %8
  %39 = load i32*, i32** %20, align 8
  store i32* %39, i32** %22, align 8
  %40 = load i32*, i32** %22, align 8
  %41 = call i32 @os_memcpy(i32* %40, i32* %19, i32 4)
  %42 = load i32*, i32** %22, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 4
  store i32* %43, i32** %22, align 8
  %44 = load i32*, i32** %22, align 8
  %45 = bitcast i32* %44 to %struct.radius_attr_vendor*
  store %struct.radius_attr_vendor* %45, %struct.radius_attr_vendor** %21, align 8
  %46 = load i32, i32* @RADIUS_VENDOR_ATTR_MS_MPPE_SEND_KEY, align 4
  %47 = load %struct.radius_attr_vendor*, %struct.radius_attr_vendor** %21, align 8
  %48 = getelementptr inbounds %struct.radius_attr_vendor, %struct.radius_attr_vendor* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.radius_attr_vendor*, %struct.radius_attr_vendor** %21, align 8
  %50 = getelementptr inbounds %struct.radius_attr_vendor, %struct.radius_attr_vendor* %49, i64 1
  %51 = bitcast %struct.radius_attr_vendor* %50 to i32*
  store i32* %51, i32** %22, align 8
  %52 = call i64 @os_get_random(i32* %25, i32 4)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %38
  %55 = load i32*, i32** %20, align 8
  %56 = call i32 @os_free(i32* %55)
  store i32 0, i32* %9, align 4
  br label %158

57:                                               ; preds = %38
  %58 = load i32, i32* %25, align 4
  %59 = or i32 %58, 32768
  store i32 %59, i32* %25, align 4
  %60 = load i32*, i32** %22, align 8
  %61 = load i32, i32* %25, align 4
  %62 = call i32 @WPA_PUT_BE16(i32* %60, i32 %61)
  %63 = load i32*, i32** %22, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 2
  store i32* %64, i32** %22, align 8
  %65 = load i32*, i32** %14, align 8
  %66 = load i64, i64* %15, align 8
  %67 = load i32, i32* %25, align 4
  %68 = load i32*, i32** %11, align 8
  %69 = load i32*, i32** %12, align 8
  %70 = load i64, i64* %13, align 8
  %71 = load i32*, i32** %22, align 8
  %72 = call i32 @encrypt_ms_key(i32* %65, i64 %66, i32 %67, i32* %68, i32* %69, i64 %70, i32* %71, i64* %23)
  %73 = load i32, i32* %24, align 4
  %74 = sext i32 %73 to i64
  %75 = load i64, i64* %23, align 8
  %76 = add i64 %74, %75
  %77 = sub i64 %76, 4
  %78 = trunc i64 %77 to i32
  %79 = load %struct.radius_attr_vendor*, %struct.radius_attr_vendor** %21, align 8
  %80 = getelementptr inbounds %struct.radius_attr_vendor, %struct.radius_attr_vendor* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  %81 = load %struct.radius_msg*, %struct.radius_msg** %10, align 8
  %82 = load i32, i32* @RADIUS_ATTR_VENDOR_SPECIFIC, align 4
  %83 = load i32*, i32** %20, align 8
  %84 = load i32, i32* %24, align 4
  %85 = sext i32 %84 to i64
  %86 = load i64, i64* %23, align 8
  %87 = add i64 %85, %86
  %88 = trunc i64 %87 to i32
  %89 = call %struct.radius_attr_hdr* @radius_msg_add_attr(%struct.radius_msg* %81, i32 %82, i32* %83, i32 %88)
  store %struct.radius_attr_hdr* %89, %struct.radius_attr_hdr** %18, align 8
  %90 = load i32*, i32** %20, align 8
  %91 = call i32 @os_free(i32* %90)
  %92 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %18, align 8
  %93 = icmp eq %struct.radius_attr_hdr* %92, null
  br i1 %93, label %94, label %95

94:                                               ; preds = %57
  store i32 0, i32* %9, align 4
  br label %158

95:                                               ; preds = %57
  %96 = load i32, i32* %24, align 4
  %97 = sext i32 %96 to i64
  %98 = load i64, i64* %17, align 8
  %99 = add i64 %97, %98
  %100 = add i64 %99, 16
  %101 = trunc i64 %100 to i32
  %102 = call i32* @os_malloc(i32 %101)
  store i32* %102, i32** %20, align 8
  %103 = load i32*, i32** %20, align 8
  %104 = icmp eq i32* %103, null
  br i1 %104, label %105, label %106

105:                                              ; preds = %95
  store i32 0, i32* %9, align 4
  br label %158

106:                                              ; preds = %95
  %107 = load i32*, i32** %20, align 8
  store i32* %107, i32** %22, align 8
  %108 = load i32*, i32** %22, align 8
  %109 = call i32 @os_memcpy(i32* %108, i32* %19, i32 4)
  %110 = load i32*, i32** %22, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 4
  store i32* %111, i32** %22, align 8
  %112 = load i32*, i32** %22, align 8
  %113 = bitcast i32* %112 to %struct.radius_attr_vendor*
  store %struct.radius_attr_vendor* %113, %struct.radius_attr_vendor** %21, align 8
  %114 = load i32, i32* @RADIUS_VENDOR_ATTR_MS_MPPE_RECV_KEY, align 4
  %115 = load %struct.radius_attr_vendor*, %struct.radius_attr_vendor** %21, align 8
  %116 = getelementptr inbounds %struct.radius_attr_vendor, %struct.radius_attr_vendor* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  %117 = load %struct.radius_attr_vendor*, %struct.radius_attr_vendor** %21, align 8
  %118 = getelementptr inbounds %struct.radius_attr_vendor, %struct.radius_attr_vendor* %117, i64 1
  %119 = bitcast %struct.radius_attr_vendor* %118 to i32*
  store i32* %119, i32** %22, align 8
  %120 = load i32, i32* %25, align 4
  %121 = xor i32 %120, 1
  store i32 %121, i32* %25, align 4
  %122 = load i32*, i32** %22, align 8
  %123 = load i32, i32* %25, align 4
  %124 = call i32 @WPA_PUT_BE16(i32* %122, i32 %123)
  %125 = load i32*, i32** %22, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 2
  store i32* %126, i32** %22, align 8
  %127 = load i32*, i32** %16, align 8
  %128 = load i64, i64* %17, align 8
  %129 = load i32, i32* %25, align 4
  %130 = load i32*, i32** %11, align 8
  %131 = load i32*, i32** %12, align 8
  %132 = load i64, i64* %13, align 8
  %133 = load i32*, i32** %22, align 8
  %134 = call i32 @encrypt_ms_key(i32* %127, i64 %128, i32 %129, i32* %130, i32* %131, i64 %132, i32* %133, i64* %23)
  %135 = load i32, i32* %24, align 4
  %136 = sext i32 %135 to i64
  %137 = load i64, i64* %23, align 8
  %138 = add i64 %136, %137
  %139 = sub i64 %138, 4
  %140 = trunc i64 %139 to i32
  %141 = load %struct.radius_attr_vendor*, %struct.radius_attr_vendor** %21, align 8
  %142 = getelementptr inbounds %struct.radius_attr_vendor, %struct.radius_attr_vendor* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 4
  %143 = load %struct.radius_msg*, %struct.radius_msg** %10, align 8
  %144 = load i32, i32* @RADIUS_ATTR_VENDOR_SPECIFIC, align 4
  %145 = load i32*, i32** %20, align 8
  %146 = load i32, i32* %24, align 4
  %147 = sext i32 %146 to i64
  %148 = load i64, i64* %23, align 8
  %149 = add i64 %147, %148
  %150 = trunc i64 %149 to i32
  %151 = call %struct.radius_attr_hdr* @radius_msg_add_attr(%struct.radius_msg* %143, i32 %144, i32* %145, i32 %150)
  store %struct.radius_attr_hdr* %151, %struct.radius_attr_hdr** %18, align 8
  %152 = load i32*, i32** %20, align 8
  %153 = call i32 @os_free(i32* %152)
  %154 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %18, align 8
  %155 = icmp eq %struct.radius_attr_hdr* %154, null
  br i1 %155, label %156, label %157

156:                                              ; preds = %106
  store i32 0, i32* %9, align 4
  br label %158

157:                                              ; preds = %106
  store i32 1, i32* %9, align 4
  br label %158

158:                                              ; preds = %157, %156, %105, %94, %54, %37
  %159 = load i32, i32* %9, align 4
  ret i32 %159
}

declare dso_local i32 @htonl(i32) #1

declare dso_local i32* @os_malloc(i32) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #1

declare dso_local i64 @os_get_random(i32*, i32) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32 @WPA_PUT_BE16(i32*, i32) #1

declare dso_local i32 @encrypt_ms_key(i32*, i64, i32, i32*, i32*, i64, i32*, i64*) #1

declare dso_local %struct.radius_attr_hdr* @radius_msg_add_attr(%struct.radius_msg*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
