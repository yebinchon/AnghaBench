; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid_debug.c_aacraid_fw_print_mem.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid_debug.c_aacraid_fw_print_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_softc = type { i32 }

@FW_DEBUG_FLAGS_NO_HEADERS_B = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"\0A%04x  \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"- \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aacraid_fw_print_mem(%struct.aac_softc* %0, i64 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.aac_softc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [100 x i8], align 16
  %13 = alloca i8*, align 8
  store %struct.aac_softc* %0, %struct.aac_softc** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %14 = load %struct.aac_softc*, %struct.aac_softc** %5, align 8
  %15 = icmp ne %struct.aac_softc* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %4
  %17 = load %struct.aac_softc*, %struct.aac_softc** %5, align 8
  %18 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* @FW_DEBUG_FLAGS_NO_HEADERS_B, align 4
  %21 = load %struct.aac_softc*, %struct.aac_softc** %5, align 8
  %22 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  br label %25

25:                                               ; preds = %16, %4
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %125, %25
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %132

30:                                               ; preds = %26
  %31 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  store i8* %31, i8** %13, align 8
  %32 = load i8*, i8** %13, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i32 (i8*, i8*, ...) @sprintf(i8* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i8*, i8** %13, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 6
  store i8* %36, i8** %13, align 8
  store i32 0, i32* %10, align 4
  br label %37

37:                                               ; preds = %70, %30
  %38 = load i32, i32* %10, align 4
  %39 = icmp slt i32 %38, 16
  br i1 %39, label %40, label %73

40:                                               ; preds = %37
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %10, align 4
  %43 = add nsw i32 %41, %42
  %44 = load i32, i32* %8, align 4
  %45 = icmp sge i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i8*, i8** %13, align 8
  %48 = call i32 (i8*, i8*, ...) @sprintf(i8* %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %59

49:                                               ; preds = %40
  %50 = load i8*, i8** %13, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %51, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i8*, i8*, ...) @sprintf(i8* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %49, %46
  %60 = load i8*, i8** %13, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 3
  store i8* %61, i8** %13, align 8
  %62 = load i32, i32* %10, align 4
  %63 = icmp eq i32 %62, 7
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load i8*, i8** %13, align 8
  %66 = call i32 (i8*, i8*, ...) @sprintf(i8* %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %67 = load i8*, i8** %13, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 2
  store i8* %68, i8** %13, align 8
  br label %69

69:                                               ; preds = %64, %59
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %10, align 4
  br label %37

73:                                               ; preds = %37
  %74 = load i8*, i8** %13, align 8
  %75 = call i32 (i8*, i8*, ...) @sprintf(i8* %74, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %76 = load i8*, i8** %13, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 2
  store i8* %77, i8** %13, align 8
  store i32 0, i32* %10, align 4
  br label %78

78:                                               ; preds = %122, %73
  %79 = load i32, i32* %10, align 4
  %80 = icmp slt i32 %79, 16
  br i1 %80, label %81, label %125

81:                                               ; preds = %78
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %82, %83
  %85 = load i32, i32* %8, align 4
  %86 = icmp sge i32 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  br label %125

88:                                               ; preds = %81
  %89 = load i32*, i32** %7, align 8
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %90, %91
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %89, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = icmp sgt i32 %95, 31
  br i1 %96, label %97, label %116

97:                                               ; preds = %88
  %98 = load i32*, i32** %7, align 8
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 %99, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %98, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = icmp slt i32 %104, 127
  br i1 %105, label %106, label %116

106:                                              ; preds = %97
  %107 = load i8*, i8** %13, align 8
  %108 = load i32*, i32** %7, align 8
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 %109, %110
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %108, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = call i32 (i8*, i8*, ...) @sprintf(i8* %107, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %114)
  br label %119

116:                                              ; preds = %97, %88
  %117 = load i8*, i8** %13, align 8
  %118 = call i32 (i8*, i8*, ...) @sprintf(i8* %117, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %119

119:                                              ; preds = %116, %106
  %120 = load i8*, i8** %13, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %121, i8** %13, align 8
  br label %122

122:                                              ; preds = %119
  %123 = load i32, i32* %10, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %10, align 4
  br label %78

125:                                              ; preds = %87, %78
  %126 = load %struct.aac_softc*, %struct.aac_softc** %5, align 8
  %127 = load i64, i64* %6, align 8
  %128 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %129 = call i32 @aacraid_fw_printf(%struct.aac_softc* %126, i64 %127, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* %128)
  %130 = load i32, i32* %9, align 4
  %131 = add nsw i32 %130, 16
  store i32 %131, i32* %9, align 4
  br label %26

132:                                              ; preds = %26
  %133 = load %struct.aac_softc*, %struct.aac_softc** %5, align 8
  %134 = icmp ne %struct.aac_softc* %133, null
  br i1 %134, label %135, label %139

135:                                              ; preds = %132
  %136 = load i32, i32* %11, align 4
  %137 = load %struct.aac_softc*, %struct.aac_softc** %5, align 8
  %138 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 4
  br label %139

139:                                              ; preds = %135, %132
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @aacraid_fw_printf(%struct.aac_softc*, i64, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
