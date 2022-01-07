; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_ikev2.c_eap_ikev2_get_shared_secret.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_ikev2.c_eap_ikev2_get_shared_secret.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i64, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i64, i32* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"EAP-IKEV2: No IDr received - default to user identity from EAP-Identity\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"EAP-IKEV2: No user entry found\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*, i64, i64*)* @eap_ikev2_get_shared_secret to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @eap_ikev2_get_shared_secret(i8* %0, i32* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.eap_sm*, align 8
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.eap_sm*
  store %struct.eap_sm* %12, %struct.eap_sm** %10, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %4
  %16 = load i32, i32* @MSG_DEBUG, align 4
  %17 = call i32 @wpa_printf(i32 %16, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.eap_sm*, %struct.eap_sm** %10, align 8
  %19 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %7, align 8
  %21 = load %struct.eap_sm*, %struct.eap_sm** %10, align 8
  %22 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %8, align 8
  br label %24

24:                                               ; preds = %15, %4
  %25 = load %struct.eap_sm*, %struct.eap_sm** %10, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call i64 @eap_user_get(%struct.eap_sm* %25, i32* %26, i64 %27, i32 0)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %24
  %31 = load %struct.eap_sm*, %struct.eap_sm** %10, align 8
  %32 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = icmp eq %struct.TYPE_2__* %33, null
  br i1 %34, label %42, label %35

35:                                               ; preds = %30
  %36 = load %struct.eap_sm*, %struct.eap_sm** %10, align 8
  %37 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %35, %30, %24
  %43 = load i32, i32* @MSG_DEBUG, align 4
  %44 = call i32 @wpa_printf(i32 %43, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %5, align 8
  br label %57

45:                                               ; preds = %35
  %46 = load %struct.eap_sm*, %struct.eap_sm** %10, align 8
  %47 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64*, i64** %9, align 8
  store i64 %50, i64* %51, align 8
  %52 = load %struct.eap_sm*, %struct.eap_sm** %10, align 8
  %53 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  store i32* %56, i32** %5, align 8
  br label %57

57:                                               ; preds = %45, %42
  %58 = load i32*, i32** %5, align 8
  ret i32* %58
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @eap_user_get(%struct.eap_sm*, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
