; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_ikev2.c_eap_ikev2_get_session_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_ikev2.c_eap_ikev2_get_session_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_ikev2_data = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@DONE = common dso_local global i64 0, align 8
@EAP_TYPE_IKEV2 = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"EAP-IKEV2: Derived Session-Id\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.eap_sm*, i8*, i64*)* @eap_ikev2_get_session_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @eap_ikev2_get_session_id(%struct.eap_sm* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.eap_ikev2_data*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.eap_ikev2_data*
  store %struct.eap_ikev2_data* %13, %struct.eap_ikev2_data** %8, align 8
  %14 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %8, align 8
  %15 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @DONE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %24, label %19

19:                                               ; preds = %3
  %20 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %8, align 8
  %21 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19, %3
  store i32* null, i32** %4, align 8
  br label %87

25:                                               ; preds = %19
  %26 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %8, align 8
  %27 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 1, %29
  %31 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %8, align 8
  %32 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %30, %34
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %10, align 8
  %37 = load i64, i64* %10, align 8
  %38 = call i32* @os_malloc(i64 %37)
  store i32* %38, i32** %9, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %85

41:                                               ; preds = %25
  store i64 0, i64* %11, align 8
  %42 = load i32, i32* @EAP_TYPE_IKEV2, align 4
  %43 = load i32*, i32** %9, align 8
  %44 = load i64, i64* %11, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  store i32 %42, i32* %45, align 4
  %46 = load i64, i64* %11, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %11, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = load i64, i64* %11, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %8, align 8
  %52 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %8, align 8
  %56 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @os_memcpy(i32* %50, i32 %54, i32 %58)
  %60 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %8, align 8
  %61 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* %11, align 8
  %66 = add i64 %65, %64
  store i64 %66, i64* %11, align 8
  %67 = load i32*, i32** %9, align 8
  %68 = load i64, i64* %11, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %8, align 8
  %71 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %8, align 8
  %75 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @os_memcpy(i32* %69, i32 %73, i32 %77)
  %79 = load i64, i64* %10, align 8
  %80 = load i64*, i64** %7, align 8
  store i64 %79, i64* %80, align 8
  %81 = load i32, i32* @MSG_DEBUG, align 4
  %82 = load i32*, i32** %9, align 8
  %83 = load i64, i64* %10, align 8
  %84 = call i32 @wpa_hexdump(i32 %81, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32* %82, i64 %83)
  br label %85

85:                                               ; preds = %41, %25
  %86 = load i32*, i32** %9, align 8
  store i32* %86, i32** %4, align 8
  br label %87

87:                                               ; preds = %85, %24
  %88 = load i32*, i32** %4, align 8
  ret i32* %88
}

declare dso_local i32* @os_malloc(i64) #1

declare dso_local i32 @os_memcpy(i32*, i32, i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
