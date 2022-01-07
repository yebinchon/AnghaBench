; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_libprocstat.c_procstat_getptlwpinfo_core.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_libprocstat.c_procstat_getptlwpinfo_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptrace_lwpinfo = type { i32 }
%struct.procstat_core = type { i32 }

@PSC_TYPE_PTLWPINFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ptrace_lwpinfo* (%struct.procstat_core*, i32*)* @procstat_getptlwpinfo_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ptrace_lwpinfo* @procstat_getptlwpinfo_core(%struct.procstat_core* %0, i32* %1) #0 {
  %3 = alloca %struct.ptrace_lwpinfo*, align 8
  %4 = alloca %struct.procstat_core*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ptrace_lwpinfo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.procstat_core* %0, %struct.procstat_core** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.procstat_core*, %struct.procstat_core** %4, align 8
  %11 = load i32, i32* @PSC_TYPE_PTLWPINFO, align 4
  %12 = call i32 @procstat_core_note_count(%struct.procstat_core* %10, i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store %struct.ptrace_lwpinfo* null, %struct.ptrace_lwpinfo** %3, align 8
  br label %37

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  %18 = zext i32 %17 to i64
  %19 = mul i64 %18, 4
  store i64 %19, i64* %9, align 8
  %20 = load i64, i64* %9, align 8
  %21 = call i8* @calloc(i32 1, i64 %20)
  store i8* %21, i8** %6, align 8
  %22 = load %struct.procstat_core*, %struct.procstat_core** %4, align 8
  %23 = load i32, i32* @PSC_TYPE_PTLWPINFO, align 4
  %24 = load i8*, i8** %6, align 8
  %25 = call %struct.ptrace_lwpinfo* @procstat_core_get(%struct.procstat_core* %22, i32 %23, i8* %24, i64* %9)
  store %struct.ptrace_lwpinfo* %25, %struct.ptrace_lwpinfo** %7, align 8
  %26 = load %struct.ptrace_lwpinfo*, %struct.ptrace_lwpinfo** %7, align 8
  %27 = icmp eq %struct.ptrace_lwpinfo* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %16
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @free(i8* %29)
  store %struct.ptrace_lwpinfo* null, %struct.ptrace_lwpinfo** %3, align 8
  br label %37

31:                                               ; preds = %16
  %32 = load i64, i64* %9, align 8
  %33 = udiv i64 %32, 4
  %34 = trunc i64 %33 to i32
  %35 = load i32*, i32** %5, align 8
  store i32 %34, i32* %35, align 4
  %36 = load %struct.ptrace_lwpinfo*, %struct.ptrace_lwpinfo** %7, align 8
  store %struct.ptrace_lwpinfo* %36, %struct.ptrace_lwpinfo** %3, align 8
  br label %37

37:                                               ; preds = %31, %28, %15
  %38 = load %struct.ptrace_lwpinfo*, %struct.ptrace_lwpinfo** %3, align 8
  ret %struct.ptrace_lwpinfo* %38
}

declare dso_local i32 @procstat_core_note_count(%struct.procstat_core*, i32) #1

declare dso_local i8* @calloc(i32, i64) #1

declare dso_local %struct.ptrace_lwpinfo* @procstat_core_get(%struct.procstat_core*, i32, i8*, i64*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
