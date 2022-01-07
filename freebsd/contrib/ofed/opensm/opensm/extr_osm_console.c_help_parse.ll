; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_console.c_help_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_console.c_help_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32*, i32)*, i64 }

@console_cmds = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"%s : Command not found\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i32*, i32*)* @help_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @help_parse(i8** %0, i32* %1, i32* %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %9, align 4
  %10 = load i8**, i8*** %4, align 8
  %11 = call i8* @next_token(i8** %10)
  store i8* %11, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @help_command(i32* %15, i32 0)
  br label %59

17:                                               ; preds = %3
  store i32 1, i32* %8, align 4
  br label %18

18:                                               ; preds = %46, %17
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @console_cmds, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %49

26:                                               ; preds = %18
  %27 = load i8*, i8** %7, align 8
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @console_cmds, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @strcmp(i8* %27, i64 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %26
  store i32 1, i32* %9, align 4
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @console_cmds, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32 (i32*, i32)*, i32 (i32*, i32)** %41, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 %42(i32* %43, i32 1)
  br label %49

45:                                               ; preds = %26
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %18

49:                                               ; preds = %36, %18
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %49
  %53 = load i32*, i32** %6, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 @fprintf(i32* %53, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %54)
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @help_command(i32* %56, i32 0)
  br label %58

58:                                               ; preds = %52, %49
  br label %59

59:                                               ; preds = %58, %14
  ret void
}

declare dso_local i8* @next_token(i8**) #1

declare dso_local i32 @help_command(i32*, i32) #1

declare dso_local i32 @strcmp(i8*, i64) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
