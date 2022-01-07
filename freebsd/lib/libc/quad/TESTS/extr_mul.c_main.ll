; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/quad/TESTS/extr_mul.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/quad/TESTS/extr_mul.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { [2 x i64] }

@.str = private unnamed_addr constant [3 x i8] c"> \00", align 1
@stdin = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"%lu:%lu %lu:%lu\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"0x%lx:%lx 0x%lx:%lx\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"eh?\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"%lx:%lx * %lx:%lx => %lx:%lx\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"  = %lX%08lX * %lX%08lX => %lX%08lX\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %union.anon, align 8
  %3 = alloca %union.anon, align 8
  %4 = alloca %union.anon, align 8
  %5 = alloca [300 x i8], align 16
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %39, %37, %0
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %8 = getelementptr inbounds [300 x i8], [300 x i8]* %5, i64 0, i64 0
  %9 = load i32, i32* @stdin, align 4
  %10 = call i32* @fgets(i8* %8, i32 300, i32 %9)
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  br label %84

13:                                               ; preds = %6
  %14 = getelementptr inbounds [300 x i8], [300 x i8]* %5, i64 0, i64 0
  %15 = bitcast %union.anon* %2 to [2 x i64]*
  %16 = getelementptr inbounds [2 x i64], [2 x i64]* %15, i64 0, i64 0
  %17 = bitcast %union.anon* %2 to [2 x i64]*
  %18 = getelementptr inbounds [2 x i64], [2 x i64]* %17, i64 0, i64 1
  %19 = bitcast %union.anon* %3 to [2 x i64]*
  %20 = getelementptr inbounds [2 x i64], [2 x i64]* %19, i64 0, i64 0
  %21 = bitcast %union.anon* %3 to [2 x i64]*
  %22 = getelementptr inbounds [2 x i64], [2 x i64]* %21, i64 0, i64 1
  %23 = call i32 @sscanf(i8* %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64* %16, i64* %18, i64* %20, i64* %22)
  %24 = icmp ne i32 %23, 4
  br i1 %24, label %25, label %39

25:                                               ; preds = %13
  %26 = getelementptr inbounds [300 x i8], [300 x i8]* %5, i64 0, i64 0
  %27 = bitcast %union.anon* %2 to [2 x i64]*
  %28 = getelementptr inbounds [2 x i64], [2 x i64]* %27, i64 0, i64 0
  %29 = bitcast %union.anon* %2 to [2 x i64]*
  %30 = getelementptr inbounds [2 x i64], [2 x i64]* %29, i64 0, i64 1
  %31 = bitcast %union.anon* %3 to [2 x i64]*
  %32 = getelementptr inbounds [2 x i64], [2 x i64]* %31, i64 0, i64 0
  %33 = bitcast %union.anon* %3 to [2 x i64]*
  %34 = getelementptr inbounds [2 x i64], [2 x i64]* %33, i64 0, i64 1
  %35 = call i32 @sscanf(i8* %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i64* %28, i64* %30, i64* %32, i64* %34)
  %36 = icmp ne i32 %35, 4
  br i1 %36, label %37, label %39

37:                                               ; preds = %25
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %6

39:                                               ; preds = %25, %13
  %40 = bitcast %union.anon* %2 to i64*
  %41 = load i64, i64* %40, align 8
  %42 = bitcast %union.anon* %3 to i64*
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @__muldi3(i64 %41, i64 %43)
  %45 = bitcast %union.anon* %4 to i64*
  store i64 %44, i64* %45, align 8
  %46 = bitcast %union.anon* %2 to [2 x i64]*
  %47 = getelementptr inbounds [2 x i64], [2 x i64]* %46, i64 0, i64 0
  %48 = load i64, i64* %47, align 8
  %49 = bitcast %union.anon* %2 to [2 x i64]*
  %50 = getelementptr inbounds [2 x i64], [2 x i64]* %49, i64 0, i64 1
  %51 = load i64, i64* %50, align 8
  %52 = bitcast %union.anon* %3 to [2 x i64]*
  %53 = getelementptr inbounds [2 x i64], [2 x i64]* %52, i64 0, i64 0
  %54 = load i64, i64* %53, align 8
  %55 = bitcast %union.anon* %3 to [2 x i64]*
  %56 = getelementptr inbounds [2 x i64], [2 x i64]* %55, i64 0, i64 1
  %57 = load i64, i64* %56, align 8
  %58 = bitcast %union.anon* %4 to [2 x i64]*
  %59 = getelementptr inbounds [2 x i64], [2 x i64]* %58, i64 0, i64 0
  %60 = load i64, i64* %59, align 8
  %61 = bitcast %union.anon* %4 to [2 x i64]*
  %62 = getelementptr inbounds [2 x i64], [2 x i64]* %61, i64 0, i64 1
  %63 = load i64, i64* %62, align 8
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i64 %48, i64 %51, i64 %54, i64 %57, i64 %60, i64 %63)
  %65 = bitcast %union.anon* %2 to [2 x i64]*
  %66 = getelementptr inbounds [2 x i64], [2 x i64]* %65, i64 0, i64 0
  %67 = load i64, i64* %66, align 8
  %68 = bitcast %union.anon* %2 to [2 x i64]*
  %69 = getelementptr inbounds [2 x i64], [2 x i64]* %68, i64 0, i64 1
  %70 = load i64, i64* %69, align 8
  %71 = bitcast %union.anon* %3 to [2 x i64]*
  %72 = getelementptr inbounds [2 x i64], [2 x i64]* %71, i64 0, i64 0
  %73 = load i64, i64* %72, align 8
  %74 = bitcast %union.anon* %3 to [2 x i64]*
  %75 = getelementptr inbounds [2 x i64], [2 x i64]* %74, i64 0, i64 1
  %76 = load i64, i64* %75, align 8
  %77 = bitcast %union.anon* %4 to [2 x i64]*
  %78 = getelementptr inbounds [2 x i64], [2 x i64]* %77, i64 0, i64 0
  %79 = load i64, i64* %78, align 8
  %80 = bitcast %union.anon* %4 to [2 x i64]*
  %81 = getelementptr inbounds [2 x i64], [2 x i64]* %80, i64 0, i64 1
  %82 = load i64, i64* %81, align 8
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i64 %67, i64 %70, i64 %73, i64 %76, i64 %79, i64 %82)
  br label %6

84:                                               ; preds = %12
  %85 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32* @fgets(i8*, i32, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*, i64*, i64*, i64*) #1

declare dso_local i64 @__muldi3(i64, i64) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
