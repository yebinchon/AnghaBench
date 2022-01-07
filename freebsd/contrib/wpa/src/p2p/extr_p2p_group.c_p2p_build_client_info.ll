; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_group.c_p2p_build_client_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_group.c_p2p_build_client_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.p2p_message = type { i32, i64*, i64*, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (i64*, %struct.wpabuf*, i64*, i64*)* @p2p_build_client_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @p2p_build_client_info(i64* %0, %struct.wpabuf* %1, i64* %2, i64* %3) #0 {
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.wpabuf*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.p2p_message, align 8
  %12 = alloca i64*, align 8
  %13 = alloca %struct.wpabuf*, align 8
  store i64* %0, i64** %6, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %14 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %15 = icmp eq %struct.wpabuf* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %86

17:                                               ; preds = %4
  %18 = call i32 @os_memset(%struct.p2p_message* %11, i32 0, i32 32)
  %19 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %20 = call i64 @p2p_parse_p2p_ie(%struct.wpabuf* %19, %struct.p2p_message* %11)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %11, i32 0, i32 1
  %24 = load i64*, i64** %23, align 8
  %25 = icmp eq i64* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %11, i32 0, i32 2
  %28 = load i64*, i64** %27, align 8
  %29 = icmp eq i64* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %22, %17
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %86

31:                                               ; preds = %26
  %32 = load i32, i32* @ETH_ALEN, align 4
  %33 = add nsw i32 %32, 1
  %34 = add nsw i32 %33, 1
  %35 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %11, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %34, %36
  %38 = call %struct.wpabuf* @wpabuf_alloc(i32 %37)
  store %struct.wpabuf* %38, %struct.wpabuf** %13, align 8
  %39 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %40 = icmp eq %struct.wpabuf* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %86

42:                                               ; preds = %31
  %43 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %11, i32 0, i32 1
  %44 = load i64*, i64** %43, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64*, i64** %8, align 8
  store i64 %46, i64* %47, align 8
  %48 = load i64*, i64** %9, align 8
  %49 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %11, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @ETH_ALEN, align 4
  %52 = call i32 @os_memcpy(i64* %48, i32 %50, i32 %51)
  %53 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %11, i32 0, i32 2
  %54 = load i64*, i64** %53, align 8
  store i64* %54, i64** %10, align 8
  %55 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %56 = call i64* @wpabuf_put(%struct.wpabuf* %55, i32 1)
  store i64* %56, i64** %12, align 8
  %57 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %58 = load i64*, i64** %10, align 8
  %59 = load i32, i32* @ETH_ALEN, align 4
  %60 = call i32 @wpabuf_put_data(%struct.wpabuf* %57, i64* %58, i32 %59)
  %61 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %62 = load i64*, i64** %6, align 8
  %63 = load i32, i32* @ETH_ALEN, align 4
  %64 = call i32 @wpabuf_put_data(%struct.wpabuf* %61, i64* %62, i32 %63)
  %65 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %66 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %11, i32 0, i32 1
  %67 = load i64*, i64** %66, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @wpabuf_put_u8(%struct.wpabuf* %65, i64 %69)
  %71 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %72 = load i64*, i64** %10, align 8
  %73 = load i32, i32* @ETH_ALEN, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  %76 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %11, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @ETH_ALEN, align 4
  %79 = sub nsw i32 %77, %78
  %80 = call i32 @wpabuf_put_data(%struct.wpabuf* %71, i64* %75, i32 %79)
  %81 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %82 = call i64 @wpabuf_len(%struct.wpabuf* %81)
  %83 = sub nsw i64 %82, 1
  %84 = load i64*, i64** %12, align 8
  store i64 %83, i64* %84, align 8
  %85 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  store %struct.wpabuf* %85, %struct.wpabuf** %5, align 8
  br label %86

86:                                               ; preds = %42, %41, %30, %16
  %87 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  ret %struct.wpabuf* %87
}

declare dso_local i32 @os_memset(%struct.p2p_message*, i32, i32) #1

declare dso_local i64 @p2p_parse_p2p_ie(%struct.wpabuf*, %struct.p2p_message*) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i32 @os_memcpy(i64*, i32, i32) #1

declare dso_local i64* @wpabuf_put(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i64*, i32) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i64) #1

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
