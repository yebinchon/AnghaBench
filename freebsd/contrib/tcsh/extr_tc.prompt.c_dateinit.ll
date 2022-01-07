; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.prompt.c_dateinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.prompt.c_dateinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32* }

@.str = private unnamed_addr constant [4 x i8] c"Jan\00", align 1
@month_list = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"Feb\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"Mar\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"Apr\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"May\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"Jun\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"Jul\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"Aug\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"Sep\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"Oct\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"Nov\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"Dec\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"Sun\00", align 1
@day_list = common dso_local global i8** null, align 8
@.str.13 = private unnamed_addr constant [4 x i8] c"Mon\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"Tue\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"Wed\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"Thu\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"Fri\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"Sat\00", align 1
@LC_TIME = common dso_local global i32 0, align 4
@_time_info = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dateinit() #0 {
  %1 = load i8**, i8*** @month_list, align 8
  %2 = getelementptr inbounds i8*, i8** %1, i64 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  %3 = load i8**, i8*** @month_list, align 8
  %4 = getelementptr inbounds i8*, i8** %3, i64 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  %5 = load i8**, i8*** @month_list, align 8
  %6 = getelementptr inbounds i8*, i8** %5, i64 2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  %7 = load i8**, i8*** @month_list, align 8
  %8 = getelementptr inbounds i8*, i8** %7, i64 3
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  %9 = load i8**, i8*** @month_list, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %10, align 8
  %11 = load i8**, i8*** @month_list, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 5
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8** %12, align 8
  %13 = load i8**, i8*** @month_list, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 6
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8** %14, align 8
  %15 = load i8**, i8*** @month_list, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 7
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8** %16, align 8
  %17 = load i8**, i8*** @month_list, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8** %18, align 8
  %19 = load i8**, i8*** @month_list, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 9
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8** %20, align 8
  %21 = load i8**, i8*** @month_list, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 10
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8** %22, align 8
  %23 = load i8**, i8*** @month_list, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 11
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8** %24, align 8
  %25 = load i8**, i8*** @day_list, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8** %26, align 8
  %27 = load i8**, i8*** @day_list, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8** %28, align 8
  %29 = load i8**, i8*** @day_list, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i8** %30, align 8
  %31 = load i8**, i8*** @day_list, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 3
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8** %32, align 8
  %33 = load i8**, i8*** @day_list, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i8** %34, align 8
  %35 = load i8**, i8*** @day_list, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 5
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8** %36, align 8
  %37 = load i8**, i8*** @day_list, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 6
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8** %38, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
