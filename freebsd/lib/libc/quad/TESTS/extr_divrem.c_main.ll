; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/quad/TESTS/extr_divrem.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/quad/TESTS/extr_divrem.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { [2 x i64] }

@.str = private unnamed_addr constant [3 x i8] c"> \00", align 1
@stdin = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"%lu:%lu %lu:%lu\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"0x%lx:%lx 0x%lx:%lx\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"eh?\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"%lx:%lx /%% %lx:%lx => q=%lx:%lx r=%lx:%lx\0A\00", align 1
@.str.5 = private unnamed_addr constant [74 x i8] c"  = %lX%08lX / %lX%08lX => %lX%08lX\0A  = %lX%08lX %% %lX%08lX => %lX%08lX\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %union.anon, align 8
  %3 = alloca %union.anon, align 8
  %4 = alloca %union.anon, align 8
  %5 = alloca %union.anon, align 8
  %6 = alloca [300 x i8], align 16
  store i32 0, i32* %1, align 4
  br label %7

7:                                                ; preds = %40, %38, %0
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %9 = getelementptr inbounds [300 x i8], [300 x i8]* %6, i64 0, i64 0
  %10 = load i32, i32* @stdin, align 4
  %11 = call i32* @fgets(i8* %9, i32 300, i32 %10)
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  br label %110

14:                                               ; preds = %7
  %15 = getelementptr inbounds [300 x i8], [300 x i8]* %6, i64 0, i64 0
  %16 = bitcast %union.anon* %2 to [2 x i64]*
  %17 = getelementptr inbounds [2 x i64], [2 x i64]* %16, i64 0, i64 0
  %18 = bitcast %union.anon* %2 to [2 x i64]*
  %19 = getelementptr inbounds [2 x i64], [2 x i64]* %18, i64 0, i64 1
  %20 = bitcast %union.anon* %3 to [2 x i64]*
  %21 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 0
  %22 = bitcast %union.anon* %3 to [2 x i64]*
  %23 = getelementptr inbounds [2 x i64], [2 x i64]* %22, i64 0, i64 1
  %24 = call i32 @sscanf(i8* %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64* %17, i64* %19, i64* %21, i64* %23)
  %25 = icmp ne i32 %24, 4
  br i1 %25, label %26, label %40

26:                                               ; preds = %14
  %27 = getelementptr inbounds [300 x i8], [300 x i8]* %6, i64 0, i64 0
  %28 = bitcast %union.anon* %2 to [2 x i64]*
  %29 = getelementptr inbounds [2 x i64], [2 x i64]* %28, i64 0, i64 0
  %30 = bitcast %union.anon* %2 to [2 x i64]*
  %31 = getelementptr inbounds [2 x i64], [2 x i64]* %30, i64 0, i64 1
  %32 = bitcast %union.anon* %3 to [2 x i64]*
  %33 = getelementptr inbounds [2 x i64], [2 x i64]* %32, i64 0, i64 0
  %34 = bitcast %union.anon* %3 to [2 x i64]*
  %35 = getelementptr inbounds [2 x i64], [2 x i64]* %34, i64 0, i64 1
  %36 = call i32 @sscanf(i8* %27, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i64* %29, i64* %31, i64* %33, i64* %35)
  %37 = icmp ne i32 %36, 4
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %7

40:                                               ; preds = %26, %14
  %41 = bitcast %union.anon* %2 to i64*
  %42 = load i64, i64* %41, align 8
  %43 = bitcast %union.anon* %3 to i64*
  %44 = load i64, i64* %43, align 8
  %45 = bitcast %union.anon* %5 to i64*
  %46 = call i64 @__qdivrem(i64 %42, i64 %44, i64* %45)
  %47 = bitcast %union.anon* %4 to i64*
  store i64 %46, i64* %47, align 8
  %48 = bitcast %union.anon* %2 to [2 x i64]*
  %49 = getelementptr inbounds [2 x i64], [2 x i64]* %48, i64 0, i64 0
  %50 = load i64, i64* %49, align 8
  %51 = bitcast %union.anon* %2 to [2 x i64]*
  %52 = getelementptr inbounds [2 x i64], [2 x i64]* %51, i64 0, i64 1
  %53 = load i64, i64* %52, align 8
  %54 = bitcast %union.anon* %3 to [2 x i64]*
  %55 = getelementptr inbounds [2 x i64], [2 x i64]* %54, i64 0, i64 0
  %56 = load i64, i64* %55, align 8
  %57 = bitcast %union.anon* %3 to [2 x i64]*
  %58 = getelementptr inbounds [2 x i64], [2 x i64]* %57, i64 0, i64 1
  %59 = load i64, i64* %58, align 8
  %60 = bitcast %union.anon* %4 to [2 x i64]*
  %61 = getelementptr inbounds [2 x i64], [2 x i64]* %60, i64 0, i64 0
  %62 = load i64, i64* %61, align 8
  %63 = bitcast %union.anon* %4 to [2 x i64]*
  %64 = getelementptr inbounds [2 x i64], [2 x i64]* %63, i64 0, i64 1
  %65 = load i64, i64* %64, align 8
  %66 = bitcast %union.anon* %5 to [2 x i64]*
  %67 = getelementptr inbounds [2 x i64], [2 x i64]* %66, i64 0, i64 0
  %68 = load i64, i64* %67, align 8
  %69 = bitcast %union.anon* %5 to [2 x i64]*
  %70 = getelementptr inbounds [2 x i64], [2 x i64]* %69, i64 0, i64 1
  %71 = load i64, i64* %70, align 8
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i64 %50, i64 %53, i64 %56, i64 %59, i64 %62, i64 %65, i64 %68, i64 %71)
  %73 = bitcast %union.anon* %2 to [2 x i64]*
  %74 = getelementptr inbounds [2 x i64], [2 x i64]* %73, i64 0, i64 0
  %75 = load i64, i64* %74, align 8
  %76 = bitcast %union.anon* %2 to [2 x i64]*
  %77 = getelementptr inbounds [2 x i64], [2 x i64]* %76, i64 0, i64 1
  %78 = load i64, i64* %77, align 8
  %79 = bitcast %union.anon* %3 to [2 x i64]*
  %80 = getelementptr inbounds [2 x i64], [2 x i64]* %79, i64 0, i64 0
  %81 = load i64, i64* %80, align 8
  %82 = bitcast %union.anon* %3 to [2 x i64]*
  %83 = getelementptr inbounds [2 x i64], [2 x i64]* %82, i64 0, i64 1
  %84 = load i64, i64* %83, align 8
  %85 = bitcast %union.anon* %4 to [2 x i64]*
  %86 = getelementptr inbounds [2 x i64], [2 x i64]* %85, i64 0, i64 0
  %87 = load i64, i64* %86, align 8
  %88 = bitcast %union.anon* %4 to [2 x i64]*
  %89 = getelementptr inbounds [2 x i64], [2 x i64]* %88, i64 0, i64 1
  %90 = load i64, i64* %89, align 8
  %91 = bitcast %union.anon* %2 to [2 x i64]*
  %92 = getelementptr inbounds [2 x i64], [2 x i64]* %91, i64 0, i64 0
  %93 = load i64, i64* %92, align 8
  %94 = bitcast %union.anon* %2 to [2 x i64]*
  %95 = getelementptr inbounds [2 x i64], [2 x i64]* %94, i64 0, i64 1
  %96 = load i64, i64* %95, align 8
  %97 = bitcast %union.anon* %3 to [2 x i64]*
  %98 = getelementptr inbounds [2 x i64], [2 x i64]* %97, i64 0, i64 0
  %99 = load i64, i64* %98, align 8
  %100 = bitcast %union.anon* %3 to [2 x i64]*
  %101 = getelementptr inbounds [2 x i64], [2 x i64]* %100, i64 0, i64 1
  %102 = load i64, i64* %101, align 8
  %103 = bitcast %union.anon* %5 to [2 x i64]*
  %104 = getelementptr inbounds [2 x i64], [2 x i64]* %103, i64 0, i64 0
  %105 = load i64, i64* %104, align 8
  %106 = bitcast %union.anon* %5 to [2 x i64]*
  %107 = getelementptr inbounds [2 x i64], [2 x i64]* %106, i64 0, i64 1
  %108 = load i64, i64* %107, align 8
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.5, i64 0, i64 0), i64 %75, i64 %78, i64 %81, i64 %84, i64 %87, i64 %90, i64 %93, i64 %96, i64 %99, i64 %102, i64 %105, i64 %108)
  br label %7

110:                                              ; preds = %13
  %111 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32* @fgets(i8*, i32, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*, i64*, i64*, i64*) #1

declare dso_local i64 @__qdivrem(i64, i64, i64*) #1

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
