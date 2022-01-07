; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libedit/extr_readline.c__default_history_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libedit/extr_readline.c__default_history_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i8* }

@_default_history_file.path = internal global i8* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"%s/.history\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @_default_history_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @_default_history_file() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.passwd*, align 8
  %3 = alloca i64, align 8
  %4 = load i8*, i8** @_default_history_file.path, align 8
  %5 = icmp ne i8* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = load i8*, i8** @_default_history_file.path, align 8
  store i8* %7, i8** %1, align 8
  br label %32

8:                                                ; preds = %0
  %9 = call i32 (...) @getuid()
  %10 = call %struct.passwd* @getpwuid(i32 %9)
  store %struct.passwd* %10, %struct.passwd** %2, align 8
  %11 = icmp eq %struct.passwd* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i8* null, i8** %1, align 8
  br label %32

13:                                               ; preds = %8
  %14 = load %struct.passwd*, %struct.passwd** %2, align 8
  %15 = getelementptr inbounds %struct.passwd, %struct.passwd* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @strlen(i8* %16)
  %18 = sext i32 %17 to i64
  %19 = add i64 %18, 10
  store i64 %19, i64* %3, align 8
  %20 = load i64, i64* %3, align 8
  %21 = call i8* @malloc(i64 %20)
  store i8* %21, i8** @_default_history_file.path, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %13
  store i8* null, i8** %1, align 8
  br label %32

24:                                               ; preds = %13
  %25 = load i8*, i8** @_default_history_file.path, align 8
  %26 = load i64, i64* %3, align 8
  %27 = load %struct.passwd*, %struct.passwd** %2, align 8
  %28 = getelementptr inbounds %struct.passwd, %struct.passwd* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @snprintf(i8* %25, i64 %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %29)
  %31 = load i8*, i8** @_default_history_file.path, align 8
  store i8* %31, i8** %1, align 8
  br label %32

32:                                               ; preds = %24, %23, %12, %6
  %33 = load i8*, i8** %1, align 8
  ret i8* %33
}

declare dso_local %struct.passwd* @getpwuid(i32) #1

declare dso_local i32 @getuid(...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
