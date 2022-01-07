; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius.c_radius_msg_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius.c_radius_msg_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_msg = type { i32*, i32 }
%struct.radius_hdr = type { i32 }
%struct.radius_attr_hdr = type { i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"RADIUS: Invalid message length\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"RADIUS: Ignored %lu extra bytes after RADIUS message\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.radius_msg* @radius_msg_parse(i32* %0, i64 %1) #0 {
  %3 = alloca %struct.radius_msg*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.radius_msg*, align 8
  %7 = alloca %struct.radius_hdr*, align 8
  %8 = alloca %struct.radius_attr_hdr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i64, i64* %5, align 8
  %16 = icmp ult i64 %15, 4
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %2
  store %struct.radius_msg* null, %struct.radius_msg** %3, align 8
  br label %138

18:                                               ; preds = %14
  %19 = load i32*, i32** %4, align 8
  %20 = bitcast i32* %19 to %struct.radius_hdr*
  store %struct.radius_hdr* %20, %struct.radius_hdr** %7, align 8
  %21 = load %struct.radius_hdr*, %struct.radius_hdr** %7, align 8
  %22 = getelementptr inbounds %struct.radius_hdr, %struct.radius_hdr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @be_to_host16(i32 %23)
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* %9, align 8
  %26 = icmp ult i64 %25, 4
  br i1 %26, label %31, label %27

27:                                               ; preds = %18
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* %5, align 8
  %30 = icmp ugt i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27, %18
  %32 = load i32, i32* @MSG_INFO, align 4
  %33 = call i32 (i32, i8*, ...) @wpa_printf(i32 %32, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store %struct.radius_msg* null, %struct.radius_msg** %3, align 8
  br label %138

34:                                               ; preds = %27
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* %5, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load i32, i32* @MSG_DEBUG, align 4
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* %9, align 8
  %42 = sub i64 %40, %41
  %43 = call i32 (i32, i8*, ...) @wpa_printf(i32 %39, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i64 %42)
  br label %44

44:                                               ; preds = %38, %34
  %45 = call %struct.radius_msg* @os_zalloc(i32 16)
  store %struct.radius_msg* %45, %struct.radius_msg** %6, align 8
  %46 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %47 = icmp eq %struct.radius_msg* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store %struct.radius_msg* null, %struct.radius_msg** %3, align 8
  br label %138

49:                                               ; preds = %44
  %50 = load i32*, i32** %4, align 8
  %51 = load i64, i64* %9, align 8
  %52 = call i32* @wpabuf_alloc_copy(i32* %50, i64 %51)
  %53 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %54 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %53, i32 0, i32 0
  store i32* %52, i32** %54, align 8
  %55 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %56 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %63, label %59

59:                                               ; preds = %49
  %60 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %61 = call i64 @radius_msg_initialize(%struct.radius_msg* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59, %49
  %64 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %65 = call i32 @radius_msg_free(%struct.radius_msg* %64)
  store %struct.radius_msg* null, %struct.radius_msg** %3, align 8
  br label %138

66:                                               ; preds = %59
  %67 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %68 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @wpabuf_mhead(i32* %69)
  %71 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %72 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 8
  %73 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %74 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = call i8* @wpabuf_mhead_u8(i32* %75)
  %77 = getelementptr inbounds i8, i8* %76, i64 4
  store i8* %77, i8** %10, align 8
  %78 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %79 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = call i8* @wpabuf_mhead_u8(i32* %80)
  %82 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %83 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @wpabuf_len(i32* %84)
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %81, i64 %86
  store i8* %87, i8** %11, align 8
  br label %88

88:                                               ; preds = %126, %66
  %89 = load i8*, i8** %10, align 8
  %90 = load i8*, i8** %11, align 8
  %91 = icmp ult i8* %89, %90
  br i1 %91, label %92, label %133

92:                                               ; preds = %88
  %93 = load i8*, i8** %11, align 8
  %94 = load i8*, i8** %10, align 8
  %95 = ptrtoint i8* %93 to i64
  %96 = ptrtoint i8* %94 to i64
  %97 = sub i64 %95, %96
  %98 = icmp ult i64 %97, 4
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  br label %135

100:                                              ; preds = %92
  %101 = load i8*, i8** %10, align 8
  %102 = bitcast i8* %101 to %struct.radius_attr_hdr*
  store %struct.radius_attr_hdr* %102, %struct.radius_attr_hdr** %8, align 8
  %103 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %8, align 8
  %104 = getelementptr inbounds %struct.radius_attr_hdr, %struct.radius_attr_hdr* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = load i8*, i8** %11, align 8
  %108 = load i8*, i8** %10, align 8
  %109 = ptrtoint i8* %107 to i64
  %110 = ptrtoint i8* %108 to i64
  %111 = sub i64 %109, %110
  %112 = icmp sgt i64 %106, %111
  br i1 %112, label %119, label %113

113:                                              ; preds = %100
  %114 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %8, align 8
  %115 = getelementptr inbounds %struct.radius_attr_hdr, %struct.radius_attr_hdr* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = sext i32 %116 to i64
  %118 = icmp ult i64 %117, 4
  br i1 %118, label %119, label %120

119:                                              ; preds = %113, %100
  br label %135

120:                                              ; preds = %113
  %121 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %122 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %8, align 8
  %123 = call i64 @radius_msg_add_attr_to_array(%struct.radius_msg* %121, %struct.radius_attr_hdr* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %120
  br label %135

126:                                              ; preds = %120
  %127 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %8, align 8
  %128 = getelementptr inbounds %struct.radius_attr_hdr, %struct.radius_attr_hdr* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i8*, i8** %10, align 8
  %131 = sext i32 %129 to i64
  %132 = getelementptr inbounds i8, i8* %130, i64 %131
  store i8* %132, i8** %10, align 8
  br label %88

133:                                              ; preds = %88
  %134 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  store %struct.radius_msg* %134, %struct.radius_msg** %3, align 8
  br label %138

135:                                              ; preds = %125, %119, %99
  %136 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %137 = call i32 @radius_msg_free(%struct.radius_msg* %136)
  store %struct.radius_msg* null, %struct.radius_msg** %3, align 8
  br label %138

138:                                              ; preds = %135, %133, %63, %48, %31, %17
  %139 = load %struct.radius_msg*, %struct.radius_msg** %3, align 8
  ret %struct.radius_msg* %139
}

declare dso_local i64 @be_to_host16(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local %struct.radius_msg* @os_zalloc(i32) #1

declare dso_local i32* @wpabuf_alloc_copy(i32*, i64) #1

declare dso_local i64 @radius_msg_initialize(%struct.radius_msg*) #1

declare dso_local i32 @radius_msg_free(%struct.radius_msg*) #1

declare dso_local i32 @wpabuf_mhead(i32*) #1

declare dso_local i8* @wpabuf_mhead_u8(i32*) #1

declare dso_local i32 @wpabuf_len(i32*) #1

declare dso_local i64 @radius_msg_add_attr_to_array(%struct.radius_msg*, %struct.radius_attr_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
