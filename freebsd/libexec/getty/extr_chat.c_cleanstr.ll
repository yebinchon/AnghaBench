; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/getty/extr_chat.c_cleanstr.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/getty/extr_chat.c_cleanstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cleanstr.tmp = internal global i8* null, align 8
@cleanstr.tmplen = internal global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"(mem alloc error)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32)* @cleanstr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @cleanstr(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @cleanstr.tmplen, align 4
  %9 = load i32, i32* %5, align 4
  %10 = mul nsw i32 %9, 4
  %11 = add nsw i32 %10, 1
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load i8*, i8** @cleanstr.tmp, align 8
  %15 = load i32, i32* %5, align 4
  %16 = mul nsw i32 %15, 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* @cleanstr.tmplen, align 4
  %18 = call i8* @realloc(i8* %14, i32 %17)
  store i8* %18, i8** @cleanstr.tmp, align 8
  br label %19

19:                                               ; preds = %13, %2
  %20 = load i8*, i8** @cleanstr.tmp, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 0, i32* @cleanstr.tmplen, align 4
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %41

23:                                               ; preds = %19
  store i32 0, i32* %6, align 4
  %24 = load i8*, i8** @cleanstr.tmp, align 8
  store i8* %24, i8** %7, align 8
  br label %25

25:                                               ; preds = %29, %23
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = load i8*, i8** %4, align 8
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds i8, i8* %30, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = call i32 @cleanchr(i8** %7, i8 zeroext %35)
  br label %25

37:                                               ; preds = %25
  %38 = load i8*, i8** %7, align 8
  store i8 0, i8* %38, align 1
  br label %39

39:                                               ; preds = %37
  %40 = load i8*, i8** @cleanstr.tmp, align 8
  store i8* %40, i8** %3, align 8
  br label %41

41:                                               ; preds = %39, %22
  %42 = load i8*, i8** %3, align 8
  ret i8* %42
}

declare dso_local i8* @realloc(i8*, i32) #1

declare dso_local i32 @cleanchr(i8**, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
