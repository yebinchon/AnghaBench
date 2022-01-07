; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_tdls.c_wpa_tdls_ap_ies.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_tdls.c_wpa_tdls_ap_ies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_sm = type { i32, i32 }
%struct.ieee802_11_elems = type { i32, i32* }

@ParseFailed = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"TDLS: TDLS is %s in the target BSS\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"prohibited\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"allowed\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"TDLS: TDLS channel switch %s in the target BSS\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpa_tdls_ap_ies(%struct.wpa_sm* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.wpa_sm*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ieee802_11_elems, align 8
  store %struct.wpa_sm* %0, %struct.wpa_sm** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %9 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %8, i32 0, i32 1
  store i32 0, i32* %9, align 4
  %10 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %11 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %10, i32 0, i32 0
  store i32 0, i32* %11, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %28, label %14

14:                                               ; preds = %3
  %15 = load i32*, i32** %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call i64 @ieee802_11_parse_elems(i32* %15, i64 %16, %struct.ieee802_11_elems* %7, i32 0)
  %18 = load i64, i64* @ParseFailed, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %28, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %7, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %7, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %26, 5
  br i1 %27, label %28, label %29

28:                                               ; preds = %24, %20, %14, %3
  br label %52

29:                                               ; preds = %24
  %30 = call i32 @wpa_tdls_prohibited(%struct.ieee802_11_elems* %7)
  %31 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %32 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @MSG_DEBUG, align 4
  %34 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %35 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %40 = call i32 @wpa_printf(i32 %33, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %39)
  %41 = call i32 @wpa_tdls_chan_switch_prohibited(%struct.ieee802_11_elems* %7)
  %42 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %43 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @MSG_DEBUG, align 4
  %45 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %46 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %51 = call i32 @wpa_printf(i32 %44, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i8* %50)
  br label %52

52:                                               ; preds = %29, %28
  ret void
}

declare dso_local i64 @ieee802_11_parse_elems(i32*, i64, %struct.ieee802_11_elems*, i32) #1

declare dso_local i32 @wpa_tdls_prohibited(%struct.ieee802_11_elems*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i8*) #1

declare dso_local i32 @wpa_tdls_chan_switch_prohibited(%struct.ieee802_11_elems*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
