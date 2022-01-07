; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_libprocstat.c_procstat_getpathname.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_libprocstat.c_procstat_getpathname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.procstat = type { i32, i32 }
%struct.kinfo_proc = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"unknown access method: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @procstat_getpathname(%struct.procstat* %0, %struct.kinfo_proc* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.procstat*, align 8
  %7 = alloca %struct.kinfo_proc*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.procstat* %0, %struct.procstat** %6, align 8
  store %struct.kinfo_proc* %1, %struct.kinfo_proc** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load %struct.procstat*, %struct.procstat** %6, align 8
  %11 = getelementptr inbounds %struct.procstat, %struct.procstat* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %34 [
    i32 129, label %13
    i32 128, label %20
    i32 130, label %27
  ]

13:                                               ; preds = %4
  %14 = load i64, i64* %9, align 8
  %15 = icmp ugt i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i8*, i8** %8, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  store i8 0, i8* %18, align 1
  br label %19

19:                                               ; preds = %16, %13
  store i32 0, i32* %5, align 4
  br label %39

20:                                               ; preds = %4
  %21 = load %struct.kinfo_proc*, %struct.kinfo_proc** %7, align 8
  %22 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %8, align 8
  %25 = load i64, i64* %9, align 8
  %26 = call i32 @procstat_getpathname_sysctl(i32 %23, i8* %24, i64 %25)
  store i32 %26, i32* %5, align 4
  br label %39

27:                                               ; preds = %4
  %28 = load %struct.procstat*, %struct.procstat** %6, align 8
  %29 = getelementptr inbounds %struct.procstat, %struct.procstat* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %8, align 8
  %32 = load i64, i64* %9, align 8
  %33 = call i32 @procstat_getpathname_core(i32 %30, i8* %31, i64 %32)
  store i32 %33, i32* %5, align 4
  br label %39

34:                                               ; preds = %4
  %35 = load %struct.procstat*, %struct.procstat** %6, align 8
  %36 = getelementptr inbounds %struct.procstat, %struct.procstat* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %37)
  store i32 -1, i32* %5, align 4
  br label %39

39:                                               ; preds = %34, %27, %20, %19
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i32 @procstat_getpathname_sysctl(i32, i8*, i64) #1

declare dso_local i32 @procstat_getpathname_core(i32, i8*, i64) #1

declare dso_local i32 @warnx(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
