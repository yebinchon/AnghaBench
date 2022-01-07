; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_tncs.c_tncs_build_soh_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_tncs.c_tncs_build_soh_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }

@EAP_TLV_VENDOR_SPECIFIC_TLV = common dso_local global i32 0, align 4
@EAP_VENDOR_MICROSOFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpabuf* @tncs_build_soh_request() #0 {
  %1 = alloca %struct.wpabuf*, align 8
  %2 = alloca %struct.wpabuf*, align 8
  %3 = call %struct.wpabuf* @wpabuf_alloc(i32 12)
  store %struct.wpabuf* %3, %struct.wpabuf** %2, align 8
  %4 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %5 = icmp eq %struct.wpabuf* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store %struct.wpabuf* null, %struct.wpabuf** %1, align 8
  br label %21

7:                                                ; preds = %0
  %8 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %9 = load i32, i32* @EAP_TLV_VENDOR_SPECIFIC_TLV, align 4
  %10 = call i32 @wpabuf_put_be16(%struct.wpabuf* %8, i32 %9)
  %11 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %12 = call i32 @wpabuf_put_be16(%struct.wpabuf* %11, i32 8)
  %13 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %14 = load i32, i32* @EAP_VENDOR_MICROSOFT, align 4
  %15 = call i32 @wpabuf_put_be32(%struct.wpabuf* %13, i32 %14)
  %16 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %17 = call i32 @wpabuf_put_be16(%struct.wpabuf* %16, i32 2)
  %18 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %19 = call i32 @wpabuf_put_be16(%struct.wpabuf* %18, i32 0)
  %20 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  store %struct.wpabuf* %20, %struct.wpabuf** %1, align 8
  br label %21

21:                                               ; preds = %7, %6
  %22 = load %struct.wpabuf*, %struct.wpabuf** %1, align 8
  ret %struct.wpabuf* %22
}

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i32 @wpabuf_put_be16(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_be32(%struct.wpabuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
