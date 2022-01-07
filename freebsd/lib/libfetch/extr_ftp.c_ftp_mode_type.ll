; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libfetch/extr_ftp.c_ftp_mode_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libfetch/extr_ftp.c_ftp_mode_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FTP_PROTOCOL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"MODE %c\00", align 1
@FTP_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"TYPE %c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @ftp_mode_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftp_mode_type(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %12 [
    i32 0, label %10
    i32 115, label %10
    i32 83, label %11
  ]

10:                                               ; preds = %3, %3
  store i32 83, i32* %6, align 4
  br label %11

11:                                               ; preds = %3, %10
  br label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @FTP_PROTOCOL_ERROR, align 4
  store i32 %13, i32* %4, align 4
  br label %47

14:                                               ; preds = %11
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @ftp_cmd(i32* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* @FTP_OK, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %14
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %21, 83
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  br label %26

24:                                               ; preds = %20
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %4, align 4
  br label %47

26:                                               ; preds = %23
  br label %27

27:                                               ; preds = %26, %14
  %28 = load i32, i32* %7, align 4
  switch i32 %28, label %35 [
    i32 0, label %29
    i32 105, label %29
    i32 73, label %30
    i32 97, label %31
    i32 65, label %32
    i32 100, label %33
    i32 68, label %34
  ]

29:                                               ; preds = %27, %27
  store i32 73, i32* %7, align 4
  br label %30

30:                                               ; preds = %27, %29
  br label %37

31:                                               ; preds = %27
  store i32 65, i32* %7, align 4
  br label %32

32:                                               ; preds = %27, %31
  br label %37

33:                                               ; preds = %27
  store i32 68, i32* %7, align 4
  br label %34

34:                                               ; preds = %27, %33
  br label %35

35:                                               ; preds = %27, %34
  %36 = load i32, i32* @FTP_PROTOCOL_ERROR, align 4
  store i32 %36, i32* %4, align 4
  br label %47

37:                                               ; preds = %32, %30
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @ftp_cmd(i32* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* @FTP_OK, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %4, align 4
  br label %47

45:                                               ; preds = %37
  %46 = load i32, i32* @FTP_OK, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %45, %43, %35, %24, %12
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @ftp_cmd(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
