; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_eke_common.c_eap_eke_dh_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_eke_common.c_eap_eke_dh_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dh_group = type { i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"EAP-EKE: DH private value\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"EAP-EKE: DH public value\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eap_eke_dh_init(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dh_group*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @eap_eke_dh_generator(i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.dh_group* @eap_eke_dh_group(i32 %13)
  store %struct.dh_group* %14, %struct.dh_group** %10, align 8
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* %8, align 4
  %19 = icmp sgt i32 %18, 255
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load %struct.dh_group*, %struct.dh_group** %10, align 8
  %22 = icmp ne %struct.dh_group* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20, %17, %3
  store i32 -1, i32* %4, align 4
  br label %51

24:                                               ; preds = %20
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.dh_group*, %struct.dh_group** %10, align 8
  %28 = getelementptr inbounds %struct.dh_group, %struct.dh_group* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.dh_group*, %struct.dh_group** %10, align 8
  %31 = getelementptr inbounds %struct.dh_group, %struct.dh_group* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = call i64 @crypto_dh_init(i32 %26, i32 %29, i32 %32, i32* %33, i32* %34)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %24
  store i32 -1, i32* %4, align 4
  br label %51

38:                                               ; preds = %24
  %39 = load i32, i32* @MSG_DEBUG, align 4
  %40 = load i32*, i32** %6, align 8
  %41 = load %struct.dh_group*, %struct.dh_group** %10, align 8
  %42 = getelementptr inbounds %struct.dh_group, %struct.dh_group* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @wpa_hexdump_key(i32 %39, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32* %40, i32 %43)
  %45 = load i32, i32* @MSG_DEBUG, align 4
  %46 = load i32*, i32** %7, align 8
  %47 = load %struct.dh_group*, %struct.dh_group** %10, align 8
  %48 = getelementptr inbounds %struct.dh_group, %struct.dh_group* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @wpa_hexdump(i32 %45, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32* %46, i32 %49)
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %38, %37, %23
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @eap_eke_dh_generator(i32) #1

declare dso_local %struct.dh_group* @eap_eke_dh_group(i32) #1

declare dso_local i64 @crypto_dh_init(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
