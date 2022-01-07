; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_ip6opt.c_inet6_opt_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_ip6opt.c_inet6_opt_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6_hbh = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inet6_opt_next(i8* %0, i32 %1, i32 %2, i32* %3, i32* %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
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
  br label %97

24:                                               ; preds = %19
  %25 = load i8*, i8** %8, align 8
  %26 = bitcast i8* %25 to i32*
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  store i32* %29, i32** %15, align 8
  %30 = load i32, i32* %10, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %24
  %33 = load i8*, i8** %8, align 8
  %34 = bitcast i8* %33 to %struct.ip6_hbh*
  %35 = getelementptr inbounds %struct.ip6_hbh, %struct.ip6_hbh* %34, i64 1
  %36 = bitcast %struct.ip6_hbh* %35 to i32*
  store i32* %36, i32** %14, align 8
  br label %43

37:                                               ; preds = %24
  %38 = load i8*, i8** %8, align 8
  %39 = bitcast i8* %38 to i32*
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32* %42, i32** %14, align 8
  br label %43

43:                                               ; preds = %37, %32
  br label %44

44:                                               ; preds = %93, %43
  %45 = load i32*, i32** %14, align 8
  %46 = load i32*, i32** %15, align 8
  %47 = icmp ult i32* %45, %46
  br i1 %47, label %48, label %94

48:                                               ; preds = %44
  %49 = load i32*, i32** %14, align 8
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %65 [
    i32 129, label %51
    i32 128, label %54
  ]

51:                                               ; preds = %48
  %52 = load i32*, i32** %14, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** %14, align 8
  br label %93

54:                                               ; preds = %48
  %55 = load i32*, i32** %14, align 8
  %56 = load i32*, i32** %15, align 8
  %57 = call i32 @ip6optlen(i32* %55, i32* %56)
  store i32 %57, i32* %16, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %95

60:                                               ; preds = %54
  %61 = load i32, i32* %16, align 4
  %62 = load i32*, i32** %14, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  store i32* %64, i32** %14, align 8
  br label %93

65:                                               ; preds = %48
  %66 = load i32*, i32** %14, align 8
  %67 = load i32*, i32** %15, align 8
  %68 = call i32 @ip6optlen(i32* %66, i32* %67)
  store i32 %68, i32* %16, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %95

71:                                               ; preds = %65
  %72 = load i32*, i32** %14, align 8
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %11, align 8
  store i32 %73, i32* %74, align 4
  %75 = load i32, i32* %16, align 4
  %76 = sub nsw i32 %75, 2
  %77 = load i32*, i32** %12, align 8
  store i32 %76, i32* %77, align 4
  %78 = load i32*, i32** %14, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 2
  %80 = bitcast i32* %79 to i8*
  %81 = load i8**, i8*** %13, align 8
  store i8* %80, i8** %81, align 8
  %82 = load i32*, i32** %14, align 8
  %83 = load i32, i32* %16, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i8*, i8** %8, align 8
  %87 = bitcast i8* %86 to i32*
  %88 = ptrtoint i32* %85 to i64
  %89 = ptrtoint i32* %87 to i64
  %90 = sub i64 %88, %89
  %91 = sdiv exact i64 %90, 4
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %7, align 4
  br label %97

93:                                               ; preds = %60, %51
  br label %44

94:                                               ; preds = %44
  br label %95

95:                                               ; preds = %94, %70, %59
  %96 = load i8**, i8*** %13, align 8
  store i8* null, i8** %96, align 8
  store i32 -1, i32* %7, align 4
  br label %97

97:                                               ; preds = %95, %71, %23
  %98 = load i32, i32* %7, align 4
  ret i32 %98
}

declare dso_local i32 @ip6optlen(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
