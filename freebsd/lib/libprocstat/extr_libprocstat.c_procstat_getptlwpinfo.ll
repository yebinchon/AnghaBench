; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_libprocstat.c_procstat_getptlwpinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_libprocstat.c_procstat_getptlwpinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptrace_lwpinfo = type { i32 }
%struct.procstat = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"kvm method is not supported\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"sysctl method is not supported\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"unknown access method: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ptrace_lwpinfo* @procstat_getptlwpinfo(%struct.procstat* %0, i32* %1) #0 {
  %3 = alloca %struct.ptrace_lwpinfo*, align 8
  %4 = alloca %struct.procstat*, align 8
  %5 = alloca i32*, align 8
  store %struct.procstat* %0, %struct.procstat** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.procstat*, %struct.procstat** %4, align 8
  %7 = getelementptr inbounds %struct.procstat, %struct.procstat* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %19 [
    i32 129, label %9
    i32 128, label %11
    i32 130, label %13
  ]

9:                                                ; preds = %2
  %10 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store %struct.ptrace_lwpinfo* null, %struct.ptrace_lwpinfo** %3, align 8
  br label %24

11:                                               ; preds = %2
  %12 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store %struct.ptrace_lwpinfo* null, %struct.ptrace_lwpinfo** %3, align 8
  br label %24

13:                                               ; preds = %2
  %14 = load %struct.procstat*, %struct.procstat** %4, align 8
  %15 = getelementptr inbounds %struct.procstat, %struct.procstat* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = call %struct.ptrace_lwpinfo* @procstat_getptlwpinfo_core(i32 %16, i32* %17)
  store %struct.ptrace_lwpinfo* %18, %struct.ptrace_lwpinfo** %3, align 8
  br label %24

19:                                               ; preds = %2
  %20 = load %struct.procstat*, %struct.procstat** %4, align 8
  %21 = getelementptr inbounds %struct.procstat, %struct.procstat* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %22)
  store %struct.ptrace_lwpinfo* null, %struct.ptrace_lwpinfo** %3, align 8
  br label %24

24:                                               ; preds = %19, %13, %11, %9
  %25 = load %struct.ptrace_lwpinfo*, %struct.ptrace_lwpinfo** %3, align 8
  ret %struct.ptrace_lwpinfo* %25
}

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local %struct.ptrace_lwpinfo* @procstat_getptlwpinfo_core(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
