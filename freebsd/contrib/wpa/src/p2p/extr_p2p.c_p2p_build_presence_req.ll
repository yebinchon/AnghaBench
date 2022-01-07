; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_build_presence_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_build_presence_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.p2p_noa_desc = type { i32, i8*, i8* }

@P2P_PRESENCE_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (i8*, i8*, i8*, i8*)* @p2p_build_presence_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @p2p_build_presence_req(i8* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.wpabuf*, align 8
  %11 = alloca %struct.p2p_noa_desc, align 8
  %12 = alloca %struct.p2p_noa_desc, align 8
  %13 = alloca %struct.p2p_noa_desc*, align 8
  %14 = alloca %struct.p2p_noa_desc*, align 8
  %15 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.p2p_noa_desc* null, %struct.p2p_noa_desc** %13, align 8
  store %struct.p2p_noa_desc* null, %struct.p2p_noa_desc** %14, align 8
  %16 = call %struct.wpabuf* @wpabuf_alloc(i32 100)
  store %struct.wpabuf* %16, %struct.wpabuf** %10, align 8
  %17 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %18 = icmp eq %struct.wpabuf* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %60

20:                                               ; preds = %4
  %21 = load i8*, i8** %6, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i8*, i8** %7, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %46

26:                                               ; preds = %23, %20
  %27 = call i32 @os_memset(%struct.p2p_noa_desc* %11, i32 0, i32 24)
  %28 = getelementptr inbounds %struct.p2p_noa_desc, %struct.p2p_noa_desc* %11, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = getelementptr inbounds %struct.p2p_noa_desc, %struct.p2p_noa_desc* %11, i32 0, i32 2
  store i8* %29, i8** %30, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = getelementptr inbounds %struct.p2p_noa_desc, %struct.p2p_noa_desc* %11, i32 0, i32 1
  store i8* %31, i8** %32, align 8
  store %struct.p2p_noa_desc* %11, %struct.p2p_noa_desc** %13, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %26
  %36 = load i8*, i8** %9, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %35, %26
  %39 = call i32 @os_memset(%struct.p2p_noa_desc* %12, i32 0, i32 24)
  %40 = getelementptr inbounds %struct.p2p_noa_desc, %struct.p2p_noa_desc* %12, i32 0, i32 0
  store i32 2, i32* %40, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds %struct.p2p_noa_desc, %struct.p2p_noa_desc* %12, i32 0, i32 2
  store i8* %41, i8** %42, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = getelementptr inbounds %struct.p2p_noa_desc, %struct.p2p_noa_desc* %12, i32 0, i32 1
  store i8* %43, i8** %44, align 8
  store %struct.p2p_noa_desc* %12, %struct.p2p_noa_desc** %14, align 8
  br label %45

45:                                               ; preds = %38, %35
  br label %46

46:                                               ; preds = %45, %23
  %47 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %48 = load i32, i32* @P2P_PRESENCE_REQ, align 4
  %49 = call i32 @p2p_buf_add_action_hdr(%struct.wpabuf* %47, i32 %48, i32 1)
  %50 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %51 = call i32* @p2p_buf_add_ie_hdr(%struct.wpabuf* %50)
  store i32* %51, i32** %15, align 8
  %52 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %53 = load %struct.p2p_noa_desc*, %struct.p2p_noa_desc** %13, align 8
  %54 = load %struct.p2p_noa_desc*, %struct.p2p_noa_desc** %14, align 8
  %55 = call i32 @p2p_buf_add_noa(%struct.wpabuf* %52, i32 0, i32 0, i32 0, %struct.p2p_noa_desc* %53, %struct.p2p_noa_desc* %54)
  %56 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %57 = load i32*, i32** %15, align 8
  %58 = call i32 @p2p_buf_update_ie_hdr(%struct.wpabuf* %56, i32* %57)
  %59 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  store %struct.wpabuf* %59, %struct.wpabuf** %5, align 8
  br label %60

60:                                               ; preds = %46, %19
  %61 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  ret %struct.wpabuf* %61
}

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i32 @os_memset(%struct.p2p_noa_desc*, i32, i32) #1

declare dso_local i32 @p2p_buf_add_action_hdr(%struct.wpabuf*, i32, i32) #1

declare dso_local i32* @p2p_buf_add_ie_hdr(%struct.wpabuf*) #1

declare dso_local i32 @p2p_buf_add_noa(%struct.wpabuf*, i32, i32, i32, %struct.p2p_noa_desc*, %struct.p2p_noa_desc*) #1

declare dso_local i32 @p2p_buf_update_ie_hdr(%struct.wpabuf*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
