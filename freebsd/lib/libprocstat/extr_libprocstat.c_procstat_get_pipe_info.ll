; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_libprocstat.c_procstat_get_pipe_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_libprocstat.c_procstat_get_pipe_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.procstat = type { i64, i32 }
%struct.filestat = type { i32 }
%struct.pipestat = type { i32 }

@PROCSTAT_KVM = common dso_local global i64 0, align 8
@PROCSTAT_SYSCTL = common dso_local global i64 0, align 8
@PROCSTAT_CORE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"unknown access method: %d\00", align 1
@_POSIX2_LINE_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @procstat_get_pipe_info(%struct.procstat* %0, %struct.filestat* %1, %struct.pipestat* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.procstat*, align 8
  %7 = alloca %struct.filestat*, align 8
  %8 = alloca %struct.pipestat*, align 8
  %9 = alloca i8*, align 8
  store %struct.procstat* %0, %struct.procstat** %6, align 8
  store %struct.filestat* %1, %struct.filestat** %7, align 8
  store %struct.pipestat* %2, %struct.pipestat** %8, align 8
  store i8* %3, i8** %9, align 8
  %10 = load %struct.pipestat*, %struct.pipestat** %8, align 8
  %11 = call i32 @assert(%struct.pipestat* %10)
  %12 = load %struct.procstat*, %struct.procstat** %6, align 8
  %13 = getelementptr inbounds %struct.procstat, %struct.procstat* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PROCSTAT_KVM, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %4
  %18 = load %struct.procstat*, %struct.procstat** %6, align 8
  %19 = getelementptr inbounds %struct.procstat, %struct.procstat* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.filestat*, %struct.filestat** %7, align 8
  %22 = load %struct.pipestat*, %struct.pipestat** %8, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = call i32 @procstat_get_pipe_info_kvm(i32 %20, %struct.filestat* %21, %struct.pipestat* %22, i8* %23)
  store i32 %24, i32* %5, align 4
  br label %54

25:                                               ; preds = %4
  %26 = load %struct.procstat*, %struct.procstat** %6, align 8
  %27 = getelementptr inbounds %struct.procstat, %struct.procstat* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PROCSTAT_SYSCTL, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = load %struct.procstat*, %struct.procstat** %6, align 8
  %33 = getelementptr inbounds %struct.procstat, %struct.procstat* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PROCSTAT_CORE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %31, %25
  %38 = load %struct.filestat*, %struct.filestat** %7, align 8
  %39 = load %struct.pipestat*, %struct.pipestat** %8, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = call i32 @procstat_get_pipe_info_sysctl(%struct.filestat* %38, %struct.pipestat* %39, i8* %40)
  store i32 %41, i32* %5, align 4
  br label %54

42:                                               ; preds = %31
  %43 = load %struct.procstat*, %struct.procstat** %6, align 8
  %44 = getelementptr inbounds %struct.procstat, %struct.procstat* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %45)
  %47 = load i8*, i8** %9, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load i8*, i8** %9, align 8
  %51 = load i32, i32* @_POSIX2_LINE_MAX, align 4
  %52 = call i32 @snprintf(i8* %50, i32 %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %53

53:                                               ; preds = %49, %42
  store i32 1, i32* %5, align 4
  br label %54

54:                                               ; preds = %53, %37, %17
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @assert(%struct.pipestat*) #1

declare dso_local i32 @procstat_get_pipe_info_kvm(i32, %struct.filestat*, %struct.pipestat*, i8*) #1

declare dso_local i32 @procstat_get_pipe_info_sysctl(%struct.filestat*, %struct.pipestat*, i8*) #1

declare dso_local i32 @warnx(i8*, i64) #1

declare dso_local i32 @snprintf(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
