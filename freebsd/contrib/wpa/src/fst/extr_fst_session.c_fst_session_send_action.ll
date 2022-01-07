; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/fst/extr_fst_session.c_fst_session_send_action.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/fst/extr_fst_session.c_fst_session_send_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fst_session = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, %struct.fst_iface*, %struct.fst_iface* }
%struct.fst_iface = type { i32 }
%struct.wpabuf = type { i32 }

@FST_ACTION_MAX_SUPPORTED = common dso_local global i64 0, align 8
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"no %s interface for FST Action '%s' sending\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"old\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@fst_action_names = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [64 x i8] c"cannot allocate buffer of %zu bytes for FST Action '%s' sending\00", align 1
@WLAN_ACTION_FST = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"failed to send FST Action '%s'\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"FST Action '%s' sent\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fst_session*, i64, i8*, i64, %struct.wpabuf*)* @fst_session_send_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fst_session_send_action(%struct.fst_session* %0, i64 %1, i8* %2, i64 %3, %struct.wpabuf* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.fst_session*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.wpabuf*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.wpabuf*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.fst_iface*, align 8
  store %struct.fst_session* %0, %struct.fst_session** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.wpabuf* %4, %struct.wpabuf** %11, align 8
  %17 = load i64, i64* %8, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %5
  %20 = load %struct.fst_session*, %struct.fst_session** %7, align 8
  %21 = getelementptr inbounds %struct.fst_session, %struct.fst_session* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 3
  %23 = load %struct.fst_iface*, %struct.fst_iface** %22, align 8
  br label %29

24:                                               ; preds = %5
  %25 = load %struct.fst_session*, %struct.fst_session** %7, align 8
  %26 = getelementptr inbounds %struct.fst_session, %struct.fst_session* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load %struct.fst_iface*, %struct.fst_iface** %27, align 8
  br label %29

29:                                               ; preds = %24, %19
  %30 = phi %struct.fst_iface* [ %23, %19 ], [ %28, %24 ]
  store %struct.fst_iface* %30, %struct.fst_iface** %16, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = icmp ne i8* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 @WPA_ASSERT(i32 %33)
  %35 = load i64, i64* %10, align 8
  %36 = icmp ne i64 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @WPA_ASSERT(i32 %37)
  %39 = load i8*, i8** %9, align 8
  %40 = bitcast i8* %39 to i64*
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %15, align 8
  %42 = load i64, i64* %15, align 8
  %43 = load i64, i64* @FST_ACTION_MAX_SUPPORTED, align 8
  %44 = icmp ule i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @WPA_ASSERT(i32 %45)
  %47 = load %struct.fst_iface*, %struct.fst_iface** %16, align 8
  %48 = icmp ne %struct.fst_iface* %47, null
  br i1 %48, label %61, label %49

49:                                               ; preds = %29
  %50 = load %struct.fst_session*, %struct.fst_session** %7, align 8
  %51 = load i32, i32* @MSG_ERROR, align 4
  %52 = load i64, i64* %8, align 8
  %53 = icmp ne i64 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %56 = load i32*, i32** @fst_action_names, align 8
  %57 = load i64, i64* %15, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (%struct.fst_session*, i32, i8*, ...) @fst_printf_session(%struct.fst_session* %50, i32 %51, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %55, i32 %59)
  store i32 -1, i32* %6, align 4
  br label %141

61:                                               ; preds = %29
  %62 = load i64, i64* %10, align 8
  %63 = add i64 8, %62
  store i64 %63, i64* %12, align 8
  %64 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %65 = icmp ne %struct.wpabuf* %64, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %68 = call i64 @wpabuf_size(%struct.wpabuf* %67)
  %69 = load i64, i64* %12, align 8
  %70 = add i64 %69, %68
  store i64 %70, i64* %12, align 8
  br label %71

71:                                               ; preds = %66, %61
  %72 = load i64, i64* %12, align 8
  %73 = call %struct.wpabuf* @wpabuf_alloc(i64 %72)
  store %struct.wpabuf* %73, %struct.wpabuf** %14, align 8
  %74 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %75 = icmp ne %struct.wpabuf* %74, null
  br i1 %75, label %85, label %76

76:                                               ; preds = %71
  %77 = load %struct.fst_session*, %struct.fst_session** %7, align 8
  %78 = load i32, i32* @MSG_ERROR, align 4
  %79 = load i64, i64* %12, align 8
  %80 = load i32*, i32** @fst_action_names, align 8
  %81 = load i64, i64* %15, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (%struct.fst_session*, i32, i8*, ...) @fst_printf_session(%struct.fst_session* %77, i32 %78, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i64 %79, i32 %83)
  store i32 -1, i32* %6, align 4
  br label %141

85:                                               ; preds = %71
  %86 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %87 = load i32, i32* @WLAN_ACTION_FST, align 4
  %88 = call i32 @wpabuf_put_u8(%struct.wpabuf* %86, i32 %87)
  %89 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %90 = load i8*, i8** %9, align 8
  %91 = load i64, i64* %10, align 8
  %92 = call i32 @wpabuf_put_data(%struct.wpabuf* %89, i8* %90, i64 %91)
  %93 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %94 = icmp ne %struct.wpabuf* %93, null
  br i1 %94, label %95, label %99

95:                                               ; preds = %85
  %96 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %97 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %98 = call i32 @wpabuf_put_buf(%struct.wpabuf* %96, %struct.wpabuf* %97)
  br label %99

99:                                               ; preds = %95, %85
  %100 = load %struct.fst_iface*, %struct.fst_iface** %16, align 8
  %101 = load i64, i64* %8, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %99
  %104 = load %struct.fst_session*, %struct.fst_session** %7, align 8
  %105 = getelementptr inbounds %struct.fst_session, %struct.fst_session* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  br label %113

108:                                              ; preds = %99
  %109 = load %struct.fst_session*, %struct.fst_session** %7, align 8
  %110 = getelementptr inbounds %struct.fst_session, %struct.fst_session* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  br label %113

113:                                              ; preds = %108, %103
  %114 = phi i32 [ %107, %103 ], [ %112, %108 ]
  %115 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %116 = call i32 @fst_iface_send_action(%struct.fst_iface* %100, i32 %114, %struct.wpabuf* %115)
  store i32 %116, i32* %13, align 4
  %117 = load i32, i32* %13, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %113
  %120 = load %struct.fst_session*, %struct.fst_session** %7, align 8
  %121 = load %struct.fst_iface*, %struct.fst_iface** %16, align 8
  %122 = load i32, i32* @MSG_ERROR, align 4
  %123 = load i32*, i32** @fst_action_names, align 8
  %124 = load i64, i64* %15, align 8
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @fst_printf_siface(%struct.fst_session* %120, %struct.fst_iface* %121, i32 %122, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %126)
  br label %137

128:                                              ; preds = %113
  %129 = load %struct.fst_session*, %struct.fst_session** %7, align 8
  %130 = load %struct.fst_iface*, %struct.fst_iface** %16, align 8
  %131 = load i32, i32* @MSG_DEBUG, align 4
  %132 = load i32*, i32** @fst_action_names, align 8
  %133 = load i64, i64* %15, align 8
  %134 = getelementptr inbounds i32, i32* %132, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @fst_printf_siface(%struct.fst_session* %129, %struct.fst_iface* %130, i32 %131, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %135)
  br label %137

137:                                              ; preds = %128, %119
  %138 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %139 = call i32 @wpabuf_free(%struct.wpabuf* %138)
  %140 = load i32, i32* %13, align 4
  store i32 %140, i32* %6, align 4
  br label %141

141:                                              ; preds = %137, %76, %49
  %142 = load i32, i32* %6, align 4
  ret i32 %142
}

declare dso_local i32 @WPA_ASSERT(i32) #1

declare dso_local i32 @fst_printf_session(%struct.fst_session*, i32, i8*, ...) #1

declare dso_local i64 @wpabuf_size(%struct.wpabuf*) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i64) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i8*, i64) #1

declare dso_local i32 @wpabuf_put_buf(%struct.wpabuf*, %struct.wpabuf*) #1

declare dso_local i32 @fst_iface_send_action(%struct.fst_iface*, i32, %struct.wpabuf*) #1

declare dso_local i32 @fst_printf_siface(%struct.fst_session*, %struct.fst_iface*, i32, i8*, i32) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
