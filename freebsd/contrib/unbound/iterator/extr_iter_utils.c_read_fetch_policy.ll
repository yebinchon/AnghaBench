; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_utils.c_read_fetch_policy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_utils.c_read_fetch_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iter_env = type { i32, i32* }

@.str = private unnamed_addr constant [39 x i8] c"Cannot parse target fetch policy: \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"alloc fetch policy: out of memory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iter_env*, i8*)* @read_fetch_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_fetch_policy(%struct.iter_env* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iter_env*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.iter_env* %0, %struct.iter_env** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call i32 @cfg_count_numbers(i8* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 1
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %12)
  store i32 0, i32* %3, align 4
  br label %38

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  %16 = sub nsw i32 %15, 1
  %17 = load %struct.iter_env*, %struct.iter_env** %4, align 8
  %18 = getelementptr inbounds %struct.iter_env, %struct.iter_env* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.iter_env*, %struct.iter_env** %4, align 8
  %20 = getelementptr inbounds %struct.iter_env, %struct.iter_env* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = add i64 %22, 1
  %24 = call i64 @calloc(i64 %23, i32 4)
  %25 = inttoptr i64 %24 to i32*
  %26 = load %struct.iter_env*, %struct.iter_env** %4, align 8
  %27 = getelementptr inbounds %struct.iter_env, %struct.iter_env* %26, i32 0, i32 1
  store i32* %25, i32** %27, align 8
  %28 = load %struct.iter_env*, %struct.iter_env** %4, align 8
  %29 = getelementptr inbounds %struct.iter_env, %struct.iter_env* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %14
  %33 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %38

34:                                               ; preds = %14
  %35 = load %struct.iter_env*, %struct.iter_env** %4, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @fetch_fill(%struct.iter_env* %35, i8* %36)
  store i32 1, i32* %3, align 4
  br label %38

38:                                               ; preds = %34, %32, %11
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @cfg_count_numbers(i8*) #1

declare dso_local i32 @log_err(i8*, ...) #1

declare dso_local i64 @calloc(i64, i32) #1

declare dso_local i32 @fetch_fill(%struct.iter_env*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
