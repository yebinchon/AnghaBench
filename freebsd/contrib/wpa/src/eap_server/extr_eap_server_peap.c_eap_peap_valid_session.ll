; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_peap.c_eap_peap_valid_session.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_peap.c_eap_peap_valid_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32, i32, i32, i32 }
%struct.eap_peap_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.wpabuf = type { i32 }

@EAP_TYPE_PEAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, %struct.eap_peap_data*)* @eap_peap_valid_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_peap_valid_session(%struct.eap_sm* %0, %struct.eap_peap_data* %1) #0 {
  %3 = alloca %struct.eap_sm*, align 8
  %4 = alloca %struct.eap_peap_data*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %3, align 8
  store %struct.eap_peap_data* %1, %struct.eap_peap_data** %4, align 8
  %7 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %8 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  %12 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %13 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.eap_peap_data*, %struct.eap_peap_data** %4, align 8
  %16 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @tls_connection_resumed(i32 %14, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %11, %2
  br label %69

22:                                               ; preds = %11
  %23 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %24 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 2, %25
  %27 = call %struct.wpabuf* @wpabuf_alloc(i32 %26)
  store %struct.wpabuf* %27, %struct.wpabuf** %5, align 8
  %28 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %29 = icmp ne %struct.wpabuf* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %22
  br label %69

31:                                               ; preds = %22
  %32 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %33 = load i32, i32* @EAP_TYPE_PEAP, align 4
  %34 = call i32 @wpabuf_put_u8(%struct.wpabuf* %32, i32 %33)
  %35 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %36 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %59

39:                                               ; preds = %31
  %40 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %41 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp sle i32 %42, 255
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %46 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %6, align 4
  br label %49

48:                                               ; preds = %39
  store i32 255, i32* %6, align 4
  br label %49

49:                                               ; preds = %48, %44
  %50 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @wpabuf_put_u8(%struct.wpabuf* %50, i32 %51)
  %53 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %54 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %55 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @wpabuf_put_data(%struct.wpabuf* %53, i32 %56, i32 %57)
  br label %62

59:                                               ; preds = %31
  %60 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %61 = call i32 @wpabuf_put_u8(%struct.wpabuf* %60, i32 0)
  br label %62

62:                                               ; preds = %59, %49
  %63 = load %struct.eap_peap_data*, %struct.eap_peap_data** %4, align 8
  %64 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %68 = call i32 @tls_connection_set_success_data(i32 %66, %struct.wpabuf* %67)
  br label %69

69:                                               ; preds = %62, %30, %21
  ret void
}

declare dso_local i64 @tls_connection_resumed(i32, i32) #1

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
