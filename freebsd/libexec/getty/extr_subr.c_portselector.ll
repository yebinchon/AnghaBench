; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/getty/extr_subr.c_portselector.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/getty/extr_subr.c_portselector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.portselect = type { i8*, i64 }

@.str = private unnamed_addr constant [8 x i8] c"default\00", align 1
@STDIN_FILENO = common dso_local global i32 0, align 4
@portspeeds = common dso_local global %struct.portselect* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @portselector() #0 {
  %1 = alloca i8, align 1
  %2 = alloca [20 x i8], align 16
  %3 = alloca i8*, align 8
  %4 = alloca %struct.portselect*, align 8
  %5 = alloca i64, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  %6 = call i32 @alarm(i32 300)
  store i64 0, i64* %5, align 8
  br label %7

7:                                                ; preds = %37, %0
  %8 = load i64, i64* %5, align 8
  %9 = icmp ult i64 %8, 19
  br i1 %9, label %10, label %40

10:                                               ; preds = %7
  %11 = load i32, i32* @STDIN_FILENO, align 4
  %12 = call i64 @read(i32 %11, i8* %1, i32 1)
  %13 = icmp sle i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  br label %40

15:                                               ; preds = %10
  %16 = load i8, i8* %1, align 1
  %17 = sext i8 %16 to i32
  %18 = and i32 %17, 127
  %19 = trunc i32 %18 to i8
  store i8 %19, i8* %1, align 1
  %20 = load i8, i8* %1, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 10
  br i1 %22, label %27, label %23

23:                                               ; preds = %15
  %24 = load i8, i8* %1, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 13
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %15
  br label %40

28:                                               ; preds = %23
  %29 = load i8, i8* %1, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 66
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i64 0, i64* %5, align 8
  br label %33

33:                                               ; preds = %32, %28
  %34 = load i8, i8* %1, align 1
  %35 = load i64, i64* %5, align 8
  %36 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 %35
  store i8 %34, i8* %36, align 1
  br label %37

37:                                               ; preds = %33
  %38 = load i64, i64* %5, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %5, align 8
  br label %7

40:                                               ; preds = %27, %14, %7
  %41 = load i64, i64* %5, align 8
  %42 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 %41
  store i8 0, i8* %42, align 1
  %43 = load %struct.portselect*, %struct.portselect** @portspeeds, align 8
  store %struct.portselect* %43, %struct.portselect** %4, align 8
  br label %44

44:                                               ; preds = %61, %40
  %45 = load %struct.portselect*, %struct.portselect** %4, align 8
  %46 = getelementptr inbounds %struct.portselect, %struct.portselect* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %64

49:                                               ; preds = %44
  %50 = load %struct.portselect*, %struct.portselect** %4, align 8
  %51 = getelementptr inbounds %struct.portselect, %struct.portselect* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  %54 = call i64 @strcmp(i64 %52, i8* %53)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load %struct.portselect*, %struct.portselect** %4, align 8
  %58 = getelementptr inbounds %struct.portselect, %struct.portselect* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %3, align 8
  br label %64

60:                                               ; preds = %49
  br label %61

61:                                               ; preds = %60
  %62 = load %struct.portselect*, %struct.portselect** %4, align 8
  %63 = getelementptr inbounds %struct.portselect, %struct.portselect* %62, i32 1
  store %struct.portselect* %63, %struct.portselect** %4, align 8
  br label %44

64:                                               ; preds = %56, %44
  %65 = call i32 @sleep(i32 2)
  %66 = load i8*, i8** %3, align 8
  ret i8* %66
}

declare dso_local i32 @alarm(i32) #1

declare dso_local i64 @read(i32, i8*, i32) #1

declare dso_local i64 @strcmp(i64, i8*) #1

declare dso_local i32 @sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
