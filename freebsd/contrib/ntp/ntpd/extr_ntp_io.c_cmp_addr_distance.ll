; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_io.c_cmp_addr_distance.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_io.c_cmp_addr_distance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @cmp_addr_distance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmp_addr_distance(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i64 @AF(i32* %7)
  %9 = load i32*, i32** %5, align 8
  %10 = call i64 @AF(i32* %9)
  %11 = icmp eq i64 %8, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @REQUIRE(i32 %12)
  %14 = load i32*, i32** %4, align 8
  %15 = call i64 @IS_IPV4(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %2
  %18 = load i32*, i32** %4, align 8
  %19 = call i64 @SRCADR(i32* %18)
  %20 = load i32*, i32** %5, align 8
  %21 = call i64 @SRCADR(i32* %20)
  %22 = icmp slt i64 %19, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 -1, i32* %3, align 4
  br label %72

24:                                               ; preds = %17
  %25 = load i32*, i32** %4, align 8
  %26 = call i64 @SRCADR(i32* %25)
  %27 = load i32*, i32** %5, align 8
  %28 = call i64 @SRCADR(i32* %27)
  %29 = icmp eq i64 %26, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %72

31:                                               ; preds = %24
  store i32 1, i32* %3, align 4
  br label %72

32:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %68, %32
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 8
  br i1 %35, label %36, label %71

36:                                               ; preds = %33
  %37 = load i32*, i32** %4, align 8
  %38 = call i64* @NSRCADR6(i32* %37)
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = call i64* @NSRCADR6(i32* %43)
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = icmp slt i64 %42, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %36
  store i32 -1, i32* %3, align 4
  br label %72

51:                                               ; preds = %36
  %52 = load i32*, i32** %4, align 8
  %53 = call i64* @NSRCADR6(i32* %52)
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = call i64* @NSRCADR6(i32* %58)
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = icmp sgt i64 %57, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %51
  store i32 1, i32* %3, align 4
  br label %72

66:                                               ; preds = %51
  br label %67

67:                                               ; preds = %66
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %33

71:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %65, %50, %31, %30, %23
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i64 @AF(i32*) #1

declare dso_local i64 @IS_IPV4(i32*) #1

declare dso_local i64 @SRCADR(i32*) #1

declare dso_local i64* @NSRCADR6(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
