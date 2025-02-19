; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_ip6opt.c_inet6_opt_append.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_ip6opt.c_inet6_opt_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IP6OPT_PAD1 = common dso_local global i32 0, align 4
@IP6OPT_PADN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inet6_opt_append(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i8** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i8** %6, i8*** %15, align 8
  %19 = load i32, i32* %11, align 4
  store i32 %19, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp slt i32 %20, 2
  br i1 %21, label %22, label %23

22:                                               ; preds = %7
  store i32 -1, i32* %8, align 4
  br label %123

23:                                               ; preds = %7
  %24 = load i32, i32* %13, align 4
  %25 = icmp sgt i32 %24, 255
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %13, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26, %23
  store i32 -1, i32* %8, align 4
  br label %123

30:                                               ; preds = %26
  %31 = load i32, i32* %14, align 4
  %32 = icmp ne i32 %31, 1
  br i1 %32, label %33, label %43

33:                                               ; preds = %30
  %34 = load i32, i32* %14, align 4
  %35 = icmp ne i32 %34, 2
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load i32, i32* %14, align 4
  %38 = icmp ne i32 %37, 4
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* %14, align 4
  %41 = icmp ne i32 %40, 8
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 -1, i32* %8, align 4
  br label %123

43:                                               ; preds = %39, %36, %33, %30
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 -1, i32* %8, align 4
  br label %123

48:                                               ; preds = %43
  %49 = load i32, i32* %13, align 4
  %50 = add nsw i32 2, %49
  %51 = load i32, i32* %16, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %16, align 4
  %53 = load i32, i32* %16, align 4
  %54 = load i32, i32* %14, align 4
  %55 = srem i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %48
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* %16, align 4
  %60 = load i32, i32* %14, align 4
  %61 = srem i32 %59, %60
  %62 = sub nsw i32 %58, %61
  store i32 %62, i32* %17, align 4
  br label %63

63:                                               ; preds = %57, %48
  %64 = load i32, i32* %17, align 4
  %65 = load i32, i32* %16, align 4
  %66 = add nsw i32 %65, %64
  store i32 %66, i32* %16, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %63
  %70 = load i32, i32* %16, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp sgt i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  store i32 -1, i32* %8, align 4
  br label %123

74:                                               ; preds = %69, %63
  %75 = load i8*, i8** %9, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %121

77:                                               ; preds = %74
  %78 = load i8*, i8** %9, align 8
  %79 = bitcast i8* %78 to i32*
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  store i32* %82, i32** %18, align 8
  %83 = load i32, i32* %17, align 4
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %85, label %90

85:                                               ; preds = %77
  %86 = load i32, i32* @IP6OPT_PAD1, align 4
  %87 = load i32*, i32** %18, align 8
  store i32 %86, i32* %87, align 4
  %88 = load i32*, i32** %18, align 8
  %89 = getelementptr inbounds i32, i32* %88, i32 1
  store i32* %89, i32** %18, align 8
  br label %111

90:                                               ; preds = %77
  %91 = load i32, i32* %17, align 4
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %110

93:                                               ; preds = %90
  %94 = load i32, i32* @IP6OPT_PADN, align 4
  %95 = load i32*, i32** %18, align 8
  %96 = getelementptr inbounds i32, i32* %95, i32 1
  store i32* %96, i32** %18, align 8
  store i32 %94, i32* %95, align 4
  %97 = load i32, i32* %17, align 4
  %98 = sub nsw i32 %97, 2
  %99 = load i32*, i32** %18, align 8
  %100 = getelementptr inbounds i32, i32* %99, i32 1
  store i32* %100, i32** %18, align 8
  store i32 %98, i32* %99, align 4
  %101 = load i32*, i32** %18, align 8
  %102 = load i32, i32* %17, align 4
  %103 = sub nsw i32 %102, 2
  %104 = call i32 @memset(i32* %101, i32 0, i32 %103)
  %105 = load i32, i32* %17, align 4
  %106 = sub nsw i32 %105, 2
  %107 = load i32*, i32** %18, align 8
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  store i32* %109, i32** %18, align 8
  br label %110

110:                                              ; preds = %93, %90
  br label %111

111:                                              ; preds = %110, %85
  %112 = load i32, i32* %12, align 4
  %113 = load i32*, i32** %18, align 8
  %114 = getelementptr inbounds i32, i32* %113, i32 1
  store i32* %114, i32** %18, align 8
  store i32 %112, i32* %113, align 4
  %115 = load i32, i32* %13, align 4
  %116 = load i32*, i32** %18, align 8
  %117 = getelementptr inbounds i32, i32* %116, i32 1
  store i32* %117, i32** %18, align 8
  store i32 %115, i32* %116, align 4
  %118 = load i32*, i32** %18, align 8
  %119 = bitcast i32* %118 to i8*
  %120 = load i8**, i8*** %15, align 8
  store i8* %119, i8** %120, align 8
  br label %121

121:                                              ; preds = %111, %74
  %122 = load i32, i32* %16, align 4
  store i32 %122, i32* %8, align 4
  br label %123

123:                                              ; preds = %121, %73, %47, %42, %29, %22
  %124 = load i32, i32* %8, align 4
  ret i32 %124
}

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
