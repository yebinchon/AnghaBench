; ModuleID = '/home/carl/AnghaBench/freebsd/stand/fdt/extr_fdt_loader_cmd.c_command_fdt_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/fdt/extr_fdt_loader_cmd.c_command_fdt_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i8**)*, i32, i32* }

@.str = private unnamed_addr constant [33 x i8] c"usage is 'fdt <command> [<args>]\00", align 1
@command_errmsg = common dso_local global i8* null, align 8
@CMD_ERROR = common dso_local global i32 0, align 4
@commands = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"unknown command\00", align 1
@CMD_REQUIRES_BLOB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @command_fdt_internal(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32 (i32, i8**)**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8** @command_errmsg, align 8
  %13 = load i32, i32* @CMD_ERROR, align 4
  store i32 %13, i32* %3, align 4
  br label %76

14:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  store i32 (i32, i8**)** null, i32 (i32, i8**)*** %6, align 8
  br label %15

15:                                               ; preds = %50, %14
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @commands, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  %23 = xor i1 %22, true
  br i1 %23, label %24, label %53

24:                                               ; preds = %15
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 1
  %27 = load i8*, i8** %26, align 8
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @commands, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = call i64 @strcmp(i8* %27, i32* %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %24
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @commands, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32 (i32, i8**)*, i32 (i32, i8**)** %41, align 8
  %43 = bitcast i32 (i32, i8**)* %42 to i32 (i32, i8**)**
  store i32 (i32, i8**)** %43, i32 (i32, i8**)*** %6, align 8
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @commands, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %7, align 4
  br label %53

50:                                               ; preds = %24
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %15

53:                                               ; preds = %36, %15
  %54 = load i32 (i32, i8**)**, i32 (i32, i8**)*** %6, align 8
  %55 = icmp eq i32 (i32, i8**)** %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8** @command_errmsg, align 8
  %57 = load i32, i32* @CMD_ERROR, align 4
  store i32 %57, i32* %3, align 4
  br label %76

58:                                               ; preds = %53
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @CMD_REQUIRES_BLOB, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = call i64 (...) @fdt_fixup()
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load i32, i32* @CMD_ERROR, align 4
  store i32 %67, i32* %3, align 4
  br label %76

68:                                               ; preds = %63
  br label %69

69:                                               ; preds = %68, %58
  %70 = load i32 (i32, i8**)**, i32 (i32, i8**)*** %6, align 8
  %71 = load i32 (i32, i8**)*, i32 (i32, i8**)** %70, align 8
  %72 = load i32, i32* %4, align 4
  %73 = load i8**, i8*** %5, align 8
  %74 = call i32 %71(i32 %72, i8** %73)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %69, %66, %56, %12
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i64 @strcmp(i8*, i32*) #1

declare dso_local i64 @fdt_fixup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
