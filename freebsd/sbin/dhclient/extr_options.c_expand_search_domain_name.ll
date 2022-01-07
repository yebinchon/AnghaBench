; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_options.c_expand_search_domain_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_options.c_expand_search_domain_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option_data = type { i64, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @expand_search_domain_name(%struct.option_data* %0, i64* %1, i8** %2) #0 {
  %4 = alloca %struct.option_data*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store %struct.option_data* %0, %struct.option_data** %4, align 8
  store i64* %1, i64** %5, align 8
  store i8** %2, i8*** %6, align 8
  %11 = load i64*, i64** %5, align 8
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %8, align 8
  %13 = load i8**, i8*** %6, align 8
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %10, align 8
  br label %15

15:                                               ; preds = %60, %3
  %16 = load i64, i64* %8, align 8
  %17 = load %struct.option_data*, %struct.option_data** %4, align 8
  %18 = getelementptr inbounds %struct.option_data, %struct.option_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %16, %19
  br i1 %20, label %21, label %84

21:                                               ; preds = %15
  %22 = load %struct.option_data*, %struct.option_data** %4, align 8
  %23 = getelementptr inbounds %struct.option_data, %struct.option_data* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* %8, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %21
  %31 = load i64, i64* %8, align 8
  %32 = add i64 %31, 1
  %33 = load i64*, i64** %5, align 8
  store i64 %32, i64* %33, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = load i8**, i8*** %6, align 8
  store i8* %34, i8** %35, align 8
  br label %84

36:                                               ; preds = %21
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %37, 192
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %59

40:                                               ; preds = %36
  %41 = load i32, i32* %7, align 4
  %42 = and i32 %41, -193
  %43 = shl i32 %42, 8
  %44 = load %struct.option_data*, %struct.option_data** %4, align 8
  %45 = getelementptr inbounds %struct.option_data, %struct.option_data* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* %8, align 8
  %48 = add i64 %47, 1
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %43, %50
  %52 = sext i32 %51 to i64
  store i64 %52, i64* %9, align 8
  %53 = load %struct.option_data*, %struct.option_data** %4, align 8
  call void @expand_search_domain_name(%struct.option_data* %53, i64* %9, i8** %10)
  %54 = load i64, i64* %8, align 8
  %55 = add i64 %54, 2
  %56 = load i64*, i64** %5, align 8
  store i64 %55, i64* %56, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = load i8**, i8*** %6, align 8
  store i8* %57, i8** %58, align 8
  br label %84

59:                                               ; preds = %36
  br label %60

60:                                               ; preds = %59
  %61 = load i8*, i8** %10, align 8
  %62 = load %struct.option_data*, %struct.option_data** %4, align 8
  %63 = getelementptr inbounds %struct.option_data, %struct.option_data* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* %8, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @memcpy(i8* %61, i32* %67, i32 %68)
  %70 = load i8*, i8** %10, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  store i8 46, i8* %73, align 1
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = load i64, i64* %8, align 8
  %78 = add i64 %77, %76
  store i64 %78, i64* %8, align 8
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 1
  %81 = load i8*, i8** %10, align 8
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i8, i8* %81, i64 %82
  store i8* %83, i8** %10, align 8
  br label %15

84:                                               ; preds = %30, %40, %15
  ret void
}

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
