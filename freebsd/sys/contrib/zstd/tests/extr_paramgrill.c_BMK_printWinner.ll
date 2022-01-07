; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_paramgrill.c_BMK_printWinner.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_paramgrill.c_BMK_printWinner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@__const.BMK_printWinner.lvlstr = private unnamed_addr constant [15 x i8] c"Custom Level\00\00\00", align 1
@.str = private unnamed_addr constant [7 x i8] c"\0D%79s\0D\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CUSTOM_LEVEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"  Level %2d  \00", align 1
@TIMED = common dso_local global i64 0, align 8
@TIMELOOP_NANOSEC = common dso_local global i64 0, align 8
@g_time = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"%1lu:%2lu:%05.2f - \00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"/* %s */   \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i64)* @BMK_printWinner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @BMK_printWinner(i32* %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca [15 x i8], align 1
  %12 = alloca %struct.TYPE_3__, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %16 = bitcast [15 x i8]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %16, i8* align 1 getelementptr inbounds ([15 x i8], [15 x i8]* @__const.BMK_printWinner.lvlstr, i32 0, i32 0), i64 15, i1 false)
  %17 = load i32, i32* %9, align 4
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* %8, align 4
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 (i32*, i8*, ...) @fprintf(i32* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @CUSTOM_LEVEL, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %5
  %27 = getelementptr inbounds [15 x i8], [15 x i8]* %11, i64 0, i64 0
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @snprintf(i8* %27, i32 15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %26, %5
  %31 = load i64, i64* @TIMED, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %59

33:                                               ; preds = %30
  %34 = load i64, i64* @TIMELOOP_NANOSEC, align 8
  %35 = mul i64 60, %34
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* @g_time, align 4
  %38 = call i32 @UTIL_clockSpanNano(i32 %37)
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* %13, align 4
  %41 = sdiv i32 %39, %40
  store i32 %41, i32* %15, align 4
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %15, align 4
  %44 = sext i32 %43 to i64
  %45 = udiv i64 %44, 60
  %46 = load i32, i32* %15, align 4
  %47 = sext i32 %46 to i64
  %48 = urem i64 %47, 60
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* %13, align 4
  %52 = mul nsw i32 %50, %51
  %53 = sub nsw i32 %49, %52
  %54 = sitofp i32 %53 to double
  %55 = load i64, i64* @TIMELOOP_NANOSEC, align 8
  %56 = uitofp i64 %55 to double
  %57 = fdiv double %54, %56
  %58 = call i32 (i32*, i8*, ...) @fprintf(i32* %42, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i64 %45, i64 %48, double %57)
  br label %59

59:                                               ; preds = %33, %30
  %60 = load i32*, i32** %6, align 8
  %61 = getelementptr inbounds [15 x i8], [15 x i8]* %11, i64 0, i64 0
  %62 = call i32 (i32*, i8*, ...) @fprintf(i32* %60, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %61)
  %63 = load i32*, i32** %6, align 8
  %64 = load i64, i64* %10, align 8
  %65 = bitcast %struct.TYPE_3__* %12 to i64*
  %66 = load i64, i64* %65, align 4
  %67 = call i32 @BMK_displayOneResult(i32* %63, i64 %66, i64 %64)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @UTIL_clockSpanNano(i32) #2

declare dso_local i32 @BMK_displayOneResult(i32*, i64, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
