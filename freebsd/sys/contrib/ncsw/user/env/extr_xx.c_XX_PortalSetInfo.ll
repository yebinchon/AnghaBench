; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/user/env/extr_xx.c_XX_PortalSetInfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/user/env/extr_xx.c_XX_PortalSetInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64**, i8**, i8**, i32**, i32**, i32**, i32** }
%struct.dpaa_portals_softc = type { i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32, i32, i32, i32 }

@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"bman-portals\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"qman-portals\00", align 1
@BM_PORTAL = common dso_local global i32 0, align 4
@QM_PORTAL = common dso_local global i32 0, align 4
@XX_PInfo = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @XX_PortalSetInfo(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.dpaa_portals_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* @M_TEMP, align 4
  %9 = load i32, i32* @M_WAITOK, align 4
  %10 = load i32, i32* @M_ZERO, align 4
  %11 = or i32 %9, %10
  %12 = call i8* @malloc(i32 1, i32 %8, i32 %11)
  store i8* %12, i8** %3, align 8
  %13 = call i32 @strlen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %7, align 4
  %14 = load i8*, i8** %3, align 8
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @device_get_name(i32 %15)
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @strncpy(i8* %14, i32 %16, i32 %17)
  %19 = load i8*, i8** %3, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i64 @strncmp(i8* %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load i8*, i8** %3, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i64 @strncmp(i8* %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %156

29:                                               ; preds = %23, %1
  %30 = load i8*, i8** %3, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i64 @strncmp(i8* %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @BM_PORTAL, align 4
  store i32 %35, i32* %6, align 4
  br label %38

36:                                               ; preds = %29
  %37 = load i32, i32* @QM_PORTAL, align 4
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = load i32, i32* %2, align 4
  %40 = call %struct.dpaa_portals_softc* @device_get_softc(i32 %39)
  store %struct.dpaa_portals_softc* %40, %struct.dpaa_portals_softc** %4, align 8
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %132, %38
  %42 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %4, align 8
  %43 = getelementptr inbounds %struct.dpaa_portals_softc, %struct.dpaa_portals_softc* %42, i32 0, i32 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %135

51:                                               ; preds = %41
  %52 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %4, align 8
  %53 = getelementptr inbounds %struct.dpaa_portals_softc, %struct.dpaa_portals_softc* %52, i32 0, i32 1
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @XX_PInfo, i32 0, i32 0), align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64*, i64** %60, i64 %62
  %64 = load i64*, i64** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  store i64 %59, i64* %67, align 8
  %68 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %4, align 8
  %69 = getelementptr inbounds %struct.dpaa_portals_softc, %struct.dpaa_portals_softc* %68, i32 0, i32 1
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @XX_PInfo, i32 0, i32 6), align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32*, i32** %76, i64 %78
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  store i32 %75, i32* %83, align 4
  %84 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %4, align 8
  %85 = getelementptr inbounds %struct.dpaa_portals_softc, %struct.dpaa_portals_softc* %84, i32 0, i32 1
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @XX_PInfo, i32 0, i32 5), align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32*, i32** %92, i64 %94
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  store i32 %91, i32* %99, align 4
  %100 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %4, align 8
  %101 = getelementptr inbounds %struct.dpaa_portals_softc, %struct.dpaa_portals_softc* %100, i32 0, i32 1
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @XX_PInfo, i32 0, i32 4), align 8
  %109 = load i32, i32* %6, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32*, i32** %108, i64 %110
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %5, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  store i32 %107, i32* %115, align 4
  %116 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %4, align 8
  %117 = getelementptr inbounds %struct.dpaa_portals_softc, %struct.dpaa_portals_softc* %116, i32 0, i32 1
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %117, align 8
  %119 = load i32, i32* %5, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @XX_PInfo, i32 0, i32 3), align 8
  %125 = load i32, i32* %6, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32*, i32** %124, i64 %126
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %5, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  store i32 %123, i32* %131, align 4
  br label %132

132:                                              ; preds = %51
  %133 = load i32, i32* %5, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %5, align 4
  br label %41

135:                                              ; preds = %41
  %136 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %4, align 8
  %137 = getelementptr inbounds %struct.dpaa_portals_softc, %struct.dpaa_portals_softc* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  %140 = load i32, i32* %139, align 4
  %141 = call i8* @rman_get_bushandle(i32 %140)
  %142 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @XX_PInfo, i32 0, i32 2), align 8
  %143 = load i32, i32* %6, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8*, i8** %142, i64 %144
  store i8* %141, i8** %145, align 8
  %146 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %4, align 8
  %147 = getelementptr inbounds %struct.dpaa_portals_softc, %struct.dpaa_portals_softc* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 1
  %150 = load i32, i32* %149, align 4
  %151 = call i8* @rman_get_bushandle(i32 %150)
  %152 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @XX_PInfo, i32 0, i32 1), align 8
  %153 = load i32, i32* %6, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8*, i8** %152, i64 %154
  store i8* %151, i8** %155, align 8
  br label %156

156:                                              ; preds = %135, %28
  %157 = load i8*, i8** %3, align 8
  %158 = load i32, i32* @M_TEMP, align 4
  %159 = call i32 @free(i8* %157, i32 %158)
  ret void
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncpy(i8*, i32, i32) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local %struct.dpaa_portals_softc* @device_get_softc(i32) #1

declare dso_local i8* @rman_get_bushandle(i32) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
