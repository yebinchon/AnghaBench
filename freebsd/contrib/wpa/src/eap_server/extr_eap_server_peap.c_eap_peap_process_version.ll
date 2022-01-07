; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_peap.c_eap_peap_process_version.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_peap.c_eap_peap_process_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_peap_data = type { i32, i32, i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"EAP-PEAP: peer did not select the forced version (forced=%d peer=%d) - reject\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"EAP-PEAP: peer ver=%d, own ver=%d; use version %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, i8*, i32)* @eap_peap_process_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_peap_process_version(%struct.eap_sm* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.eap_peap_data*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.eap_peap_data*
  store %struct.eap_peap_data* %10, %struct.eap_peap_data** %8, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.eap_peap_data*, %struct.eap_peap_data** %8, align 8
  %13 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.eap_peap_data*, %struct.eap_peap_data** %8, align 8
  %15 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.eap_peap_data*, %struct.eap_peap_data** %8, align 8
  %21 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %19, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = load i32, i32* @MSG_INFO, align 4
  %26 = load %struct.eap_peap_data*, %struct.eap_peap_data** %8, align 8
  %27 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 (i32, i8*, i32, i32, ...) @wpa_printf(i32 %25, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29)
  store i32 -1, i32* %4, align 4
  br label %49

31:                                               ; preds = %18, %3
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.eap_peap_data*, %struct.eap_peap_data** %8, align 8
  %34 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %31
  %38 = load i32, i32* @MSG_DEBUG, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.eap_peap_data*, %struct.eap_peap_data** %8, align 8
  %41 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 (i32, i8*, i32, i32, ...) @wpa_printf(i32 %38, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %42, i32 %43)
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.eap_peap_data*, %struct.eap_peap_data** %8, align 8
  %47 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %37, %31
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %24
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @wpa_printf(i32, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
