; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/parseutil/extr_dcfd.c_convert_rawdcf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/parseutil/extr_dcfd.c_convert_rawdcf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64 }

@.str = private unnamed_addr constant [6 x i8] c"%-30s\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"*** INCOMPLETE\00", align 1
@CVT_NONE = common dso_local global i64 0, align 8
@DCF_S = common dso_local global i32 0, align 4
@DCF_P_P1 = common dso_local global i32 0, align 4
@DCF_P_P2 = common dso_local global i32 0, align 4
@DCF_P_P3 = common dso_local global i32 0, align 4
@DCF_M10 = common dso_local global i32 0, align 4
@DCF_M1 = common dso_local global i32 0, align 4
@DCF_H10 = common dso_local global i32 0, align 4
@DCF_H1 = common dso_local global i32 0, align 4
@DCF_D10 = common dso_local global i32 0, align 4
@DCF_D1 = common dso_local global i32 0, align 4
@DCF_MO0 = common dso_local global i32 0, align 4
@DCF_MO = common dso_local global i32 0, align 4
@DCF_Y10 = common dso_local global i32 0, align 4
@DCF_Y1 = common dso_local global i32 0, align 4
@DCF_DW = common dso_local global i32 0, align 4
@DCF_Z = common dso_local global i32 0, align 4
@DCFB_DST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"*** BAD TIME ZONE\00", align 1
@CVT_FAIL = common dso_local global i64 0, align 8
@CVT_BADFMT = common dso_local global i64 0, align 8
@DCF_A1 = common dso_local global i32 0, align 4
@DCFB_ANNOUNCE = common dso_local global i32 0, align 4
@DCF_A2 = common dso_local global i32 0, align 4
@DCFB_LEAP = common dso_local global i32 0, align 4
@DCF_R = common dso_local global i32 0, align 4
@DCFB_CALLBIT = common dso_local global i32 0, align 4
@CVT_OK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"*** BAD FORMAT (invalid/parity)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32, %struct.TYPE_3__*)* @convert_rawdcf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @convert_rawdcf(i8* %0, i32 %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  %8 = load i32, i32* %6, align 4
  %9 = icmp slt i32 %8, 57
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = call i32 @PRINTF(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %12 = load i64, i64* @CVT_NONE, align 8
  store i64 %12, i64* %4, align 8
  br label %179

13:                                               ; preds = %3
  %14 = load i8*, i8** %5, align 8
  %15 = load i32, i32* @DCF_S, align 4
  %16 = call i32 @ext_bf(i8* %14, i32 %15)
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %174

18:                                               ; preds = %13
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* @DCF_P_P1, align 4
  %21 = call i64 @pcheck(i8* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %174

23:                                               ; preds = %18
  %24 = load i8*, i8** %5, align 8
  %25 = load i32, i32* @DCF_P_P2, align 4
  %26 = call i64 @pcheck(i8* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %174

28:                                               ; preds = %23
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* @DCF_P_P3, align 4
  %31 = call i64 @pcheck(i8* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %174

33:                                               ; preds = %28
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 7
  store i32 0, i32* %35, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 9
  store i64 0, i64* %37, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 8
  store i64 0, i64* %39, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = load i32, i32* @DCF_M10, align 4
  %42 = call i32 @ext_bf(i8* %40, i32 %41)
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @TIMES10(i32 %47)
  %49 = load i8*, i8** %5, align 8
  %50 = load i32, i32* @DCF_M1, align 4
  %51 = call i32 @ext_bf(i8* %49, i32 %50)
  %52 = add nsw i32 %48, %51
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = load i32, i32* @DCF_H10, align 4
  %57 = call i32 @ext_bf(i8* %55, i32 %56)
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @TIMES10(i32 %62)
  %64 = load i8*, i8** %5, align 8
  %65 = load i32, i32* @DCF_H1, align 4
  %66 = call i32 @ext_bf(i8* %64, i32 %65)
  %67 = add nsw i32 %63, %66
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load i8*, i8** %5, align 8
  %71 = load i32, i32* @DCF_D10, align 4
  %72 = call i32 @ext_bf(i8* %70, i32 %71)
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @TIMES10(i32 %77)
  %79 = load i8*, i8** %5, align 8
  %80 = load i32, i32* @DCF_D1, align 4
  %81 = call i32 @ext_bf(i8* %79, i32 %80)
  %82 = add nsw i32 %78, %81
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  %85 = load i8*, i8** %5, align 8
  %86 = load i32, i32* @DCF_MO0, align 4
  %87 = call i32 @ext_bf(i8* %85, i32 %86)
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 4
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @TIMES10(i32 %92)
  %94 = load i8*, i8** %5, align 8
  %95 = load i32, i32* @DCF_MO, align 4
  %96 = call i32 @ext_bf(i8* %94, i32 %95)
  %97 = add nsw i32 %93, %96
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 4
  %100 = load i8*, i8** %5, align 8
  %101 = load i32, i32* @DCF_Y10, align 4
  %102 = call i32 @ext_bf(i8* %100, i32 %101)
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 4
  store i32 %102, i32* %104, align 8
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @TIMES10(i32 %107)
  %109 = load i8*, i8** %5, align 8
  %110 = load i32, i32* @DCF_Y1, align 4
  %111 = call i32 @ext_bf(i8* %109, i32 %110)
  %112 = add nsw i32 %108, %111
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 4
  store i32 %112, i32* %114, align 8
  %115 = load i8*, i8** %5, align 8
  %116 = load i32, i32* @DCF_DW, align 4
  %117 = call i32 @ext_bf(i8* %115, i32 %116)
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 5
  store i32 %117, i32* %119, align 4
  %120 = load i8*, i8** %5, align 8
  %121 = load i32, i32* @DCF_Z, align 4
  %122 = call i32 @ext_bf(i8* %120, i32 %121)
  switch i32 %122, label %134 [
    i32 128, label %123
    i32 129, label %126
  ]

123:                                              ; preds = %33
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 6
  store i32 -60, i32* %125, align 8
  br label %139

126:                                              ; preds = %33
  %127 = load i32, i32* @DCFB_DST, align 4
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 7
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 4
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 6
  store i32 -120, i32* %133, align 8
  br label %139

134:                                              ; preds = %33
  %135 = call i32 @PRINTF(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %136 = load i64, i64* @CVT_FAIL, align 8
  %137 = load i64, i64* @CVT_BADFMT, align 8
  %138 = or i64 %136, %137
  store i64 %138, i64* %4, align 8
  br label %179

139:                                              ; preds = %126, %123
  %140 = load i8*, i8** %5, align 8
  %141 = load i32, i32* @DCF_A1, align 4
  %142 = call i32 @ext_bf(i8* %140, i32 %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %139
  %145 = load i32, i32* @DCFB_ANNOUNCE, align 4
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 7
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %148, %145
  store i32 %149, i32* %147, align 4
  br label %150

150:                                              ; preds = %144, %139
  %151 = load i8*, i8** %5, align 8
  %152 = load i32, i32* @DCF_A2, align 4
  %153 = call i32 @ext_bf(i8* %151, i32 %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %150
  %156 = load i32, i32* @DCFB_LEAP, align 4
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 7
  %159 = load i32, i32* %158, align 4
  %160 = or i32 %159, %156
  store i32 %160, i32* %158, align 4
  br label %161

161:                                              ; preds = %155, %150
  %162 = load i8*, i8** %5, align 8
  %163 = load i32, i32* @DCF_R, align 4
  %164 = call i32 @ext_bf(i8* %162, i32 %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %161
  %167 = load i32, i32* @DCFB_CALLBIT, align 4
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 7
  %170 = load i32, i32* %169, align 4
  %171 = or i32 %170, %167
  store i32 %171, i32* %169, align 4
  br label %172

172:                                              ; preds = %166, %161
  %173 = load i64, i64* @CVT_OK, align 8
  store i64 %173, i64* %4, align 8
  br label %179

174:                                              ; preds = %28, %23, %18, %13
  %175 = call i32 @PRINTF(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %176 = load i64, i64* @CVT_FAIL, align 8
  %177 = load i64, i64* @CVT_BADFMT, align 8
  %178 = or i64 %176, %177
  store i64 %178, i64* %4, align 8
  br label %179

179:                                              ; preds = %174, %172, %134, %10
  %180 = load i64, i64* %4, align 8
  ret i64 %180
}

declare dso_local i32 @PRINTF(i8*, i8*) #1

declare dso_local i32 @ext_bf(i8*, i32) #1

declare dso_local i64 @pcheck(i8*, i32) #1

declare dso_local i32 @TIMES10(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
