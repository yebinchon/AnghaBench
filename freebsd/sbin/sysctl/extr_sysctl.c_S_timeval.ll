; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/sysctl/extr_sysctl.c_S_timeval.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/sysctl/extr_sysctl.c_S_timeval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i32 }

@.str = private unnamed_addr constant [21 x i8] c"S_timeval %zu != %zu\00", align 1
@hflag = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"{ sec = %'jd, usec = %'ld } \00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"{ sec = %jd, usec = %ld } \00", align 1
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*)* @S_timeval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @S_timeval(i64 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.timeval*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.timeval*
  store %struct.timeval* %11, %struct.timeval** %6, align 8
  %12 = load i64, i64* %4, align 8
  %13 = icmp ne i64 %12, 16
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %15, i32 16)
  store i32 1, i32* %3, align 4
  br label %57

17:                                               ; preds = %2
  %18 = load i64, i64* @hflag, align 8
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0)
  %22 = load %struct.timeval*, %struct.timeval** %6, align 8
  %23 = getelementptr inbounds %struct.timeval, %struct.timeval* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = load %struct.timeval*, %struct.timeval** %6, align 8
  %27 = getelementptr inbounds %struct.timeval, %struct.timeval* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @printf(i8* %21, i32 %25, i32 %28)
  %30 = load %struct.timeval*, %struct.timeval** %6, align 8
  %31 = getelementptr inbounds %struct.timeval, %struct.timeval* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %7, align 8
  %33 = call i32 @ctime(i64* %7)
  %34 = call i8* @strdup(i32 %33)
  store i8* %34, i8** %8, align 8
  %35 = load i8*, i8** %8, align 8
  store i8* %35, i8** %9, align 8
  br label %36

36:                                               ; preds = %48, %17
  %37 = load i8*, i8** %9, align 8
  %38 = load i8, i8* %37, align 1
  %39 = icmp ne i8 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %36
  %41 = load i8*, i8** %9, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 10
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i8*, i8** %9, align 8
  store i8 0, i8* %46, align 1
  br label %47

47:                                               ; preds = %45, %40
  br label %48

48:                                               ; preds = %47
  %49 = load i8*, i8** %9, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %9, align 8
  br label %36

51:                                               ; preds = %36
  %52 = load i8*, i8** %8, align 8
  %53 = load i32, i32* @stdout, align 4
  %54 = call i32 @fputs(i8* %52, i32 %53)
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 @free(i8* %55)
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %51, %14
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @warnx(i8*, i64, i32) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i32 @ctime(i64*) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
