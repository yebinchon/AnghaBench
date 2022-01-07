; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/geom/core/extr_geom.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/geom/core/extr_geom.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_command = type { i32* }

@class_name = common dso_local global i32* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"usage: geom <class> <command> [options]\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"       geom -p <provider-name>\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"       geom -t\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"usage:\00", align 1
@class_commands = common dso_local global %struct.g_command* null, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"      \00", align 1
@std_commands = common dso_local global %struct.g_command* null, align 8
@GEOM_CLASS_CMDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage() #0 {
  %1 = alloca %struct.g_command*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = load i32*, i32** @class_name, align 8
  %5 = icmp eq i32* %4, null
  br i1 %5, label %6, label %15

6:                                                ; preds = %0
  %7 = load i32, i32* @stderr, align 4
  %8 = call i32 @fprintf(i32 %7, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @stderr, align 4
  %10 = call i32 @fprintf(i32 %9, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %11 = load i32, i32* @stderr, align 4
  %12 = call i32 @fprintf(i32 %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %13 = load i32, i32* @EXIT_FAILURE, align 4
  %14 = call i32 @exit(i32 %13) #3
  unreachable

15:                                               ; preds = %0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  %16 = load %struct.g_command*, %struct.g_command** @class_commands, align 8
  %17 = icmp ne %struct.g_command* %16, null
  br i1 %17, label %18, label %37

18:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %33, %18
  %20 = load %struct.g_command*, %struct.g_command** @class_commands, align 8
  %21 = load i32, i32* %3, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.g_command, %struct.g_command* %20, i64 %22
  store %struct.g_command* %23, %struct.g_command** %1, align 8
  %24 = load %struct.g_command*, %struct.g_command** %1, align 8
  %25 = getelementptr inbounds %struct.g_command, %struct.g_command* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %36

29:                                               ; preds = %19
  %30 = load %struct.g_command*, %struct.g_command** %1, align 8
  %31 = load i8*, i8** %2, align 8
  %32 = call i32 @usage_command(%struct.g_command* %30, i8* %31)
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %3, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %19

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36, %15
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %60, %37
  %39 = load %struct.g_command*, %struct.g_command** @std_commands, align 8
  %40 = load i32, i32* %3, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.g_command, %struct.g_command* %39, i64 %41
  store %struct.g_command* %42, %struct.g_command** %1, align 8
  %43 = load %struct.g_command*, %struct.g_command** %1, align 8
  %44 = getelementptr inbounds %struct.g_command, %struct.g_command* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %63

48:                                               ; preds = %38
  %49 = load %struct.g_command*, %struct.g_command** %1, align 8
  %50 = getelementptr inbounds %struct.g_command, %struct.g_command* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* @GEOM_CLASS_CMDS, align 4
  %53 = call i32* @find_command(i32* %51, i32 %52)
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %60

56:                                               ; preds = %48
  %57 = load %struct.g_command*, %struct.g_command** %1, align 8
  %58 = load i8*, i8** %2, align 8
  %59 = call i32 @usage_command(%struct.g_command* %57, i8* %58)
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %60

60:                                               ; preds = %56, %55
  %61 = load i32, i32* %3, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %3, align 4
  br label %38

63:                                               ; preds = %47
  %64 = load i32, i32* @EXIT_FAILURE, align 4
  %65 = call i32 @exit(i32 %64) #3
  unreachable
}

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @usage_command(%struct.g_command*, i8*) #1

declare dso_local i32* @find_command(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
