; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq.c_printusage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq.c_printusage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xcmd = type { i8*, i32*, i8** }

@.str = private unnamed_addr constant [10 x i8] c"usage: %s\00", align 1
@MAXARGS = common dso_local global i32 0, align 4
@NO = common dso_local global i32 0, align 4
@OPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c" [ %s ]\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xcmd*, i32*)* @printusage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @printusage(%struct.xcmd* %0, i32* %1) #0 {
  %3 = alloca %struct.xcmd*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.xcmd* %0, %struct.xcmd** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = load %struct.xcmd*, %struct.xcmd** %3, align 8
  %8 = getelementptr inbounds %struct.xcmd, %struct.xcmd* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = call i32 (i32*, i8*, ...) @fprintf(i32* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %9)
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %59, %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @MAXARGS, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %11
  %16 = load %struct.xcmd*, %struct.xcmd** %3, align 8
  %17 = getelementptr inbounds %struct.xcmd, %struct.xcmd* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @NO, align 4
  %24 = icmp ne i32 %22, %23
  br label %25

25:                                               ; preds = %15, %11
  %26 = phi i1 [ false, %11 ], [ %24, %15 ]
  br i1 %26, label %27, label %62

27:                                               ; preds = %25
  %28 = load %struct.xcmd*, %struct.xcmd** %3, align 8
  %29 = getelementptr inbounds %struct.xcmd, %struct.xcmd* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @OPT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %27
  %39 = load i32*, i32** %4, align 8
  %40 = load %struct.xcmd*, %struct.xcmd** %3, align 8
  %41 = getelementptr inbounds %struct.xcmd, %struct.xcmd* %40, i32 0, i32 2
  %42 = load i8**, i8*** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 (i32*, i8*, ...) @fprintf(i32* %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  br label %58

48:                                               ; preds = %27
  %49 = load i32*, i32** %4, align 8
  %50 = load %struct.xcmd*, %struct.xcmd** %3, align 8
  %51 = getelementptr inbounds %struct.xcmd, %struct.xcmd* %50, i32 0, i32 2
  %52 = load i8**, i8*** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 (i32*, i8*, ...) @fprintf(i32* %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %56)
  br label %58

58:                                               ; preds = %48, %38
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %11

62:                                               ; preds = %25
  %63 = load i32*, i32** %4, align 8
  %64 = call i32 (i32*, i8*, ...) @fprintf(i32* %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
