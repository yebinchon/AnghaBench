; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/geom/core/extr_geom.c_find_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/geom/core/extr_geom.c_find_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_command = type { i32* }

@GEOM_CLASS_CMDS = common dso_local global i32 0, align 4
@class_commands = common dso_local global %struct.g_command* null, align 8
@GEOM_STD_CMDS = common dso_local global i32 0, align 4
@std_commands = common dso_local global %struct.g_command* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.g_command* (i8*, i32)* @find_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.g_command* @find_command(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.g_command*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.g_command*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @GEOM_CLASS_CMDS, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %40

12:                                               ; preds = %2
  %13 = load %struct.g_command*, %struct.g_command** @class_commands, align 8
  %14 = icmp ne %struct.g_command* %13, null
  br i1 %14, label %15, label %40

15:                                               ; preds = %12
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %36, %15
  %17 = load %struct.g_command*, %struct.g_command** @class_commands, align 8
  %18 = load i32, i32* %7, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.g_command, %struct.g_command* %17, i64 %19
  store %struct.g_command* %20, %struct.g_command** %6, align 8
  %21 = load %struct.g_command*, %struct.g_command** %6, align 8
  %22 = getelementptr inbounds %struct.g_command, %struct.g_command* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  br label %39

26:                                               ; preds = %16
  %27 = load %struct.g_command*, %struct.g_command** %6, align 8
  %28 = getelementptr inbounds %struct.g_command, %struct.g_command* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = call i64 @strcmp(i32* %29, i8* %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load %struct.g_command*, %struct.g_command** %6, align 8
  store %struct.g_command* %34, %struct.g_command** %3, align 8
  br label %71

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %7, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %16

39:                                               ; preds = %25
  br label %40

40:                                               ; preds = %39, %12, %2
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @GEOM_STD_CMDS, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %70

45:                                               ; preds = %40
  store i32 0, i32* %7, align 4
  br label %46

46:                                               ; preds = %66, %45
  %47 = load %struct.g_command*, %struct.g_command** @std_commands, align 8
  %48 = load i32, i32* %7, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.g_command, %struct.g_command* %47, i64 %49
  store %struct.g_command* %50, %struct.g_command** %6, align 8
  %51 = load %struct.g_command*, %struct.g_command** %6, align 8
  %52 = getelementptr inbounds %struct.g_command, %struct.g_command* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  br label %69

56:                                               ; preds = %46
  %57 = load %struct.g_command*, %struct.g_command** %6, align 8
  %58 = getelementptr inbounds %struct.g_command, %struct.g_command* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i8*, i8** %4, align 8
  %61 = call i64 @strcmp(i32* %59, i8* %60)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = load %struct.g_command*, %struct.g_command** %6, align 8
  store %struct.g_command* %64, %struct.g_command** %3, align 8
  br label %71

65:                                               ; preds = %56
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %7, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %46

69:                                               ; preds = %55
  br label %70

70:                                               ; preds = %69, %40
  store %struct.g_command* null, %struct.g_command** %3, align 8
  br label %71

71:                                               ; preds = %70, %63, %33
  %72 = load %struct.g_command*, %struct.g_command** %3, align 8
  ret %struct.g_command* %72
}

declare dso_local i64 @strcmp(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
