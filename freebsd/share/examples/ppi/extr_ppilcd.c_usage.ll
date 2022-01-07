; ModuleID = '/home/carl/AnghaBench/freebsd/share/examples/ppi/extr_ppilcd.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/share/examples/ppi/extr_ppilcd.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i8** }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"usage: %s [-v] [-d drivername] [-f device] [-o options] [args...]\0A\00", align 1
@progname = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"   -D      Increase debugging\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"   -f      Specify device, default is '%s'\0A\00", align 1
@DEFAULT_DEVICE = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [36 x i8] c"   -d      Specify driver, one of:\0A\00", align 1
@lcd_drivertab = common dso_local global %struct.TYPE_2__* null, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"              %-10s (%s)%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c" *default*\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"                  %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"  -o       Specify driver option string\0A\00", align 1
@.str.9 = private unnamed_addr constant [58 x i8] c"  args     Message strings.  Embedded escapes supported:\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"                  \\b\09Backspace\0A\00", align 1
@.str.11 = private unnamed_addr constant [49 x i8] c"                  \\f\09Clear display, home cursor\0A\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"                  \\n\09Newline\0A\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"                  \\r\09Carriage return\0A\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"                  \\R\09Reset display\0A\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"                  \\v\09Home cursor\0A\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"                  \\\\\09Literal \\\0A\00", align 1
@.str.17 = private unnamed_addr constant [71 x i8] c"           If args not supplied, strings are read from standard input\0A\00", align 1
@EX_USAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @stderr, align 4
  %4 = load i8*, i8** @progname, align 8
  %5 = call i32 (i32, i8*, ...) @fprintf(i32 %3, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i8* %4)
  %6 = load i32, i32* @stderr, align 4
  %7 = call i32 (i32, i8*, ...) @fprintf(i32 %6, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %8 = load i32, i32* @stderr, align 4
  %9 = load i8*, i8** @DEFAULT_DEVICE, align 8
  %10 = call i32 (i32, i8*, ...) @fprintf(i32 %8, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* %9)
  %11 = load i32, i32* @stderr, align 4
  %12 = call i32 (i32, i8*, ...) @fprintf(i32 %11, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %13

13:                                               ; preds = %80, %0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lcd_drivertab, align 8
  %15 = load i32, i32* %1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %83

21:                                               ; preds = %13
  %22 = load i32, i32* @stderr, align 4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lcd_drivertab, align 8
  %24 = load i32, i32* %1, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lcd_drivertab, align 8
  %30 = load i32, i32* %1, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = load i32, i32* %1, align 4
  %36 = icmp eq i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %39 = call i32 (i32, i8*, ...) @fprintf(i32 %22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* %28, i8* %34, i8* %38)
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lcd_drivertab, align 8
  %41 = load i32, i32* %1, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i8**, i8*** %44, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 0
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %79

49:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %75, %49
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lcd_drivertab, align 8
  %52 = load i32, i32* %1, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  %56 = load i8**, i8*** %55, align 8
  %57 = load i32, i32* %2, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %56, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %78

62:                                               ; preds = %50
  %63 = load i32, i32* @stderr, align 4
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lcd_drivertab, align 8
  %65 = load i32, i32* %1, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  %69 = load i8**, i8*** %68, align 8
  %70 = load i32, i32* %2, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8*, i8** %69, i64 %71
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 (i32, i8*, ...) @fprintf(i32 %63, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* %73)
  br label %75

75:                                               ; preds = %62
  %76 = load i32, i32* %2, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %2, align 4
  br label %50

78:                                               ; preds = %50
  br label %79

79:                                               ; preds = %78, %21
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %1, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %1, align 4
  br label %13

83:                                               ; preds = %13
  %84 = load i32, i32* @stderr, align 4
  %85 = call i32 (i32, i8*, ...) @fprintf(i32 %84, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0))
  %86 = load i32, i32* @stderr, align 4
  %87 = call i32 (i32, i8*, ...) @fprintf(i32 %86, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.9, i64 0, i64 0))
  %88 = load i32, i32* @stderr, align 4
  %89 = call i32 (i32, i8*, ...) @fprintf(i32 %88, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0))
  %90 = load i32, i32* @stderr, align 4
  %91 = call i32 (i32, i8*, ...) @fprintf(i32 %90, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0))
  %92 = load i32, i32* @stderr, align 4
  %93 = call i32 (i32, i8*, ...) @fprintf(i32 %92, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0))
  %94 = load i32, i32* @stderr, align 4
  %95 = call i32 (i32, i8*, ...) @fprintf(i32 %94, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0))
  %96 = load i32, i32* @stderr, align 4
  %97 = call i32 (i32, i8*, ...) @fprintf(i32 %96, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0))
  %98 = load i32, i32* @stderr, align 4
  %99 = call i32 (i32, i8*, ...) @fprintf(i32 %98, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i64 0, i64 0))
  %100 = load i32, i32* @stderr, align 4
  %101 = call i32 (i32, i8*, ...) @fprintf(i32 %100, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i64 0, i64 0))
  %102 = load i32, i32* @stderr, align 4
  %103 = call i32 (i32, i8*, ...) @fprintf(i32 %102, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.17, i64 0, i64 0))
  %104 = load i32, i32* @EX_USAGE, align 4
  %105 = call i32 @exit(i32 %104) #3
  unreachable
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
