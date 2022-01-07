; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_wire2str.c_sldns_wire2str_str_scan.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_wire2str.c_sldns_wire2str_str_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sldns_wire2str_str_scan(i64** %0, i64* %1, i8** %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64** %0, i64*** %6, align 8
  store i64* %1, i64** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load i64*, i64** %7, align 8
  %14 = load i64, i64* %13, align 8
  %15 = icmp ult i64 %14, 1
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %78

17:                                               ; preds = %4
  %18 = load i64**, i64*** %6, align 8
  %19 = load i64*, i64** %18, align 8
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %12, align 8
  %21 = load i64*, i64** %7, align 8
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %12, align 8
  %24 = add i64 1, %23
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  store i32 -1, i32* %5, align 4
  br label %78

27:                                               ; preds = %17
  %28 = load i64**, i64*** %6, align 8
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i32 1
  store i64* %30, i64** %28, align 8
  %31 = load i64*, i64** %7, align 8
  %32 = load i64, i64* %31, align 8
  %33 = add i64 %32, -1
  store i64 %33, i64* %31, align 8
  %34 = load i8**, i8*** %8, align 8
  %35 = load i64*, i64** %9, align 8
  %36 = call i64 @sldns_str_print(i8** %34, i64* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %38, %36
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %10, align 4
  store i64 0, i64* %11, align 8
  br label %41

41:                                               ; preds = %58, %27
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* %12, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %61

45:                                               ; preds = %41
  %46 = load i8**, i8*** %8, align 8
  %47 = load i64*, i64** %9, align 8
  %48 = load i64**, i64*** %6, align 8
  %49 = load i64*, i64** %48, align 8
  %50 = load i64, i64* %11, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = call i64 @str_char_print(i8** %46, i64* %47, i64 %52)
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %45
  %59 = load i64, i64* %11, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %11, align 8
  br label %41

61:                                               ; preds = %41
  %62 = load i8**, i8*** %8, align 8
  %63 = load i64*, i64** %9, align 8
  %64 = call i64 @sldns_str_print(i8** %62, i64* %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %66, %64
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %10, align 4
  %69 = load i64, i64* %12, align 8
  %70 = load i64**, i64*** %6, align 8
  %71 = load i64*, i64** %70, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 %69
  store i64* %72, i64** %70, align 8
  %73 = load i64, i64* %12, align 8
  %74 = load i64*, i64** %7, align 8
  %75 = load i64, i64* %74, align 8
  %76 = sub i64 %75, %73
  store i64 %76, i64* %74, align 8
  %77 = load i32, i32* %10, align 4
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %61, %26, %16
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i64 @sldns_str_print(i8**, i64*, i8*) #1

declare dso_local i64 @str_char_print(i8**, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
