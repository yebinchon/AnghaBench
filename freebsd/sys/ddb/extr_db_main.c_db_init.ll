; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_main.c_db_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_main.c_db_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ksymtab = common dso_local global i64 0, align 8
@kstrtab = common dso_local global i64 0, align 8
@ksymtab_size = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"elf\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"kld\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @db_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db_init() #0 {
  %1 = call i32 (...) @db_command_init()
  %2 = load i64, i64* @ksymtab, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %20

4:                                                ; preds = %0
  %5 = load i64, i64* @kstrtab, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %4
  %8 = load i64, i64* @ksymtab_size, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %7
  %11 = load i64, i64* @ksymtab, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = load i64, i64* @ksymtab, align 8
  %14 = load i64, i64* @ksymtab_size, align 8
  %15 = add nsw i64 %13, %14
  %16 = inttoptr i64 %15 to i8*
  %17 = load i64, i64* @kstrtab, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = call i32 @db_add_symbol_table(i8* %12, i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %18)
  br label %20

20:                                               ; preds = %10, %7, %4, %0
  %21 = call i32 @db_add_symbol_table(i8* null, i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* null)
  ret i32 1
}

declare dso_local i32 @db_command_init(...) #1

declare dso_local i32 @db_add_symbol_table(i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
