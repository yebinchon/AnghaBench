; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/sysctl/extr_sysctl.c_S_loadavg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/sysctl/extr_sysctl.c_S_loadavg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loadavg = type { i64, i64* }

@.str = private unnamed_addr constant [21 x i8] c"S_loadavg %zu != %zu\00", align 1
@hflag = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"{ %'.2f %'.2f %'.2f }\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"{ %.2f %.2f %.2f }\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*)* @S_loadavg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @S_loadavg(i64 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.loadavg*, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.loadavg*
  store %struct.loadavg* %8, %struct.loadavg** %6, align 8
  %9 = load i64, i64* %4, align 8
  %10 = icmp ne i64 %9, 16
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %12, i32 16)
  store i32 1, i32* %3, align 4
  br label %53

14:                                               ; preds = %2
  %15 = load i64, i64* @hflag, align 8
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0)
  %19 = load %struct.loadavg*, %struct.loadavg** %6, align 8
  %20 = getelementptr inbounds %struct.loadavg, %struct.loadavg* %19, i32 0, i32 1
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  %23 = load i64, i64* %22, align 8
  %24 = sitofp i64 %23 to double
  %25 = load %struct.loadavg*, %struct.loadavg** %6, align 8
  %26 = getelementptr inbounds %struct.loadavg, %struct.loadavg* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = sitofp i64 %27 to double
  %29 = fdiv double %24, %28
  %30 = load %struct.loadavg*, %struct.loadavg** %6, align 8
  %31 = getelementptr inbounds %struct.loadavg, %struct.loadavg* %30, i32 0, i32 1
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 1
  %34 = load i64, i64* %33, align 8
  %35 = sitofp i64 %34 to double
  %36 = load %struct.loadavg*, %struct.loadavg** %6, align 8
  %37 = getelementptr inbounds %struct.loadavg, %struct.loadavg* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = sitofp i64 %38 to double
  %40 = fdiv double %35, %39
  %41 = load %struct.loadavg*, %struct.loadavg** %6, align 8
  %42 = getelementptr inbounds %struct.loadavg, %struct.loadavg* %41, i32 0, i32 1
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 2
  %45 = load i64, i64* %44, align 8
  %46 = sitofp i64 %45 to double
  %47 = load %struct.loadavg*, %struct.loadavg** %6, align 8
  %48 = getelementptr inbounds %struct.loadavg, %struct.loadavg* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = sitofp i64 %49 to double
  %51 = fdiv double %46, %50
  %52 = call i32 @printf(i8* %18, double %29, double %40, double %51)
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %14, %11
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @warnx(i8*, i64, i32) #1

declare dso_local i32 @printf(i8*, double, double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
