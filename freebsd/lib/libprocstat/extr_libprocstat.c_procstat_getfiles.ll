; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_libprocstat.c_procstat_getfiles.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_libprocstat.c_procstat_getfiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filestat_list = type { i32 }
%struct.procstat = type { i32 }
%struct.kinfo_proc = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"unknown access method: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.filestat_list* @procstat_getfiles(%struct.procstat* %0, %struct.kinfo_proc* %1, i32 %2) #0 {
  %4 = alloca %struct.filestat_list*, align 8
  %5 = alloca %struct.procstat*, align 8
  %6 = alloca %struct.kinfo_proc*, align 8
  %7 = alloca i32, align 4
  store %struct.procstat* %0, %struct.procstat** %5, align 8
  store %struct.kinfo_proc* %1, %struct.kinfo_proc** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.procstat*, %struct.procstat** %5, align 8
  %9 = getelementptr inbounds %struct.procstat, %struct.procstat* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %21 [
    i32 129, label %11
    i32 128, label %16
    i32 130, label %16
  ]

11:                                               ; preds = %3
  %12 = load %struct.procstat*, %struct.procstat** %5, align 8
  %13 = load %struct.kinfo_proc*, %struct.kinfo_proc** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.filestat_list* @procstat_getfiles_kvm(%struct.procstat* %12, %struct.kinfo_proc* %13, i32 %14)
  store %struct.filestat_list* %15, %struct.filestat_list** %4, align 8
  br label %26

16:                                               ; preds = %3, %3
  %17 = load %struct.procstat*, %struct.procstat** %5, align 8
  %18 = load %struct.kinfo_proc*, %struct.kinfo_proc** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call %struct.filestat_list* @procstat_getfiles_sysctl(%struct.procstat* %17, %struct.kinfo_proc* %18, i32 %19)
  store %struct.filestat_list* %20, %struct.filestat_list** %4, align 8
  br label %26

21:                                               ; preds = %3
  %22 = load %struct.procstat*, %struct.procstat** %5, align 8
  %23 = getelementptr inbounds %struct.procstat, %struct.procstat* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %24)
  store %struct.filestat_list* null, %struct.filestat_list** %4, align 8
  br label %26

26:                                               ; preds = %21, %16, %11
  %27 = load %struct.filestat_list*, %struct.filestat_list** %4, align 8
  ret %struct.filestat_list* %27
}

declare dso_local %struct.filestat_list* @procstat_getfiles_kvm(%struct.procstat*, %struct.kinfo_proc*, i32) #1

declare dso_local %struct.filestat_list* @procstat_getfiles_sysctl(%struct.procstat*, %struct.kinfo_proc*, i32) #1

declare dso_local i32 @warnx(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
