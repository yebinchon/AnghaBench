; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/sconfig/extr_sconfig.c_format_e1_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/sconfig/extr_sconfig.c_format_e1_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@format_e1_status.buf = internal global [80 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [4 x i8] c"n/a\00", align 1
@E1_NOALARM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"Ok\00", align 1
@E1_LOS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c",LOS\00", align 1
@E1_AIS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c",AIS\00", align 1
@E1_LOF = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c",LOF\00", align 1
@E1_LOMF = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c",LOMF\00", align 1
@E1_CRC4E = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [7 x i8] c",CRC4E\00", align 1
@E1_FARLOF = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [8 x i8] c",FARLOF\00", align 1
@E1_AIS16 = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [7 x i8] c",AIS16\00", align 1
@E1_FARLOMF = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [9 x i8] c",FARLOMF\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64)* @format_e1_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @format_e1_status(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %75

7:                                                ; preds = %1
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @E1_NOALARM, align 8
  %10 = and i64 %8, %9
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %75

13:                                               ; preds = %7
  store i8 0, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @format_e1_status.buf, i64 0, i64 0), align 16
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* @E1_LOS, align 8
  %16 = and i64 %14, %15
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = call i32 @strcat(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @format_e1_status.buf, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %13
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* @E1_AIS, align 8
  %23 = and i64 %21, %22
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = call i32 @strcat(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @format_e1_status.buf, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %20
  %28 = load i64, i64* %3, align 8
  %29 = load i64, i64* @E1_LOF, align 8
  %30 = and i64 %28, %29
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = call i32 @strcat(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @format_e1_status.buf, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %27
  %35 = load i64, i64* %3, align 8
  %36 = load i64, i64* @E1_LOMF, align 8
  %37 = and i64 %35, %36
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = call i32 @strcat(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @format_e1_status.buf, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %34
  %42 = load i64, i64* %3, align 8
  %43 = load i64, i64* @E1_CRC4E, align 8
  %44 = and i64 %42, %43
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = call i32 @strcat(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @format_e1_status.buf, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %41
  %49 = load i64, i64* %3, align 8
  %50 = load i64, i64* @E1_FARLOF, align 8
  %51 = and i64 %49, %50
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = call i32 @strcat(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @format_e1_status.buf, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %48
  %56 = load i64, i64* %3, align 8
  %57 = load i64, i64* @E1_AIS16, align 8
  %58 = and i64 %56, %57
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = call i32 @strcat(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @format_e1_status.buf, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %55
  %63 = load i64, i64* %3, align 8
  %64 = load i64, i64* @E1_FARLOMF, align 8
  %65 = and i64 %63, %64
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = call i32 @strcat(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @format_e1_status.buf, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  br label %69

69:                                               ; preds = %67, %62
  %70 = load i8, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @format_e1_status.buf, i64 0, i64 0), align 16
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 44
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  store i8* getelementptr inbounds ([80 x i8], [80 x i8]* @format_e1_status.buf, i64 0, i64 1), i8** %2, align 8
  br label %75

74:                                               ; preds = %69
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %75

75:                                               ; preds = %74, %73, %12, %6
  %76 = load i8*, i8** %2, align 8
  ret i8* %76
}

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
