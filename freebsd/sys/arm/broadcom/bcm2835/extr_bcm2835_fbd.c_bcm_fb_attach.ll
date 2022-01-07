; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_fbd.c_bcm_fb_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_fbd.c_bcm_fb_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcmsc_softc = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"/chosen\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"bootargs\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"bcm2708_fb.fbswap\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bcm_fb_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_fb_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [2048 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bcmsc_softc*, align 8
  store i32 %0, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.bcmsc_softc* @device_get_softc(i32 %11)
  store %struct.bcmsc_softc* %12, %struct.bcmsc_softc** %10, align 8
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.bcmsc_softc*, %struct.bcmsc_softc** %10, align 8
  %15 = getelementptr inbounds %struct.bcmsc_softc, %struct.bcmsc_softc* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load %struct.bcmsc_softc*, %struct.bcmsc_softc** %10, align 8
  %17 = getelementptr inbounds %struct.bcmsc_softc, %struct.bcmsc_softc* %16, i32 0, i32 0
  store i32 0, i32* %17, align 4
  %18 = call i32 @OF_finddevice(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %56

21:                                               ; preds = %1
  %22 = load i32, i32* %9, align 4
  %23 = bitcast [2048 x i8]* %4 to i8**
  %24 = call i64 @OF_getprop(i32 %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %23, i32 2048)
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %56

26:                                               ; preds = %21
  %27 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  store i8* %27, i8** %6, align 8
  br label %28

28:                                               ; preds = %54, %36, %26
  %29 = call i8* @strsep(i8** %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i8* %29, i8** %7, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %55

31:                                               ; preds = %28
  %32 = load i8*, i8** %7, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %28

37:                                               ; preds = %31
  %38 = call i8* @strsep(i8** %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i8* %38, i8** %5, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = call i64 @strcmp(i8* %39, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %37
  %43 = load i8*, i8** %7, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %54

45:                                               ; preds = %42
  %46 = load i8*, i8** %7, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 49
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load %struct.bcmsc_softc*, %struct.bcmsc_softc** %10, align 8
  %52 = getelementptr inbounds %struct.bcmsc_softc, %struct.bcmsc_softc* %51, i32 0, i32 0
  store i32 1, i32* %52, align 4
  br label %53

53:                                               ; preds = %50, %45
  br label %54

54:                                               ; preds = %53, %42, %37
  br label %28

55:                                               ; preds = %28
  br label %56

56:                                               ; preds = %55, %21, %1
  %57 = load %struct.bcmsc_softc*, %struct.bcmsc_softc** %10, align 8
  %58 = call i32 @bcm_fb_sysctl_init(%struct.bcmsc_softc* %57)
  %59 = load %struct.bcmsc_softc*, %struct.bcmsc_softc** %10, align 8
  %60 = call i32 @bcm_fb_setup_fbd(%struct.bcmsc_softc* %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %2, align 4
  br label %66

65:                                               ; preds = %56
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %65, %63
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.bcmsc_softc* @device_get_softc(i32) #1

declare dso_local i32 @OF_finddevice(i8*) #1

declare dso_local i64 @OF_getprop(i32, i8*, i8**, i32) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @bcm_fb_sysctl_init(%struct.bcmsc_softc*) #1

declare dso_local i32 @bcm_fb_setup_fbd(%struct.bcmsc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
