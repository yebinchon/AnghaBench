; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_boot.c_autoboot.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_boot.c_autoboot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@autoboot_tried = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"autoboot_delay\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"kernelname\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"no valid kernel found\00", align 1
@command_errmsg = common dso_local global i8* null, align 8
@CMD_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [70 x i8] c"Hit [Enter] to boot immediately, or any other key for command prompt.\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"\0DBooting [%s] in %d second%s... \00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"\0DBooting [%s]...               \00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"boot\00", align 1
@CMD_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @autoboot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autoboot(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [2 x i8*], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 1, i32* @autoboot_tried, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %29

17:                                               ; preds = %2
  store i32 10, i32* %4, align 4
  %18 = call i8* @getenv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i8* %18, i8** %12, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = load i8*, i8** %12, align 8
  %22 = call i32 @strtol(i8* %21, i8** %13, i32 0)
  store i32 %22, i32* %4, align 4
  %23 = load i8*, i8** %12, align 8
  %24 = load i8*, i8** %13, align 8
  %25 = icmp eq i8* %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 10, i32* %4, align 4
  br label %27

27:                                               ; preds = %26, %20
  br label %28

28:                                               ; preds = %27, %17
  br label %29

29:                                               ; preds = %28, %2
  %30 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i8* %30, i8** %14, align 8
  %31 = load i8*, i8** %14, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %43

33:                                               ; preds = %29
  %34 = getelementptr inbounds [2 x i8*], [2 x i8*]* %11, i64 0, i64 0
  store i8* null, i8** %34, align 16
  %35 = getelementptr inbounds [2 x i8*], [2 x i8*]* %11, i64 0, i64 0
  %36 = call i32 @loadakernel(i32 0, i32 0, i8** %35)
  %37 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i8* %37, i8** %14, align 8
  %38 = load i8*, i8** %14, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8** @command_errmsg, align 8
  %41 = load i32, i32* @CMD_ERROR, align 4
  store i32 %41, i32* %3, align 4
  br label %116

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42, %29
  %44 = load i32, i32* %4, align 4
  %45 = icmp sge i32 %44, 0
  br i1 %45, label %46, label %98

46:                                               ; preds = %43
  %47 = call i64 @time(i32* null)
  store i64 %47, i64* %7, align 8
  %48 = load i64, i64* %7, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %48, %50
  store i64 %51, i64* %6, align 8
  store i32 0, i32* %10, align 4
  %52 = load i8*, i8** %5, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %57

55:                                               ; preds = %46
  %56 = load i8*, i8** %5, align 8
  br label %57

57:                                               ; preds = %55, %54
  %58 = phi i8* [ getelementptr inbounds ([70 x i8], [70 x i8]* @.str.4, i64 0, i64 0), %54 ], [ %56, %55 ]
  %59 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %58)
  br label %60

60:                                               ; preds = %96, %57
  %61 = call i64 (...) @ischar()
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %60
  %64 = call i32 (...) @getchar()
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp eq i32 %65, 13
  br i1 %66, label %70, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* %9, align 4
  %69 = icmp eq i32 %68, 10
  br i1 %69, label %70, label %71

70:                                               ; preds = %67, %63
  store i32 1, i32* %10, align 4
  br label %71

71:                                               ; preds = %70, %67
  br label %97

72:                                               ; preds = %60
  %73 = call i64 @time(i32* null)
  store i64 %73, i64* %8, align 8
  %74 = load i64, i64* %8, align 8
  %75 = load i64, i64* %6, align 8
  %76 = icmp sge i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  store i32 1, i32* %10, align 4
  br label %97

78:                                               ; preds = %72
  %79 = load i64, i64* %8, align 8
  %80 = load i64, i64* %7, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %96

82:                                               ; preds = %78
  %83 = load i8*, i8** %14, align 8
  %84 = load i64, i64* %6, align 8
  %85 = load i64, i64* %8, align 8
  %86 = sub nsw i64 %84, %85
  %87 = trunc i64 %86 to i32
  %88 = load i64, i64* %6, align 8
  %89 = load i64, i64* %8, align 8
  %90 = sub nsw i64 %88, %89
  %91 = icmp eq i64 %90, 1
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)
  %94 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i8* %83, i32 %87, i8* %93)
  %95 = load i64, i64* %8, align 8
  store i64 %95, i64* %7, align 8
  br label %96

96:                                               ; preds = %82, %78
  br label %60

97:                                               ; preds = %77, %71
  br label %99

98:                                               ; preds = %43
  store i32 1, i32* %10, align 4
  br label %99

99:                                               ; preds = %98, %97
  %100 = load i32, i32* %10, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load i8*, i8** %14, align 8
  %104 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i8* %103)
  br label %105

105:                                              ; preds = %102, %99
  %106 = call i32 @putchar(i8 signext 10)
  %107 = load i32, i32* %10, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %105
  %110 = getelementptr inbounds [2 x i8*], [2 x i8*]* %11, i64 0, i64 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8** %110, align 16
  %111 = getelementptr inbounds [2 x i8*], [2 x i8*]* %11, i64 0, i64 1
  store i8* null, i8** %111, align 8
  %112 = getelementptr inbounds [2 x i8*], [2 x i8*]* %11, i64 0, i64 0
  %113 = call i32 @command_boot(i32 1, i8** %112)
  store i32 %113, i32* %3, align 4
  br label %116

114:                                              ; preds = %105
  %115 = load i32, i32* @CMD_OK, align 4
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %114, %109, %40
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @loadakernel(i32, i32, i8**) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i64 @ischar(...) #1

declare dso_local i32 @getchar(...) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @command_boot(i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
