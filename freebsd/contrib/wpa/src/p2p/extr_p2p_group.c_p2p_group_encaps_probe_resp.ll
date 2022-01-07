; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_group.c_p2p_group_encaps_probe_resp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_group.c_p2p_group_encaps_probe_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }

@WLAN_EID_VENDOR_SPECIFIC = common dso_local global i32 0, align 4
@P2P_IE_VENDOR_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.wpabuf*)* @p2p_group_encaps_probe_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @p2p_group_encaps_probe_resp(%struct.wpabuf* %0) #0 {
  %2 = alloca %struct.wpabuf*, align 8
  %3 = alloca %struct.wpabuf*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.wpabuf* %0, %struct.wpabuf** %3, align 8
  %9 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %10 = icmp eq %struct.wpabuf* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %63

12:                                               ; preds = %1
  %13 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %14 = call i64 @wpabuf_len(%struct.wpabuf* %13)
  %15 = add i64 %14, 100
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = call %struct.wpabuf* @wpabuf_alloc(i64 %16)
  store %struct.wpabuf* %17, %struct.wpabuf** %4, align 8
  %18 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %19 = icmp eq %struct.wpabuf* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %63

21:                                               ; preds = %12
  %22 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %23 = call i32* @wpabuf_head(%struct.wpabuf* %22)
  store i32* %23, i32** %5, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %26 = call i64 @wpabuf_len(%struct.wpabuf* %25)
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  store i32* %27, i32** %6, align 8
  br label %28

28:                                               ; preds = %42, %21
  %29 = load i32*, i32** %6, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = icmp ugt i32* %29, %30
  br i1 %31, label %32, label %61

32:                                               ; preds = %28
  %33 = load i32*, i32** %6, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = ptrtoint i32* %33 to i64
  %36 = ptrtoint i32* %34 to i64
  %37 = sub i64 %35, %36
  %38 = sdiv exact i64 %37, 4
  store i64 %38, i64* %8, align 8
  %39 = load i64, i64* %8, align 8
  %40 = icmp ugt i64 %39, 251
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  store i64 251, i64* %8, align 8
  br label %42

42:                                               ; preds = %41, %32
  %43 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %44 = load i32, i32* @WLAN_EID_VENDOR_SPECIFIC, align 4
  %45 = call i32 @wpabuf_put_u8(%struct.wpabuf* %43, i32 %44)
  %46 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %47 = load i64, i64* %8, align 8
  %48 = add i64 4, %47
  %49 = trunc i64 %48 to i32
  %50 = call i32 @wpabuf_put_u8(%struct.wpabuf* %46, i32 %49)
  %51 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %52 = load i32, i32* @P2P_IE_VENDOR_TYPE, align 4
  %53 = call i32 @wpabuf_put_be32(%struct.wpabuf* %51, i32 %52)
  %54 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %55 = load i32*, i32** %5, align 8
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @wpabuf_put_data(%struct.wpabuf* %54, i32* %55, i64 %56)
  %58 = load i64, i64* %8, align 8
  %59 = load i32*, i32** %5, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 %58
  store i32* %60, i32** %5, align 8
  br label %28

61:                                               ; preds = %28
  %62 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  store %struct.wpabuf* %62, %struct.wpabuf** %2, align 8
  br label %63

63:                                               ; preds = %61, %20, %11
  %64 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  ret %struct.wpabuf* %64
}

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i64) #1

declare dso_local i32* @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_be32(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
