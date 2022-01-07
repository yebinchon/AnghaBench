; ModuleID = '/home/carl/AnghaBench/freebsd/stand/uboot/lib/extr_net.c_net_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/uboot/lib/extr_net.c_net_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iodesc = type { %struct.netif* }
%struct.netif = type { %struct.uboot_softc* }
%struct.uboot_softc = type { i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"net_get: ub_dev_recv() failed, error=%d\0A\00", align 1
@ETHER_ALIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iodesc*, i8**, i32)* @net_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @net_get(%struct.iodesc* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iodesc*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.netif*, align 8
  %9 = alloca %struct.uboot_softc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store %struct.iodesc* %0, %struct.iodesc** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.iodesc*, %struct.iodesc** %5, align 8
  %16 = getelementptr inbounds %struct.iodesc, %struct.iodesc* %15, i32 0, i32 0
  %17 = load %struct.netif*, %struct.netif** %16, align 8
  store %struct.netif* %17, %struct.netif** %8, align 8
  %18 = load %struct.netif*, %struct.netif** %8, align 8
  %19 = getelementptr inbounds %struct.netif, %struct.netif* %18, i32 0, i32 0
  %20 = load %struct.uboot_softc*, %struct.uboot_softc** %19, align 8
  store %struct.uboot_softc* %20, %struct.uboot_softc** %9, align 8
  %21 = call i32 (...) @getsecs()
  store i32 %21, i32* %10, align 4
  store i64 4, i64* %13, align 8
  br label %22

22:                                               ; preds = %49, %3
  %23 = load %struct.uboot_softc*, %struct.uboot_softc** %9, align 8
  %24 = getelementptr inbounds %struct.uboot_softc, %struct.uboot_softc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.uboot_softc*, %struct.uboot_softc** %9, align 8
  %27 = getelementptr inbounds %struct.uboot_softc, %struct.uboot_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* %13, align 8
  %30 = call i32 @ub_dev_recv(i32 %25, i32 %28, i64 %29, i32* %12)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %22
  %34 = load i32, i32* %11, align 4
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %34)
  store i32 0, i32* %12, align 4
  br label %51

36:                                               ; preds = %22
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %12, align 4
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %12, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %40, %37
  %44 = call i32 (...) @getsecs()
  %45 = load i32, i32* %10, align 4
  %46 = sub nsw i32 %44, %45
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %46, %47
  br label %49

49:                                               ; preds = %43, %40
  %50 = phi i1 [ false, %40 ], [ %48, %43 ]
  br i1 %50, label %22, label %51

51:                                               ; preds = %49, %33
  %52 = load i32, i32* %12, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %75

54:                                               ; preds = %51
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* @ETHER_ALIGN, align 4
  %57 = add nsw i32 %55, %56
  %58 = call i8* @malloc(i32 %57)
  store i8* %58, i8** %14, align 8
  %59 = load i8*, i8** %14, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  store i32 -1, i32* %4, align 4
  br label %76

62:                                               ; preds = %54
  %63 = load i8*, i8** %14, align 8
  %64 = load i32, i32* @ETHER_ALIGN, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = load %struct.uboot_softc*, %struct.uboot_softc** %9, align 8
  %68 = getelementptr inbounds %struct.uboot_softc, %struct.uboot_softc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @memcpy(i8* %66, i32 %69, i32 %70)
  %72 = load i8*, i8** %14, align 8
  %73 = load i8**, i8*** %6, align 8
  store i8* %72, i8** %73, align 8
  %74 = load i32, i32* %12, align 4
  store i32 %74, i32* %4, align 4
  br label %76

75:                                               ; preds = %51
  store i32 -1, i32* %4, align 4
  br label %76

76:                                               ; preds = %75, %62, %61
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @getsecs(...) #1

declare dso_local i32 @ub_dev_recv(i32, i32, i64, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
