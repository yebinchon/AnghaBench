; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libutil/extr_login_ok.c_login_ttyok.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libutil/extr_login_ok.c_login_ttyok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttyent = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @login_ttyok(i32* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ttyent*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8**, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 1, i32* %9, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %62

15:                                               ; preds = %4
  %16 = load i8*, i8** %6, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %62

18:                                               ; preds = %15
  %19 = load i8*, i8** %6, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %62

23:                                               ; preds = %18
  %24 = load i8*, i8** %6, align 8
  %25 = call %struct.ttyent* @getttynam(i8* %24)
  store %struct.ttyent* %25, %struct.ttyent** %10, align 8
  %26 = load %struct.ttyent*, %struct.ttyent** %10, align 8
  %27 = icmp ne %struct.ttyent* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load %struct.ttyent*, %struct.ttyent** %10, align 8
  %30 = getelementptr inbounds %struct.ttyent, %struct.ttyent* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  br label %33

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %32, %28
  %34 = phi i8* [ %31, %28 ], [ null, %32 ]
  store i8* %34, i8** %11, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = call i8** @login_getcaplist(i32* %35, i8* %36, i32* null)
  store i8** %37, i8*** %12, align 8
  %38 = load i8**, i8*** %12, align 8
  %39 = icmp ne i8** %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %33
  %41 = load i8**, i8*** %12, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = call i64 @login_str2inlist(i8** %41, i8* %42, i8* %43, i32 0)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %40
  store i32 0, i32* %9, align 4
  br label %61

47:                                               ; preds = %40, %33
  %48 = load i32*, i32** %5, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = call i8** @login_getcaplist(i32* %48, i8* %49, i32* null)
  store i8** %50, i8*** %12, align 8
  %51 = load i8**, i8*** %12, align 8
  %52 = icmp ne i8** %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = load i8**, i8*** %12, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = call i64 @login_str2inlist(i8** %54, i8* %55, i8* %56, i32 0)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  store i32 0, i32* %9, align 4
  br label %60

60:                                               ; preds = %59, %53, %47
  br label %61

61:                                               ; preds = %60, %46
  br label %62

62:                                               ; preds = %61, %18, %15, %4
  %63 = load i32, i32* %9, align 4
  ret i32 %63
}

declare dso_local %struct.ttyent* @getttynam(i8*) #1

declare dso_local i8** @login_getcaplist(i32*, i8*, i32*) #1

declare dso_local i64 @login_str2inlist(i8**, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
