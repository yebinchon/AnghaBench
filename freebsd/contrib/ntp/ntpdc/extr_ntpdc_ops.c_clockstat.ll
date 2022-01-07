; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpdc/extr_ntpdc_ops.c_clockstat.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpdc/extr_ntpdc_ops.c_clockstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clktype = type { i64, i8* }
%struct.parse = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.info_clock = type { i64, i32, i32, i32, i64, i64, i32, i32, i64, i64, i64, i64, i64, i32 }

@MAXARGS = common dso_local global i32 0, align 4
@impl_ver = common dso_local global i64 0, align 8
@REQ_GET_CLOCKINFO = common dso_local global i32 0, align 4
@INFO_ERR_IMPL = common dso_local global i32 0, align 4
@IMPL_XNTPD = common dso_local global i64 0, align 8
@IMPL_XNTPD_OLD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"clock address:        %s\0A\00", align 1
@clktypes = common dso_local global %struct.clktype* null, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"clock type:           %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"clock type:           unknown type (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"last event:           %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"current status:       %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"number of polls:      %lu\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"no response to poll:  %lu\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"bad format responses: %lu\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"bad data responses:   %lu\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"running time:         %lu\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"fudge time 1:         %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"fudge time 2:         %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"stratum:              %ld\0A\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"reference ID:         %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"fudge flags:          0x%x\0A\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parse*, i32*)* @clockstat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clockstat(%struct.parse* %0, i32* %1) #0 {
  %3 = alloca %struct.parse*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.info_clock*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.clktype*, align 8
  %15 = alloca i32, align 4
  store %struct.parse* %0, %struct.parse** %3, align 8
  store i32* %1, i32** %4, align 8
  %16 = load i32, i32* @MAXARGS, align 4
  %17 = call i32 @min(i32 %16, i32 8)
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %6, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %7, align 8
  %21 = load %struct.parse*, %struct.parse** %3, align 8
  %22 = getelementptr inbounds %struct.parse, %struct.parse* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @COUNTOF(i32* %20)
  %25 = call i32 @min(i32 %23, i32 %24)
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %27

27:                                               ; preds = %41, %2
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* %8, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = load %struct.parse*, %struct.parse** %3, align 8
  %33 = getelementptr inbounds %struct.parse, %struct.parse* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i64, i64* %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 @NSRCADR(i32* %37)
  %39 = load i64, i64* %9, align 8
  %40 = getelementptr inbounds i32, i32* %20, i64 %39
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %31
  %42 = load i64, i64* %9, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %9, align 8
  br label %27

44:                                               ; preds = %27
  br label %45

45:                                               ; preds = %59, %44
  %46 = load i64, i64* @impl_ver, align 8
  %47 = load i32, i32* @REQ_GET_CLOCKINFO, align 4
  %48 = load i64, i64* %9, align 8
  %49 = bitcast i32* %20 to i8*
  %50 = bitcast %struct.info_clock** %5 to i8*
  %51 = call i32 @doquery(i64 %46, i32 %47, i32 0, i64 %48, i32 4, i8* %49, i64* %10, i64* %11, i8* %50, i32 0, i32 96)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* @INFO_ERR_IMPL, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %45
  %56 = load i64, i64* @impl_ver, align 8
  %57 = load i64, i64* @IMPL_XNTPD, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i64, i64* @IMPL_XNTPD_OLD, align 8
  store i64 %60, i64* @impl_ver, align 8
  br label %45

61:                                               ; preds = %55, %45
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store i32 1, i32* %15, align 4
  br label %209

65:                                               ; preds = %61
  %66 = load i64, i64* %10, align 8
  %67 = load i32*, i32** %4, align 8
  %68 = call i32 @checkitems(i64 %66, i32* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %65
  store i32 1, i32* %15, align 4
  br label %209

71:                                               ; preds = %65
  %72 = load i64, i64* %11, align 8
  %73 = call i32 @checkitemsize(i64 %72, i32 96)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %71
  store i32 1, i32* %15, align 4
  br label %209

76:                                               ; preds = %71
  br label %77

77:                                               ; preds = %205, %76
  %78 = load i64, i64* %10, align 8
  %79 = add i64 %78, -1
  store i64 %79, i64* %10, align 8
  %80 = icmp ugt i64 %78, 0
  br i1 %80, label %81, label %208

81:                                               ; preds = %77
  %82 = load i32*, i32** %4, align 8
  %83 = load %struct.info_clock*, %struct.info_clock** %5, align 8
  %84 = getelementptr inbounds %struct.info_clock, %struct.info_clock* %83, i32 0, i32 13
  %85 = load i32, i32* %84, align 8
  %86 = call i8* @numtoa(i32 %85)
  %87 = call i32 (i32*, i8*, ...) @fprintf(i32* %82, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %86)
  %88 = load %struct.clktype*, %struct.clktype** @clktypes, align 8
  store %struct.clktype* %88, %struct.clktype** %14, align 8
  br label %89

89:                                               ; preds = %104, %81
  %90 = load %struct.clktype*, %struct.clktype** %14, align 8
  %91 = getelementptr inbounds %struct.clktype, %struct.clktype* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp sge i64 %92, 0
  br i1 %93, label %94, label %107

94:                                               ; preds = %89
  %95 = load %struct.clktype*, %struct.clktype** %14, align 8
  %96 = getelementptr inbounds %struct.clktype, %struct.clktype* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.info_clock*, %struct.info_clock** %5, align 8
  %99 = getelementptr inbounds %struct.info_clock, %struct.info_clock* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %97, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %94
  br label %107

103:                                              ; preds = %94
  br label %104

104:                                              ; preds = %103
  %105 = load %struct.clktype*, %struct.clktype** %14, align 8
  %106 = getelementptr inbounds %struct.clktype, %struct.clktype* %105, i32 1
  store %struct.clktype* %106, %struct.clktype** %14, align 8
  br label %89

107:                                              ; preds = %102, %89
  %108 = load %struct.clktype*, %struct.clktype** %14, align 8
  %109 = getelementptr inbounds %struct.clktype, %struct.clktype* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp sge i64 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %107
  %113 = load i32*, i32** %4, align 8
  %114 = load %struct.clktype*, %struct.clktype** %14, align 8
  %115 = getelementptr inbounds %struct.clktype, %struct.clktype* %114, i32 0, i32 1
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 (i32*, i8*, ...) @fprintf(i32* %113, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %116)
  br label %124

118:                                              ; preds = %107
  %119 = load i32*, i32** %4, align 8
  %120 = load %struct.info_clock*, %struct.info_clock** %5, align 8
  %121 = getelementptr inbounds %struct.info_clock, %struct.info_clock* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = call i32 (i32*, i8*, ...) @fprintf(i32* %119, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i64 %122)
  br label %124

124:                                              ; preds = %118, %112
  %125 = load i32*, i32** %4, align 8
  %126 = load %struct.info_clock*, %struct.info_clock** %5, align 8
  %127 = getelementptr inbounds %struct.info_clock, %struct.info_clock* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = call i32 (i32*, i8*, ...) @fprintf(i32* %125, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %128)
  %130 = load i32*, i32** %4, align 8
  %131 = load %struct.info_clock*, %struct.info_clock** %5, align 8
  %132 = getelementptr inbounds %struct.info_clock, %struct.info_clock* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = call i32 (i32*, i8*, ...) @fprintf(i32* %130, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %133)
  %135 = load i32*, i32** %4, align 8
  %136 = load %struct.info_clock*, %struct.info_clock** %5, align 8
  %137 = getelementptr inbounds %struct.info_clock, %struct.info_clock* %136, i32 0, i32 12
  %138 = load i64, i64* %137, align 8
  %139 = call i64 @ntohl(i64 %138)
  %140 = trunc i64 %139 to i32
  %141 = call i32 (i32*, i8*, ...) @fprintf(i32* %135, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %140)
  %142 = load i32*, i32** %4, align 8
  %143 = load %struct.info_clock*, %struct.info_clock** %5, align 8
  %144 = getelementptr inbounds %struct.info_clock, %struct.info_clock* %143, i32 0, i32 11
  %145 = load i64, i64* %144, align 8
  %146 = call i64 @ntohl(i64 %145)
  %147 = trunc i64 %146 to i32
  %148 = call i32 (i32*, i8*, ...) @fprintf(i32* %142, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %147)
  %149 = load i32*, i32** %4, align 8
  %150 = load %struct.info_clock*, %struct.info_clock** %5, align 8
  %151 = getelementptr inbounds %struct.info_clock, %struct.info_clock* %150, i32 0, i32 10
  %152 = load i64, i64* %151, align 8
  %153 = call i64 @ntohl(i64 %152)
  %154 = trunc i64 %153 to i32
  %155 = call i32 (i32*, i8*, ...) @fprintf(i32* %149, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %154)
  %156 = load i32*, i32** %4, align 8
  %157 = load %struct.info_clock*, %struct.info_clock** %5, align 8
  %158 = getelementptr inbounds %struct.info_clock, %struct.info_clock* %157, i32 0, i32 9
  %159 = load i64, i64* %158, align 8
  %160 = call i64 @ntohl(i64 %159)
  %161 = trunc i64 %160 to i32
  %162 = call i32 (i32*, i8*, ...) @fprintf(i32* %156, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %161)
  %163 = load i32*, i32** %4, align 8
  %164 = load %struct.info_clock*, %struct.info_clock** %5, align 8
  %165 = getelementptr inbounds %struct.info_clock, %struct.info_clock* %164, i32 0, i32 8
  %166 = load i64, i64* %165, align 8
  %167 = call i64 @ntohl(i64 %166)
  %168 = trunc i64 %167 to i32
  %169 = call i32 (i32*, i8*, ...) @fprintf(i32* %163, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i32 %168)
  %170 = load %struct.info_clock*, %struct.info_clock** %5, align 8
  %171 = getelementptr inbounds %struct.info_clock, %struct.info_clock* %170, i32 0, i32 7
  %172 = call i32 @NTOHL_FP(i32* %171, i32* %13)
  %173 = load i32*, i32** %4, align 8
  %174 = call i8* @lfptoa(i32* %13, i32 6)
  %175 = call i32 (i32*, i8*, ...) @fprintf(i32* %173, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i8* %174)
  %176 = load %struct.info_clock*, %struct.info_clock** %5, align 8
  %177 = getelementptr inbounds %struct.info_clock, %struct.info_clock* %176, i32 0, i32 6
  %178 = call i32 @NTOHL_FP(i32* %177, i32* %13)
  %179 = load i32*, i32** %4, align 8
  %180 = call i8* @lfptoa(i32* %13, i32 6)
  %181 = call i32 (i32*, i8*, ...) @fprintf(i32* %179, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0), i8* %180)
  %182 = load i32*, i32** %4, align 8
  %183 = load %struct.info_clock*, %struct.info_clock** %5, align 8
  %184 = getelementptr inbounds %struct.info_clock, %struct.info_clock* %183, i32 0, i32 5
  %185 = load i64, i64* %184, align 8
  %186 = call i64 @ntohl(i64 %185)
  %187 = trunc i64 %186 to i32
  %188 = call i32 (i32*, i8*, ...) @fprintf(i32* %182, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i32 %187)
  %189 = load i32*, i32** %4, align 8
  %190 = load %struct.info_clock*, %struct.info_clock** %5, align 8
  %191 = getelementptr inbounds %struct.info_clock, %struct.info_clock* %190, i32 0, i32 4
  %192 = load i64, i64* %191, align 8
  %193 = call i8* @refid_string(i64 %192, i32 0)
  %194 = call i32 (i32*, i8*, ...) @fprintf(i32* %189, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i8* %193)
  %195 = load i32*, i32** %4, align 8
  %196 = load %struct.info_clock*, %struct.info_clock** %5, align 8
  %197 = getelementptr inbounds %struct.info_clock, %struct.info_clock* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 8
  %199 = call i32 (i32*, i8*, ...) @fprintf(i32* %195, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0), i32 %198)
  %200 = load i64, i64* %10, align 8
  %201 = icmp ugt i64 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %124
  %203 = load i32*, i32** %4, align 8
  %204 = call i32 (i32*, i8*, ...) @fprintf(i32* %203, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  br label %205

205:                                              ; preds = %202, %124
  %206 = load %struct.info_clock*, %struct.info_clock** %5, align 8
  %207 = getelementptr inbounds %struct.info_clock, %struct.info_clock* %206, i32 1
  store %struct.info_clock* %207, %struct.info_clock** %5, align 8
  br label %77

208:                                              ; preds = %77
  store i32 0, i32* %15, align 4
  br label %209

209:                                              ; preds = %208, %75, %70, %64
  %210 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %210)
  %211 = load i32, i32* %15, align 4
  switch i32 %211, label %213 [
    i32 0, label %212
    i32 1, label %212
  ]

212:                                              ; preds = %209, %209
  ret void

213:                                              ; preds = %209
  unreachable
}

declare dso_local i32 @min(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @COUNTOF(i32*) #1

declare dso_local i32 @NSRCADR(i32*) #1

declare dso_local i32 @doquery(i64, i32, i32, i64, i32, i8*, i64*, i64*, i8*, i32, i32) #1

declare dso_local i32 @checkitems(i64, i32*) #1

declare dso_local i32 @checkitemsize(i64, i32) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i8* @numtoa(i32) #1

declare dso_local i64 @ntohl(i64) #1

declare dso_local i32 @NTOHL_FP(i32*, i32*) #1

declare dso_local i8* @lfptoa(i32*, i32) #1

declare dso_local i8* @refid_string(i64, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
