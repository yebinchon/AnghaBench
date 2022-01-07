; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_disklabel.c_gettype.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_disklabel.c_gettype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**)* @gettype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gettype(i8* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  %7 = load i8**, i8*** %5, align 8
  store i8** %7, i8*** %6, align 8
  br label %8

8:                                                ; preds = %27, %2
  %9 = load i8**, i8*** %6, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %30

12:                                               ; preds = %8
  %13 = load i8*, i8** %4, align 8
  %14 = load i8**, i8*** %6, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = call i64 @strcasecmp(i8* %13, i8* %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %12
  %19 = load i8**, i8*** %6, align 8
  %20 = load i8**, i8*** %5, align 8
  %21 = ptrtoint i8** %19 to i64
  %22 = ptrtoint i8** %20 to i64
  %23 = sub i64 %21, %22
  %24 = sdiv exact i64 %23, 8
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %3, align 4
  br label %39

26:                                               ; preds = %12
  br label %27

27:                                               ; preds = %26
  %28 = load i8**, i8*** %6, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i32 1
  store i8** %29, i8*** %6, align 8
  br label %8

30:                                               ; preds = %8
  %31 = load i8*, i8** %4, align 8
  %32 = load i8, i8* %31, align 1
  %33 = call i64 @isdigit(i8 zeroext %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 @atoi(i8* %36)
  store i32 %37, i32* %3, align 4
  br label %39

38:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %35, %18
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i64 @isdigit(i8 zeroext) #1

declare dso_local i32 @atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
