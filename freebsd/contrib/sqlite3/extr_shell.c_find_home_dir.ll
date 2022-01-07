; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_find_home_dir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_find_home_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i8* }

@find_home_dir.home_dir = internal global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @find_home_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @find_home_dir(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.passwd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i8*, i8** @find_home_dir.home_dir, align 8
  %12 = call i32 @free(i8* %11)
  store i8* null, i8** @find_home_dir.home_dir, align 8
  store i8* null, i8** %2, align 8
  br label %52

13:                                               ; preds = %1
  %14 = load i8*, i8** @find_home_dir.home_dir, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i8*, i8** @find_home_dir.home_dir, align 8
  store i8* %17, i8** %2, align 8
  br label %52

18:                                               ; preds = %13
  %19 = call i32 (...) @getuid()
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call %struct.passwd* @getpwuid(i32 %20)
  store %struct.passwd* %21, %struct.passwd** %4, align 8
  %22 = icmp ne %struct.passwd* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load %struct.passwd*, %struct.passwd** %4, align 8
  %25 = getelementptr inbounds %struct.passwd, %struct.passwd* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** @find_home_dir.home_dir, align 8
  br label %27

27:                                               ; preds = %23, %18
  %28 = load i8*, i8** @find_home_dir.home_dir, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %31, i8** @find_home_dir.home_dir, align 8
  br label %32

32:                                               ; preds = %30, %27
  %33 = load i8*, i8** @find_home_dir.home_dir, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %50

35:                                               ; preds = %32
  %36 = load i8*, i8** @find_home_dir.home_dir, align 8
  %37 = call i32 @strlen30(i8* %36)
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i8* @malloc(i32 %39)
  store i8* %40, i8** %7, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %35
  %44 = load i8*, i8** %7, align 8
  %45 = load i8*, i8** @find_home_dir.home_dir, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @memcpy(i8* %44, i8* %45, i32 %46)
  br label %48

48:                                               ; preds = %43, %35
  %49 = load i8*, i8** %7, align 8
  store i8* %49, i8** @find_home_dir.home_dir, align 8
  br label %50

50:                                               ; preds = %48, %32
  %51 = load i8*, i8** @find_home_dir.home_dir, align 8
  store i8* %51, i8** %2, align 8
  br label %52

52:                                               ; preds = %50, %16, %10
  %53 = load i8*, i8** %2, align 8
  ret i8* %53
}

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @getuid(...) #1

declare dso_local %struct.passwd* @getpwuid(i32) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @strlen30(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
