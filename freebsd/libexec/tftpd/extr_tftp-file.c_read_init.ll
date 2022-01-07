; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/tftpd/extr_tftp-file.c_read_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/tftpd/extr_tftp-file.c_read_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@file = common dso_local global i32* null, align 8
@errno = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"fdopen() failed: %s\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"netascii\00", align 1
@convert = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_init(i32 %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = call i32 @convert_to_net(i32* null, i32 0, i32 1)
  %10 = load i32*, i32** %6, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %25

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = call i32* @fdopen(i32 %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %14, i32** @file, align 8
  %15 = load i32*, i32** @file, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = load i32, i32* @errno, align 4
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* @LOG_ERR, align 4
  %20 = load i32, i32* @errno, align 4
  %21 = call i32 @strerror(i32 %20)
  %22 = call i32 @tftp_log(i32 %19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %4, align 4
  br label %33

24:                                               ; preds = %12
  br label %27

25:                                               ; preds = %3
  %26 = load i32*, i32** %6, align 8
  store i32* %26, i32** @file, align 8
  br label %27

27:                                               ; preds = %25, %24
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  store i32 %32, i32* @convert, align 4
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %27, %17
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @convert_to_net(i32*, i32, i32) #1

declare dso_local i32* @fdopen(i32, i8*) #1

declare dso_local i32 @tftp_log(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
