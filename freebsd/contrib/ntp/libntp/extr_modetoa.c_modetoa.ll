; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_modetoa.c_modetoa.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_modetoa.c_modetoa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@modetoa.modestrings = internal constant [9 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [7 x i8] c"unspec\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"sym_active\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"sym_passive\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"client\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"server\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"broadcast\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"control\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"private\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"bclient\00", align 1
@LIB_BUFLENGTH = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"mode#%zu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @modetoa(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = call i64 @COUNTOF(i8** getelementptr inbounds ([9 x i8*], [9 x i8*]* @modetoa.modestrings, i64 0, i64 0))
  %7 = icmp uge i64 %5, %6
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @LIB_GETBUF(i8* %9)
  %11 = load i8*, i8** %4, align 8
  %12 = load i32, i32* @LIB_BUFLENGTH, align 4
  %13 = load i64, i64* %3, align 8
  %14 = call i32 @snprintf(i8* %11, i32 %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i64 %13)
  %15 = load i8*, i8** %4, align 8
  store i8* %15, i8** %2, align 8
  br label %20

16:                                               ; preds = %1
  %17 = load i64, i64* %3, align 8
  %18 = getelementptr inbounds [9 x i8*], [9 x i8*]* @modetoa.modestrings, i64 0, i64 %17
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %2, align 8
  br label %20

20:                                               ; preds = %16, %8
  %21 = load i8*, i8** %2, align 8
  ret i8* %21
}

declare dso_local i64 @COUNTOF(i8**) #1

declare dso_local i32 @LIB_GETBUF(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
