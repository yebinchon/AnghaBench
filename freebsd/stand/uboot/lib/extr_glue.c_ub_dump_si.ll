; ModuleID = '/home/carl/AnghaBench/freebsd/stand/uboot/lib/extr_glue.c_ub_dump_si.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/uboot/lib/extr_glue.c_ub_dump_si.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sys_info = type { i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"sys info:\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"  clkbus\09= %ld MHz\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"  clkcpu\09= %ld MHz\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"  bar\09\09= 0x%08lx\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"---\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"  start\09= 0x%08lx\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"  size\09= 0x%08lx\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"  type\09= %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ub_dump_si(%struct.sys_info* %0) #0 {
  %2 = alloca %struct.sys_info*, align 8
  %3 = alloca i32, align 4
  store %struct.sys_info* %0, %struct.sys_info** %2, align 8
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.sys_info*, %struct.sys_info** %2, align 8
  %6 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = sdiv i32 %7, 1000
  %9 = sdiv i32 %8, 1000
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %9)
  %11 = load %struct.sys_info*, %struct.sys_info** %2, align 8
  %12 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = sdiv i32 %13, 1000
  %15 = sdiv i32 %14, 1000
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %15)
  %17 = load %struct.sys_info*, %struct.sys_info** %2, align 8
  %18 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %19)
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %69, %1
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.sys_info*, %struct.sys_info** %2, align 8
  %25 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %72

28:                                               ; preds = %22
  %29 = load %struct.sys_info*, %struct.sys_info** %2, align 8
  %30 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %29, i32 0, i32 3
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  br label %72

39:                                               ; preds = %28
  %40 = load %struct.sys_info*, %struct.sys_info** %2, align 8
  %41 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %40, i32 0, i32 3
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %47)
  %49 = load %struct.sys_info*, %struct.sys_info** %2, align 8
  %50 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %49, i32 0, i32 3
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %56)
  %58 = load %struct.sys_info*, %struct.sys_info** %2, align 8
  %59 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %58, i32 0, i32 3
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i8* @ub_mem_type(i64 %65)
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8* %66)
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %69

69:                                               ; preds = %39
  %70 = load i32, i32* %3, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %3, align 4
  br label %22

72:                                               ; preds = %38, %22
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @ub_mem_type(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
