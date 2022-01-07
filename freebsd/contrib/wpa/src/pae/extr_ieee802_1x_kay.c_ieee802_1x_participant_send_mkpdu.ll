; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/pae/extr_ieee802_1x_kay.c_ieee802_1x_participant_send_mkpdu.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/pae/extr_ieee802_1x_kay.c_ieee802_1x_participant_send_mkpdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 (%struct.ieee802_1x_mka_participant*)*, i64 (%struct.ieee802_1x_mka_participant*)* }
%struct.ieee802_1x_mka_participant = type { i8*, %struct.ieee802_1x_kay* }
%struct.ieee802_1x_kay = type { i8*, i32, i32 }
%struct.wpabuf = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"KaY: Encode and send an MKPDU (ifname=%s)\00", align 1
@mka_body_handler = common dso_local global %struct.TYPE_3__* null, align 8
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"KaY: out of memory\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"KaY: encode mkpdu fail\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"KaY: Outgoing MKPDU\00", align 1
@TRUE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee802_1x_mka_participant*)* @ieee802_1x_participant_send_mkpdu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee802_1x_participant_send_mkpdu(%struct.ieee802_1x_mka_participant* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee802_1x_mka_participant*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.ieee802_1x_kay*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ieee802_1x_mka_participant* %0, %struct.ieee802_1x_mka_participant** %3, align 8
  %8 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %3, align 8
  %9 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %8, i32 0, i32 1
  %10 = load %struct.ieee802_1x_kay*, %struct.ieee802_1x_kay** %9, align 8
  store %struct.ieee802_1x_kay* %10, %struct.ieee802_1x_kay** %5, align 8
  store i64 0, i64* %6, align 8
  %11 = load i32, i32* @MSG_DEBUG, align 4
  %12 = load %struct.ieee802_1x_kay*, %struct.ieee802_1x_kay** %5, align 8
  %13 = getelementptr inbounds %struct.ieee802_1x_kay, %struct.ieee802_1x_kay* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 (i32, i8*, ...) @wpa_printf(i32 %11, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i64, i64* %6, align 8
  %17 = add i64 %16, 8
  store i64 %17, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %53, %1
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mka_body_handler, align 8
  %21 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %20)
  %22 = icmp ult i32 %19, %21
  br i1 %22, label %23, label %56

23:                                               ; preds = %18
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mka_body_handler, align 8
  %25 = load i32, i32* %7, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i64 (%struct.ieee802_1x_mka_participant*)*, i64 (%struct.ieee802_1x_mka_participant*)** %28, align 8
  %30 = icmp ne i64 (%struct.ieee802_1x_mka_participant*)* %29, null
  br i1 %30, label %31, label %52

31:                                               ; preds = %23
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mka_body_handler, align 8
  %33 = load i32, i32* %7, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i64 (%struct.ieee802_1x_mka_participant*)*, i64 (%struct.ieee802_1x_mka_participant*)** %36, align 8
  %38 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %3, align 8
  %39 = call i64 %37(%struct.ieee802_1x_mka_participant* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %31
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mka_body_handler, align 8
  %43 = load i32, i32* %7, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64 (%struct.ieee802_1x_mka_participant*)*, i64 (%struct.ieee802_1x_mka_participant*)** %46, align 8
  %48 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %3, align 8
  %49 = call i64 %47(%struct.ieee802_1x_mka_participant* %48)
  %50 = load i64, i64* %6, align 8
  %51 = add i64 %50, %49
  store i64 %51, i64* %6, align 8
  br label %52

52:                                               ; preds = %41, %31, %23
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %7, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %18

56:                                               ; preds = %18
  %57 = load i64, i64* %6, align 8
  %58 = call %struct.wpabuf* @wpabuf_alloc(i64 %57)
  store %struct.wpabuf* %58, %struct.wpabuf** %4, align 8
  %59 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %60 = icmp ne %struct.wpabuf* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* @MSG_ERROR, align 4
  %63 = call i32 (i32, i8*, ...) @wpa_printf(i32 %62, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %92

64:                                               ; preds = %56
  %65 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %3, align 8
  %66 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %67 = call i64 @ieee802_1x_kay_encode_mkpdu(%struct.ieee802_1x_mka_participant* %65, %struct.wpabuf* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i32, i32* @MSG_ERROR, align 4
  %71 = call i32 (i32, i8*, ...) @wpa_printf(i32 %70, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %92

72:                                               ; preds = %64
  %73 = load i32, i32* @MSG_MSGDUMP, align 4
  %74 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %75 = call i32 @wpa_hexdump_buf(i32 %73, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), %struct.wpabuf* %74)
  %76 = load %struct.ieee802_1x_kay*, %struct.ieee802_1x_kay** %5, align 8
  %77 = getelementptr inbounds %struct.ieee802_1x_kay, %struct.ieee802_1x_kay* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %80 = call i32 @wpabuf_head(%struct.wpabuf* %79)
  %81 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %82 = call i32 @wpabuf_len(%struct.wpabuf* %81)
  %83 = call i32 @l2_packet_send(i32 %78, i32* null, i32 0, i32 %80, i32 %82)
  %84 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %85 = call i32 @wpabuf_free(%struct.wpabuf* %84)
  %86 = load i8*, i8** @TRUE, align 8
  %87 = load %struct.ieee802_1x_kay*, %struct.ieee802_1x_kay** %5, align 8
  %88 = getelementptr inbounds %struct.ieee802_1x_kay, %struct.ieee802_1x_kay* %87, i32 0, i32 0
  store i8* %86, i8** %88, align 8
  %89 = load i8*, i8** @TRUE, align 8
  %90 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %3, align 8
  %91 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %90, i32 0, i32 0
  store i8* %89, i8** %91, align 8
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %72, %69, %61
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i64) #1

declare dso_local i64 @ieee802_1x_kay_encode_mkpdu(%struct.ieee802_1x_mka_participant*, %struct.wpabuf*) #1

declare dso_local i32 @wpa_hexdump_buf(i32, i8*, %struct.wpabuf*) #1

declare dso_local i32 @l2_packet_send(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
