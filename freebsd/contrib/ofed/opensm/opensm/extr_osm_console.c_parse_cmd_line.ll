; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_console.c_parse_cmd_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_console.c_parse_cmd_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, i32 (i8**, %struct.TYPE_8__*, i32*)* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_9__ = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c" \09\0A\0D\00", align 1
@console_cmds = common dso_local global %struct.TYPE_10__* null, align 8
@loop_command = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"%s : Command not found\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Error parsing command line: `%s'\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"use \22q<ret>\22 to quit loop\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_8__*)* @parse_cmd_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_cmd_line(i8* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %9, align 8
  br label %14

14:                                               ; preds = %19, %2
  %15 = load i8*, i8** %3, align 8
  %16 = load i8, i8* %15, align 1
  %17 = call i64 @isspace(i8 signext %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i8*, i8** %3, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %3, align 8
  br label %14

22:                                               ; preds = %14
  %23 = load i8*, i8** %3, align 8
  %24 = load i8, i8* %23, align 1
  %25 = icmp ne i8 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  br label %96

27:                                               ; preds = %22
  %28 = load i8*, i8** %3, align 8
  %29 = call i8* @strtok_r(i8* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %6)
  store i8* %29, i8** %5, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %84

32:                                               ; preds = %27
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %71, %32
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** @console_cmds, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %74

41:                                               ; preds = %33
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @loop_command, i32 0, i32 0), align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @strcmp(i8* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @loop_command, i32 0, i32 0), align 8
  br label %49

49:                                               ; preds = %48, %44
  store i32 1, i32* %8, align 4
  br label %74

50:                                               ; preds = %41
  %51 = load i8*, i8** %5, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** @console_cmds, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @strcmp(i8* %51, i8* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %70, label %60

60:                                               ; preds = %50
  store i32 1, i32* %8, align 4
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** @console_cmds, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = load i32 (i8**, %struct.TYPE_8__*, i32*)*, i32 (i8**, %struct.TYPE_8__*, i32*)** %65, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %68 = load i32*, i32** %9, align 8
  %69 = call i32 %66(i8** %6, %struct.TYPE_8__* %67, i32* %68)
  br label %74

70:                                               ; preds = %50
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %33

74:                                               ; preds = %60, %49, %33
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %74
  %78 = load i32*, i32** %9, align 8
  %79 = load i8*, i8** %5, align 8
  %80 = call i32 (i32*, i8*, ...) @fprintf(i32* %78, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %79)
  %81 = load i32*, i32** %9, align 8
  %82 = call i32 @help_command(i32* %81, i32 0)
  br label %83

83:                                               ; preds = %77, %74
  br label %88

84:                                               ; preds = %27
  %85 = load i32*, i32** %9, align 8
  %86 = load i8*, i8** %3, align 8
  %87 = call i32 (i32*, i8*, ...) @fprintf(i32* %85, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %86)
  br label %88

88:                                               ; preds = %84, %83
  %89 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @loop_command, i32 0, i32 0), align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %88
  %92 = load i32*, i32** %9, align 8
  %93 = call i32 (i32*, i8*, ...) @fprintf(i32* %92, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %94 = load i32*, i32** %9, align 8
  %95 = call i32 @fflush(i32* %94)
  br label %96

96:                                               ; preds = %26, %91, %88
  ret void
}

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i8* @strtok_r(i8*, i8*, i8**) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @help_command(i32*, i32) #1

declare dso_local i32 @fflush(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
