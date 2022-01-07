; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-sds.c_read_frame.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-sds.c_read_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sds_timeout = common dso_local global i32 0, align 4
@remote_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Timeout in mid-message, retrying\0A\00", align 1
@gdb_stdlog = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Saw new packet start in middle of old one\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Received encoded: \22%s\22\0A\00", align 1
@PBUFSIZ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"Message too long: \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @read_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_frame(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  store i8* %6, i8** %4, align 8
  br label %7

7:                                                ; preds = %1, %43, %54
  %8 = load i32, i32* @sds_timeout, align 4
  %9 = call i32 @readchar(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %35 [
    i32 128, label %11
    i32 36, label %18
    i32 13, label %25
    i32 10, label %26
  ]

11:                                               ; preds = %7
  %12 = load i32, i32* @remote_debug, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i32, i32* @gdb_stdlog, align 4
  %16 = call i32 @fputs_filtered(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %14, %11
  store i32 0, i32* %2, align 4
  br label %55

18:                                               ; preds = %7
  %19 = load i32, i32* @remote_debug, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* @gdb_stdlog, align 4
  %23 = call i32 @fputs_filtered(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %21, %18
  store i32 0, i32* %2, align 4
  br label %55

25:                                               ; preds = %7
  br label %54

26:                                               ; preds = %7
  %27 = load i8*, i8** %4, align 8
  store i8 0, i8* %27, align 1
  %28 = load i32, i32* @remote_debug, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i32, i32* @gdb_stdlog, align 4
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 @fprintf_unfiltered(i32 %31, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %32)
  br label %34

34:                                               ; preds = %30, %26
  store i32 1, i32* %2, align 4
  br label %55

35:                                               ; preds = %7
  %36 = load i8*, i8** %4, align 8
  %37 = load i8*, i8** %3, align 8
  %38 = load i32, i32* @PBUFSIZ, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = getelementptr inbounds i8, i8* %40, i64 -1
  %42 = icmp ult i8* %36, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %35
  %44 = load i32, i32* %5, align 4
  %45 = trunc i32 %44 to i8
  %46 = load i8*, i8** %4, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %4, align 8
  store i8 %45, i8* %46, align 1
  br label %7

48:                                               ; preds = %35
  %49 = load i8*, i8** %4, align 8
  store i8 0, i8* %49, align 1
  %50 = call i32 @puts_filtered(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %51 = load i8*, i8** %3, align 8
  %52 = call i32 @puts_filtered(i8* %51)
  %53 = call i32 @puts_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %55

54:                                               ; preds = %25
  br label %7

55:                                               ; preds = %48, %34, %24, %17
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @readchar(i32) #1

declare dso_local i32 @fputs_filtered(i8*, i32) #1

declare dso_local i32 @fprintf_unfiltered(i32, i8*, i8*) #1

declare dso_local i32 @puts_filtered(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
