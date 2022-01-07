; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/progs/extr_tic.c_valid_db_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/progs/extr_tic.c_valid_db_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"** stat(%s)\00", align 1
@R_OK = common dso_local global i32 0, align 4
@W_OK = common dso_local global i32 0, align 4
@X_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"...not a writable directory\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"...not found\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"...parent directory %s is not writable\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"... no parent directory\00", align 1
@DBM_SUFFIX = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @valid_db_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @valid_db_path(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.stat, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = call i8* @strdup(i8* %7)
  store i8* %8, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @DEBUG(i32 1, i8* %9)
  %11 = load i8*, i8** %4, align 8
  %12 = call i64 @stat(i8* %11, %struct.stat* %3)
  %13 = icmp sge i64 %12, 0
  br i1 %13, label %14, label %33

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @S_ISDIR(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %14
  %20 = load i8*, i8** %4, align 8
  %21 = load i32, i32* @R_OK, align 4
  %22 = load i32, i32* @W_OK, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @X_OK, align 4
  %25 = or i32 %23, %24
  %26 = call i64 @access(i8* %20, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %19, %14
  %29 = call i32 @DEBUG(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @free(i8* %30)
  store i8* null, i8** %4, align 8
  br label %32

32:                                               ; preds = %28, %19
  br label %83

33:                                               ; preds = %1
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @_nc_pathlast(i8* %34)
  store i32 %35, i32* %5, align 4
  %36 = call i32 @DEBUG(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %78

39:                                               ; preds = %33
  %40 = load i8*, i8** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i8, i8* %43, align 1
  store i8 %44, i8* %6, align 1
  %45 = load i8*, i8** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  store i8 0, i8* %48, align 1
  %49 = load i8*, i8** %4, align 8
  %50 = call i64 @stat(i8* %49, %struct.stat* %3)
  %51 = icmp sge i64 %50, 0
  br i1 %51, label %52, label %72

52:                                               ; preds = %39
  %53 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @S_ISDIR(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %72

57:                                               ; preds = %52
  %58 = load i8*, i8** %4, align 8
  %59 = load i32, i32* @R_OK, align 4
  %60 = load i32, i32* @W_OK, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @X_OK, align 4
  %63 = or i32 %61, %62
  %64 = call i64 @access(i8* %58, i32 %63)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %57
  %67 = load i8, i8* %6, align 1
  %68 = load i8*, i8** %4, align 8
  %69 = load i32, i32* %5, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  store i8 %67, i8* %71, align 1
  br label %77

72:                                               ; preds = %57, %52, %39
  %73 = load i8*, i8** %4, align 8
  %74 = call i32 @DEBUG(i32 1, i8* %73)
  %75 = load i8*, i8** %4, align 8
  %76 = call i32 @free(i8* %75)
  store i8* null, i8** %4, align 8
  br label %77

77:                                               ; preds = %72, %66
  br label %82

78:                                               ; preds = %33
  %79 = call i32 @DEBUG(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %80 = load i8*, i8** %4, align 8
  %81 = call i32 @free(i8* %80)
  store i8* null, i8** %4, align 8
  br label %82

82:                                               ; preds = %78, %77
  br label %83

83:                                               ; preds = %82, %32
  %84 = load i8*, i8** %4, align 8
  ret i8* %84
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @DEBUG(i32, i8*) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @access(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @_nc_pathlast(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
