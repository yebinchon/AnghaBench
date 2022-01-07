; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/adjtimed/extr_adjtimed.c_AdjustClockRate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/adjtimed/extr_adjtimed.c_AdjustClockRate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }
%struct.itimerval = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64, i64 }

@MILLION = common dso_local global i64 0, align 8
@verbose = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"adjtimed: new correction %.6fs\0A\00", align 1
@sysdebug = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"new correction %.6fs\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"adjtimed: leftover %ldus\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"leftover %ldus\00", align 1
@slew_rate = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [42 x i8] c"adjtimed: will be complete in %lds %ldus\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"will be complete in %lds %ldus\00", align 1
@tick_rate = common dso_local global i64 0, align 8
@default_rate = common dso_local global i64 0, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"set clock rate: %m\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"adjtimed: set clock rate\00", align 1
@ITIMER_REAL = common dso_local global i32 0, align 4
@oldrate = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AdjustClockRate(%struct.timeval* %0, %struct.timeval* %1) #0 {
  %3 = alloca %struct.timeval*, align 8
  %4 = alloca %struct.timeval*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.itimerval, align 8
  %9 = alloca %struct.itimerval, align 8
  store %struct.timeval* %0, %struct.timeval** %3, align 8
  store %struct.timeval* %1, %struct.timeval** %4, align 8
  %10 = load %struct.timeval*, %struct.timeval** %3, align 8
  %11 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MILLION, align 8
  %14 = mul nsw i64 %12, %13
  %15 = load %struct.timeval*, %struct.timeval** %3, align 8
  %16 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %14, %17
  store i64 %18, i64* %6, align 8
  %19 = load i32, i32* @verbose, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load i64, i64* %6, align 8
  %23 = sitofp i64 %22 to double
  %24 = load i64, i64* @MILLION, align 8
  %25 = sitofp i64 %24 to double
  %26 = fdiv double %23, %25
  %27 = fptosi double %26 to i64
  %28 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %27)
  br label %29

29:                                               ; preds = %21, %2
  %30 = load i32, i32* @sysdebug, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  %33 = load i32, i32* @LOG_INFO, align 4
  %34 = load i64, i64* %6, align 8
  %35 = sitofp i64 %34 to double
  %36 = load i64, i64* @MILLION, align 8
  %37 = sitofp i64 %36 to double
  %38 = fdiv double %35, %37
  %39 = call i32 (i32, i8*, ...) @msyslog(i32 %33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), double %38)
  br label %40

40:                                               ; preds = %32, %29
  %41 = load i32, i32* @verbose, align 4
  %42 = icmp sgt i32 %41, 2
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i64, i64* %7, align 8
  %45 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %44)
  br label %46

46:                                               ; preds = %43, %40
  %47 = load i32, i32* @sysdebug, align 4
  %48 = icmp sgt i32 %47, 2
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i32, i32* @LOG_INFO, align 4
  %51 = load i64, i64* %7, align 8
  %52 = call i32 (i32, i8*, ...) @msyslog(i32 %50, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i64 %51)
  br label %53

53:                                               ; preds = %49, %46
  %54 = load i64, i64* %6, align 8
  store i64 %54, i64* %5, align 8
  %55 = load i64, i64* %6, align 8
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i64, i64* @slew_rate, align 8
  store i64 %58, i64* %5, align 8
  br label %64

59:                                               ; preds = %53
  %60 = load i64, i64* @slew_rate, align 8
  %61 = sub nsw i64 0, %60
  store i64 %61, i64* %5, align 8
  %62 = load i64, i64* %6, align 8
  %63 = sub nsw i64 0, %62
  store i64 %63, i64* %6, align 8
  br label %64

64:                                               ; preds = %59, %57
  %65 = load i64, i64* %6, align 8
  %66 = load i64, i64* @slew_rate, align 8
  %67 = sdiv i64 %65, %66
  %68 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %8, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  %70 = load i64, i64* %6, align 8
  %71 = load i64, i64* @slew_rate, align 8
  %72 = srem i64 %70, %71
  %73 = load i64, i64* @MILLION, align 8
  %74 = load i64, i64* @slew_rate, align 8
  %75 = sdiv i64 %73, %74
  %76 = mul nsw i64 %72, %75
  %77 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %8, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  store i64 %76, i64* %78, align 8
  %79 = load i32, i32* @verbose, align 4
  %80 = icmp sgt i32 %79, 1
  br i1 %80, label %81, label %89

81:                                               ; preds = %64
  %82 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %8, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %8, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i64 %84, i64 %87)
  br label %89

89:                                               ; preds = %81, %64
  %90 = load i32, i32* @sysdebug, align 4
  %91 = icmp sgt i32 %90, 1
  br i1 %91, label %92, label %101

92:                                               ; preds = %89
  %93 = load i32, i32* @LOG_INFO, align 4
  %94 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %8, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %8, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = call i32 (i32, i8*, ...) @msyslog(i32 %93, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i64 %96, i64 %99)
  br label %101

101:                                              ; preds = %92, %89
  %102 = load i64, i64* %6, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %117

104:                                              ; preds = %101
  %105 = load i64, i64* %5, align 8
  %106 = load i64, i64* @tick_rate, align 8
  %107 = sdiv i64 %105, %106
  %108 = load i64, i64* @default_rate, align 8
  %109 = add nsw i64 %107, %108
  %110 = call i32 @SetClockRate(i64 %109)
  %111 = icmp eq i32 %110, -1
  br i1 %111, label %112, label %116

112:                                              ; preds = %104
  %113 = load i32, i32* @LOG_ERR, align 4
  %114 = call i32 (i32, i8*, ...) @msyslog(i32 %113, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %115 = call i32 @perror(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  br label %116

116:                                              ; preds = %112, %104
  br label %117

117:                                              ; preds = %116, %101
  %118 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %8, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 1
  store i64 0, i64* %119, align 8
  %120 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %8, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  store i64 0, i64* %121, align 8
  %122 = load i32, i32* @ITIMER_REAL, align 4
  %123 = call i32 @setitimer(i32 %122, %struct.itimerval* %8, %struct.itimerval* %9)
  %124 = load %struct.timeval*, %struct.timeval** %4, align 8
  %125 = icmp ne %struct.timeval* %124, null
  br i1 %125, label %126, label %152

126:                                              ; preds = %117
  %127 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %9, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @MILLION, align 8
  %131 = mul nsw i64 %129, %130
  %132 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %9, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = add nsw i64 %131, %134
  %136 = load i64, i64* @oldrate, align 8
  %137 = mul nsw i64 %135, %136
  store i64 %137, i64* %6, align 8
  %138 = load i64, i64* %6, align 8
  %139 = load i64, i64* @MILLION, align 8
  %140 = sdiv i64 %138, %139
  %141 = load %struct.timeval*, %struct.timeval** %4, align 8
  %142 = getelementptr inbounds %struct.timeval, %struct.timeval* %141, i32 0, i32 0
  store i64 %140, i64* %142, align 8
  %143 = load i64, i64* %6, align 8
  %144 = load %struct.timeval*, %struct.timeval** %4, align 8
  %145 = getelementptr inbounds %struct.timeval, %struct.timeval* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @MILLION, align 8
  %148 = mul nsw i64 %146, %147
  %149 = sub nsw i64 %143, %148
  %150 = load %struct.timeval*, %struct.timeval** %4, align 8
  %151 = getelementptr inbounds %struct.timeval, %struct.timeval* %150, i32 0, i32 1
  store i64 %149, i64* %151, align 8
  br label %152

152:                                              ; preds = %126, %117
  %153 = load i64, i64* %5, align 8
  %154 = sitofp i64 %153 to double
  %155 = load i64, i64* @MILLION, align 8
  %156 = sitofp i64 %155 to double
  %157 = fdiv double %154, %156
  %158 = fptosi double %157 to i64
  store i64 %158, i64* @oldrate, align 8
  ret i32 0
}

declare dso_local i32 @printf(i8*, i64, ...) #1

declare dso_local i32 @msyslog(i32, i8*, ...) #1

declare dso_local i32 @SetClockRate(i64) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @setitimer(i32, %struct.itimerval*, %struct.itimerval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
