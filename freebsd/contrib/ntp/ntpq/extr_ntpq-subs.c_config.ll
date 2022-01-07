; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq-subs.c_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq-subs.c_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse = type { i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@debug = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"In Config\0AKeyword = %s\0ACommand = %s\0A\00", align 1
@CTL_OP_CONFIGURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"column %d syntax error\00", align 1
@interactive = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"             *\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"^\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parse*, i32*)* @config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @config(%struct.parse* %0, i32* %1) #0 {
  %3 = alloca %struct.parse*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.parse* %0, %struct.parse** %3, align 8
  store i32* %1, i32** %4, align 8
  %13 = load %struct.parse*, %struct.parse** %3, align 8
  %14 = getelementptr inbounds %struct.parse, %struct.parse* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %5, align 8
  %19 = load i32, i32* @debug, align 4
  %20 = icmp sgt i32 %19, 2
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  %22 = load i32, i32* @stderr, align 4
  %23 = load %struct.parse*, %struct.parse** %3, align 8
  %24 = getelementptr inbounds %struct.parse, %struct.parse* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @fprintf(i32 %22, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %25, i8* %26)
  br label %28

28:                                               ; preds = %21, %2
  %29 = load i32, i32* @CTL_OP_CONFIGURE, align 4
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @strlen(i8* %30)
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @doquery(i32 %29, i32 0, i32 1, i32 %31, i8* %32, i32* %6, i64* %7, i8** %8)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %104

37:                                               ; preds = %28
  %38 = load i64, i64* %7, align 8
  %39 = icmp ugt i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %37
  %41 = load i8*, i8** %8, align 8
  %42 = load i64, i64* %7, align 8
  %43 = sub i64 %42, 1
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 10, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load i64, i64* %7, align 8
  %50 = add i64 %49, -1
  store i64 %50, i64* %7, align 8
  br label %51

51:                                               ; preds = %48, %40, %37
  %52 = load i64, i64* %7, align 8
  %53 = add i64 %52, 1
  %54 = call i8* @emalloc(i64 %53)
  store i8* %54, i8** %9, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = load i64, i64* %7, align 8
  %58 = call i32 @memcpy(i8* %55, i8* %56, i64 %57)
  %59 = load i8*, i8** %9, align 8
  %60 = load i64, i64* %7, align 8
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  store i8 0, i8* %61, align 1
  store i32 -1, i32* %11, align 4
  %62 = load i8*, i8** %9, align 8
  %63 = call i32 @sscanf(i8* %62, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32* %11)
  %64 = icmp eq i32 1, %63
  br i1 %64, label %65, label %99

65:                                               ; preds = %51
  %66 = load i32, i32* %11, align 4
  %67 = icmp sge i32 %66, 0
  br i1 %67, label %68, label %99

68:                                               ; preds = %65
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = load i8*, i8** %5, align 8
  %72 = call i32 @strlen(i8* %71)
  %73 = add nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = icmp ule i64 %70, %74
  br i1 %75, label %76, label %99

76:                                               ; preds = %68
  %77 = load i64, i64* @interactive, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32, i32* @stdout, align 4
  %81 = call i32 @fputs(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  br label %85

82:                                               ; preds = %76
  %83 = load i8*, i8** %5, align 8
  %84 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %83)
  br label %85

85:                                               ; preds = %82, %79
  store i32 0, i32* %12, align 4
  br label %86

86:                                               ; preds = %93, %85
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %86
  %91 = load i32, i32* @stdout, align 4
  %92 = call i32 @fputc(i8 signext 95, i32 %91)
  br label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %12, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %12, align 4
  br label %86

96:                                               ; preds = %86
  %97 = load i32, i32* @stdout, align 4
  %98 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %97)
  br label %99

99:                                               ; preds = %96, %68, %65, %51
  %100 = load i8*, i8** %9, align 8
  %101 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %100)
  %102 = load i8*, i8** %9, align 8
  %103 = call i32 @free(i8* %102)
  br label %104

104:                                              ; preds = %99, %36
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i32 @doquery(i32, i32, i32, i32, i8*, i32*, i64*, i8**) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @emalloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @fputc(i8 signext, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
