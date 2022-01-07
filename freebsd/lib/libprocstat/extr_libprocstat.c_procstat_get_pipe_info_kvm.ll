; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_libprocstat.c_procstat_get_pipe_info_kvm.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_libprocstat.c_procstat_get_pipe_info_kvm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filestat = type { i64, i64, i32, i8* }
%struct.pipestat = type { i64, i64, i32, i8* }
%struct.pipe = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"can't read pipe at %p\00", align 1
@_POSIX2_LINE_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pipestat*, %struct.filestat*, %struct.pipestat*, i8*)* @procstat_get_pipe_info_kvm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @procstat_get_pipe_info_kvm(%struct.pipestat* %0, %struct.filestat* %1, %struct.pipestat* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pipestat*, align 8
  %7 = alloca %struct.filestat*, align 8
  %8 = alloca %struct.pipestat*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.pipe, align 8
  %11 = alloca i8*, align 8
  store %struct.pipestat* %0, %struct.pipestat** %6, align 8
  store %struct.filestat* %1, %struct.filestat** %7, align 8
  store %struct.pipestat* %2, %struct.pipestat** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.pipestat*, %struct.pipestat** %6, align 8
  %13 = call i32 @assert(%struct.pipestat* %12)
  %14 = load %struct.pipestat*, %struct.pipestat** %8, align 8
  %15 = call i32 @assert(%struct.pipestat* %14)
  %16 = load %struct.filestat*, %struct.filestat** %7, align 8
  %17 = bitcast %struct.filestat* %16 to %struct.pipestat*
  %18 = call i32 @assert(%struct.pipestat* %17)
  %19 = load %struct.pipestat*, %struct.pipestat** %8, align 8
  %20 = call i32 @bzero(%struct.pipestat* %19, i32 32)
  %21 = load %struct.filestat*, %struct.filestat** %7, align 8
  %22 = getelementptr inbounds %struct.filestat, %struct.filestat* %21, i32 0, i32 3
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %11, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  br label %50

27:                                               ; preds = %4
  %28 = load %struct.pipestat*, %struct.pipestat** %6, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = ptrtoint i8* %29 to i64
  %31 = call i32 @kvm_read_all(%struct.pipestat* %28, i64 %30, %struct.pipe* %10, i32 16)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load i8*, i8** %11, align 8
  %35 = call i32 @warnx(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %34)
  br label %50

36:                                               ; preds = %27
  %37 = load i8*, i8** %11, align 8
  %38 = ptrtoint i8* %37 to i64
  %39 = load %struct.pipestat*, %struct.pipestat** %8, align 8
  %40 = getelementptr inbounds %struct.pipestat, %struct.pipestat* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = getelementptr inbounds %struct.pipe, %struct.pipe* %10, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.pipestat*, %struct.pipestat** %8, align 8
  %44 = getelementptr inbounds %struct.pipestat, %struct.pipestat* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  %45 = getelementptr inbounds %struct.pipe, %struct.pipe* %10, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.pipestat*, %struct.pipestat** %8, align 8
  %49 = getelementptr inbounds %struct.pipestat, %struct.pipestat* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  store i32 0, i32* %5, align 4
  br label %58

50:                                               ; preds = %33, %26
  %51 = load i8*, i8** %9, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i8*, i8** %9, align 8
  %55 = load i32, i32* @_POSIX2_LINE_MAX, align 4
  %56 = call i32 @snprintf(i8* %54, i32 %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %57

57:                                               ; preds = %53, %50
  store i32 1, i32* %5, align 4
  br label %58

58:                                               ; preds = %57, %36
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @assert(%struct.pipestat*) #1

declare dso_local i32 @bzero(%struct.pipestat*, i32) #1

declare dso_local i32 @kvm_read_all(%struct.pipestat*, i64, %struct.pipe*, i32) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
