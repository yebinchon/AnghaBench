; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libsysdecode/extr_flags.c_sysdecode_cap_rights.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libsysdecode/extr_flags.c_sysdecode_cap_rights.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.name_table = type { i32*, i32 }
%struct.TYPE_5__ = type { i32* }

@.str = private unnamed_addr constant [21 x i8] c"invalid cap_rights_t\00", align 1
@caprights = common dso_local global %struct.name_table* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sysdecode_cap_rights(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.name_table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %29, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = call i32 @CAPARSIZE(%struct.TYPE_5__* %10)
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %32

13:                                               ; preds = %8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @CAPIDXBIT(i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = shl i32 1, %22
  %24 = icmp ne i32 %21, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %13
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 (i32*, i8*, ...) @fprintf(i32* %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %60

28:                                               ; preds = %13
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  br label %8

32:                                               ; preds = %8
  store i32 0, i32* %7, align 4
  %33 = load %struct.name_table*, %struct.name_table** @caprights, align 8
  store %struct.name_table* %33, %struct.name_table** %5, align 8
  br label %34

34:                                               ; preds = %57, %32
  %35 = load %struct.name_table*, %struct.name_table** %5, align 8
  %36 = getelementptr inbounds %struct.name_table, %struct.name_table* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %60

39:                                               ; preds = %34
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %41 = load %struct.name_table*, %struct.name_table** %5, align 8
  %42 = getelementptr inbounds %struct.name_table, %struct.name_table* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @cap_rights_is_set(%struct.TYPE_5__* %40, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %39
  %47 = load i32*, i32** %3, align 8
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %52 = load %struct.name_table*, %struct.name_table** %5, align 8
  %53 = getelementptr inbounds %struct.name_table, %struct.name_table* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 (i32*, i8*, ...) @fprintf(i32* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %51, i32* %54)
  store i32 1, i32* %7, align 4
  br label %56

56:                                               ; preds = %46, %39
  br label %57

57:                                               ; preds = %56
  %58 = load %struct.name_table*, %struct.name_table** %5, align 8
  %59 = getelementptr inbounds %struct.name_table, %struct.name_table* %58, i32 1
  store %struct.name_table* %59, %struct.name_table** %5, align 8
  br label %34

60:                                               ; preds = %25, %34
  ret void
}

declare dso_local i32 @CAPARSIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @CAPIDXBIT(i32) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i64 @cap_rights_is_set(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
