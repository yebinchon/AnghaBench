; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_scanner.c_quote_if_needed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_scanner.c_quote_if_needed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@special_chars = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"\22%s\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_if_needed(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i64 @strlen(i8* %6)
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = add i64 %8, 2
  %10 = add i64 %9, 1
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call i8* @emalloc(i64 %11)
  store i8* %12, i8** %3, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 34, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %1
  %19 = load i8*, i8** %2, align 8
  %20 = load i32, i32* @special_chars, align 4
  %21 = call i64 @strcspn(i8* %19, i32 %20)
  %22 = load i64, i64* %4, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %18
  %25 = load i8*, i8** %2, align 8
  %26 = call i32* @strchr(i8* %25, i8 signext 32)
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %24, %18
  %29 = load i8*, i8** %3, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load i8*, i8** %2, align 8
  %32 = call i32 @snprintf(i8* %29, i64 %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %31)
  br label %38

33:                                               ; preds = %24, %1
  %34 = load i8*, i8** %3, align 8
  %35 = load i8*, i8** %2, align 8
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @strlcpy(i8* %34, i8* %35, i64 %36)
  br label %38

38:                                               ; preds = %33, %28
  %39 = load i8*, i8** %3, align 8
  ret i8* %39
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @emalloc(i64) #1

declare dso_local i64 @strcspn(i8*, i32) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
