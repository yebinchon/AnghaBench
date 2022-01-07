; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_command.c_db_watchdog.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_command.c_db_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@db_radix = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"No argument provided, disabling watchdog\0A\00", align 1
@WD_INTERVAL = common dso_local global i32 0, align 4
@WD_TO_NEVER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Out of range watchdog interval\0A\00", align 1
@watchdog_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i8*)* @db_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @db_watchdog(i32 %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %13 = load i32, i32* @db_radix, align 4
  store i32 %13, i32* %9, align 4
  store i32 10, i32* @db_radix, align 4
  %14 = call i32 @db_expression(i32* %10)
  store i32 %14, i32* %11, align 4
  %15 = call i32 (...) @db_skip_to_eol()
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* @db_radix, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = call i32 @db_printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %30

21:                                               ; preds = %4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @WD_INTERVAL, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @WD_TO_NEVER, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = call i32 @db_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %34

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29, %19
  %31 = load i32, i32* @watchdog_list, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @EVENTHANDLER_INVOKE(i32 %31, i32 %32, i32* %12)
  br label %34

34:                                               ; preds = %30, %27
  ret void
}

declare dso_local i32 @db_expression(i32*) #1

declare dso_local i32 @db_skip_to_eol(...) #1

declare dso_local i32 @db_printf(i8*) #1

declare dso_local i32 @db_error(i8*) #1

declare dso_local i32 @EVENTHANDLER_INVOKE(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
