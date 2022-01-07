; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_upnp_web.c_http_put_reply_code.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_upnp_web.c_http_put_reply_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"HTTP/1.1 \00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"200 OK\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"400 Bad request\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"412 Precondition failed\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"501 Unimplemented\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"500 Internal server error\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpabuf*, i32)* @http_put_reply_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_put_reply_code(%struct.wpabuf* %0, i32 %1) #0 {
  %3 = alloca %struct.wpabuf*, align 8
  %4 = alloca i32, align 4
  store %struct.wpabuf* %0, %struct.wpabuf** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %6 = call i32 @wpabuf_put_str(%struct.wpabuf* %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %21 [
    i32 130, label %8
    i32 132, label %11
    i32 129, label %14
    i32 128, label %17
    i32 131, label %20
  ]

8:                                                ; preds = %2
  %9 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %10 = call i32 @wpabuf_put_str(%struct.wpabuf* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %24

11:                                               ; preds = %2
  %12 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %13 = call i32 @wpabuf_put_str(%struct.wpabuf* %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %24

14:                                               ; preds = %2
  %15 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %16 = call i32 @wpabuf_put_str(%struct.wpabuf* %15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %24

17:                                               ; preds = %2
  %18 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %19 = call i32 @wpabuf_put_str(%struct.wpabuf* %18, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %24

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %2, %20
  %22 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %23 = call i32 @wpabuf_put_str(%struct.wpabuf* %22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %17, %14, %11, %8
  ret void
}

declare dso_local i32 @wpabuf_put_str(%struct.wpabuf*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
