; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_logintest.c_testLineName.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_logintest.c_testLineName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"%s: %s, %s, %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @testLineName(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [17 x i8], align 16
  %4 = alloca [9 x i8], align 1
  %5 = alloca [5 x i8], align 1
  store i8* %0, i8** %2, align 8
  %6 = getelementptr inbounds [17 x i8], [17 x i8]* %3, i64 0, i64 0
  %7 = call i32 @memset(i8* %6, i8 signext 0, i32 17)
  %8 = getelementptr inbounds [9 x i8], [9 x i8]* %4, i64 0, i64 0
  %9 = call i32 @memset(i8* %8, i8 signext 0, i32 9)
  %10 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 0
  %11 = call i32 @memset(i8* %10, i8 signext 0, i32 5)
  %12 = getelementptr inbounds [17 x i8], [17 x i8]* %3, i64 0, i64 0
  %13 = load i8*, i8** %2, align 8
  %14 = call i32 @line_fullname(i8* %12, i8* %13, i32 16)
  %15 = getelementptr inbounds [9 x i8], [9 x i8]* %4, i64 0, i64 0
  %16 = getelementptr inbounds [17 x i8], [17 x i8]* %3, i64 0, i64 0
  %17 = call i32 @line_stripname(i8* %15, i8* %16, i32 8)
  %18 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 0
  %19 = getelementptr inbounds [17 x i8], [17 x i8]* %3, i64 0, i64 0
  %20 = call i32 @line_abbrevname(i8* %18, i8* %19, i32 4)
  %21 = load i8*, i8** %2, align 8
  %22 = getelementptr inbounds [17 x i8], [17 x i8]* %3, i64 0, i64 0
  %23 = getelementptr inbounds [9 x i8], [9 x i8]* %4, i64 0, i64 0
  %24 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 0
  %25 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %21, i8* %22, i8* %23, i8* %24)
  ret void
}

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @line_fullname(i8*, i8*, i32) #1

declare dso_local i32 @line_stripname(i8*, i8*, i32) #1

declare dso_local i32 @line_abbrevname(i8*, i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
