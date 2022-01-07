; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_ikev2.c_ikev2_process_ker.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_ikev2.c_ikev2_process_ker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ikev2_initiator_data = type { i32*, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"IKEV2: KEr not received\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"IKEV2: Too show Key Exchange Payload\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"IKEV2: KEr DH Group #%u\00", align 1
@.str.3 = private unnamed_addr constant [71 x i8] c"IKEV2: KEr DH Group #%u does not match with the selected proposal (%u)\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"IKEV2: Unsupported DH group\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"IKEV2: Invalid DH public value length %ld (expected %ld)\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"IKEV2: KEr Diffie-Hellman Public Value\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ikev2_initiator_data*, i32*, i64)* @ikev2_process_ker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ikev2_process_ker(%struct.ikev2_initiator_data* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ikev2_initiator_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.ikev2_initiator_data* %0, %struct.ikev2_initiator_data** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32, i32* @MSG_INFO, align 4
  %13 = call i32 (i32, i8*, ...) @wpa_printf(i32 %12, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %90

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8
  %16 = icmp ult i64 %15, 100
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, i32* @MSG_INFO, align 4
  %19 = call i32 (i32, i8*, ...) @wpa_printf(i32 %18, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %90

20:                                               ; preds = %14
  %21 = load i32*, i32** %6, align 8
  %22 = call i64 @WPA_GET_BE16(i32* %21)
  store i64 %22, i64* %8, align 8
  %23 = load i32, i32* @MSG_DEBUG, align 4
  %24 = load i64, i64* %8, align 8
  %25 = call i32 (i32, i8*, ...) @wpa_printf(i32 %23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64 %24)
  %26 = load i64, i64* %8, align 8
  %27 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %5, align 8
  %28 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %26, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %20
  %33 = load i32, i32* @MSG_DEBUG, align 4
  %34 = load i64, i64* %8, align 8
  %35 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %5, align 8
  %36 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 (i32, i8*, ...) @wpa_printf(i32 %33, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0), i64 %34, i64 %38)
  store i32 -1, i32* %4, align 4
  br label %90

40:                                               ; preds = %20
  %41 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %5, align 8
  %42 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = icmp eq %struct.TYPE_4__* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* @MSG_INFO, align 4
  %47 = call i32 (i32, i8*, ...) @wpa_printf(i32 %46, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %90

48:                                               ; preds = %40
  %49 = load i64, i64* %7, align 8
  %50 = sub i64 %49, 4
  %51 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %5, align 8
  %52 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %50, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %48
  %58 = load i32, i32* @MSG_INFO, align 4
  %59 = load i64, i64* %7, align 8
  %60 = sub i64 %59, 4
  %61 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %5, align 8
  %62 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 (i32, i8*, ...) @wpa_printf(i32 %58, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0), i64 %60, i64 %65)
  store i32 -1, i32* %4, align 4
  br label %90

67:                                               ; preds = %48
  %68 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %5, align 8
  %69 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @wpabuf_free(i32* %70)
  %72 = load i32*, i32** %6, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 4
  %74 = load i64, i64* %7, align 8
  %75 = sub i64 %74, 4
  %76 = call i32* @wpabuf_alloc_copy(i32* %73, i64 %75)
  %77 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %5, align 8
  %78 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %77, i32 0, i32 0
  store i32* %76, i32** %78, align 8
  %79 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %5, align 8
  %80 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = icmp eq i32* %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %67
  store i32 -1, i32* %4, align 4
  br label %90

84:                                               ; preds = %67
  %85 = load i32, i32* @MSG_DEBUG, align 4
  %86 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %5, align 8
  %87 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @wpa_hexdump_buf(i32 %85, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32* %88)
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %84, %83, %57, %45, %32, %17, %11
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @WPA_GET_BE16(i32*) #1

declare dso_local i32 @wpabuf_free(i32*) #1

declare dso_local i32* @wpabuf_alloc_copy(i32*, i64) #1

declare dso_local i32 @wpa_hexdump_buf(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
