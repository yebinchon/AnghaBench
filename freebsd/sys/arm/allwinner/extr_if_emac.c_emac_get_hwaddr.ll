; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_emac.c_emac_get_hwaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_emac.c_emac_get_hwaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_softc = type { i32 }

@EMAC_MAC_A0 = common dso_local global i32 0, align 4
@EMAC_MAC_A1 = common dso_local global i32 0, align 4
@AW_SID_FUSE_ROOTKEY = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"MAC address: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.emac_softc*, i8*)* @emac_get_hwaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emac_get_hwaddr(%struct.emac_softc* %0, i8* %1) #0 {
  %3 = alloca %struct.emac_softc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [16 x i8], align 16
  %9 = alloca i64, align 8
  store %struct.emac_softc* %0, %struct.emac_softc** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %11 = load i32, i32* @EMAC_MAC_A0, align 4
  %12 = call i32 @EMAC_READ_REG(%struct.emac_softc* %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %14 = load i32, i32* @EMAC_MAC_A1, align 4
  %15 = call i32 @EMAC_READ_REG(%struct.emac_softc* %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %6, align 4
  %18 = or i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %62

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = or i32 %21, %22
  %24 = icmp ne i32 %23, 16777215
  br i1 %24, label %25, label %62

25:                                               ; preds = %20
  %26 = load i32, i32* %6, align 4
  %27 = ashr i32 %26, 16
  %28 = and i32 %27, 255
  %29 = trunc i32 %28 to i8
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  store i8 %29, i8* %31, align 1
  %32 = load i32, i32* %6, align 4
  %33 = ashr i32 %32, 8
  %34 = and i32 %33, 255
  %35 = trunc i32 %34 to i8
  %36 = load i8*, i8** %4, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  store i8 %35, i8* %37, align 1
  %38 = load i32, i32* %6, align 4
  %39 = ashr i32 %38, 0
  %40 = and i32 %39, 255
  %41 = trunc i32 %40 to i8
  %42 = load i8*, i8** %4, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 2
  store i8 %41, i8* %43, align 1
  %44 = load i32, i32* %5, align 4
  %45 = ashr i32 %44, 16
  %46 = and i32 %45, 255
  %47 = trunc i32 %46 to i8
  %48 = load i8*, i8** %4, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 3
  store i8 %47, i8* %49, align 1
  %50 = load i32, i32* %5, align 4
  %51 = ashr i32 %50, 8
  %52 = and i32 %51, 255
  %53 = trunc i32 %52 to i8
  %54 = load i8*, i8** %4, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 4
  store i8 %53, i8* %55, align 1
  %56 = load i32, i32* %5, align 4
  %57 = ashr i32 %56, 0
  %58 = and i32 %57, 255
  %59 = trunc i32 %58 to i8
  %60 = load i8*, i8** %4, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 5
  store i8 %59, i8* %61, align 1
  br label %118

62:                                               ; preds = %20, %2
  store i64 16, i64* %9, align 8
  %63 = load i32, i32* @AW_SID_FUSE_ROOTKEY, align 4
  %64 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %65 = call i64 @aw_sid_get_fuse(i32 %63, i8* %64, i64* %9)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %90

67:                                               ; preds = %62
  %68 = load i8*, i8** %4, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  store i8 2, i8* %69, align 1
  %70 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 3
  %71 = load i8, i8* %70, align 1
  %72 = load i8*, i8** %4, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 1
  store i8 %71, i8* %73, align 1
  %74 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 12
  %75 = load i8, i8* %74, align 4
  %76 = load i8*, i8** %4, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 2
  store i8 %75, i8* %77, align 1
  %78 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 13
  %79 = load i8, i8* %78, align 1
  %80 = load i8*, i8** %4, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 3
  store i8 %79, i8* %81, align 1
  %82 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 14
  %83 = load i8, i8* %82, align 2
  %84 = load i8*, i8** %4, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 4
  store i8 %83, i8* %85, align 1
  %86 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 15
  %87 = load i8, i8* %86, align 1
  %88 = load i8*, i8** %4, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 5
  store i8 %87, i8* %89, align 1
  br label %117

90:                                               ; preds = %62
  %91 = call i32 (...) @arc4random()
  %92 = and i32 %91, 16777215
  store i32 %92, i32* %7, align 4
  %93 = load i8*, i8** %4, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 0
  store i8 98, i8* %94, align 1
  %95 = load i8*, i8** %4, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 1
  store i8 115, i8* %96, align 1
  %97 = load i8*, i8** %4, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 2
  store i8 100, i8* %98, align 1
  %99 = load i32, i32* %7, align 4
  %100 = ashr i32 %99, 16
  %101 = and i32 %100, 255
  %102 = trunc i32 %101 to i8
  %103 = load i8*, i8** %4, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 3
  store i8 %102, i8* %104, align 1
  %105 = load i32, i32* %7, align 4
  %106 = ashr i32 %105, 8
  %107 = and i32 %106, 255
  %108 = trunc i32 %107 to i8
  %109 = load i8*, i8** %4, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 4
  store i8 %108, i8* %110, align 1
  %111 = load i32, i32* %7, align 4
  %112 = ashr i32 %111, 0
  %113 = and i32 %112, 255
  %114 = trunc i32 %113 to i8
  %115 = load i8*, i8** %4, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 5
  store i8 %114, i8* %116, align 1
  br label %117

117:                                              ; preds = %90, %67
  br label %118

118:                                              ; preds = %117, %25
  %119 = load i64, i64* @bootverbose, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %118
  %122 = load i8*, i8** %4, align 8
  %123 = call i8* @ether_sprintf(i8* %122)
  %124 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %123)
  br label %125

125:                                              ; preds = %121, %118
  ret void
}

declare dso_local i32 @EMAC_READ_REG(%struct.emac_softc*, i32) #1

declare dso_local i64 @aw_sid_get_fuse(i32, i8*, i64*) #1

declare dso_local i32 @arc4random(...) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @ether_sprintf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
