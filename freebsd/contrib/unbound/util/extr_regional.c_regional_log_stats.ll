; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_regional.c_regional_log_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_regional.c_regional_log_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regional = type { i32 }

@ALIGNMENT = common dso_local global i32 0, align 4
@REGIONAL_CHUNK_SIZE = common dso_local global i32 0, align 4
@REGIONAL_LARGE_OBJECT_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"regional %u chunks, %u large\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @regional_log_stats(%struct.regional* %0) #0 {
  %2 = alloca %struct.regional*, align 8
  store %struct.regional* %0, %struct.regional** %2, align 8
  %3 = load i32, i32* @ALIGNMENT, align 4
  %4 = sext i32 %3 to i64
  %5 = icmp uge i64 %4, 8
  %6 = zext i1 %5 to i32
  %7 = call i32 @log_assert(i32 %6)
  %8 = load i32, i32* @REGIONAL_CHUNK_SIZE, align 4
  %9 = load i32, i32* @ALIGNMENT, align 4
  %10 = icmp sgt i32 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @log_assert(i32 %11)
  %13 = load i32, i32* @REGIONAL_CHUNK_SIZE, align 4
  %14 = load i32, i32* @ALIGNMENT, align 4
  %15 = sub nsw i32 %13, %14
  %16 = load i32, i32* @REGIONAL_LARGE_OBJECT_SIZE, align 4
  %17 = icmp sgt i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @log_assert(i32 %18)
  %20 = load i32, i32* @REGIONAL_CHUNK_SIZE, align 4
  %21 = sext i32 %20 to i64
  %22 = icmp uge i64 %21, 4
  %23 = zext i1 %22 to i32
  %24 = call i32 @log_assert(i32 %23)
  %25 = load %struct.regional*, %struct.regional** %2, align 8
  %26 = call i64 @count_chunks(%struct.regional* %25)
  %27 = trunc i64 %26 to i32
  %28 = load %struct.regional*, %struct.regional** %2, align 8
  %29 = call i64 @count_large(%struct.regional* %28)
  %30 = trunc i64 %29 to i32
  %31 = call i32 @log_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %30)
  ret void
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32 @log_info(i8*, i32, i32) #1

declare dso_local i64 @count_chunks(%struct.regional*) #1

declare dso_local i64 @count_large(%struct.regional*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
