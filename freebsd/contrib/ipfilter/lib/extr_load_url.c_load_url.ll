; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ipfilter/lib/extr_load_url.c_load_url.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ipfilter/lib/extr_load_url.c_load_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"file://\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"http://\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @load_url(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  store i32* null, i32** %3, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i64 @strncmp(i8* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i8*, i8** %2, align 8
  %9 = call i32* @load_file(i8* %8)
  store i32* %9, i32** %3, align 8
  br label %32

10:                                               ; preds = %1
  %11 = load i8*, i8** %2, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 47
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = load i8*, i8** %2, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 46
  br i1 %19, label %20, label %23

20:                                               ; preds = %15, %10
  %21 = load i8*, i8** %2, align 8
  %22 = call i32* @load_file(i8* %21)
  store i32* %22, i32** %3, align 8
  br label %31

23:                                               ; preds = %15
  %24 = load i8*, i8** %2, align 8
  %25 = call i64 @strncmp(i8* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 7)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i8*, i8** %2, align 8
  %29 = call i32* @load_http(i8* %28)
  store i32* %29, i32** %3, align 8
  br label %30

30:                                               ; preds = %27, %23
  br label %31

31:                                               ; preds = %30, %20
  br label %32

32:                                               ; preds = %31, %7
  %33 = load i32*, i32** %3, align 8
  ret i32* %33
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32* @load_file(i8*) #1

declare dso_local i32* @load_http(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
