; ModuleID = '/home/carl/AnghaBench/freebsd/stand/uboot/lib/extr_net.c_net_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/uboot/lib/extr_net.c_net_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uboot_softc = type { i64, i64, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.iodesc = type { i32, %struct.TYPE_6__, %struct.netif* }
%struct.netif = type { i8*, %struct.TYPE_5__*, %struct.uboot_softc* }
%struct.TYPE_5__ = type { i8* }
%struct.device_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@uboot_softc = common dso_local global %struct.uboot_softc zeroinitializer, align 8
@.str = private unnamed_addr constant [42 x i8] c"%s%d: initialisation failed with error %d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"%s%d: empty ethernet address!\00", align 1
@myip = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@PKTALIGN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iodesc*, i8*)* @net_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @net_init(%struct.iodesc* %0, i8* %1) #0 {
  %3 = alloca %struct.iodesc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.netif*, align 8
  %6 = alloca %struct.uboot_softc*, align 8
  %7 = alloca %struct.device_info*, align 8
  %8 = alloca i32, align 4
  store %struct.iodesc* %0, %struct.iodesc** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.iodesc*, %struct.iodesc** %3, align 8
  %10 = getelementptr inbounds %struct.iodesc, %struct.iodesc* %9, i32 0, i32 2
  %11 = load %struct.netif*, %struct.netif** %10, align 8
  store %struct.netif* %11, %struct.netif** %5, align 8
  %12 = load %struct.netif*, %struct.netif** %5, align 8
  %13 = getelementptr inbounds %struct.netif, %struct.netif* %12, i32 0, i32 2
  store %struct.uboot_softc* @uboot_softc, %struct.uboot_softc** %13, align 8
  store %struct.uboot_softc* @uboot_softc, %struct.uboot_softc** %6, align 8
  %14 = load %struct.uboot_softc*, %struct.uboot_softc** %6, align 8
  %15 = getelementptr inbounds %struct.uboot_softc, %struct.uboot_softc* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @ub_dev_open(i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %2
  %20 = load %struct.netif*, %struct.netif** %5, align 8
  %21 = getelementptr inbounds %struct.netif, %struct.netif* %20, i32 0, i32 1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = load %struct.netif*, %struct.netif** %5, align 8
  %26 = getelementptr inbounds %struct.netif, %struct.netif* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 (i8*, i8*, i8*, ...) @panic(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %24, i8* %27, i32 %28)
  br label %30

30:                                               ; preds = %19, %2
  %31 = load %struct.uboot_softc*, %struct.uboot_softc** %6, align 8
  %32 = getelementptr inbounds %struct.uboot_softc, %struct.uboot_softc* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call %struct.device_info* @ub_dev_get(i32 %33)
  store %struct.device_info* %34, %struct.device_info** %7, align 8
  %35 = load %struct.iodesc*, %struct.iodesc** %3, align 8
  %36 = getelementptr inbounds %struct.iodesc, %struct.iodesc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.device_info*, %struct.device_info** %7, align 8
  %39 = getelementptr inbounds %struct.device_info, %struct.device_info* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @memcpy(i32 %37, i32 %41, i32 6)
  %43 = load %struct.iodesc*, %struct.iodesc** %3, align 8
  %44 = getelementptr inbounds %struct.iodesc, %struct.iodesc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @memcmp(i32 %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %30
  %49 = load %struct.netif*, %struct.netif** %5, align 8
  %50 = getelementptr inbounds %struct.netif, %struct.netif* %49, i32 0, i32 1
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.netif*, %struct.netif** %5, align 8
  %55 = getelementptr inbounds %struct.netif, %struct.netif* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 (i8*, i8*, i8*, ...) @panic(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %53, i8* %56)
  br label %58

58:                                               ; preds = %48, %30
  %59 = call i32 (...) @get_env_net_params()
  %60 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @myip, i32 0, i32 0), align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load %struct.iodesc*, %struct.iodesc** %3, align 8
  %64 = getelementptr inbounds %struct.iodesc, %struct.iodesc* %63, i32 0, i32 1
  %65 = bitcast %struct.TYPE_6__* %64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %65, i8* align 8 bitcast (%struct.TYPE_6__* @myip to i8*), i64 8, i1 false)
  br label %66

66:                                               ; preds = %62, %58
  %67 = load %struct.uboot_softc*, %struct.uboot_softc** %6, align 8
  %68 = getelementptr inbounds %struct.uboot_softc, %struct.uboot_softc* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.uboot_softc*, %struct.uboot_softc** %6, align 8
  %71 = getelementptr inbounds %struct.uboot_softc, %struct.uboot_softc* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  %72 = load %struct.uboot_softc*, %struct.uboot_softc** %6, align 8
  %73 = getelementptr inbounds %struct.uboot_softc, %struct.uboot_softc* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @PKTALIGN, align 8
  %76 = urem i64 %74, %75
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %66
  %79 = load i64, i64* @PKTALIGN, align 8
  %80 = load %struct.uboot_softc*, %struct.uboot_softc** %6, align 8
  %81 = getelementptr inbounds %struct.uboot_softc, %struct.uboot_softc* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @PKTALIGN, align 8
  %84 = urem i64 %82, %83
  %85 = sub i64 %79, %84
  %86 = load %struct.uboot_softc*, %struct.uboot_softc** %6, align 8
  %87 = getelementptr inbounds %struct.uboot_softc, %struct.uboot_softc* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = add i64 %88, %85
  store i64 %89, i64* %87, align 8
  br label %90

90:                                               ; preds = %78, %66
  ret void
}

declare dso_local i32 @ub_dev_open(i32) #1

declare dso_local i32 @panic(i8*, i8*, i8*, ...) #1

declare dso_local %struct.device_info* @ub_dev_get(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i64 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @get_env_net_params(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
