; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vrtc.c_vrtc_data_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vrtc.c_vrtc_data_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { i32 }
%struct.vrtc = type { i32, %struct.rtcdev }
%struct.rtcdev = type { i32 }

@RTC_CENTURY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Read value %#x from RTC offset %#x\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"RTC reg_a set to %#x\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"RTC reg_b set to %#x\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"RTC reg_c set to %#x (ignored)\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"RTC reg_d set to %#x (ignored)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"RTC offset %#x set to %#x\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"vrtc_time_update error %d\00", align 1
@VRTC_BROKEN_TIME = common dso_local global i64 0, align 8
@rtc_flag_broken_time = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vrtc_data_handler(%struct.vm* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.vm*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.vrtc*, align 8
  %15 = alloca %struct.rtcdev*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.vm* %0, %struct.vm** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %20 = load %struct.vm*, %struct.vm** %8, align 8
  %21 = call %struct.vrtc* @vm_rtc(%struct.vm* %20)
  store %struct.vrtc* %21, %struct.vrtc** %14, align 8
  %22 = load %struct.vrtc*, %struct.vrtc** %14, align 8
  %23 = getelementptr inbounds %struct.vrtc, %struct.vrtc* %22, i32 0, i32 1
  store %struct.rtcdev* %23, %struct.rtcdev** %15, align 8
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 1
  br i1 %25, label %26, label %27

26:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %173

27:                                               ; preds = %6
  %28 = load %struct.vrtc*, %struct.vrtc** %14, align 8
  %29 = call i32 @VRTC_LOCK(%struct.vrtc* %28)
  %30 = load %struct.vrtc*, %struct.vrtc** %14, align 8
  %31 = getelementptr inbounds %struct.vrtc, %struct.vrtc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %19, align 4
  %33 = load i32, i32* %19, align 4
  %34 = sext i32 %33 to i64
  %35 = icmp uge i64 %34, 4
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load %struct.vrtc*, %struct.vrtc** %14, align 8
  %38 = call i32 @VRTC_UNLOCK(%struct.vrtc* %37)
  store i32 -1, i32* %7, align 4
  br label %173

39:                                               ; preds = %27
  store i32 0, i32* %18, align 4
  %40 = load %struct.vrtc*, %struct.vrtc** %14, align 8
  %41 = call i64 @vrtc_curtime(%struct.vrtc* %40, i32* %16)
  store i64 %41, i64* %17, align 8
  %42 = load %struct.vrtc*, %struct.vrtc** %14, align 8
  %43 = load i64, i64* %17, align 8
  %44 = load i32, i32* %16, align 4
  %45 = call i32 @vrtc_time_update(%struct.vrtc* %42, i64 %43, i32 %44)
  %46 = load i32, i32* %19, align 4
  %47 = icmp slt i32 %46, 10
  br i1 %47, label %52, label %48

48:                                               ; preds = %39
  %49 = load i32, i32* %19, align 4
  %50 = load i32, i32* @RTC_CENTURY, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %48, %39
  %53 = load i64, i64* %17, align 8
  %54 = load %struct.vrtc*, %struct.vrtc** %14, align 8
  %55 = call i32 @secs_to_rtc(i64 %53, %struct.vrtc* %54, i32 0)
  br label %56

56:                                               ; preds = %52, %48
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %85

59:                                               ; preds = %56
  %60 = load i32, i32* %19, align 4
  %61 = icmp eq i32 %60, 12
  br i1 %61, label %62, label %70

62:                                               ; preds = %59
  %63 = load %struct.vrtc*, %struct.vrtc** %14, align 8
  %64 = getelementptr inbounds %struct.vrtc, %struct.vrtc* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.rtcdev, %struct.rtcdev* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %13, align 8
  store i32 %66, i32* %67, align 4
  %68 = load %struct.vrtc*, %struct.vrtc** %14, align 8
  %69 = call i32 @vrtc_set_reg_c(%struct.vrtc* %68, i32 0)
  br label %78

70:                                               ; preds = %59
  %71 = load %struct.rtcdev*, %struct.rtcdev** %15, align 8
  %72 = bitcast %struct.rtcdev* %71 to i32*
  %73 = load i32, i32* %19, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %13, align 8
  store i32 %76, i32* %77, align 4
  br label %78

78:                                               ; preds = %70, %62
  %79 = load %struct.vm*, %struct.vm** %8, align 8
  %80 = load i32, i32* %9, align 4
  %81 = load i32*, i32** %13, align 8
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %19, align 4
  %84 = call i32 @VCPU_CTR2(%struct.vm* %79, i32 %80, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %82, i32 %83)
  br label %169

85:                                               ; preds = %56
  %86 = load i32, i32* %19, align 4
  switch i32 %86, label %123 [
    i32 10, label %87
    i32 11, label %97
    i32 12, label %107
    i32 13, label %113
    i32 0, label %119
  ]

87:                                               ; preds = %85
  %88 = load %struct.vm*, %struct.vm** %8, align 8
  %89 = load i32, i32* %9, align 4
  %90 = load i32*, i32** %13, align 8
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @VCPU_CTR1(%struct.vm* %88, i32 %89, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %91)
  %93 = load %struct.vrtc*, %struct.vrtc** %14, align 8
  %94 = load i32*, i32** %13, align 8
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @vrtc_set_reg_a(%struct.vrtc* %93, i32 %95)
  br label %137

97:                                               ; preds = %85
  %98 = load %struct.vm*, %struct.vm** %8, align 8
  %99 = load i32, i32* %9, align 4
  %100 = load i32*, i32** %13, align 8
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @VCPU_CTR1(%struct.vm* %98, i32 %99, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  %103 = load %struct.vrtc*, %struct.vrtc** %14, align 8
  %104 = load i32*, i32** %13, align 8
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @vrtc_set_reg_b(%struct.vrtc* %103, i32 %105)
  store i32 %106, i32* %18, align 4
  br label %137

107:                                              ; preds = %85
  %108 = load %struct.vm*, %struct.vm** %8, align 8
  %109 = load i32, i32* %9, align 4
  %110 = load i32*, i32** %13, align 8
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @VCPU_CTR1(%struct.vm* %108, i32 %109, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %111)
  br label %137

113:                                              ; preds = %85
  %114 = load %struct.vm*, %struct.vm** %8, align 8
  %115 = load i32, i32* %9, align 4
  %116 = load i32*, i32** %13, align 8
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @VCPU_CTR1(%struct.vm* %114, i32 %115, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %117)
  br label %137

119:                                              ; preds = %85
  %120 = load i32*, i32** %13, align 8
  %121 = load i32, i32* %120, align 4
  %122 = and i32 %121, 127
  store i32 %122, i32* %120, align 4
  br label %123

123:                                              ; preds = %85, %119
  %124 = load %struct.vm*, %struct.vm** %8, align 8
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* %19, align 4
  %127 = load i32*, i32** %13, align 8
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @VCPU_CTR2(%struct.vm* %124, i32 %125, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %126, i32 %128)
  %130 = load i32*, i32** %13, align 8
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.rtcdev*, %struct.rtcdev** %15, align 8
  %133 = bitcast %struct.rtcdev* %132 to i32*
  %134 = load i32, i32* %19, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  store i32 %131, i32* %136, align 4
  br label %137

137:                                              ; preds = %123, %113, %107, %97, %87
  %138 = load i32, i32* %19, align 4
  %139 = load i32, i32* @RTC_CENTURY, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %168

141:                                              ; preds = %137
  %142 = load %struct.vrtc*, %struct.vrtc** %14, align 8
  %143 = call i32 @rtc_halted(%struct.vrtc* %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %168, label %145

145:                                              ; preds = %141
  %146 = load %struct.vrtc*, %struct.vrtc** %14, align 8
  %147 = call i64 @rtc_to_secs(%struct.vrtc* %146)
  store i64 %147, i64* %17, align 8
  %148 = load %struct.vrtc*, %struct.vrtc** %14, align 8
  %149 = load i64, i64* %17, align 8
  %150 = call i32 (...) @sbinuptime()
  %151 = call i32 @vrtc_time_update(%struct.vrtc* %148, i64 %149, i32 %150)
  store i32 %151, i32* %18, align 4
  %152 = load i32, i32* %18, align 4
  %153 = icmp ne i32 %152, 0
  %154 = xor i1 %153, true
  %155 = zext i1 %154 to i32
  %156 = load i32, i32* %18, align 4
  %157 = sext i32 %156 to i64
  %158 = inttoptr i64 %157 to i8*
  %159 = call i32 @KASSERT(i32 %155, i8* %158)
  %160 = load i64, i64* %17, align 8
  %161 = load i64, i64* @VRTC_BROKEN_TIME, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %167

163:                                              ; preds = %145
  %164 = load i64, i64* @rtc_flag_broken_time, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %163
  store i32 -1, i32* %18, align 4
  br label %167

167:                                              ; preds = %166, %163, %145
  br label %168

168:                                              ; preds = %167, %141, %137
  br label %169

169:                                              ; preds = %168, %78
  %170 = load %struct.vrtc*, %struct.vrtc** %14, align 8
  %171 = call i32 @VRTC_UNLOCK(%struct.vrtc* %170)
  %172 = load i32, i32* %18, align 4
  store i32 %172, i32* %7, align 4
  br label %173

173:                                              ; preds = %169, %36, %26
  %174 = load i32, i32* %7, align 4
  ret i32 %174
}

declare dso_local %struct.vrtc* @vm_rtc(%struct.vm*) #1

declare dso_local i32 @VRTC_LOCK(%struct.vrtc*) #1

declare dso_local i32 @VRTC_UNLOCK(%struct.vrtc*) #1

declare dso_local i64 @vrtc_curtime(%struct.vrtc*, i32*) #1

declare dso_local i32 @vrtc_time_update(%struct.vrtc*, i64, i32) #1

declare dso_local i32 @secs_to_rtc(i64, %struct.vrtc*, i32) #1

declare dso_local i32 @vrtc_set_reg_c(%struct.vrtc*, i32) #1

declare dso_local i32 @VCPU_CTR2(%struct.vm*, i32, i8*, i32, i32) #1

declare dso_local i32 @VCPU_CTR1(%struct.vm*, i32, i8*, i32) #1

declare dso_local i32 @vrtc_set_reg_a(%struct.vrtc*, i32) #1

declare dso_local i32 @vrtc_set_reg_b(%struct.vrtc*, i32) #1

declare dso_local i32 @rtc_halted(%struct.vrtc*) #1

declare dso_local i64 @rtc_to_secs(%struct.vrtc*) #1

declare dso_local i32 @sbinuptime(...) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
