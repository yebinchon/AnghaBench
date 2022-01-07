; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_print.c_db_show_regs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_print.c_db_show_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.db_variable = type { i32 }

@db_regs = common dso_local global %struct.db_variable* null, align 8
@db_eregs = common dso_local global %struct.db_variable* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"%-12s%#*lr\00", align 1
@db_maxoff = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"\09%s\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"+%+#lr\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @db_show_regs(i64 %0, i32 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.db_variable*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load %struct.db_variable*, %struct.db_variable** @db_regs, align 8
  store %struct.db_variable* %13, %struct.db_variable** %9, align 8
  br label %14

14:                                               ; preds = %53, %4
  %15 = load %struct.db_variable*, %struct.db_variable** %9, align 8
  %16 = load %struct.db_variable*, %struct.db_variable** @db_eregs, align 8
  %17 = icmp ult %struct.db_variable* %15, %16
  br i1 %17, label %18, label %56

18:                                               ; preds = %14
  %19 = load %struct.db_variable*, %struct.db_variable** %9, align 8
  %20 = call i32 @db_read_variable(%struct.db_variable* %19, i64* %10)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  br label %53

23:                                               ; preds = %18
  %24 = load %struct.db_variable*, %struct.db_variable** %9, align 8
  %25 = getelementptr inbounds %struct.db_variable, %struct.db_variable* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* %10, align 8
  %28 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %26, i32 18, i64 %27)
  %29 = load i64, i64* %10, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i32 @db_find_xtrn_sym_and_offset(i32 %30, i8** %12, i64* %11)
  %32 = load i8*, i8** %12, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %51

34:                                               ; preds = %23
  %35 = load i64, i64* %11, align 8
  %36 = load i64, i64* @db_maxoff, align 8
  %37 = icmp ule i64 %35, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %34
  %39 = load i64, i64* %11, align 8
  %40 = load i64, i64* %10, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %38
  %43 = load i8*, i8** %12, align 8
  %44 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %43)
  %45 = load i64, i64* %11, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i64, i64* %11, align 8
  %49 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i64 %48)
  br label %50

50:                                               ; preds = %47, %42
  br label %51

51:                                               ; preds = %50, %38, %34, %23
  %52 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %22
  %54 = load %struct.db_variable*, %struct.db_variable** %9, align 8
  %55 = getelementptr inbounds %struct.db_variable, %struct.db_variable* %54, i32 1
  store %struct.db_variable* %55, %struct.db_variable** %9, align 8
  br label %14

56:                                               ; preds = %14
  %57 = call i32 (...) @PC_REGS()
  %58 = call i32 @db_print_loc_and_inst(i32 %57)
  ret void
}

declare dso_local i32 @db_read_variable(%struct.db_variable*, i64*) #1

declare dso_local i32 @db_printf(i8*, ...) #1

declare dso_local i32 @db_find_xtrn_sym_and_offset(i32, i8**, i64*) #1

declare dso_local i32 @db_print_loc_and_inst(i32) #1

declare dso_local i32 @PC_REGS(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
