; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/llvm/lib/Support/extr_regcomp.c_p_count.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/llvm/lib/Support/extr_regcomp.c_p_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse = type { i32 }

@DUPMAX = common dso_local global i32 0, align 4
@REG_BADBR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parse*)* @p_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p_count(%struct.parse* %0) #0 {
  %2 = alloca %struct.parse*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.parse* %0, %struct.parse** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %19, %1
  %6 = call i64 (...) @MORE()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %5
  %9 = call i64 (...) @PEEK()
  %10 = trunc i64 %9 to i32
  %11 = call i64 @isdigit(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @DUPMAX, align 4
  %16 = icmp sle i32 %14, %15
  br label %17

17:                                               ; preds = %13, %8, %5
  %18 = phi i1 [ false, %8 ], [ false, %5 ], [ %16, %13 ]
  br i1 %18, label %19, label %27

19:                                               ; preds = %17
  %20 = load i32, i32* %3, align 4
  %21 = mul nsw i32 %20, 10
  %22 = call i32 (...) @GETNEXT()
  %23 = sub nsw i32 %22, 48
  %24 = add nsw i32 %21, %23
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %5

27:                                               ; preds = %17
  %28 = load i32, i32* %4, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @DUPMAX, align 4
  %33 = icmp sle i32 %31, %32
  br label %34

34:                                               ; preds = %30, %27
  %35 = phi i1 [ false, %27 ], [ %33, %30 ]
  %36 = zext i1 %35 to i32
  %37 = load i32, i32* @REG_BADBR, align 4
  %38 = call i32 @REQUIRE(i32 %36, i32 %37)
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i64 @MORE(...) #1

declare dso_local i64 @isdigit(i32) #1

declare dso_local i64 @PEEK(...) #1

declare dso_local i32 @GETNEXT(...) #1

declare dso_local i32 @REQUIRE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
