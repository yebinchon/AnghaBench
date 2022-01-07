; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_solib-osf.c_fetch_sec_names.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_solib-osf.c_fetch_sec_names.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm_info = type { i32, %struct.lm_sec* }
%struct.lm_sec = type { i8*, i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"unable to read shared sec name at 0x%lx\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lm_info*)* @fetch_sec_names to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fetch_sec_names(%struct.lm_info* %0) #0 {
  %2 = alloca %struct.lm_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.lm_sec*, align 8
  %6 = alloca i8*, align 8
  store %struct.lm_info* %0, %struct.lm_info** %2, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %37, %1
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.lm_info*, %struct.lm_info** %2, align 8
  %10 = getelementptr inbounds %struct.lm_info, %struct.lm_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %40

13:                                               ; preds = %7
  %14 = load %struct.lm_info*, %struct.lm_info** %2, align 8
  %15 = getelementptr inbounds %struct.lm_info, %struct.lm_info* %14, i32 0, i32 1
  %16 = load %struct.lm_sec*, %struct.lm_sec** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.lm_sec, %struct.lm_sec* %16, i64 %18
  store %struct.lm_sec* %19, %struct.lm_sec** %5, align 8
  %20 = load %struct.lm_sec*, %struct.lm_sec** %5, align 8
  %21 = getelementptr inbounds %struct.lm_sec, %struct.lm_sec* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @PATH_MAX, align 4
  %24 = call i32 @target_read_string(i32 %22, i8** %6, i32 %23, i32* %4)
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %13
  %28 = load %struct.lm_sec*, %struct.lm_sec** %5, align 8
  %29 = getelementptr inbounds %struct.lm_sec, %struct.lm_sec* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = call i8* @xstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i8* %32, i8** %6, align 8
  br label %33

33:                                               ; preds = %27, %13
  %34 = load i8*, i8** %6, align 8
  %35 = load %struct.lm_sec*, %struct.lm_sec** %5, align 8
  %36 = getelementptr inbounds %struct.lm_sec, %struct.lm_sec* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  br label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %7

40:                                               ; preds = %7
  %41 = load %struct.lm_info*, %struct.lm_info** %2, align 8
  %42 = call i32 @lm_secs_sort(%struct.lm_info* %41)
  ret void
}

declare dso_local i32 @target_read_string(i32, i8**, i32, i32*) #1

declare dso_local i32 @warning(i8*, i32) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @lm_secs_sort(%struct.lm_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
