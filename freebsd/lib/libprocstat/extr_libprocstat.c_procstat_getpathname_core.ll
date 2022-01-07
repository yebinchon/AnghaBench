; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_libprocstat.c_procstat_getpathname_core.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_libprocstat.c_procstat_getpathname_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.procstat_core = type { i32 }
%struct.kinfo_file = type { i64, i32 }

@KF_FD_TYPE_TEXT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.procstat_core*, i8*, i64)* @procstat_getpathname_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @procstat_getpathname_core(%struct.procstat_core* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.procstat_core*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.kinfo_file*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.procstat_core* %0, %struct.procstat_core** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.procstat_core*, %struct.procstat_core** %5, align 8
  %13 = call %struct.kinfo_file* @kinfo_getfile_core(%struct.procstat_core* %12, i32* %9)
  store %struct.kinfo_file* %13, %struct.kinfo_file** %8, align 8
  %14 = load %struct.kinfo_file*, %struct.kinfo_file** %8, align 8
  %15 = icmp eq %struct.kinfo_file* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %49

17:                                               ; preds = %3
  store i32 -1, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %42, %17
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %45

22:                                               ; preds = %18
  %23 = load %struct.kinfo_file*, %struct.kinfo_file** %8, align 8
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.kinfo_file, %struct.kinfo_file* %23, i64 %25
  %27 = getelementptr inbounds %struct.kinfo_file, %struct.kinfo_file* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @KF_FD_TYPE_TEXT, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %42

32:                                               ; preds = %22
  %33 = load i8*, i8** %6, align 8
  %34 = load %struct.kinfo_file*, %struct.kinfo_file** %8, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.kinfo_file, %struct.kinfo_file* %34, i64 %36
  %38 = getelementptr inbounds %struct.kinfo_file, %struct.kinfo_file* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @strncpy(i8* %33, i32 %39, i64 %40)
  store i32 0, i32* %11, align 4
  br label %45

42:                                               ; preds = %31
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %10, align 4
  br label %18

45:                                               ; preds = %32, %18
  %46 = load %struct.kinfo_file*, %struct.kinfo_file** %8, align 8
  %47 = call i32 @free(%struct.kinfo_file* %46)
  %48 = load i32, i32* %11, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %45, %16
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local %struct.kinfo_file* @kinfo_getfile_core(%struct.procstat_core*, i32*) #1

declare dso_local i32 @strncpy(i8*, i32, i64) #1

declare dso_local i32 @free(%struct.kinfo_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
