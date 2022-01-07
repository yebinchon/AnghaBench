; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-isakmp.c_isakmp_rfc3948_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-isakmp.c_isakmp_rfc3948_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"isakmp-nat-keep-alive\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"NONESP-encap: \00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"UDP-encap: \00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"[|isakmp]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isakmp_rfc3948_print(i32* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ND_TCHECK(i32 %15)
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %27

19:                                               ; preds = %4
  %20 = load i32*, i32** %6, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 255
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @ND_PRINT(i32* bitcast ([22 x i8]* @.str to i32*))
  br label %97

27:                                               ; preds = %19, %4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 4
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  br label %94

31:                                               ; preds = %27
  %32 = load i32*, i32** %6, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ND_TCHECK(i32 %34)
  %36 = load i32*, i32** %6, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %65

40:                                               ; preds = %31
  %41 = load i32*, i32** %6, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %65

45:                                               ; preds = %40
  %46 = load i32*, i32** %6, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %45
  %51 = load i32*, i32** %6, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 3
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %50
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @ND_PRINT(i32* bitcast ([15 x i8]* @.str.1 to i32*))
  %58 = load i32*, i32** %5, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 4
  %61 = load i32, i32* %7, align 4
  %62 = sub nsw i32 %61, 4
  %63 = load i32*, i32** %8, align 8
  %64 = call i32 @isakmp_print(i32* %58, i32* %60, i32 %62, i32* %63)
  br label %97

65:                                               ; preds = %50, %45, %40, %31
  %66 = load i32*, i32** %5, align 8
  %67 = call i32 @ND_PRINT(i32* bitcast ([12 x i8]* @.str.2 to i32*))
  %68 = load i32*, i32** %5, align 8
  %69 = load i32*, i32** %6, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load i32*, i32** %8, align 8
  %72 = call i32 @esp_print(i32* %68, i32* %69, i32 %70, i32* %71, i32* %10, i32* %11)
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp sle i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %65
  br label %97

76:                                               ; preds = %65
  %77 = load i32, i32* %12, align 4
  %78 = load i32*, i32** %6, align 8
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  store i32* %80, i32** %6, align 8
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %81, %82
  %84 = load i32, i32* %7, align 4
  %85 = sub nsw i32 %84, %83
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %10, align 4
  %87 = and i32 %86, 255
  store i32 %87, i32* %9, align 4
  %88 = load i32*, i32** %5, align 8
  %89 = load i32*, i32** %6, align 8
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* %9, align 4
  %92 = load i32*, i32** %8, align 8
  %93 = call i32 @ip_print_inner(i32* %88, i32* %89, i32 %90, i32 %91, i32* %92)
  br label %97

94:                                               ; preds = %30
  %95 = load i32*, i32** %5, align 8
  %96 = call i32 @ND_PRINT(i32* bitcast ([10 x i8]* @.str.3 to i32*))
  br label %97

97:                                               ; preds = %94, %76, %75, %55, %24
  ret void
}

declare dso_local i32 @ND_TCHECK(i32) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @isakmp_print(i32*, i32*, i32, i32*) #1

declare dso_local i32 @esp_print(i32*, i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @ip_print_inner(i32*, i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
