; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/rsh/extr_rshd.c_read_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/rsh/extr_rshd.c_read_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"%s too long\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"read: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i64, i8*)* @read_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @read_str(i32 %0, i64 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = call i8* @malloc(i64 %10)
  store i8* %11, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  store i8* %12, i8** %9, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 @fatal(i32 %16, i32* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %17)
  br label %19

19:                                               ; preds = %15, %3
  br label %20

20:                                               ; preds = %42, %19
  %21 = load i8*, i8** %9, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load i64, i64* %6, align 8
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  %25 = icmp ult i8* %21, %24
  br i1 %25, label %26, label %45

26:                                               ; preds = %20
  %27 = load i32, i32* %5, align 4
  %28 = load i8*, i8** %9, align 8
  %29 = call i32 @net_read(i32 %27, i8* %28, i32 1)
  %30 = icmp ne i32 %29, 1
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32, i32* @errno, align 4
  %33 = call i32 @strerror(i32 %32)
  %34 = call i32 @syslog_and_die(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %31, %26
  %36 = load i8*, i8** %9, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i8*, i8** %8, align 8
  store i8* %41, i8** %4, align 8
  br label %49

42:                                               ; preds = %35
  %43 = load i8*, i8** %9, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %9, align 8
  br label %20

45:                                               ; preds = %20
  %46 = load i32, i32* %5, align 4
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @fatal(i32 %46, i32* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %47)
  br label %49

49:                                               ; preds = %45, %40
  %50 = load i8*, i8** %4, align 8
  ret i8* %50
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @fatal(i32, i32*, i8*, i8*) #1

declare dso_local i32 @net_read(i32, i8*, i32) #1

declare dso_local i32 @syslog_and_die(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
