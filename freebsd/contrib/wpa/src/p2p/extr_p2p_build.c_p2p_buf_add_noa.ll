; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_build.c_p2p_buf_add_noa.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_build.c_p2p_buf_add_noa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.p2p_noa_desc = type { i32 }

@P2P_ATTR_NOTICE_OF_ABSENCE = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"P2P: * Notice of Absence\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @p2p_buf_add_noa(%struct.wpabuf* %0, i32 %1, i32 %2, i32 %3, %struct.p2p_noa_desc* %4, %struct.p2p_noa_desc* %5) #0 {
  %7 = alloca %struct.wpabuf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.p2p_noa_desc*, align 8
  %12 = alloca %struct.p2p_noa_desc*, align 8
  store %struct.wpabuf* %0, %struct.wpabuf** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.p2p_noa_desc* %4, %struct.p2p_noa_desc** %11, align 8
  store %struct.p2p_noa_desc* %5, %struct.p2p_noa_desc** %12, align 8
  %13 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %14 = load i32, i32* @P2P_ATTR_NOTICE_OF_ABSENCE, align 4
  %15 = call i32 @wpabuf_put_u8(%struct.wpabuf* %13, i32 %14)
  %16 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %17 = load %struct.p2p_noa_desc*, %struct.p2p_noa_desc** %11, align 8
  %18 = icmp ne %struct.p2p_noa_desc* %17, null
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 13, i32 0
  %21 = add nsw i32 2, %20
  %22 = load %struct.p2p_noa_desc*, %struct.p2p_noa_desc** %12, align 8
  %23 = icmp ne %struct.p2p_noa_desc* %22, null
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 13, i32 0
  %26 = add nsw i32 %21, %25
  %27 = call i32 @wpabuf_put_le16(%struct.wpabuf* %16, i32 %26)
  %28 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @wpabuf_put_u8(%struct.wpabuf* %28, i32 %29)
  %31 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 128, i32 0
  %36 = load i32, i32* %10, align 4
  %37 = and i32 %36, 127
  %38 = or i32 %35, %37
  %39 = call i32 @wpabuf_put_u8(%struct.wpabuf* %31, i32 %38)
  %40 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %41 = load %struct.p2p_noa_desc*, %struct.p2p_noa_desc** %11, align 8
  %42 = call i32 @p2p_buf_add_noa_desc(%struct.wpabuf* %40, %struct.p2p_noa_desc* %41)
  %43 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %44 = load %struct.p2p_noa_desc*, %struct.p2p_noa_desc** %12, align 8
  %45 = call i32 @p2p_buf_add_noa_desc(%struct.wpabuf* %43, %struct.p2p_noa_desc* %44)
  %46 = load i32, i32* @MSG_DEBUG, align 4
  %47 = call i32 @wpa_printf(i32 %46, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_le16(%struct.wpabuf*, i32) #1

declare dso_local i32 @p2p_buf_add_noa_desc(%struct.wpabuf*, %struct.p2p_noa_desc*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
