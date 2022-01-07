; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_wire2str.c_sldns_wire2str_tag_scan.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_wire2str.c_sldns_wire2str_tag_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sldns_wire2str_tag_scan(i64** %0, i64* %1, i8** %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i64** %0, i64*** %6, align 8
  store i64* %1, i64** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32 0, i32* %12, align 4
  %13 = load i64*, i64** %7, align 8
  %14 = load i64, i64* %13, align 8
  %15 = icmp ult i64 %14, 1
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %83

17:                                               ; preds = %4
  %18 = load i64**, i64*** %6, align 8
  %19 = load i64*, i64** %18, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %11, align 8
  %22 = load i64*, i64** %7, align 8
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %11, align 8
  %25 = add i64 1, %24
  %26 = icmp ult i64 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  store i32 -1, i32* %5, align 4
  br label %83

28:                                               ; preds = %17
  store i64 0, i64* %10, align 8
  br label %29

29:                                               ; preds = %45, %28
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* %11, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %48

33:                                               ; preds = %29
  %34 = load i64**, i64*** %6, align 8
  %35 = load i64*, i64** %34, align 8
  %36 = load i64, i64* %10, align 8
  %37 = add i64 %36, 1
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i8
  %41 = call i32 @isalnum(i8 zeroext %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %33
  store i32 -1, i32* %5, align 4
  br label %83

44:                                               ; preds = %33
  br label %45

45:                                               ; preds = %44
  %46 = load i64, i64* %10, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %10, align 8
  br label %29

48:                                               ; preds = %29
  store i64 0, i64* %10, align 8
  br label %49

49:                                               ; preds = %68, %48
  %50 = load i64, i64* %10, align 8
  %51 = load i64, i64* %11, align 8
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %53, label %71

53:                                               ; preds = %49
  %54 = load i8**, i8*** %8, align 8
  %55 = load i64*, i64** %9, align 8
  %56 = load i64**, i64*** %6, align 8
  %57 = load i64*, i64** %56, align 8
  %58 = load i64, i64* %10, align 8
  %59 = add i64 %58, 1
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i8
  %63 = call i64 @sldns_str_print(i8** %54, i64* %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8 signext %62)
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %65, %63
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %12, align 4
  br label %68

68:                                               ; preds = %53
  %69 = load i64, i64* %10, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %10, align 8
  br label %49

71:                                               ; preds = %49
  %72 = load i64, i64* %11, align 8
  %73 = add i64 %72, 1
  %74 = load i64**, i64*** %6, align 8
  %75 = load i64*, i64** %74, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 %73
  store i64* %76, i64** %74, align 8
  %77 = load i64, i64* %11, align 8
  %78 = add i64 %77, 1
  %79 = load i64*, i64** %7, align 8
  %80 = load i64, i64* %79, align 8
  %81 = sub i64 %80, %78
  store i64 %81, i64* %79, align 8
  %82 = load i32, i32* %12, align 4
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %71, %43, %27, %16
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i32 @isalnum(i8 zeroext) #1

declare dso_local i64 @sldns_str_print(i8**, i64*, i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
