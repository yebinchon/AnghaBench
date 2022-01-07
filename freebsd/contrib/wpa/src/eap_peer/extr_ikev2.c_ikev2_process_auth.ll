; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_ikev2.c_ikev2_process_auth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_ikev2.c_ikev2_process_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ikev2_responder_data = type { i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"IKEV2: No Authentication Payload\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"IKEV2: Too short Authentication Payload\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"IKEV2: Auth Method %d\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"IKEV2: Authentication Data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ikev2_responder_data*, i32*, i64)* @ikev2_process_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ikev2_process_auth(%struct.ikev2_responder_data* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ikev2_responder_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.ikev2_responder_data* %0, %struct.ikev2_responder_data** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32, i32* @MSG_INFO, align 4
  %13 = call i32 (i32, i8*, ...) @wpa_printf(i32 %12, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %51

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8
  %16 = icmp ult i64 %15, 4
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, i32* @MSG_INFO, align 4
  %19 = call i32 (i32, i8*, ...) @wpa_printf(i32 %18, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %51

20:                                               ; preds = %14
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 4
  store i32* %25, i32** %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = sub i64 %26, 4
  store i64 %27, i64* %7, align 8
  %28 = load i32, i32* @MSG_DEBUG, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 (i32, i8*, ...) @wpa_printf(i32 %28, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @MSG_MSGDUMP, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @wpa_hexdump(i32 %31, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32* %32, i64 %33)
  %35 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %5, align 8
  %36 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %50 [
    i32 129, label %38
    i32 128, label %44
  ]

38:                                               ; preds = %20
  %39 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %5, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @ikev2_process_auth_cert(%struct.ikev2_responder_data* %39, i32 %40, i32* %41, i64 %42)
  store i32 %43, i32* %4, align 4
  br label %51

44:                                               ; preds = %20
  %45 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %5, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i32*, i32** %6, align 8
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @ikev2_process_auth_secret(%struct.ikev2_responder_data* %45, i32 %46, i32* %47, i64 %48)
  store i32 %49, i32* %4, align 4
  br label %51

50:                                               ; preds = %20
  store i32 -1, i32* %4, align 4
  br label %51

51:                                               ; preds = %50, %44, %38, %17, %11
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #1

declare dso_local i32 @ikev2_process_auth_cert(%struct.ikev2_responder_data*, i32, i32*, i64) #1

declare dso_local i32 @ikev2_process_auth_secret(%struct.ikev2_responder_data*, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
