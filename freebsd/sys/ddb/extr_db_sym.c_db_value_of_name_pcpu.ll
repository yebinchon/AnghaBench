; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_sym.c_db_value_of_name_pcpu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_sym.c_db_value_of_name_pcpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@db_value_of_name_pcpu.tmp = internal global [256 x i8] zeroinitializer, align 16
@db_cpu = common dso_local global i32 0, align 4
@curcpu = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"pcpu_entry_%s\00", align 1
@C_DB_SYM_NULL = common dso_local global i64 0, align 8
@DPCPU_START = common dso_local global i64 0, align 8
@DPCPU_STOP = common dso_local global i64 0, align 8
@dpcpu_off = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @db_value_of_name_pcpu(i8* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  %9 = load i32, i32* @db_cpu, align 4
  %10 = icmp ne i32 %9, -1
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @db_cpu, align 4
  store i32 %12, i32* %8, align 4
  br label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @curcpu, align 4
  store i32 %14, i32* %8, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @snprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @db_value_of_name_pcpu.tmp, i64 0, i64 0), i32 256, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = call i64 @db_lookup(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @db_value_of_name_pcpu.tmp, i64 0, i64 0))
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @C_DB_SYM_NULL, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %43

23:                                               ; preds = %15
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @db_symbol_values(i64 %24, i8** %4, i64* %6)
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* @DPCPU_START, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %23
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* @DPCPU_STOP, align 8
  %32 = icmp sge i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %23
  store i32 0, i32* %3, align 4
  br label %43

34:                                               ; preds = %29
  %35 = load i64, i64* %6, align 8
  %36 = load i64*, i64** @dpcpu_off, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = add i64 %35, %40
  %42 = load i64*, i64** %5, align 8
  store i64 %41, i64* %42, align 8
  store i32 1, i32* %3, align 4
  br label %43

43:                                               ; preds = %34, %33, %22
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i64 @db_lookup(i8*) #1

declare dso_local i32 @db_symbol_values(i64, i8**, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
