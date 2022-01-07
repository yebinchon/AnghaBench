; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_machdep.c_user_dbreg_trap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_machdep.c_user_dbreg_trap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DBREG_DR6_BMASK = common dso_local global i32 0, align 4
@VM_MAXUSER_ADDRESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @user_dbreg_trap(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [4 x i64], align 16
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @DBREG_DR6_BMASK, align 4
  %11 = and i32 %9, %10
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %80

15:                                               ; preds = %1
  %16 = call i32 (...) @rdr7()
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = and i32 %17, 255
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %80

21:                                               ; preds = %15
  store i32 0, i32* %6, align 4
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, 1
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = call i64 (...) @rdr0()
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %6, align 4
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 %29
  store i64 %26, i64* %30, align 8
  br label %31

31:                                               ; preds = %25, %21
  %32 = load i32, i32* %5, align 4
  %33 = and i32 %32, 2
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = call i64 (...) @rdr1()
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 %39
  store i64 %36, i64* %40, align 8
  br label %41

41:                                               ; preds = %35, %31
  %42 = load i32, i32* %5, align 4
  %43 = and i32 %42, 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = call i64 (...) @rdr2()
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 %49
  store i64 %46, i64* %50, align 8
  br label %51

51:                                               ; preds = %45, %41
  %52 = load i32, i32* %5, align 4
  %53 = and i32 %52, 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = call i64 (...) @rdr3()
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 %59
  store i64 %56, i64* %60, align 8
  br label %61

61:                                               ; preds = %55, %51
  store i32 0, i32* %8, align 4
  br label %62

62:                                               ; preds = %76, %61
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %79

66:                                               ; preds = %62
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @VM_MAXUSER_ADDRESS, align 8
  %72 = icmp slt i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %2, align 4
  br label %80

75:                                               ; preds = %66
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %8, align 4
  br label %62

79:                                               ; preds = %62
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %79, %73, %20, %14
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @rdr7(...) #1

declare dso_local i64 @rdr0(...) #1

declare dso_local i64 @rdr1(...) #1

declare dso_local i64 @rdr2(...) #1

declare dso_local i64 @rdr3(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
