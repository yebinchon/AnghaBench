; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ddb/extr_ddb_script.c_ddb_list_scripts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ddb/extr_ddb_script.c_ddb_list_scripts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SYSCTL_SCRIPTS = common dso_local global i8* null, align 8
@EX_OSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"sysctl: %s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@ENOENT = common dso_local global i64 0, align 8
@EX_DATAERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ddb_list_scripts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ddb_list_scripts(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  br label %11

11:                                               ; preds = %52, %1
  %12 = load i8*, i8** @SYSCTL_SCRIPTS, align 8
  %13 = call i32 @sysctlbyname(i8* %12, i8* null, i64* %8, i32* null, i32 0)
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i32, i32* @EX_OSERR, align 4
  %17 = load i8*, i8** @SYSCTL_SCRIPTS, align 8
  %18 = call i32 (i32, i8*, ...) @err(i32 %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %17)
  br label %19

19:                                               ; preds = %15, %11
  %20 = load i64, i64* %8, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  br label %94

23:                                               ; preds = %19
  %24 = load i64, i64* %8, align 8
  %25 = call i8* @malloc(i64 %24)
  store i8* %25, i8** %3, align 8
  %26 = load i8*, i8** %3, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* @EX_OSERR, align 4
  %30 = call i32 (i32, i8*, ...) @err(i32 %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %23
  %32 = load i8*, i8** %3, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @bzero(i8* %32, i64 %33)
  %35 = load i64, i64* %8, align 8
  store i64 %35, i64* %9, align 8
  %36 = load i8*, i8** @SYSCTL_SCRIPTS, align 8
  %37 = load i8*, i8** %3, align 8
  %38 = call i32 @sysctlbyname(i8* %36, i8* %37, i64* %9, i32* null, i32 0)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %31
  %42 = load i64, i64* @errno, align 8
  %43 = load i64, i64* @ENOMEM, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load i32, i32* @EX_OSERR, align 4
  %47 = load i8*, i8** @SYSCTL_SCRIPTS, align 8
  %48 = call i32 (i32, i8*, ...) @err(i32 %46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %47)
  br label %49

49:                                               ; preds = %45, %41, %31
  %50 = load i32, i32* %10, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i8*, i8** %3, align 8
  %54 = call i32 @free(i8* %53)
  br label %11

55:                                               ; preds = %49
  %56 = load i8*, i8** %2, align 8
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load i8*, i8** %3, align 8
  %60 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %59)
  %61 = load i8*, i8** %3, align 8
  %62 = call i32 @free(i8* %61)
  br label %94

63:                                               ; preds = %55
  %64 = load i8*, i8** %3, align 8
  store i8* %64, i8** %5, align 8
  br label %65

65:                                               ; preds = %79, %73, %63
  %66 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i8* %66, i8** %4, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %83

68:                                               ; preds = %65
  %69 = load i8*, i8** %4, align 8
  store i8* %69, i8** %6, align 8
  %70 = call i8* @strsep(i8** %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i8* %70, i8** %7, align 8
  %71 = load i8*, i8** %6, align 8
  %72 = icmp eq i8* %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %65

74:                                               ; preds = %68
  %75 = load i8*, i8** %2, align 8
  %76 = load i8*, i8** %7, align 8
  %77 = call i64 @strcmp(i8* %75, i8* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %65

80:                                               ; preds = %74
  %81 = load i8*, i8** %6, align 8
  %82 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %81)
  br label %83

83:                                               ; preds = %80, %65
  %84 = load i8*, i8** %4, align 8
  %85 = icmp eq i8* %84, null
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = load i64, i64* @ENOENT, align 8
  store i64 %87, i64* @errno, align 8
  %88 = load i32, i32* @EX_DATAERR, align 4
  %89 = load i8*, i8** %2, align 8
  %90 = call i32 (i32, i8*, ...) @err(i32 %88, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %89)
  br label %91

91:                                               ; preds = %86, %83
  %92 = load i8*, i8** %3, align 8
  %93 = call i32 @free(i8* %92)
  br label %94

94:                                               ; preds = %91, %58, %22
  ret void
}

declare dso_local i32 @sysctlbyname(i8*, i8*, i64*, i32*, i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @bzero(i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
