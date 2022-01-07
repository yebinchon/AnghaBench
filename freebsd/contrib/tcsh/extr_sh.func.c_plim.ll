; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.func.c_plim.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.func.c_plim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.limits = type { i32, i64, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"%-13.13s\00", align 1
@RLIMIT_FSIZE = common dso_local global i64 0, align 8
@RLIM_INFINITY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"unlimited\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%ld %s\00", align 1
@RLIMIT_CPU = common dso_local global i64 0, align 8
@RLIMIT_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.limits*, i32)* @plim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @plim(%struct.limits* %0, i32 %1) #0 {
  %3 = alloca %struct.limits*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.limits* %0, %struct.limits** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.limits*, %struct.limits** %3, align 8
  %8 = getelementptr inbounds %struct.limits, %struct.limits* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %6, align 4
  %10 = load %struct.limits*, %struct.limits** %3, align 8
  %11 = getelementptr inbounds %struct.limits, %struct.limits* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.limits*, %struct.limits** %3, align 8
  %15 = getelementptr inbounds %struct.limits, %struct.limits* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @ulimit(i64 %16, i32 0)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.limits*, %struct.limits** %3, align 8
  %19 = getelementptr inbounds %struct.limits, %struct.limits* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @RLIMIT_FSIZE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @RLIM_INFINITY, align 4
  %26 = sdiv i32 %25, 512
  %27 = icmp sge i32 %24, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @RLIM_INFINITY, align 4
  store i32 %29, i32* %5, align 4
  br label %35

30:                                               ; preds = %23
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %31, 1024
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 2, i32 1
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %30, %28
  br label %36

36:                                               ; preds = %35, %2
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @RLIM_INFINITY, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %51

42:                                               ; preds = %36
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %6, align 4
  %45 = sdiv i32 %43, %44
  %46 = sext i32 %45 to i64
  %47 = load %struct.limits*, %struct.limits** %3, align 8
  %48 = getelementptr inbounds %struct.limits, %struct.limits* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i64 %46, i32 %49)
  br label %51

51:                                               ; preds = %42, %40
  %52 = call i32 @xputchar(i8 signext 10)
  ret void
}

declare dso_local i32 @xprintf(i8*, ...) #1

declare dso_local i32 @ulimit(i64, i32) #1

declare dso_local i32 @xputchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
