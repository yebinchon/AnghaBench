; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_commands.c_command_lsdev.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_commands.c_command_lsdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i64 (i32)* }

@optind = common dso_local global i32 0, align 4
@optreset = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"v\00", align 1
@CMD_OK = common dso_local global i32 0, align 4
@devsw = common dso_local global %struct.TYPE_2__** null, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"%s: (unknown)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @command_lsdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @command_lsdev(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [80 x i8], align 16
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* @optind, align 4
  store i32 1, i32* @optreset, align 4
  br label %10

10:                                               ; preds = %21, %2
  %11 = load i32, i32* %4, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = call i32 @getopt(i32 %11, i8** %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %7, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %22

15:                                               ; preds = %10
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %19 [
    i32 118, label %17
    i32 63, label %18
  ]

17:                                               ; preds = %15
  store i32 1, i32* %6, align 4
  br label %21

18:                                               ; preds = %15
  br label %19

19:                                               ; preds = %15, %18
  %20 = load i32, i32* @CMD_OK, align 4
  store i32 %20, i32* %3, align 4
  br label %82

21:                                               ; preds = %17
  br label %10

22:                                               ; preds = %10
  %23 = load i32, i32* @optind, align 4
  %24 = load i8**, i8*** %5, align 8
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds i8*, i8** %24, i64 %25
  store i8** %26, i8*** %5, align 8
  %27 = load i32, i32* @optind, align 4
  %28 = load i32, i32* %4, align 4
  %29 = sub nsw i32 %28, %27
  store i32 %29, i32* %4, align 4
  %30 = call i32 (...) @pager_open()
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %76, %22
  %32 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @devsw, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %32, i64 %34
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = icmp ne %struct.TYPE_2__* %36, null
  br i1 %37, label %38, label %79

38:                                               ; preds = %31
  %39 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @devsw, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %39, i64 %41
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i64 (i32)*, i64 (i32)** %44, align 8
  %46 = icmp ne i64 (i32)* %45, null
  br i1 %46, label %47, label %60

47:                                               ; preds = %38
  %48 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @devsw, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %48, i64 %50
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i64 (i32)*, i64 (i32)** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i64 %54(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %47
  br label %79

59:                                               ; preds = %47
  br label %75

60:                                               ; preds = %38
  %61 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %62 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @devsw, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %62, i64 %64
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @snprintf(i8* %61, i32 80, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %68)
  %70 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %71 = call i64 @pager_output(i8* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %60
  br label %79

74:                                               ; preds = %60
  br label %75

75:                                               ; preds = %74, %59
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %8, align 4
  br label %31

79:                                               ; preds = %73, %58, %31
  %80 = call i32 (...) @pager_close()
  %81 = load i32, i32* @CMD_OK, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %79, %19
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @pager_open(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i64 @pager_output(i8*) #1

declare dso_local i32 @pager_close(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
