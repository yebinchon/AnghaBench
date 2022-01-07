; ModuleID = '/home/carl/AnghaBench/freebsd/stand/liblua/extr_lfs.c_push_st_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/liblua/extr_lfs.c_push_st_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@S_IFMT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"directory\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"link\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"fifo\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"char device\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"block device\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"other\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.stat*)* @push_st_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @push_st_mode(i32* %0, %struct.stat* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.stat*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.stat* %1, %struct.stat** %4, align 8
  %7 = load %struct.stat*, %struct.stat** %4, align 8
  %8 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @S_IFMT, align 4
  %11 = and i32 %9, %10
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i64 @S_ISREG(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %53

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @S_ISDIR(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %52

21:                                               ; preds = %16
  %22 = load i32, i32* %6, align 4
  %23 = call i64 @S_ISLNK(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %51

26:                                               ; preds = %21
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @S_ISSOCK(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  br label %50

31:                                               ; preds = %26
  %32 = load i32, i32* %6, align 4
  %33 = call i64 @S_ISFIFO(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %5, align 8
  br label %49

36:                                               ; preds = %31
  %37 = load i32, i32* %6, align 4
  %38 = call i64 @S_ISCHR(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8** %5, align 8
  br label %48

41:                                               ; preds = %36
  %42 = load i32, i32* %6, align 4
  %43 = call i64 @S_ISBLK(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8** %5, align 8
  br label %47

46:                                               ; preds = %41
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8** %5, align 8
  br label %47

47:                                               ; preds = %46, %45
  br label %48

48:                                               ; preds = %47, %40
  br label %49

49:                                               ; preds = %48, %35
  br label %50

50:                                               ; preds = %49, %30
  br label %51

51:                                               ; preds = %50, %25
  br label %52

52:                                               ; preds = %51, %20
  br label %53

53:                                               ; preds = %52, %15
  %54 = load i32*, i32** %3, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = call i32 @lua_pushstring(i32* %54, i8* %55)
  ret void
}

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i64 @S_ISSOCK(i32) #1

declare dso_local i64 @S_ISFIFO(i32) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
