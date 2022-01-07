; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpdc/extr_ntpdc_ops.c_print_pflag.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpdc/extr_ntpdc_ops.c_print_pflag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@print_pflag.none = internal constant [1 x i8] zeroinitializer, align 1
@print_pflag.comma = internal constant [2 x i8] c",\00", align 1
@.str = private unnamed_addr constant [7 x i8] c" none\0A\00", align 1
@INFO_FLAG_SYSPEER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c" system_peer\00", align 1
@INFO_FLAG_CONFIG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"%s config\00", align 1
@INFO_FLAG_REFCLOCK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"%s refclock\00", align 1
@INFO_FLAG_AUTHENABLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"%s auth\00", align 1
@INFO_FLAG_PREFER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"%s prefer\00", align 1
@INFO_FLAG_IBURST = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"%s iburst\00", align 1
@INFO_FLAG_BURST = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"%s burst\00", align 1
@INFO_FLAG_SEL_CANDIDATE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [13 x i8] c"%s candidate\00", align 1
@INFO_FLAG_SHORTLIST = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [13 x i8] c"%s shortlist\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @print_pflag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_pflag(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp eq i32 0, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 (i32*, i8*, ...) @fprintf(i32* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %94

11:                                               ; preds = %2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @print_pflag.none, i64 0, i64 0), i8** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @INFO_FLAG_SYSPEER, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 (i32*, i8*, ...) @fprintf(i32* %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @print_pflag.comma, i64 0, i64 0), i8** %5, align 8
  br label %19

19:                                               ; preds = %16, %11
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @INFO_FLAG_CONFIG, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32*, i32** %3, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 (i32*, i8*, ...) @fprintf(i32* %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %26)
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @print_pflag.comma, i64 0, i64 0), i8** %5, align 8
  br label %28

28:                                               ; preds = %24, %19
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @INFO_FLAG_REFCLOCK, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i32*, i32** %3, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 (i32*, i8*, ...) @fprintf(i32* %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %35)
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @print_pflag.comma, i64 0, i64 0), i8** %5, align 8
  br label %37

37:                                               ; preds = %33, %28
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @INFO_FLAG_AUTHENABLE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i32*, i32** %3, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 (i32*, i8*, ...) @fprintf(i32* %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %44)
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @print_pflag.comma, i64 0, i64 0), i8** %5, align 8
  br label %46

46:                                               ; preds = %42, %37
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @INFO_FLAG_PREFER, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i32*, i32** %3, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 (i32*, i8*, ...) @fprintf(i32* %52, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %53)
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @print_pflag.comma, i64 0, i64 0), i8** %5, align 8
  br label %55

55:                                               ; preds = %51, %46
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @INFO_FLAG_IBURST, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load i32*, i32** %3, align 8
  %62 = load i8*, i8** %5, align 8
  %63 = call i32 (i32*, i8*, ...) @fprintf(i32* %61, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* %62)
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @print_pflag.comma, i64 0, i64 0), i8** %5, align 8
  br label %64

64:                                               ; preds = %60, %55
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @INFO_FLAG_BURST, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load i32*, i32** %3, align 8
  %71 = load i8*, i8** %5, align 8
  %72 = call i32 (i32*, i8*, ...) @fprintf(i32* %70, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* %71)
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @print_pflag.comma, i64 0, i64 0), i8** %5, align 8
  br label %73

73:                                               ; preds = %69, %64
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @INFO_FLAG_SEL_CANDIDATE, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load i32*, i32** %3, align 8
  %80 = load i8*, i8** %5, align 8
  %81 = call i32 (i32*, i8*, ...) @fprintf(i32* %79, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8* %80)
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @print_pflag.comma, i64 0, i64 0), i8** %5, align 8
  br label %82

82:                                               ; preds = %78, %73
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @INFO_FLAG_SHORTLIST, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = load i32*, i32** %3, align 8
  %89 = load i8*, i8** %5, align 8
  %90 = call i32 (i32*, i8*, ...) @fprintf(i32* %88, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8* %89)
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @print_pflag.comma, i64 0, i64 0), i8** %5, align 8
  br label %91

91:                                               ; preds = %87, %82
  %92 = load i32*, i32** %3, align 8
  %93 = call i32 (i32*, i8*, ...) @fprintf(i32* %92, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  br label %94

94:                                               ; preds = %91, %8
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
