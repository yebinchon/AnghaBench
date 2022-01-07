; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_module.c_log_edns_known_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_module.c_log_edns_known_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i32 }

@verbosity = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"EDNS known options:\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"  Code:    Bypass_cache_stage: Aggregate_mesh:\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"  %-8.8s %-19s %-15s\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"YES\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"NO\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @log_edns_known_options(i32 %0, %struct.module_env* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.module_env*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [32 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.module_env* %1, %struct.module_env** %4, align 8
  %9 = load %struct.module_env*, %struct.module_env** %4, align 8
  %10 = getelementptr inbounds %struct.module_env, %struct.module_env* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ugt i64 %11, 0
  br i1 %12, label %13, label %65

13:                                               ; preds = %2
  %14 = load i32, i32* @verbosity, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp uge i32 %14, %15
  br i1 %16, label %17, label %65

17:                                               ; preds = %13
  %18 = load i32, i32* %3, align 4
  %19 = call i32 (i32, i8*, ...) @verbose(i32 %18, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %3, align 4
  %21 = call i32 (i32, i8*, ...) @verbose(i32 %20, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* %5, align 8
  br label %22

22:                                               ; preds = %61, %17
  %23 = load i64, i64* %5, align 8
  %24 = load %struct.module_env*, %struct.module_env** %4, align 8
  %25 = getelementptr inbounds %struct.module_env, %struct.module_env* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %23, %26
  br i1 %27, label %28, label %64

28:                                               ; preds = %22
  %29 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  store i8* %29, i8** %7, align 8
  store i64 32, i64* %8, align 8
  %30 = load %struct.module_env*, %struct.module_env** %4, align 8
  %31 = getelementptr inbounds %struct.module_env, %struct.module_env* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i64, i64* %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @sldns_wire2str_edns_option_code_print(i8** %7, i64* %8, i32 %36)
  %38 = load i32, i32* %3, align 4
  %39 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %40 = load %struct.module_env*, %struct.module_env** %4, align 8
  %41 = getelementptr inbounds %struct.module_env, %struct.module_env* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i64, i64* %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)
  %50 = load %struct.module_env*, %struct.module_env** %4, align 8
  %51 = getelementptr inbounds %struct.module_env, %struct.module_env* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i64, i64* %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %60 = call i32 (i32, i8*, ...) @verbose(i32 %38, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %39, i8* %49, i8* %59)
  br label %61

61:                                               ; preds = %28
  %62 = load i64, i64* %5, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %5, align 8
  br label %22

64:                                               ; preds = %22
  br label %65

65:                                               ; preds = %64, %13, %2
  ret void
}

declare dso_local i32 @verbose(i32, i8*, ...) #1

declare dso_local i32 @sldns_wire2str_edns_option_code_print(i8**, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
