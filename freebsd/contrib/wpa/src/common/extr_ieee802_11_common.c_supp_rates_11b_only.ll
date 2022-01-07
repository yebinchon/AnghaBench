; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_ieee802_11_common.c_supp_rates_11b_only.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_ieee802_11_common.c_supp_rates_11b_only.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802_11_elems = type { i32, i32, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @supp_rates_11b_only(%struct.ieee802_11_elems* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee802_11_elems*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ieee802_11_elems* %0, %struct.ieee802_11_elems** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %3, align 8
  %8 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %7, i32 0, i32 3
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %3, align 8
  %13 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %94

17:                                               ; preds = %11, %1
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %48, %17
  %19 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %3, align 8
  %20 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %3, align 8
  %26 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br label %29

29:                                               ; preds = %23, %18
  %30 = phi i1 [ false, %18 ], [ %28, %23 ]
  br i1 %30, label %31, label %51

31:                                               ; preds = %29
  %32 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %3, align 8
  %33 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @is_11b(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %31
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  br label %47

44:                                               ; preds = %31
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %44, %41
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %18

51:                                               ; preds = %29
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %82, %51
  %53 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %3, align 8
  %54 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %3, align 8
  %60 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp slt i32 %58, %61
  br label %63

63:                                               ; preds = %57, %52
  %64 = phi i1 [ false, %52 ], [ %62, %57 ]
  br i1 %64, label %65, label %85

65:                                               ; preds = %63
  %66 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %3, align 8
  %67 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @is_11b(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %65
  %76 = load i32, i32* %4, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %4, align 4
  br label %81

78:                                               ; preds = %65
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %78, %75
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %6, align 4
  br label %52

85:                                               ; preds = %63
  %86 = load i32, i32* %4, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i32, i32* %5, align 4
  %90 = icmp eq i32 %89, 0
  br label %91

91:                                               ; preds = %88, %85
  %92 = phi i1 [ false, %85 ], [ %90, %88 ]
  %93 = zext i1 %92 to i32
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %91, %16
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i64 @is_11b(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
