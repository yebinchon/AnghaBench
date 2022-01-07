; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_rkpty.c_parse_configuration.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_rkpty.c_parse_configuration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command = type { i32, i8*, i32, %struct.command* }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"open: %s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"#\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@next = common dso_local global %struct.command** null, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"expect \00", align 1
@CMD_EXPECT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"send \00", align 1
@CMD_SEND = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"password \00", align 1
@CMD_PASSWORD = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"Invalid command on line %d: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @parse_configuration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_configuration(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.command*, align 8
  %4 = alloca [1024 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %6, align 4
  %8 = load i8*, i8** %2, align 8
  %9 = call i32* @fopen(i8* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %9, i32** %7, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i8*, i8** %2, align 8
  %14 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %13)
  br label %15

15:                                               ; preds = %12, %1
  br label %16

16:                                               ; preds = %78, %15
  %17 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %18 = load i32*, i32** %7, align 8
  %19 = call i32* @fgets(i8* %17, i32 1024, i32* %18)
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %79

21:                                               ; preds = %16
  %22 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %23 = call i64 @strcspn(i8* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %24 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 %23
  store i8 0, i8* %24, align 1
  %25 = load i32, i32* %6, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %6, align 4
  %27 = call %struct.command* @calloc(i32 1, i32 32)
  store %struct.command* %27, %struct.command** %3, align 8
  %28 = load %struct.command*, %struct.command** %3, align 8
  %29 = icmp eq %struct.command* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %21
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.command*, %struct.command** %3, align 8
  %35 = getelementptr inbounds %struct.command, %struct.command* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.command*, %struct.command** %3, align 8
  %37 = load %struct.command**, %struct.command*** @next, align 8
  store %struct.command* %36, %struct.command** %37, align 8
  %38 = load %struct.command*, %struct.command** %3, align 8
  %39 = getelementptr inbounds %struct.command, %struct.command* %38, i32 0, i32 3
  store %struct.command** %39, %struct.command*** @next, align 8
  %40 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %41 = call i8* @iscmd(i8* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i8* %41, i8** %5, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %50

43:                                               ; preds = %32
  %44 = load i32, i32* @CMD_EXPECT, align 4
  %45 = load %struct.command*, %struct.command** %3, align 8
  %46 = getelementptr inbounds %struct.command, %struct.command* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = load %struct.command*, %struct.command** %3, align 8
  %49 = getelementptr inbounds %struct.command, %struct.command* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  br label %78

50:                                               ; preds = %32
  %51 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %52 = call i8* @iscmd(i8* %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  store i8* %52, i8** %5, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %61

54:                                               ; preds = %50
  %55 = load i32, i32* @CMD_SEND, align 4
  %56 = load %struct.command*, %struct.command** %3, align 8
  %57 = getelementptr inbounds %struct.command, %struct.command* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load i8*, i8** %5, align 8
  %59 = load %struct.command*, %struct.command** %3, align 8
  %60 = getelementptr inbounds %struct.command, %struct.command* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  br label %77

61:                                               ; preds = %50
  %62 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %63 = call i8* @iscmd(i8* %62, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  store i8* %63, i8** %5, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %72

65:                                               ; preds = %61
  %66 = load i32, i32* @CMD_PASSWORD, align 4
  %67 = load %struct.command*, %struct.command** %3, align 8
  %68 = getelementptr inbounds %struct.command, %struct.command* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load i8*, i8** %5, align 8
  %70 = load %struct.command*, %struct.command** %3, align 8
  %71 = getelementptr inbounds %struct.command, %struct.command* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  br label %76

72:                                               ; preds = %61
  %73 = load i32, i32* %6, align 4
  %74 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %75 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %73, i8* %74)
  br label %76

76:                                               ; preds = %72, %65
  br label %77

77:                                               ; preds = %76, %54
  br label %78

78:                                               ; preds = %77, %43
  br label %16

79:                                               ; preds = %16
  %80 = load i32*, i32** %7, align 8
  %81 = call i32 @fclose(i32* %80)
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local %struct.command* @calloc(i32, i32) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i8* @iscmd(i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
