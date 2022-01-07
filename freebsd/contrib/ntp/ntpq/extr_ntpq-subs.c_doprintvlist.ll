; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq-subs.c_doprintvlist.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq-subs.c_doprintvlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varlist = type { i8*, i8* }

@.str = private unnamed_addr constant [22 x i8] c"No variables on list\0A\00", align 1
@MAXLIST = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s=%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.varlist*, i32*)* @doprintvlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @doprintvlist(%struct.varlist* %0, i32* %1) #0 {
  %3 = alloca %struct.varlist*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store %struct.varlist* %0, %struct.varlist** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.varlist*, %struct.varlist** %3, align 8
  %7 = getelementptr inbounds %struct.varlist, %struct.varlist* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = icmp eq i8* null, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 (i32*, i8*, ...) @fprintf(i32* %11, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %59

13:                                               ; preds = %2
  store i64 0, i64* %5, align 8
  br label %14

14:                                               ; preds = %56, %13
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @MAXLIST, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %14
  %19 = load %struct.varlist*, %struct.varlist** %3, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds %struct.varlist, %struct.varlist* %19, i64 %20
  %22 = getelementptr inbounds %struct.varlist, %struct.varlist* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br label %25

25:                                               ; preds = %18, %14
  %26 = phi i1 [ false, %14 ], [ %24, %18 ]
  br i1 %26, label %27, label %59

27:                                               ; preds = %25
  %28 = load %struct.varlist*, %struct.varlist** %3, align 8
  %29 = load i64, i64* %5, align 8
  %30 = getelementptr inbounds %struct.varlist, %struct.varlist* %28, i64 %29
  %31 = getelementptr inbounds %struct.varlist, %struct.varlist* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = icmp eq i8* null, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %27
  %35 = load i32*, i32** %4, align 8
  %36 = load %struct.varlist*, %struct.varlist** %3, align 8
  %37 = load i64, i64* %5, align 8
  %38 = getelementptr inbounds %struct.varlist, %struct.varlist* %36, i64 %37
  %39 = getelementptr inbounds %struct.varlist, %struct.varlist* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 (i32*, i8*, ...) @fprintf(i32* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  br label %55

42:                                               ; preds = %27
  %43 = load i32*, i32** %4, align 8
  %44 = load %struct.varlist*, %struct.varlist** %3, align 8
  %45 = load i64, i64* %5, align 8
  %46 = getelementptr inbounds %struct.varlist, %struct.varlist* %44, i64 %45
  %47 = getelementptr inbounds %struct.varlist, %struct.varlist* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.varlist*, %struct.varlist** %3, align 8
  %50 = load i64, i64* %5, align 8
  %51 = getelementptr inbounds %struct.varlist, %struct.varlist* %49, i64 %50
  %52 = getelementptr inbounds %struct.varlist, %struct.varlist* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 (i32*, i8*, ...) @fprintf(i32* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %48, i8* %53)
  br label %55

55:                                               ; preds = %42, %34
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %5, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %5, align 8
  br label %14

59:                                               ; preds = %10, %25
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
