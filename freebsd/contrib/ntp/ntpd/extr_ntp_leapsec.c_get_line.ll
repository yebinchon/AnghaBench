; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_leapsec.c_get_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_leapsec.c_get_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32 (i8*)*, i8*, i8*, i64)* @get_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_line(i32 (i8*)* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32 (i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32 (i8*)* %0, i32 (i8*)** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load i64, i64* %9, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %4
  store i8* null, i8** %5, align 8
  br label %73

18:                                               ; preds = %14
  %19 = load i8*, i8** %8, align 8
  store i8* %19, i8** %11, align 8
  br label %20

20:                                               ; preds = %41, %18
  %21 = load i32, i32* @EOF, align 4
  %22 = load i32 (i8*)*, i32 (i8*)** %6, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 %22(i8* %23)
  store i32 %24, i32* %10, align 4
  %25 = icmp ne i32 %21, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 10, %27
  br label %29

29:                                               ; preds = %26, %20
  %30 = phi i1 [ false, %20 ], [ %28, %26 ]
  br i1 %30, label %31, label %42

31:                                               ; preds = %29
  %32 = load i64, i64* %9, align 8
  %33 = icmp ugt i64 %32, 1
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load i64, i64* %9, align 8
  %36 = add i64 %35, -1
  store i64 %36, i64* %9, align 8
  %37 = load i32, i32* %10, align 4
  %38 = trunc i32 %37 to i8
  %39 = load i8*, i8** %11, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %11, align 8
  store i8 %38, i8* %39, align 1
  br label %41

41:                                               ; preds = %34, %31
  br label %20

42:                                               ; preds = %29
  br label %43

43:                                               ; preds = %56, %42
  %44 = load i8*, i8** %11, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = icmp ne i8* %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = load i8*, i8** %11, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 -1
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = call i64 @isspace(i32 %51)
  %53 = icmp ne i64 %52, 0
  br label %54

54:                                               ; preds = %47, %43
  %55 = phi i1 [ false, %43 ], [ %53, %47 ]
  br i1 %55, label %56, label %59

56:                                               ; preds = %54
  %57 = load i8*, i8** %11, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 -1
  store i8* %58, i8** %11, align 8
  br label %43

59:                                               ; preds = %54
  %60 = load i8*, i8** %11, align 8
  store i8 0, i8* %60, align 1
  %61 = load i8*, i8** %11, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = icmp eq i8* %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @EOF, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %71

69:                                               ; preds = %64, %59
  %70 = load i8*, i8** %8, align 8
  br label %71

71:                                               ; preds = %69, %68
  %72 = phi i8* [ null, %68 ], [ %70, %69 ]
  store i8* %72, i8** %5, align 8
  br label %73

73:                                               ; preds = %71, %17
  %74 = load i8*, i8** %5, align 8
  ret i8* %74
}

declare dso_local i64 @isspace(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
