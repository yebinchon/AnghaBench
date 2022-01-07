; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_mkupdate.c_getword_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_mkupdate.c_getword_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8***, i8**)* @getword_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getword_str(i8* %0, i32 %1, i8*** %2, i8** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8***, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8*** %2, i8**** %7, align 8
  store i8** %3, i8*** %8, align 8
  %11 = load i8*, i8** %5, align 8
  store i8* %11, i8** %9, align 8
  br label %12

12:                                               ; preds = %49, %33, %4
  %13 = load i8***, i8**** %7, align 8
  %14 = load i8**, i8*** %13, align 8
  %15 = load i8**, i8*** %8, align 8
  %16 = icmp ule i8** %14, %15
  br i1 %16, label %17, label %56

17:                                               ; preds = %12
  %18 = load i8***, i8**** %7, align 8
  %19 = load i8**, i8*** %18, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = ptrtoint i8* %20 to i32
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = call i64 @isspace(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %17
  %26 = load i32, i32* %10, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %25, %17
  %29 = load i8*, i8** %9, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = icmp ne i8* %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %56

33:                                               ; preds = %28
  %34 = load i8***, i8**** %7, align 8
  %35 = load i8**, i8*** %34, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i32 1
  store i8** %36, i8*** %34, align 8
  br label %12

37:                                               ; preds = %25
  %38 = load i8***, i8**** %7, align 8
  %39 = load i8**, i8*** %38, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i32 1
  store i8** %40, i8*** %38, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = getelementptr inbounds i8, i8* %45, i64 -1
  %47 = icmp uge i8* %41, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  br label %56

49:                                               ; preds = %37
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = inttoptr i64 %51 to i8*
  %53 = ptrtoint i8* %52 to i8
  %54 = load i8*, i8** %9, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %9, align 8
  store i8 %53, i8* %54, align 1
  br label %12

56:                                               ; preds = %48, %32, %12
  %57 = load i8*, i8** %9, align 8
  store i8 0, i8* %57, align 1
  %58 = load i8*, i8** %9, align 8
  %59 = load i8*, i8** %5, align 8
  %60 = icmp ne i8* %58, %59
  %61 = zext i1 %60 to i32
  ret i32 %61
}

declare dso_local i64 @isspace(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
