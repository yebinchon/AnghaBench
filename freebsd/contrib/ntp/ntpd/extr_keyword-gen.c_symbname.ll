; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_keyword-gen.c_symbname.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_keyword-gen.c_symbname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@symb = common dso_local global i8** null, align 8
@LIB_BUFLENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @symbname(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = load i8**, i8*** @symb, align 8
  %6 = call i64 @COUNTOF(i8** %5)
  %7 = icmp ult i64 %4, %6
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = load i8**, i8*** @symb, align 8
  %10 = load i64, i64* %2, align 8
  %11 = getelementptr inbounds i8*, i8** %9, i64 %10
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = load i8**, i8*** @symb, align 8
  %16 = load i64, i64* %2, align 8
  %17 = getelementptr inbounds i8*, i8** %15, i64 %16
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %3, align 8
  br label %26

19:                                               ; preds = %8, %1
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @LIB_GETBUF(i8* %20)
  %22 = load i8*, i8** %3, align 8
  %23 = load i32, i32* @LIB_BUFLENGTH, align 4
  %24 = load i64, i64* %2, align 8
  %25 = call i32 @snprintf(i8* %22, i32 %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %24)
  br label %26

26:                                               ; preds = %19, %14
  %27 = load i8*, i8** %3, align 8
  ret i8* %27
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
