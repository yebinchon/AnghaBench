; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_upnp_event.c_event_build_message.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_upnp_event.c_event_build_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.wps_event_ = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"NOTIFY %s HTTP/1.1\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"SERVER: Unspecified, UPnP/1.0, Unspecified\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"HOST: %s\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [80 x i8] c"CONTENT-TYPE: text/xml; charset=\22utf-8\22\0D\0ANT: upnp:event\0D\0ANTS: upnp:propchange\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"SID: uuid:\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"SEQ: %u\0D\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"CONTENT-LENGTH: %d\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.wps_event_*)* @event_build_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @event_build_message(%struct.wps_event_* %0) #0 {
  %2 = alloca %struct.wpabuf*, align 8
  %3 = alloca %struct.wps_event_*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca i8*, align 8
  store %struct.wps_event_* %0, %struct.wps_event_** %3, align 8
  %6 = load %struct.wps_event_*, %struct.wps_event_** %3, align 8
  %7 = getelementptr inbounds %struct.wps_event_, %struct.wps_event_* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @wpabuf_len(i32 %8)
  %10 = add nsw i64 1000, %9
  %11 = call %struct.wpabuf* @wpabuf_alloc(i64 %10)
  store %struct.wpabuf* %11, %struct.wpabuf** %4, align 8
  %12 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %13 = icmp eq %struct.wpabuf* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %71

15:                                               ; preds = %1
  %16 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %17 = load %struct.wps_event_*, %struct.wps_event_** %3, align 8
  %18 = getelementptr inbounds %struct.wps_event_, %struct.wps_event_* %17, i32 0, i32 3
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @wpabuf_printf(%struct.wpabuf* %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %24 = call i32 @wpabuf_put_str(%struct.wpabuf* %23, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %25 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %26 = load %struct.wps_event_*, %struct.wps_event_** %3, align 8
  %27 = getelementptr inbounds %struct.wps_event_, %struct.wps_event_* %26, i32 0, i32 3
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @wpabuf_printf(%struct.wpabuf* %25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  %32 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %33 = call i32 @wpabuf_put_str(%struct.wpabuf* %32, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.3, i64 0, i64 0))
  %34 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %35 = call i32 @wpabuf_put_str(%struct.wpabuf* %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %36 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %37 = call i8* @wpabuf_put(%struct.wpabuf* %36, i32 0)
  store i8* %37, i8** %5, align 8
  %38 = load %struct.wps_event_*, %struct.wps_event_** %3, align 8
  %39 = getelementptr inbounds %struct.wps_event_, %struct.wps_event_* %38, i32 0, i32 2
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @uuid_bin2str(i32 %42, i8* %43, i32 80)
  %45 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = call i32 @os_strlen(i8* %46)
  %48 = call i8* @wpabuf_put(%struct.wpabuf* %45, i32 %47)
  %49 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %50 = call i32 @wpabuf_put_str(%struct.wpabuf* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %51 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %52 = load %struct.wps_event_*, %struct.wps_event_** %3, align 8
  %53 = getelementptr inbounds %struct.wps_event_, %struct.wps_event_* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @wpabuf_printf(%struct.wpabuf* %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %54)
  %56 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %57 = load %struct.wps_event_*, %struct.wps_event_** %3, align 8
  %58 = getelementptr inbounds %struct.wps_event_, %struct.wps_event_* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @wpabuf_len(i32 %59)
  %61 = trunc i64 %60 to i32
  %62 = call i32 @wpabuf_printf(%struct.wpabuf* %56, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %61)
  %63 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %64 = call i32 @wpabuf_put_str(%struct.wpabuf* %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %65 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %66 = load %struct.wps_event_*, %struct.wps_event_** %3, align 8
  %67 = getelementptr inbounds %struct.wps_event_, %struct.wps_event_* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @wpabuf_put_buf(%struct.wpabuf* %65, i32 %68)
  %70 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  store %struct.wpabuf* %70, %struct.wpabuf** %2, align 8
  br label %71

71:                                               ; preds = %15, %14
  %72 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  ret %struct.wpabuf* %72
}

declare dso_local %struct.wpabuf* @wpabuf_alloc(i64) #1

declare dso_local i64 @wpabuf_len(i32) #1

declare dso_local i32 @wpabuf_printf(%struct.wpabuf*, i8*, i32) #1

declare dso_local i32 @wpabuf_put_str(%struct.wpabuf*, i8*) #1

declare dso_local i8* @wpabuf_put(%struct.wpabuf*, i32) #1

declare dso_local i32 @uuid_bin2str(i32, i8*, i32) #1

declare dso_local i32 @os_strlen(i8*) #1

declare dso_local i32 @wpabuf_put_buf(%struct.wpabuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
