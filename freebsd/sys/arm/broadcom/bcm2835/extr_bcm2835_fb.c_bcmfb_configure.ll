; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_fb.c_bcmfb_configure.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_fb.c_bcmfb_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcmsc_softc = type { i32, i32, i32, i32, i32 }

@bcmsc = common dso_local global %struct.bcmsc_softc zeroinitializer, align 4
@.str = private unnamed_addr constant [8 x i8] c"/chosen\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"bootargs\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"bcm2708_fb.fbwidth\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"bcm2708_fb.fbheight\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"bcm2708_fb.fbswap\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"broadcom,bcm2835-fb\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"broadcom,width\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"broadcom,height\00", align 1
@FB_WIDTH = common dso_local global i32 0, align 4
@FB_HEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bcmfb_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcmfb_configure(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [2048 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.bcmsc_softc*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.bcmsc_softc* @bcmsc, %struct.bcmsc_softc** %12, align 8
  %13 = load %struct.bcmsc_softc*, %struct.bcmsc_softc** %12, align 8
  %14 = getelementptr inbounds %struct.bcmsc_softc, %struct.bcmsc_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %152

18:                                               ; preds = %1
  %19 = load %struct.bcmsc_softc*, %struct.bcmsc_softc** %12, align 8
  %20 = getelementptr inbounds %struct.bcmsc_softc, %struct.bcmsc_softc* %19, i32 0, i32 1
  store i32 0, i32* %20, align 4
  %21 = load %struct.bcmsc_softc*, %struct.bcmsc_softc** %12, align 8
  %22 = getelementptr inbounds %struct.bcmsc_softc, %struct.bcmsc_softc* %21, i32 0, i32 2
  store i32 0, i32* %22, align 4
  %23 = call i32 @OF_finddevice(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, -1
  br i1 %25, label %26, label %89

26:                                               ; preds = %18
  %27 = load i32, i32* %9, align 4
  %28 = bitcast [2048 x i8]* %4 to i8**
  %29 = call i64 @OF_getprop(i32 %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %28, i32 2048)
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %89

31:                                               ; preds = %26
  %32 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  store i8* %32, i8** %6, align 8
  br label %33

33:                                               ; preds = %87, %41, %31
  %34 = call i8* @strsep(i8** %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i8* %34, i8** %7, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %88

36:                                               ; preds = %33
  %37 = load i8*, i8** %7, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %33

42:                                               ; preds = %36
  %43 = call i8* @strsep(i8** %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i8* %43, i8** %5, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = call i64 @strcmp(i8* %44, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %42
  %48 = load i8*, i8** %7, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load i8*, i8** %7, align 8
  %52 = call i64 @strtol(i8* %51, i32* null, i32 0)
  %53 = trunc i64 %52 to i32
  %54 = load %struct.bcmsc_softc*, %struct.bcmsc_softc** %12, align 8
  %55 = getelementptr inbounds %struct.bcmsc_softc, %struct.bcmsc_softc* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  br label %87

56:                                               ; preds = %47, %42
  %57 = load i8*, i8** %5, align 8
  %58 = call i64 @strcmp(i8* %57, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  %61 = load i8*, i8** %7, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load i8*, i8** %7, align 8
  %65 = call i64 @strtol(i8* %64, i32* null, i32 0)
  %66 = trunc i64 %65 to i32
  %67 = load %struct.bcmsc_softc*, %struct.bcmsc_softc** %12, align 8
  %68 = getelementptr inbounds %struct.bcmsc_softc, %struct.bcmsc_softc* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  br label %86

69:                                               ; preds = %60, %56
  %70 = load i8*, i8** %5, align 8
  %71 = call i64 @strcmp(i8* %70, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %69
  %74 = load i8*, i8** %7, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %85

76:                                               ; preds = %73
  %77 = load i8*, i8** %7, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 49
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load %struct.bcmsc_softc*, %struct.bcmsc_softc** %12, align 8
  %83 = getelementptr inbounds %struct.bcmsc_softc, %struct.bcmsc_softc* %82, i32 0, i32 3
  store i32 1, i32* %83, align 4
  br label %84

84:                                               ; preds = %81, %76
  br label %85

85:                                               ; preds = %84, %73, %69
  br label %86

86:                                               ; preds = %85, %63
  br label %87

87:                                               ; preds = %86, %50
  br label %33

88:                                               ; preds = %33
  br label %89

89:                                               ; preds = %88, %26, %18
  %90 = call i32 @OF_finddevice(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %11, align 4
  %92 = icmp ne i32 %91, -1
  br i1 %92, label %93, label %128

93:                                               ; preds = %89
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @fdt_find_compatible(i32 %94, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 1)
  store i32 %95, i32* %10, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %128

97:                                               ; preds = %93
  %98 = load %struct.bcmsc_softc*, %struct.bcmsc_softc** %12, align 8
  %99 = getelementptr inbounds %struct.bcmsc_softc, %struct.bcmsc_softc* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %97
  %103 = load i32, i32* %10, align 4
  %104 = call i64 @OF_getencprop(i32 %103, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i8** %8, i32 8)
  %105 = icmp sgt i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %102
  %107 = load i8*, i8** %8, align 8
  %108 = ptrtoint i8* %107 to i32
  %109 = load %struct.bcmsc_softc*, %struct.bcmsc_softc** %12, align 8
  %110 = getelementptr inbounds %struct.bcmsc_softc, %struct.bcmsc_softc* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  br label %111

111:                                              ; preds = %106, %102
  br label %112

112:                                              ; preds = %111, %97
  %113 = load %struct.bcmsc_softc*, %struct.bcmsc_softc** %12, align 8
  %114 = getelementptr inbounds %struct.bcmsc_softc, %struct.bcmsc_softc* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %112
  %118 = load i32, i32* %10, align 4
  %119 = call i64 @OF_getencprop(i32 %118, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8** %8, i32 8)
  %120 = icmp sgt i64 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %117
  %122 = load i8*, i8** %8, align 8
  %123 = ptrtoint i8* %122 to i32
  %124 = load %struct.bcmsc_softc*, %struct.bcmsc_softc** %12, align 8
  %125 = getelementptr inbounds %struct.bcmsc_softc, %struct.bcmsc_softc* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 4
  br label %126

126:                                              ; preds = %121, %117
  br label %127

127:                                              ; preds = %126, %112
  br label %128

128:                                              ; preds = %127, %93, %89
  %129 = load %struct.bcmsc_softc*, %struct.bcmsc_softc** %12, align 8
  %130 = getelementptr inbounds %struct.bcmsc_softc, %struct.bcmsc_softc* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %128
  %134 = load i32, i32* @FB_WIDTH, align 4
  %135 = load %struct.bcmsc_softc*, %struct.bcmsc_softc** %12, align 8
  %136 = getelementptr inbounds %struct.bcmsc_softc, %struct.bcmsc_softc* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 4
  br label %137

137:                                              ; preds = %133, %128
  %138 = load %struct.bcmsc_softc*, %struct.bcmsc_softc** %12, align 8
  %139 = getelementptr inbounds %struct.bcmsc_softc, %struct.bcmsc_softc* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %137
  %143 = load i32, i32* @FB_HEIGHT, align 4
  %144 = load %struct.bcmsc_softc*, %struct.bcmsc_softc** %12, align 8
  %145 = getelementptr inbounds %struct.bcmsc_softc, %struct.bcmsc_softc* %144, i32 0, i32 2
  store i32 %143, i32* %145, align 4
  br label %146

146:                                              ; preds = %142, %137
  %147 = load %struct.bcmsc_softc*, %struct.bcmsc_softc** %12, align 8
  %148 = getelementptr inbounds %struct.bcmsc_softc, %struct.bcmsc_softc* %147, i32 0, i32 4
  %149 = call i32 @bcmfb_init(i32 0, i32* %148, i32 0)
  %150 = load %struct.bcmsc_softc*, %struct.bcmsc_softc** %12, align 8
  %151 = getelementptr inbounds %struct.bcmsc_softc, %struct.bcmsc_softc* %150, i32 0, i32 0
  store i32 1, i32* %151, align 4
  store i32 0, i32* %2, align 4
  br label %152

152:                                              ; preds = %146, %17
  %153 = load i32, i32* %2, align 4
  ret i32 %153
}

declare dso_local i32 @OF_finddevice(i8*) #1

declare dso_local i64 @OF_getprop(i32, i8*, i8**, i32) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @fdt_find_compatible(i32, i8*, i32) #1

declare dso_local i64 @OF_getencprop(i32, i8*, i8**, i32) #1

declare dso_local i32 @bcmfb_init(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
