; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_script.c_db_script_valid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_script.c_db_script_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@DB_MAXSCRIPTNAME = common dso_local global i64 0, align 8
@DB_MAXSCRIPTLEN = common dso_local global i64 0, align 8
@db_static_buffer = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c";\00", align 1
@DB_MAXLINE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @db_script_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db_script_valid(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i64 @strlen(i8* %8)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  store i32 %12, i32* %3, align 4
  br label %44

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = call i64 @strlen(i8* %14)
  %16 = load i64, i64* @DB_MAXSCRIPTNAME, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %3, align 4
  br label %44

20:                                               ; preds = %13
  %21 = load i8*, i8** %5, align 8
  %22 = call i64 @strlen(i8* %21)
  %23 = load i64, i64* @DB_MAXSCRIPTLEN, align 8
  %24 = icmp sge i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %3, align 4
  br label %44

27:                                               ; preds = %20
  %28 = load i8*, i8** @db_static_buffer, align 8
  store i8* %28, i8** %6, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @strcpy(i8* %29, i8* %30)
  br label %32

32:                                               ; preds = %42, %27
  %33 = call i8* @strsep(i8** %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %33, i8** %7, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %32
  %36 = load i8*, i8** %7, align 8
  %37 = call i64 @strlen(i8* %36)
  %38 = load i64, i64* @DB_MAXLINE, align 8
  %39 = icmp sge i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @EINVAL, align 4
  store i32 %41, i32* %3, align 4
  br label %44

42:                                               ; preds = %35
  br label %32

43:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %40, %25, %18, %11
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
