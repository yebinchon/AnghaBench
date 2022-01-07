; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_ttls.c_eap_ttls_valid_session.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_ttls.c_eap_ttls_valid_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32, i32, i32 }
%struct.eap_ttls_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.wpabuf = type { i32 }

@EAP_TYPE_TTLS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, %struct.eap_ttls_data*)* @eap_ttls_valid_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_ttls_valid_session(%struct.eap_sm* %0, %struct.eap_ttls_data* %1) #0 {
  %3 = alloca %struct.eap_sm*, align 8
  %4 = alloca %struct.eap_ttls_data*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %3, align 8
  store %struct.eap_ttls_data* %1, %struct.eap_ttls_data** %4, align 8
  %7 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %8 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %59

12:                                               ; preds = %2
  %13 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %14 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 2, %15
  %17 = call %struct.wpabuf* @wpabuf_alloc(i32 %16)
  store %struct.wpabuf* %17, %struct.wpabuf** %5, align 8
  %18 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %19 = icmp ne %struct.wpabuf* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %12
  br label %59

21:                                               ; preds = %12
  %22 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %23 = load i32, i32* @EAP_TYPE_TTLS, align 4
  %24 = call i32 @wpabuf_put_u8(%struct.wpabuf* %22, i32 %23)
  %25 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %26 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %49

29:                                               ; preds = %21
  %30 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %31 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp sle i32 %32, 255
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %36 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %6, align 4
  br label %39

38:                                               ; preds = %29
  store i32 255, i32* %6, align 4
  br label %39

39:                                               ; preds = %38, %34
  %40 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @wpabuf_put_u8(%struct.wpabuf* %40, i32 %41)
  %43 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %44 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %45 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @wpabuf_put_data(%struct.wpabuf* %43, i32 %46, i32 %47)
  br label %52

49:                                               ; preds = %21
  %50 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %51 = call i32 @wpabuf_put_u8(%struct.wpabuf* %50, i32 0)
  br label %52

52:                                               ; preds = %49, %39
  %53 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %4, align 8
  %54 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %58 = call i32 @tls_connection_set_success_data(i32 %56, %struct.wpabuf* %57)
  br label %59

59:                                               ; preds = %52, %20, %11
  ret void
}

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i32, i32) #1

declare dso_local i32 @tls_connection_set_success_data(i32, %struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
