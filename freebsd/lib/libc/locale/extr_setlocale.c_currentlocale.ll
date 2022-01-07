; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_setlocale.c_currentlocale.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_setlocale.c_currentlocale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@current_locale_string = common dso_local global i8* null, align 8
@current_categories = common dso_local global i8** null, align 8
@_LC_LAST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @currentlocale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @currentlocale() #0 {
  %1 = alloca i32, align 4
  %2 = load i8*, i8** @current_locale_string, align 8
  %3 = load i8**, i8*** @current_categories, align 8
  %4 = getelementptr inbounds i8*, i8** %3, i64 1
  %5 = load i8*, i8** %4, align 8
  %6 = call i32 @strcpy(i8* %2, i8* %5)
  store i32 2, i32* %1, align 4
  br label %7

7:                                                ; preds = %42, %0
  %8 = load i32, i32* %1, align 4
  %9 = load i32, i32* @_LC_LAST, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %45

11:                                               ; preds = %7
  %12 = load i8**, i8*** @current_categories, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 1
  %14 = load i8*, i8** %13, align 8
  %15 = load i8**, i8*** @current_categories, align 8
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8*, i8** %15, i64 %17
  %19 = load i8*, i8** %18, align 8
  %20 = call i64 @strcmp(i8* %14, i8* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %41

22:                                               ; preds = %11
  store i32 2, i32* %1, align 4
  br label %23

23:                                               ; preds = %37, %22
  %24 = load i32, i32* %1, align 4
  %25 = load i32, i32* @_LC_LAST, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %23
  %28 = load i8*, i8** @current_locale_string, align 8
  %29 = call i32 @strcat(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %30 = load i8*, i8** @current_locale_string, align 8
  %31 = load i8**, i8*** @current_categories, align 8
  %32 = load i32, i32* %1, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8*, i8** %31, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @strcat(i8* %30, i8* %35)
  br label %37

37:                                               ; preds = %27
  %38 = load i32, i32* %1, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %1, align 4
  br label %23

40:                                               ; preds = %23
  br label %45

41:                                               ; preds = %11
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %1, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %1, align 4
  br label %7

45:                                               ; preds = %40, %7
  %46 = load i8*, i8** @current_locale_string, align 8
  ret i8* %46
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
