; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-cmds.c_lookup_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-cmds.c_lookup_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mi_cmd = type { i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@MI_TABLE_SIZE = common dso_local global i32 0, align 4
@mi_table = common dso_local global %struct.mi_cmd** null, align 8
@stats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mi_cmd** (i8*)* @lookup_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mi_cmd** @lookup_table(i8* %0) #0 {
  %2 = alloca %struct.mi_cmd**, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mi_cmd**, align 8
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load i8*, i8** %3, align 8
  store i8* %7, i8** %4, align 8
  br label %8

8:                                                ; preds = %21, %1
  %9 = load i8*, i8** %4, align 8
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %8
  %13 = load i32, i32* %5, align 4
  %14 = shl i32 %13, 6
  %15 = load i8*, i8** %4, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = add i32 %14, %17
  %19 = load i32, i32* @MI_TABLE_SIZE, align 4
  %20 = urem i32 %18, %19
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %12
  %22 = load i8*, i8** %4, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %4, align 8
  br label %8

24:                                               ; preds = %8
  br label %25

25:                                               ; preds = %24, %49
  %26 = load %struct.mi_cmd**, %struct.mi_cmd*** @mi_table, align 8
  %27 = load i32, i32* %5, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.mi_cmd*, %struct.mi_cmd** %26, i64 %28
  store %struct.mi_cmd** %29, %struct.mi_cmd*** %6, align 8
  %30 = load %struct.mi_cmd**, %struct.mi_cmd*** %6, align 8
  %31 = load %struct.mi_cmd*, %struct.mi_cmd** %30, align 8
  %32 = icmp eq %struct.mi_cmd* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 2), align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 2), align 4
  %36 = load %struct.mi_cmd**, %struct.mi_cmd*** %6, align 8
  store %struct.mi_cmd** %36, %struct.mi_cmd*** %2, align 8
  br label %56

37:                                               ; preds = %25
  %38 = load i8*, i8** %3, align 8
  %39 = load %struct.mi_cmd**, %struct.mi_cmd*** %6, align 8
  %40 = load %struct.mi_cmd*, %struct.mi_cmd** %39, align 8
  %41 = getelementptr inbounds %struct.mi_cmd, %struct.mi_cmd* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @strcmp(i8* %38, i32 %42)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %37
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 1), align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 1), align 4
  %48 = load %struct.mi_cmd**, %struct.mi_cmd*** %6, align 8
  store %struct.mi_cmd** %48, %struct.mi_cmd*** %2, align 8
  br label %56

49:                                               ; preds = %37
  %50 = load i32, i32* %5, align 4
  %51 = add i32 %50, 1
  %52 = load i32, i32* @MI_TABLE_SIZE, align 4
  %53 = urem i32 %51, %52
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 0), align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 0), align 4
  br label %25

56:                                               ; preds = %45, %33
  %57 = load %struct.mi_cmd**, %struct.mi_cmd*** %2, align 8
  ret %struct.mi_cmd** %57
}

declare dso_local i64 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
