; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_usage.c_optionOnlyUsage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_usage.c_optionOnlyUsage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }

@EXIT_SUCCESS = common dso_local global i32 0, align 4
@option_usage_fp = common dso_local global i64 0, align 8
@zwriting = common dso_local global i32 0, align 4
@stderr = common dso_local global i64 0, align 8
@zstderr_name = common dso_local global i32 0, align 4
@zstdout_name = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @optionOnlyUsage(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i8* null, i8** %5, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %7 = call i32 @set_usage_flags(%struct.TYPE_9__* %6, i32* null)
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @EXIT_SUCCESS, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %13 = call i64 @skip_misuse_usage(%struct.TYPE_9__* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %51

16:                                               ; preds = %11, %2
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %18 = call i64 @do_gnu_usage(%struct.TYPE_9__* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %22 = call i32 @setGnuOptFmts(%struct.TYPE_9__* %21, i8** %5)
  br label %26

23:                                               ; preds = %16
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %25 = call i32 @setStdOptFmts(%struct.TYPE_9__* %24, i8** %5)
  br label %26

26:                                               ; preds = %23, %20
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @prt_opt_usage(%struct.TYPE_9__* %27, i32 %28, i8* %29)
  %31 = load i64, i64* @option_usage_fp, align 8
  %32 = call i32 @fflush(i64 %31)
  %33 = load i64, i64* @option_usage_fp, align 8
  %34 = call i64 @ferror(i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %26
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @zwriting, align 4
  %41 = load i64, i64* @option_usage_fp, align 8
  %42 = load i64, i64* @stderr, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i32, i32* @zstderr_name, align 4
  br label %48

46:                                               ; preds = %36
  %47 = load i32, i32* @zstdout_name, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  %50 = call i32 @fserr_exit(i32 %39, i32 %40, i32 %49)
  br label %51

51:                                               ; preds = %15, %48, %26
  ret void
}

declare dso_local i32 @set_usage_flags(%struct.TYPE_9__*, i32*) #1

declare dso_local i64 @skip_misuse_usage(%struct.TYPE_9__*) #1

declare dso_local i64 @do_gnu_usage(%struct.TYPE_9__*) #1

declare dso_local i32 @setGnuOptFmts(%struct.TYPE_9__*, i8**) #1

declare dso_local i32 @setStdOptFmts(%struct.TYPE_9__*, i8**) #1

declare dso_local i32 @prt_opt_usage(%struct.TYPE_9__*, i32, i8*) #1

declare dso_local i32 @fflush(i64) #1

declare dso_local i64 @ferror(i64) #1

declare dso_local i32 @fserr_exit(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
