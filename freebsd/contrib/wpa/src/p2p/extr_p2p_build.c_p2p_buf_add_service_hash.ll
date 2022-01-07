; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_build.c_p2p_buf_add_service_hash.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_build.c_p2p_buf_add_service_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.p2p_data = type { i32, i32 }

@P2P_ATTR_SERVICE_HASH = common dso_local global i32 0, align 4
@P2PS_HASH_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"P2P: * Service Hash\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @p2p_buf_add_service_hash(%struct.wpabuf* %0, %struct.p2p_data* %1) #0 {
  %3 = alloca %struct.wpabuf*, align 8
  %4 = alloca %struct.p2p_data*, align 8
  store %struct.wpabuf* %0, %struct.wpabuf** %3, align 8
  store %struct.p2p_data* %1, %struct.p2p_data** %4, align 8
  %5 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %6 = icmp ne %struct.p2p_data* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %39

8:                                                ; preds = %2
  %9 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %10 = load i32, i32* @P2P_ATTR_SERVICE_HASH, align 4
  %11 = call i32 @wpabuf_put_u8(%struct.wpabuf* %9, i32 %10)
  %12 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %13 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %14 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @P2PS_HASH_LEN, align 4
  %17 = mul nsw i32 %15, %16
  %18 = call i32 @wpabuf_put_le16(%struct.wpabuf* %12, i32 %17)
  %19 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %20 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %21 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %24 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @P2PS_HASH_LEN, align 4
  %27 = mul nsw i32 %25, %26
  %28 = call i32 @wpabuf_put_data(%struct.wpabuf* %19, i32 %22, i32 %27)
  %29 = load i32, i32* @MSG_DEBUG, align 4
  %30 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %31 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %34 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @P2PS_HASH_LEN, align 4
  %37 = mul nsw i32 %35, %36
  %38 = call i32 @wpa_hexdump(i32 %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %37)
  br label %39

39:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_le16(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i32, i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
