; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpdc/extr_ntpdc.c_printusage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpdc/extr_ntpdc.c_printusage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xcmd = type { i8*, i32*, i8** }

@.str = private unnamed_addr constant [10 x i8] c"usage: %s\00", align 1
@MAXARGS = common dso_local global i32 0, align 4
@NO = common dso_local global i32 0, align 4
@OPT = common dso_local global i32 0, align 4
@NTP_ADD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c" [ -4|-6 ]\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c" [ %s ]\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xcmd*, i32*)* @printusage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @printusage(%struct.xcmd* %0, i32* %1) #0 {
  %3 = alloca %struct.xcmd*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.xcmd* %0, %struct.xcmd** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = load %struct.xcmd*, %struct.xcmd** %3, align 8
  %9 = getelementptr inbounds %struct.xcmd, %struct.xcmd* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = call i32 (i32*, i8*, ...) @fprintf(i32* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %10)
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %79, %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @MAXARGS, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %12
  %17 = load %struct.xcmd*, %struct.xcmd** %3, align 8
  %18 = getelementptr inbounds %struct.xcmd, %struct.xcmd* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @NO, align 4
  %25 = icmp ne i32 %23, %24
  br label %26

26:                                               ; preds = %16, %12
  %27 = phi i1 [ false, %12 ], [ %25, %16 ]
  br i1 %27, label %28, label %82

28:                                               ; preds = %26
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %28
  %32 = load %struct.xcmd*, %struct.xcmd** %3, align 8
  %33 = getelementptr inbounds %struct.xcmd, %struct.xcmd* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @OPT, align 4
  %40 = xor i32 %39, -1
  %41 = and i32 %38, %40
  %42 = load i32, i32* @NTP_ADD, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %31
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 (i32*, i8*, ...) @fprintf(i32* %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %47

47:                                               ; preds = %44, %31, %28
  %48 = load %struct.xcmd*, %struct.xcmd** %3, align 8
  %49 = getelementptr inbounds %struct.xcmd, %struct.xcmd* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @OPT, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %47
  %59 = load i32*, i32** %4, align 8
  %60 = load %struct.xcmd*, %struct.xcmd** %3, align 8
  %61 = getelementptr inbounds %struct.xcmd, %struct.xcmd* %60, i32 0, i32 2
  %62 = load i8**, i8*** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 (i32*, i8*, ...) @fprintf(i32* %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %66)
  br label %78

68:                                               ; preds = %47
  %69 = load i32*, i32** %4, align 8
  %70 = load %struct.xcmd*, %struct.xcmd** %3, align 8
  %71 = getelementptr inbounds %struct.xcmd, %struct.xcmd* %70, i32 0, i32 2
  %72 = load i8**, i8*** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %72, i64 %74
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 (i32*, i8*, ...) @fprintf(i32* %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %76)
  br label %78

78:                                               ; preds = %68, %58
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %5, align 4
  br label %12

82:                                               ; preds = %26
  %83 = load i32*, i32** %4, align 8
  %84 = call i32 (i32*, i8*, ...) @fprintf(i32* %83, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
