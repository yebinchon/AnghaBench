; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_libprocstat.c_procstat_getauxv.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_libprocstat.c_procstat_getauxv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.procstat = type { i32, i32 }
%struct.kinfo_proc = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"kvm method is not supported\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"unknown access method: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @procstat_getauxv(%struct.procstat* %0, %struct.kinfo_proc* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.procstat*, align 8
  %6 = alloca %struct.kinfo_proc*, align 8
  %7 = alloca i32*, align 8
  store %struct.procstat* %0, %struct.procstat** %5, align 8
  store %struct.kinfo_proc* %1, %struct.kinfo_proc** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load %struct.procstat*, %struct.procstat** %5, align 8
  %9 = getelementptr inbounds %struct.procstat, %struct.procstat* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %25 [
    i32 129, label %11
    i32 128, label %13
    i32 130, label %19
  ]

11:                                               ; preds = %3
  %12 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %30

13:                                               ; preds = %3
  %14 = load %struct.kinfo_proc*, %struct.kinfo_proc** %6, align 8
  %15 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = call i32* @procstat_getauxv_sysctl(i32 %16, i32* %17)
  store i32* %18, i32** %4, align 8
  br label %30

19:                                               ; preds = %3
  %20 = load %struct.procstat*, %struct.procstat** %5, align 8
  %21 = getelementptr inbounds %struct.procstat, %struct.procstat* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %7, align 8
  %24 = call i32* @procstat_getauxv_core(i32 %22, i32* %23)
  store i32* %24, i32** %4, align 8
  br label %30

25:                                               ; preds = %3
  %26 = load %struct.procstat*, %struct.procstat** %5, align 8
  %27 = getelementptr inbounds %struct.procstat, %struct.procstat* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  store i32* null, i32** %4, align 8
  br label %30

30:                                               ; preds = %25, %19, %13, %11
  %31 = load i32*, i32** %4, align 8
  ret i32* %31
}

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32* @procstat_getauxv_sysctl(i32, i32*) #1

declare dso_local i32* @procstat_getauxv_core(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
