; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/nameser/extr_ns_parse.c_ns_skiprr.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/nameser/extr_ns_parse.c_ns_skiprr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EMSGSIZE = common dso_local global i32 0, align 4
@NS_INT16SZ = common dso_local global i32 0, align 4
@ns_s_qd = common dso_local global i64 0, align 8
@NS_INT32SZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ns_skiprr(i32* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32*, i32** %5, align 8
  store i32* %12, i32** %9, align 8
  br label %13

13:                                               ; preds = %63, %4
  %14 = load i32, i32* %8, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %66

16:                                               ; preds = %13
  %17 = load i32*, i32** %5, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @dn_skipname(i32* %17, i32* %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* @EMSGSIZE, align 4
  %24 = call i32 @RETERR(i32 %23)
  br label %25

25:                                               ; preds = %22, %16
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @NS_INT16SZ, align 4
  %28 = add nsw i32 %26, %27
  %29 = load i32, i32* @NS_INT16SZ, align 4
  %30 = add nsw i32 %28, %29
  %31 = load i32*, i32** %5, align 8
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  store i32* %33, i32** %5, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* @ns_s_qd, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %62

37:                                               ; preds = %25
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* @NS_INT32SZ, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* @NS_INT16SZ, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32*, i32** %6, align 8
  %46 = icmp ugt i32* %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %37
  %48 = load i32, i32* @EMSGSIZE, align 4
  %49 = call i32 @RETERR(i32 %48)
  br label %50

50:                                               ; preds = %47, %37
  %51 = load i32, i32* @NS_INT32SZ, align 4
  %52 = load i32*, i32** %5, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  store i32* %54, i32** %5, align 8
  %55 = load i32, i32* %11, align 4
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @NS_GET16(i32 %55, i32* %56)
  %58 = load i32, i32* %11, align 4
  %59 = load i32*, i32** %5, align 8
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  store i32* %61, i32** %5, align 8
  br label %62

62:                                               ; preds = %50, %25
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %8, align 4
  br label %13

66:                                               ; preds = %13
  %67 = load i32*, i32** %5, align 8
  %68 = load i32*, i32** %6, align 8
  %69 = icmp ugt i32* %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load i32, i32* @EMSGSIZE, align 4
  %72 = call i32 @RETERR(i32 %71)
  br label %73

73:                                               ; preds = %70, %66
  %74 = load i32*, i32** %5, align 8
  %75 = load i32*, i32** %9, align 8
  %76 = ptrtoint i32* %74 to i64
  %77 = ptrtoint i32* %75 to i64
  %78 = sub i64 %76, %77
  %79 = sdiv exact i64 %78, 4
  %80 = trunc i64 %79 to i32
  ret i32 %80
}

declare dso_local i32 @dn_skipname(i32*, i32*) #1

declare dso_local i32 @RETERR(i32) #1

declare dso_local i32 @NS_GET16(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
