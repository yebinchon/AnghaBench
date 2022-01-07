; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_core.c_core_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_core.c_core_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.procstat_core = type { i64, i32 }

@PROCSTAT_CORE_MAGIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"core: read\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"core: short read\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.procstat_core*, i8*, i64)* @core_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @core_read(%struct.procstat_core* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.procstat_core*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.procstat_core* %0, %struct.procstat_core** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.procstat_core*, %struct.procstat_core** %5, align 8
  %10 = getelementptr inbounds %struct.procstat_core, %struct.procstat_core* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PROCSTAT_CORE_MAGIC, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.procstat_core*, %struct.procstat_core** %5, align 8
  %17 = getelementptr inbounds %struct.procstat_core, %struct.procstat_core* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @read(i32 %18, i8* %19, i64 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = call i32 @warn(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %34

26:                                               ; preds = %3
  %27 = load i32, i32* %8, align 4
  %28 = load i64, i64* %7, align 8
  %29 = trunc i64 %28 to i32
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = call i32 @warnx(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %34

33:                                               ; preds = %26
  store i32 1, i32* %4, align 4
  br label %34

34:                                               ; preds = %33, %31, %24
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @read(i32, i8*, i64) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @warnx(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
