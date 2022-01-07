; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_build.c_p2p_buf_add_operating_channel.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_build.c_p2p_buf_add_operating_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }

@P2P_ATTR_OPERATING_CHANNEL = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"P2P: * Operating Channel: Regulatory Class %u Channel %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @p2p_buf_add_operating_channel(%struct.wpabuf* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.wpabuf* %0, %struct.wpabuf** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %10 = load i32, i32* @P2P_ATTR_OPERATING_CHANNEL, align 4
  %11 = call i32 @wpabuf_put_u8(%struct.wpabuf* %9, i32 %10)
  %12 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %13 = call i32 @wpabuf_put_le16(%struct.wpabuf* %12, i32 5)
  %14 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @wpabuf_put_data(%struct.wpabuf* %14, i8* %15, i32 3)
  %17 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @wpabuf_put_u8(%struct.wpabuf* %17, i32 %18)
  %20 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @wpabuf_put_u8(%struct.wpabuf* %20, i32 %21)
  %23 = load i32, i32* @MSG_DEBUG, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @wpa_printf(i32 %23, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25)
  ret void
}

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_le16(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i8*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
