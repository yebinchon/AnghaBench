; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap.c_eap_deinit_prev_method.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap.c_eap_deinit_prev_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { %struct.TYPE_2__*, i32*, i32, i32* }
%struct.TYPE_2__ = type { i32 (%struct.eap_sm*, i32*)*, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"EAP: deinitialize previously used EAP method (%d, %s) at %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, i8*)* @eap_deinit_prev_method to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_deinit_prev_method(%struct.eap_sm* %0, i8* %1) #0 {
  %3 = alloca %struct.eap_sm*, align 8
  %4 = alloca i8*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %6 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %5, i32 0, i32 3
  %7 = load i32*, i32** %6, align 8
  %8 = call i32 @ext_password_free(i32* %7)
  %9 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %10 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %9, i32 0, i32 3
  store i32* null, i32** %10, align 8
  %11 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %12 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp eq %struct.TYPE_2__* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %17 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %2
  br label %47

21:                                               ; preds = %15
  %22 = load i32, i32* @MSG_DEBUG, align 4
  %23 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %24 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %27 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @wpa_printf(i32 %22, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %30, i8* %31)
  %33 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %34 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32 (%struct.eap_sm*, i32*)*, i32 (%struct.eap_sm*, i32*)** %36, align 8
  %38 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %39 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %40 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 %37(%struct.eap_sm* %38, i32* %41)
  %43 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %44 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %43, i32 0, i32 1
  store i32* null, i32** %44, align 8
  %45 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %46 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %45, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %46, align 8
  br label %47

47:                                               ; preds = %21, %20
  ret void
}

declare dso_local i32 @ext_password_free(i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
