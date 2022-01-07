; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_core.c_core_offset.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_core.c_core_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.procstat_core = type { i64, i32 }

@PROCSTAT_CORE_MAGIC = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"core: lseek(%jd)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.procstat_core*, i64)* @core_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @core_offset(%struct.procstat_core* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.procstat_core*, align 8
  %5 = alloca i64, align 8
  store %struct.procstat_core* %0, %struct.procstat_core** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.procstat_core*, %struct.procstat_core** %4, align 8
  %7 = getelementptr inbounds %struct.procstat_core, %struct.procstat_core* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @PROCSTAT_CORE_MAGIC, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.procstat_core*, %struct.procstat_core** %4, align 8
  %14 = getelementptr inbounds %struct.procstat_core, %struct.procstat_core* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i32, i32* @SEEK_SET, align 4
  %18 = call i32 @lseek(i32 %15, i64 %16, i32 %17)
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i64, i64* %5, align 8
  %22 = trunc i64 %21 to i32
  %23 = call i32 @warn(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %22)
  store i32 0, i32* %3, align 4
  br label %25

24:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %25

25:                                               ; preds = %24, %20
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @lseek(i32, i64, i32) #1

declare dso_local i32 @warn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
