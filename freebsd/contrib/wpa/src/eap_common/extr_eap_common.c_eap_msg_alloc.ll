; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_common.c_eap_msg_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_common.c_eap_msg_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_hdr = type { i32, i8*, i8* }

@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_EXPANDED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpabuf* @eap_msg_alloc(i32 %0, i32 %1, i64 %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.wpabuf*, align 8
  %13 = alloca %struct.eap_hdr*, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %17 = icmp eq i32 %15, %16
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 1, i32 8
  %20 = sext i32 %19 to i64
  %21 = add i64 24, %20
  %22 = load i64, i64* %9, align 8
  %23 = add i64 %21, %22
  store i64 %23, i64* %14, align 8
  %24 = load i64, i64* %14, align 8
  %25 = call %struct.wpabuf* @wpabuf_alloc(i64 %24)
  store %struct.wpabuf* %25, %struct.wpabuf** %12, align 8
  %26 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %27 = icmp eq %struct.wpabuf* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %5
  store %struct.wpabuf* null, %struct.wpabuf** %6, align 8
  br label %61

29:                                               ; preds = %5
  %30 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %31 = call %struct.eap_hdr* @wpabuf_put(%struct.wpabuf* %30, i32 24)
  store %struct.eap_hdr* %31, %struct.eap_hdr** %13, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = load %struct.eap_hdr*, %struct.eap_hdr** %13, align 8
  %34 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %33, i32 0, i32 2
  store i8* %32, i8** %34, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = load %struct.eap_hdr*, %struct.eap_hdr** %13, align 8
  %37 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load i64, i64* %14, align 8
  %39 = call i32 @host_to_be16(i64 %38)
  %40 = load %struct.eap_hdr*, %struct.eap_hdr** %13, align 8
  %41 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %29
  %46 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @wpabuf_put_u8(%struct.wpabuf* %46, i32 %47)
  br label %59

49:                                               ; preds = %29
  %50 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %51 = load i32, i32* @EAP_TYPE_EXPANDED, align 4
  %52 = call i32 @wpabuf_put_u8(%struct.wpabuf* %50, i32 %51)
  %53 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @wpabuf_put_be24(%struct.wpabuf* %53, i32 %54)
  %56 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @wpabuf_put_be32(%struct.wpabuf* %56, i32 %57)
  br label %59

59:                                               ; preds = %49, %45
  %60 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  store %struct.wpabuf* %60, %struct.wpabuf** %6, align 8
  br label %61

61:                                               ; preds = %59, %28
  %62 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  ret %struct.wpabuf* %62
}

declare dso_local %struct.wpabuf* @wpabuf_alloc(i64) #1

declare dso_local %struct.eap_hdr* @wpabuf_put(%struct.wpabuf*, i32) #1

declare dso_local i32 @host_to_be16(i64) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_be24(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_be32(%struct.wpabuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
