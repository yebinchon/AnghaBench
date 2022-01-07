; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_command.c_db_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_command.c_db_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@textdump_pending = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [85 x i8] c"textdump_pending set.\0Arun \22textdump unset\22 first or \22textdump dump\22 for a textdump.\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Cannot dump: \00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"debugger got invoked while dumping.\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"no dump device specified.\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"unknown error (error=%d).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i8*)* @db_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @db_dump(i32 %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %10 = load i64, i64* @textdump_pending, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0))
  br label %29

14:                                               ; preds = %4
  %15 = call i32 @doadump(i32 0)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %14
  %19 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* %9, align 4
  switch i32 %20, label %25 [
    i32 129, label %21
    i32 128, label %23
  ]

21:                                               ; preds = %18
  %22 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %28

23:                                               ; preds = %18
  %24 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %28

25:                                               ; preds = %18
  %26 = load i32, i32* %9, align 4
  %27 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %25, %23, %21
  br label %29

29:                                               ; preds = %12, %28, %14
  ret void
}

declare dso_local i32 @db_printf(i8*, ...) #1

declare dso_local i32 @doadump(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
