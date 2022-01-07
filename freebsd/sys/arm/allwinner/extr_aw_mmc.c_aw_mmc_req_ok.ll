; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_mmc.c_aw_mmc_req_ok.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_mmc.c_aw_mmc_req_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aw_mmc_softc = type { i32, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { %struct.mmc_command* }
%struct.mmc_command = type { i32, i8*, %struct.TYPE_8__*, i8** }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.mmc_command }

@AW_MMC_STAR = common dso_local global i32 0, align 4
@AW_MMC_STAR_CARD_BUSY = common dso_local global i32 0, align 4
@MMC_ERR_FAILED = common dso_local global i8* null, align 8
@MMC_RSP_PRESENT = common dso_local global i32 0, align 4
@MMC_RSP_136 = common dso_local global i32 0, align 4
@AW_MMC_RESP3 = common dso_local global i32 0, align 4
@AW_MMC_RESP2 = common dso_local global i32 0, align 4
@AW_MMC_RESP1 = common dso_local global i32 0, align 4
@AW_MMC_RESP0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aw_mmc_softc*)* @aw_mmc_req_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aw_mmc_req_ok(%struct.aw_mmc_softc* %0) #0 {
  %2 = alloca %struct.aw_mmc_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_command*, align 8
  %5 = alloca i32, align 4
  store %struct.aw_mmc_softc* %0, %struct.aw_mmc_softc** %2, align 8
  store i32 1000, i32* %3, align 4
  br label %6

6:                                                ; preds = %20, %1
  %7 = load i32, i32* %3, align 4
  %8 = add nsw i32 %7, -1
  store i32 %8, i32* %3, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %6
  %11 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %2, align 8
  %12 = load i32, i32* @AW_MMC_STAR, align 4
  %13 = call i8* @AW_MMC_READ_4(%struct.aw_mmc_softc* %11, i32 %12)
  %14 = ptrtoint i8* %13 to i32
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @AW_MMC_STAR_CARD_BUSY, align 4
  %17 = and i32 %15, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %10
  br label %22

20:                                               ; preds = %10
  %21 = call i32 @DELAY(i32 1000)
  br label %6

22:                                               ; preds = %19, %6
  %23 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %2, align 8
  %24 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %23, i32 0, i32 1
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load %struct.mmc_command*, %struct.mmc_command** %26, align 8
  store %struct.mmc_command* %27, %struct.mmc_command** %4, align 8
  %28 = load i32, i32* %3, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %22
  %31 = load i8*, i8** @MMC_ERR_FAILED, align 8
  %32 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %33 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %2, align 8
  %35 = call i32 @aw_mmc_req_done(%struct.aw_mmc_softc* %34)
  br label %111

36:                                               ; preds = %22
  %37 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %38 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @MMC_RSP_PRESENT, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %88

43:                                               ; preds = %36
  %44 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %45 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @MMC_RSP_136, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %79

50:                                               ; preds = %43
  %51 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %2, align 8
  %52 = load i32, i32* @AW_MMC_RESP3, align 4
  %53 = call i8* @AW_MMC_READ_4(%struct.aw_mmc_softc* %51, i32 %52)
  %54 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %55 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %54, i32 0, i32 3
  %56 = load i8**, i8*** %55, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 0
  store i8* %53, i8** %57, align 8
  %58 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %2, align 8
  %59 = load i32, i32* @AW_MMC_RESP2, align 4
  %60 = call i8* @AW_MMC_READ_4(%struct.aw_mmc_softc* %58, i32 %59)
  %61 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %62 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %61, i32 0, i32 3
  %63 = load i8**, i8*** %62, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 1
  store i8* %60, i8** %64, align 8
  %65 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %2, align 8
  %66 = load i32, i32* @AW_MMC_RESP1, align 4
  %67 = call i8* @AW_MMC_READ_4(%struct.aw_mmc_softc* %65, i32 %66)
  %68 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %69 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %68, i32 0, i32 3
  %70 = load i8**, i8*** %69, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 2
  store i8* %67, i8** %71, align 8
  %72 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %2, align 8
  %73 = load i32, i32* @AW_MMC_RESP0, align 4
  %74 = call i8* @AW_MMC_READ_4(%struct.aw_mmc_softc* %72, i32 %73)
  %75 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %76 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %75, i32 0, i32 3
  %77 = load i8**, i8*** %76, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i64 3
  store i8* %74, i8** %78, align 8
  br label %87

79:                                               ; preds = %43
  %80 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %2, align 8
  %81 = load i32, i32* @AW_MMC_RESP0, align 4
  %82 = call i8* @AW_MMC_READ_4(%struct.aw_mmc_softc* %80, i32 %81)
  %83 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %84 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %83, i32 0, i32 3
  %85 = load i8**, i8*** %84, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 0
  store i8* %82, i8** %86, align 8
  br label %87

87:                                               ; preds = %79, %50
  br label %88

88:                                               ; preds = %87, %36
  %89 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %90 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %89, i32 0, i32 2
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = icmp ne %struct.TYPE_8__* %91, null
  br i1 %92, label %93, label %108

93:                                               ; preds = %88
  %94 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %2, align 8
  %95 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = shl i32 %96, 2
  %98 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %99 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %98, i32 0, i32 2
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp slt i32 %97, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %93
  %105 = load i8*, i8** @MMC_ERR_FAILED, align 8
  %106 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %107 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %106, i32 0, i32 1
  store i8* %105, i8** %107, align 8
  br label %108

108:                                              ; preds = %104, %93, %88
  %109 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %2, align 8
  %110 = call i32 @aw_mmc_req_done(%struct.aw_mmc_softc* %109)
  br label %111

111:                                              ; preds = %108, %30
  ret void
}

declare dso_local i8* @AW_MMC_READ_4(%struct.aw_mmc_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @aw_mmc_req_done(%struct.aw_mmc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
