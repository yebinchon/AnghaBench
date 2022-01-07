; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_access.c_db_put_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_access.c_db_put_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [39 x i8] c"*** error writing to address %llx ***\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @db_put_value(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [4 x i8], align 1
  %8 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = sub nsw i32 %9, 1
  store i32 %10, i32* %8, align 4
  br label %11

11:                                               ; preds = %23, %3
  %12 = load i32, i32* %8, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %11
  %15 = load i32, i32* %6, align 4
  %16 = and i32 %15, 255
  %17 = trunc i32 %16 to i8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 %19
  store i8 %17, i8* %20, align 1
  %21 = load i32, i32* %6, align 4
  %22 = ashr i32 %21, 8
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %14
  %24 = load i32, i32* %8, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %8, align 4
  br label %11

26:                                               ; preds = %11
  %27 = load i64, i64* %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %30 = call i64 @db_write_bytes(i64 %27, i32 %28, i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load i64, i64* %4, align 8
  %34 = call i32 @db_printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %33)
  %35 = call i32 (...) @kdb_reenter()
  br label %36

36:                                               ; preds = %32, %26
  ret void
}

declare dso_local i64 @db_write_bytes(i64, i32, i8*) #1

declare dso_local i32 @db_printf(i8*, i64) #1

declare dso_local i32 @kdb_reenter(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
