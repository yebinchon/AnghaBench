; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_configfile.c_cook_xml_text.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_configfile.c_cook_xml_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cook_xml_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cook_xml_text(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [4 x i8], align 1
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  store i8* %7, i8** %3, align 8
  %8 = load i8*, i8** %2, align 8
  store i8* %8, i8** %4, align 8
  %9 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 2
  store i8 -128, i8* %9, align 1
  br label %10

10:                                               ; preds = %58, %1
  %11 = load i8*, i8** %3, align 8
  %12 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %12, i8** %3, align 8
  %13 = load i8, i8* %11, align 1
  %14 = sext i8 %13 to i32
  %15 = and i32 %14, 255
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %53 [
    i32 128, label %17
    i32 38, label %19
    i32 37, label %29
  ]

17:                                               ; preds = %10
  %18 = load i8*, i8** %4, align 8
  store i8 -128, i8* %18, align 1
  br label %59

19:                                               ; preds = %10
  %20 = call i32 @parse_xml_encoding(i8** %3)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = trunc i32 %21 to i8
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %4, align 8
  store i8 %22, i8* %23, align 1
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, 128
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %59

28:                                               ; preds = %19
  br label %58

29:                                               ; preds = %10
  %30 = load i8*, i8** %3, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %3, align 8
  %32 = load i8, i8* %30, align 1
  %33 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  store i8 %32, i8* %33, align 1
  %34 = load i8*, i8** %3, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %3, align 8
  %36 = load i8, i8* %34, align 1
  %37 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 1
  store i8 %36, i8* %37, align 1
  %38 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 128
  br i1 %41, label %47, label %42

42:                                               ; preds = %29
  %43 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 1
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 128
  br i1 %46, label %47, label %49

47:                                               ; preds = %42, %29
  %48 = load i8*, i8** %4, align 8
  store i8 -128, i8* %48, align 1
  br label %59

49:                                               ; preds = %42
  %50 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %51 = call i64 @strtoul(i8* %50, i32* null, i32 16)
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %10, %49
  %54 = load i32, i32* %6, align 4
  %55 = trunc i32 %54 to i8
  %56 = load i8*, i8** %4, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %4, align 8
  store i8 %55, i8* %56, align 1
  br label %58

58:                                               ; preds = %53, %28
  br label %10

59:                                               ; preds = %47, %27, %17
  ret void
}

declare dso_local i32 @parse_xml_encoding(i8**) #1

declare dso_local i64 @strtoul(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
