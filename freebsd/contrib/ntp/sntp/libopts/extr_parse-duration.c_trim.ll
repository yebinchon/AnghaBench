; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_parse-duration.c_trim.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_parse-duration.c_trim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUL = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @trim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @trim(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  br label %4

4:                                                ; preds = %9, %1
  %5 = load i8*, i8** %2, align 8
  %6 = load i8, i8* %5, align 1
  %7 = call i64 @isspace(i8 zeroext %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = load i8*, i8** %2, align 8
  %11 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %11, i8** %2, align 8
  br label %4

12:                                               ; preds = %4
  %13 = load i8*, i8** %2, align 8
  %14 = load i8*, i8** %2, align 8
  %15 = call i32 @strlen(i8* %14)
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %13, i64 %16
  store i8* %17, i8** %3, align 8
  br label %18

18:                                               ; preds = %30, %12
  %19 = load i8*, i8** %3, align 8
  %20 = load i8*, i8** %2, align 8
  %21 = icmp ugt i8* %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load i8*, i8** %3, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 -1
  %25 = load i8, i8* %24, align 1
  %26 = call i64 @isspace(i8 zeroext %25)
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %22, %18
  %29 = phi i1 [ false, %18 ], [ %27, %22 ]
  br i1 %29, label %30, label %33

30:                                               ; preds = %28
  %31 = load i8*, i8** %3, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 -1
  store i8* %32, i8** %3, align 8
  br label %18

33:                                               ; preds = %28
  %34 = load i8, i8* @NUL, align 1
  %35 = load i8*, i8** %3, align 8
  store i8 %34, i8* %35, align 1
  %36 = load i8*, i8** %2, align 8
  ret i8* %36
}

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
