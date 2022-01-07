; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_scm-lang.c_in_eval_c.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_scm-lang.c_in_eval_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symtab_and_line = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [7 x i8] c"eval.c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @in_eval_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in_eval_c() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.symtab_and_line, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = call %struct.TYPE_2__* (...) @get_current_source_symtab_and_line()
  %6 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %2, i32 0, i32 0
  store %struct.TYPE_2__* %5, %struct.TYPE_2__** %6, align 8
  %7 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %2, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = icmp ne %struct.TYPE_2__* %8, null
  br i1 %9, label %10, label %35

10:                                               ; preds = %0
  %11 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %2, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %35

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %2, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %3, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @strlen(i8* %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp sge i32 %23, 6
  br i1 %24, label %25, label %34

25:                                               ; preds = %16
  %26 = load i8*, i8** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = getelementptr inbounds i8, i8* %29, i64 -6
  %31 = call i64 @strcmp(i8* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store i32 1, i32* %1, align 4
  br label %36

34:                                               ; preds = %25, %16
  br label %35

35:                                               ; preds = %34, %10, %0
  store i32 0, i32* %1, align 4
  br label %36

36:                                               ; preds = %35, %33
  %37 = load i32, i32* %1, align 4
  ret i32 %37
}

declare dso_local %struct.TYPE_2__* @get_current_source_symtab_and_line(...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
