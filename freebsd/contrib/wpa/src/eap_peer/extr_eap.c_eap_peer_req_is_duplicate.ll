; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap.c_eap_peer_req_is_duplicate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap.c_eap_peer_req_is_duplicate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i64, i64, i32, i32, i64, i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"EAP: AS used the same Id again, but EAP packets were not identical\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"EAP: workaround - assume this is not a duplicate packet\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*)* @eap_peer_req_is_duplicate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_peer_req_is_duplicate(%struct.eap_sm* %0) #0 {
  %2 = alloca %struct.eap_sm*, align 8
  %3 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %2, align 8
  %4 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %5 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %8 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %6, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %13 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %12, i32 0, i32 5
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br label %16

16:                                               ; preds = %11, %1
  %17 = phi i1 [ false, %1 ], [ %15, %11 ]
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %3, align 4
  %19 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %20 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %16
  %24 = load i32, i32* %3, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %23
  %27 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %28 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %31 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @os_memcmp(i32 %29, i32 %32, i32 20)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %26
  %36 = load i32, i32* @MSG_DEBUG, align 4
  %37 = call i32 @wpa_printf(i32 %36, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @MSG_DEBUG, align 4
  %39 = call i32 @wpa_printf(i32 %38, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %35, %26, %23, %16
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i64 @os_memcmp(i32, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
