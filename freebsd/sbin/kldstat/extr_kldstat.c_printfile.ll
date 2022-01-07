; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/kldstat/extr_kldstat.c_printfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/kldstat/extr_kldstat.c_printfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kld_file_stat = type { i32, i32, i32, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"can't stat file id %d\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@HN_AUTOSCALE = common dso_local global i32 0, align 4
@HN_DECIMAL = common dso_local global i32 0, align 4
@HN_NOSPACE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"%2d %4d %*p %5s %s\00", align 1
@POINTER_WIDTH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"%2d %4d %*p %8zx %s\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c" (%s)\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"\09Contains modules:\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"\09\09 Id Name\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @printfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @printfile(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.kld_file_stat, align 8
  %8 = alloca i32, align 4
  %9 = alloca [5 x i8], align 1
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = getelementptr inbounds %struct.kld_file_stat, %struct.kld_file_stat* %7, i32 0, i32 0
  store i32 40, i32* %10, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @kldstat(i32 %11, %struct.kld_file_stat* %7)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @err(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %54

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %17
  %21 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  %22 = getelementptr inbounds %struct.kld_file_stat, %struct.kld_file_stat* %7, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @HN_AUTOSCALE, align 4
  %25 = load i32, i32* @HN_DECIMAL, align 4
  %26 = load i32, i32* @HN_NOSPACE, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @humanize_number(i8* %21, i32 5, i32 %23, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %27)
  %29 = getelementptr inbounds %struct.kld_file_stat, %struct.kld_file_stat* %7, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.kld_file_stat, %struct.kld_file_stat* %7, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @POINTER_WIDTH, align 4
  %34 = getelementptr inbounds %struct.kld_file_stat, %struct.kld_file_stat* %7, i32 0, i32 3
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  %37 = getelementptr inbounds %struct.kld_file_stat, %struct.kld_file_stat* %7, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %30, i32 %32, i32 %33, i8* %35, i8* %36, i32 %38)
  br label %53

40:                                               ; preds = %17
  %41 = getelementptr inbounds %struct.kld_file_stat, %struct.kld_file_stat* %7, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.kld_file_stat, %struct.kld_file_stat* %7, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @POINTER_WIDTH, align 4
  %46 = getelementptr inbounds %struct.kld_file_stat, %struct.kld_file_stat* %7, i32 0, i32 3
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds %struct.kld_file_stat, %struct.kld_file_stat* %7, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.kld_file_stat, %struct.kld_file_stat* %7, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %42, i32 %44, i32 %45, i8* %47, i32 %49, i32 %51)
  br label %53

53:                                               ; preds = %40, %20
  br label %54

54:                                               ; preds = %53, %14
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %75

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.kld_file_stat, %struct.kld_file_stat* %7, i32 0, i32 4
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %59)
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @kldfirstmod(i32 %63)
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %71, %57
  %66 = load i32, i32* %8, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @printmod(i32 %69)
  br label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @modfnext(i32 %72)
  store i32 %73, i32* %8, align 4
  br label %65

74:                                               ; preds = %65
  br label %77

75:                                               ; preds = %54
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %74
  ret void
}

declare dso_local i64 @kldstat(i32, %struct.kld_file_stat*) #1

declare dso_local i32 @err(i32, i8*, i32) #1

declare dso_local i32 @humanize_number(i8*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @kldfirstmod(i32) #1

declare dso_local i32 @printmod(i32) #1

declare dso_local i32 @modfnext(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
