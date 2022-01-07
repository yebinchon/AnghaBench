; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_configfile.c_trim_xml_text.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_configfile.c_trim_xml_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@trim_xml_text.fmt = internal constant [6 x i8] c"</%s>\00", align 1
@.str = private unnamed_addr constant [10 x i8] c"scan name\00", align 1
@OPTION_LOAD_UNCOOKED = common dso_local global i64 0, align 8
@NUL = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i64)* @trim_xml_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @trim_xml_text(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [64 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @strlen(i8* %13)
  %15 = sext i32 %14 to i64
  %16 = add i64 %15, 6
  %17 = sub i64 %16, 2
  store i64 %17, i64* %8, align 8
  %18 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  store i8* %18, i8** %11, align 8
  %19 = load i64, i64* %8, align 8
  %20 = icmp uge i64 %19, 64
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i64, i64* %8, align 8
  %23 = call i8* @AGALOC(i64 %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i8* %23, i8** %11, align 8
  br label %24

24:                                               ; preds = %21, %3
  %25 = load i8*, i8** %11, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call i64 @sprintf(i8* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @trim_xml_text.fmt, i64 0, i64 0), i8* %26)
  store i64 %27, i64* %8, align 8
  %28 = load i8*, i8** %5, align 8
  store i8 32, i8* %28, align 1
  %29 = load i8*, i8** %5, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = call i8* @strstr(i8* %29, i8* %30)
  store i8* %31, i8** %9, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %34 = icmp ne i8* %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %24
  %36 = load i8*, i8** %11, align 8
  %37 = call i32 @AGFREE(i8* %36)
  br label %38

38:                                               ; preds = %35, %24
  %39 = load i8*, i8** %9, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i8*, i8** %9, align 8
  store i8* %42, i8** %4, align 8
  br label %58

43:                                               ; preds = %38
  %44 = load i8*, i8** %9, align 8
  %45 = load i64, i64* %8, align 8
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  store i8* %46, i8** %12, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* @OPTION_LOAD_UNCOOKED, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = load i8*, i8** %5, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = call i8* @SPN_WHITESPACE_BACK(i8* %51, i8* %52)
  store i8* %53, i8** %9, align 8
  br label %54

54:                                               ; preds = %50, %43
  %55 = load i8, i8* @NUL, align 1
  %56 = load i8*, i8** %9, align 8
  store i8 %55, i8* %56, align 1
  %57 = load i8*, i8** %12, align 8
  store i8* %57, i8** %4, align 8
  br label %58

58:                                               ; preds = %54, %41
  %59 = load i8*, i8** %4, align 8
  ret i8* %59
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @AGALOC(i64, i8*) #1

declare dso_local i64 @sprintf(i8*, i8*, i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @AGFREE(i8*) #1

declare dso_local i8* @SPN_WHITESPACE_BACK(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
