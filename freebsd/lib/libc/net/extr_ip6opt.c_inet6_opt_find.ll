; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_ip6opt.c_inet6_opt_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_ip6opt.c_inet6_opt_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6_hbh = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inet6_opt_find(i8* %0, i32 %1, i32 %2, i64 %3, i32* %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i8** %5, i8*** %13, align 8
  %17 = load i32, i32* %9, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %6
  %20 = load i32, i32* %9, align 4
  %21 = srem i32 %20, 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %6
  store i32 -1, i32* %7, align 4
  br label %86

24:                                               ; preds = %19
  %25 = load i8*, i8** %8, align 8
  %26 = bitcast i8* %25 to i64*
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  store i64* %29, i64** %15, align 8
  %30 = load i32, i32* %10, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %24
  %33 = load i8*, i8** %8, align 8
  %34 = bitcast i8* %33 to %struct.ip6_hbh*
  %35 = getelementptr inbounds %struct.ip6_hbh, %struct.ip6_hbh* %34, i64 1
  %36 = bitcast %struct.ip6_hbh* %35 to i64*
  store i64* %36, i64** %14, align 8
  br label %43

37:                                               ; preds = %24
  %38 = load i8*, i8** %8, align 8
  %39 = bitcast i8* %38 to i64*
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  store i64* %42, i64** %14, align 8
  br label %43

43:                                               ; preds = %37, %32
  br label %44

44:                                               ; preds = %78, %43
  %45 = load i64*, i64** %14, align 8
  %46 = load i64*, i64** %15, align 8
  %47 = icmp ult i64* %45, %46
  br i1 %47, label %48, label %83

48:                                               ; preds = %44
  %49 = load i64*, i64** %14, align 8
  %50 = load i64*, i64** %15, align 8
  %51 = call i32 @ip6optlen(i64* %49, i64* %50)
  store i32 %51, i32* %16, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %84

54:                                               ; preds = %48
  %55 = load i64*, i64** %14, align 8
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %11, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %78

59:                                               ; preds = %54
  %60 = load i32, i32* %16, align 4
  %61 = sub nsw i32 %60, 2
  %62 = load i32*, i32** %12, align 8
  store i32 %61, i32* %62, align 4
  %63 = load i64*, i64** %14, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 2
  %65 = bitcast i64* %64 to i8*
  %66 = load i8**, i8*** %13, align 8
  store i8* %65, i8** %66, align 8
  %67 = load i64*, i64** %14, align 8
  %68 = load i32, i32* %16, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i8*, i8** %8, align 8
  %72 = bitcast i8* %71 to i64*
  %73 = ptrtoint i64* %70 to i64
  %74 = ptrtoint i64* %72 to i64
  %75 = sub i64 %73, %74
  %76 = sdiv exact i64 %75, 8
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %7, align 4
  br label %86

78:                                               ; preds = %54
  %79 = load i32, i32* %16, align 4
  %80 = load i64*, i64** %14, align 8
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i64, i64* %80, i64 %81
  store i64* %82, i64** %14, align 8
  br label %44

83:                                               ; preds = %44
  br label %84

84:                                               ; preds = %83, %53
  %85 = load i8**, i8*** %13, align 8
  store i8* null, i8** %85, align 8
  store i32 -1, i32* %7, align 4
  br label %86

86:                                               ; preds = %84, %59, %23
  %87 = load i32, i32* %7, align 4
  ret i32 %87
}

declare dso_local i32 @ip6optlen(i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
