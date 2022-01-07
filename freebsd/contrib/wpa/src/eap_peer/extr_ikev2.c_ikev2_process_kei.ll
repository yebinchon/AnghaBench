; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_ikev2.c_ikev2_process_kei.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_ikev2.c_ikev2_process_kei.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ikev2_responder_data = type { i32*, %struct.TYPE_4__*, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"IKEV2: KEi not received\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"IKEV2: Too short Key Exchange Payload\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"IKEV2: KEi DH Group #%u\00", align 1
@.str.3 = private unnamed_addr constant [71 x i8] c"IKEV2: KEi DH Group #%u does not match with the selected proposal (%u)\00", align 1
@INVALID_KE_PAYLOAD = common dso_local global i32 0, align 4
@NOTIFY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"IKEV2: Unsupported DH group\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"IKEV2: Invalid DH public value length %ld (expected %ld)\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"IKEV2: KEi Diffie-Hellman Public Value\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ikev2_responder_data*, i32*, i64)* @ikev2_process_kei to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ikev2_process_kei(%struct.ikev2_responder_data* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ikev2_responder_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.ikev2_responder_data* %0, %struct.ikev2_responder_data** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32, i32* @MSG_INFO, align 4
  %13 = call i32 (i32, i8*, ...) @wpa_printf(i32 %12, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %102

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8
  %16 = icmp ult i64 %15, 100
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, i32* @MSG_INFO, align 4
  %19 = call i32 (i32, i8*, ...) @wpa_printf(i32 %18, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %102

20:                                               ; preds = %14
  %21 = load i32*, i32** %6, align 8
  %22 = call i64 @WPA_GET_BE16(i32* %21)
  store i64 %22, i64* %8, align 8
  %23 = load i32, i32* @MSG_DEBUG, align 4
  %24 = load i64, i64* %8, align 8
  %25 = call i32 (i32, i8*, ...) @wpa_printf(i32 %23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64 %24)
  %26 = load i64, i64* %8, align 8
  %27 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %5, align 8
  %28 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %26, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %20
  %33 = load i32, i32* @MSG_DEBUG, align 4
  %34 = load i64, i64* %8, align 8
  %35 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %5, align 8
  %36 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 (i32, i8*, ...) @wpa_printf(i32 %33, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0), i64 %34, i64 %38)
  %40 = load i32, i32* @INVALID_KE_PAYLOAD, align 4
  %41 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %5, align 8
  %42 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @NOTIFY, align 4
  %44 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %5, align 8
  %45 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  store i32 -1, i32* %4, align 4
  br label %102

46:                                               ; preds = %20
  %47 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %5, align 8
  %48 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = icmp eq %struct.TYPE_4__* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32, i32* @MSG_INFO, align 4
  %53 = call i32 (i32, i8*, ...) @wpa_printf(i32 %52, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %102

54:                                               ; preds = %46
  %55 = load i64, i64* %7, align 8
  %56 = sub i64 %55, 4
  %57 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %5, align 8
  %58 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %57, i32 0, i32 1
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %56, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %54
  %64 = load i32, i32* @MSG_INFO, align 4
  %65 = load i64, i64* %7, align 8
  %66 = sub i64 %65, 4
  %67 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %5, align 8
  %68 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %67, i32 0, i32 1
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 (i32, i8*, ...) @wpa_printf(i32 %64, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0), i64 %66, i64 %71)
  store i32 -1, i32* %4, align 4
  br label %102

73:                                               ; preds = %54
  %74 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %5, align 8
  %75 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @wpabuf_free(i32* %76)
  %78 = load i64, i64* %7, align 8
  %79 = sub i64 %78, 4
  %80 = call i32* @wpabuf_alloc(i64 %79)
  %81 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %5, align 8
  %82 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %81, i32 0, i32 0
  store i32* %80, i32** %82, align 8
  %83 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %5, align 8
  %84 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = icmp eq i32* %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %73
  store i32 -1, i32* %4, align 4
  br label %102

88:                                               ; preds = %73
  %89 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %5, align 8
  %90 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i32*, i32** %6, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 4
  %94 = load i64, i64* %7, align 8
  %95 = sub i64 %94, 4
  %96 = call i32 @wpabuf_put_data(i32* %91, i32* %93, i64 %95)
  %97 = load i32, i32* @MSG_DEBUG, align 4
  %98 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %5, align 8
  %99 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @wpa_hexdump_buf(i32 %97, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32* %100)
  store i32 0, i32* %4, align 4
  br label %102

102:                                              ; preds = %88, %87, %63, %51, %32, %17, %11
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @WPA_GET_BE16(i32*) #1

declare dso_local i32 @wpabuf_free(i32*) #1

declare dso_local i32* @wpabuf_alloc(i64) #1

declare dso_local i32 @wpabuf_put_data(i32*, i32*, i64) #1

declare dso_local i32 @wpa_hexdump_buf(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
