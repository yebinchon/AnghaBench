; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/extr_utilities.c_hostnameaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/extr_utilities.c_hostnameaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LIB_BUFLENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"hostnameaddr ERROR have %d (%d needed)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @hostnameaddr(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i8* @stoa(i32* %8)
  store i8* %9, i8** %5, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i32 @LIB_GETBUF(i8* %10)
  %12 = load i8*, i8** %3, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i64 @strcmp(i8* %12, i8* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* @LIB_BUFLENGTH, align 4
  %19 = load i8*, i8** %3, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %17, i32 %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %19, i8* %20)
  store i32 %21, i32* %7, align 4
  br label %27

22:                                               ; preds = %2
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* @LIB_BUFLENGTH, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %23, i32 %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %22, %16
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @LIB_BUFLENGTH, align 4
  %30 = icmp sge i32 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* @LIB_BUFLENGTH, align 4
  %34 = load i32, i32* @LIB_BUFLENGTH, align 4
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  %37 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %32, i32 %33, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %34, i32 %36)
  br label %38

38:                                               ; preds = %31, %27
  %39 = load i8*, i8** %6, align 8
  ret i8* %39
}

declare dso_local i8* @stoa(i32*) #1

declare dso_local i32 @LIB_GETBUF(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
