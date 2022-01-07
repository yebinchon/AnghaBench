; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_peap.c_eap_peap_get_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_peap.c_eap_peap_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_peap_data = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"EAP-PEAPv%d Phase2 method=%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, i8*, i8*, i64, i32)* @eap_peap_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_peap_get_status(%struct.eap_sm* %0, i8* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.eap_sm*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.eap_peap_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = bitcast i8* %15 to %struct.eap_peap_data*
  store %struct.eap_peap_data* %16, %struct.eap_peap_data** %12, align 8
  %17 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %18 = load %struct.eap_peap_data*, %struct.eap_peap_data** %12, align 8
  %19 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %18, i32 0, i32 2
  %20 = load i8*, i8** %9, align 8
  %21 = load i64, i64* %10, align 8
  %22 = load i32, i32* %11, align 4
  %23 = call i32 @eap_peer_tls_status(%struct.eap_sm* %17, i32* %19, i8* %20, i64 %21, i32 %22)
  store i32 %23, i32* %13, align 4
  %24 = load %struct.eap_peap_data*, %struct.eap_peap_data** %12, align 8
  %25 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = icmp ne %struct.TYPE_2__* %26, null
  br i1 %27, label %28, label %59

28:                                               ; preds = %5
  %29 = load i8*, i8** %9, align 8
  %30 = load i32, i32* %13, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = load i64, i64* %10, align 8
  %34 = load i32, i32* %13, align 4
  %35 = sext i32 %34 to i64
  %36 = sub i64 %33, %35
  %37 = load %struct.eap_peap_data*, %struct.eap_peap_data** %12, align 8
  %38 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.eap_peap_data*, %struct.eap_peap_data** %12, align 8
  %41 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @os_snprintf(i8* %32, i64 %36, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %44)
  store i32 %45, i32* %14, align 4
  %46 = load i64, i64* %10, align 8
  %47 = load i32, i32* %13, align 4
  %48 = sext i32 %47 to i64
  %49 = sub i64 %46, %48
  %50 = load i32, i32* %14, align 4
  %51 = call i64 @os_snprintf_error(i64 %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %28
  %54 = load i32, i32* %13, align 4
  store i32 %54, i32* %6, align 4
  br label %61

55:                                               ; preds = %28
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* %13, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %13, align 4
  br label %59

59:                                               ; preds = %55, %5
  %60 = load i32, i32* %13, align 4
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %59, %53
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local i32 @eap_peer_tls_status(%struct.eap_sm*, i32*, i8*, i64, i32) #1

declare dso_local i32 @os_snprintf(i8*, i64, i8*, i32, i32) #1

declare dso_local i64 @os_snprintf_error(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
