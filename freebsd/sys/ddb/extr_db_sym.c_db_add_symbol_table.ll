; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_sym.c_db_add_symbol_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_sym.c_db_add_symbol_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i8*, i8* }

@db_nsymtab = common dso_local global i64 0, align 8
@MAXNOSYMTABS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"No slots left for %s symbol table\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"db_sym.c: db_add_symbol_table\00", align 1
@db_symtabs = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @db_add_symbol_table(i8* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load i64, i64* @db_nsymtab, align 8
  %10 = load i64, i64* @MAXNOSYMTABS, align 8
  %11 = icmp uge i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %4
  %13 = load i8*, i8** %7, align 8
  %14 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = call i32 @panic(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %16

16:                                               ; preds = %12, %4
  %17 = load i8*, i8** %5, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @db_symtabs, align 8
  %19 = load i64, i64* @db_nsymtab, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i8* %17, i8** %21, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @db_symtabs, align 8
  %24 = load i64, i64* @db_nsymtab, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store i8* %22, i8** %26, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @db_symtabs, align 8
  %29 = load i64, i64* @db_nsymtab, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  store i8* %27, i8** %31, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @db_symtabs, align 8
  %34 = load i64, i64* @db_nsymtab, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 3
  store i8* %32, i8** %36, align 8
  %37 = load i64, i64* @db_nsymtab, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* @db_nsymtab, align 8
  ret void
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
