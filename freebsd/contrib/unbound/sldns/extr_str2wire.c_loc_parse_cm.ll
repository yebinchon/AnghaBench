; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_loc_parse_cm.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_loc_parse_cm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i32*, i32*)* @loc_parse_cm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loc_parse_cm(i8* %0, i8** %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %13

13:                                               ; preds = %18, %4
  %14 = load i8*, i8** %6, align 8
  %15 = load i8, i8* %14, align 1
  %16 = call i64 @isblank(i8 zeroext %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i8*, i8** %6, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %6, align 8
  br label %13

21:                                               ; preds = %13
  %22 = load i8*, i8** %6, align 8
  %23 = call i64 @strtol(i8* %22, i8** %6, i32 10)
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %10, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 46
  br i1 %28, label %29, label %35

29:                                               ; preds = %21
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %6, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i64 @strtol(i8* %32, i8** %6, i32 10)
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %11, align 4
  br label %35

35:                                               ; preds = %29, %21
  %36 = load i32, i32* %10, align 4
  %37 = icmp sge i32 %36, 1
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32*, i32** %9, align 8
  store i32 2, i32* %39, align 4
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %12, align 4
  br label %44

41:                                               ; preds = %35
  %42 = load i32*, i32** %9, align 8
  store i32 0, i32* %42, align 4
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %12, align 4
  br label %44

44:                                               ; preds = %41, %38
  br label %45

45:                                               ; preds = %48, %44
  %46 = load i32, i32* %12, align 4
  %47 = icmp sge i32 %46, 10
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load i32*, i32** %9, align 8
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  %52 = load i32, i32* %12, align 4
  %53 = sdiv i32 %52, 10
  store i32 %53, i32* %12, align 4
  br label %45

54:                                               ; preds = %45
  %55 = load i32, i32* %12, align 4
  %56 = load i32*, i32** %8, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i32*, i32** %9, align 8
  %58 = load i32, i32* %57, align 4
  %59 = icmp sgt i32 %58, 9
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  store i32 0, i32* %5, align 4
  br label %77

61:                                               ; preds = %54
  %62 = load i8*, i8** %6, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 109
  br i1 %65, label %71, label %66

66:                                               ; preds = %61
  %67 = load i8*, i8** %6, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 77
  br i1 %70, label %71, label %74

71:                                               ; preds = %66, %61
  %72 = load i8*, i8** %6, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %6, align 8
  br label %74

74:                                               ; preds = %71, %66
  %75 = load i8*, i8** %6, align 8
  %76 = load i8**, i8*** %7, align 8
  store i8* %75, i8** %76, align 8
  store i32 1, i32* %5, align 4
  br label %77

77:                                               ; preds = %74, %60
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i64 @isblank(i8 zeroext) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
