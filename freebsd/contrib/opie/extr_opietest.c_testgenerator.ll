; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/opie/extr_opietest.c_testgenerator.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/opie/extr_opietest.c_testgenerator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@testgenerator.testin1 = internal global [19 x i8] c"otp-md5 123 ke1234\00", align 16
@testgenerator.testin2 = internal global [15 x i8] c"this is a test\00", align 1
@testgenerator.testout = internal global [20 x i8] c"11D4 C147 E227 C1F1\00", align 16
@buffer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @testgenerator() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @buffer, align 4
  %3 = call i64 @opiegenerator(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @testgenerator.testin1, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @testgenerator.testin2, i64 0, i64 0), i32 %2)
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %12

6:                                                ; preds = %0
  %7 = load i32, i32* @buffer, align 4
  %8 = call i64 @memcmp(i32 %7, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @testgenerator.testout, i64 0, i64 0), i32 20)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  store i32 -1, i32* %1, align 4
  br label %12

11:                                               ; preds = %6
  store i32 0, i32* %1, align 4
  br label %12

12:                                               ; preds = %11, %10, %5
  %13 = load i32, i32* %1, align 4
  ret i32 %13
}

declare dso_local i64 @opiegenerator(i8*, i8*, i32) #1

declare dso_local i64 @memcmp(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
