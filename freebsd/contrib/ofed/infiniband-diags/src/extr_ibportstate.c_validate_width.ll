; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibportstate.c_validate_width.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibportstate.c_validate_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [60 x i8] c"Peer ports operating at active width %d rather than 8 (12x)\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"Peer ports operating at active width %d rather than 4 (8x)\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"Peer ports operating at active width %d rather than 2 (4x)\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"Peer ports operating at active width %d rather than 16 (2x)\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"Peer ports operating at active width %d rather than 1 (1x)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @validate_width to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @validate_width(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* %5, align 4
  %9 = and i32 %7, %8
  %10 = and i32 %9, 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 8
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @IBWARN(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %18

18:                                               ; preds = %15, %12
  br label %75

19:                                               ; preds = %3
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %20, %21
  %23 = and i32 %22, 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 4
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @IBWARN(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %28, %25
  br label %74

32:                                               ; preds = %19
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %5, align 4
  %35 = and i32 %33, %34
  %36 = and i32 %35, 2
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 2
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @IBWARN(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %41, %38
  br label %73

45:                                               ; preds = %32
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* %5, align 4
  %48 = and i32 %46, %47
  %49 = and i32 %48, 16
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %45
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 16
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @IBWARN(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %54, %51
  br label %72

58:                                               ; preds = %45
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* %5, align 4
  %61 = and i32 %59, %60
  %62 = and i32 %61, 1
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %58
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 1
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @IBWARN(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %67, %64
  br label %71

71:                                               ; preds = %70, %58
  br label %72

72:                                               ; preds = %71, %57
  br label %73

73:                                               ; preds = %72, %44
  br label %74

74:                                               ; preds = %73, %31
  br label %75

75:                                               ; preds = %74, %18
  ret void
}

declare dso_local i32 @IBWARN(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
