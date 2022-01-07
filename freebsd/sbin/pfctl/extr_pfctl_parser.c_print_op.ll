; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_parser.c_print_op.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_parser.c_print_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PF_OP_IRG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c" %s >< %s\00", align 1
@PF_OP_XRG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c" %s <> %s\00", align 1
@PF_OP_EQ = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c" = %s\00", align 1
@PF_OP_NE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c" != %s\00", align 1
@PF_OP_LT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c" < %s\00", align 1
@PF_OP_LE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c" <= %s\00", align 1
@PF_OP_GT = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c" > %s\00", align 1
@PF_OP_GE = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [7 x i8] c" >= %s\00", align 1
@PF_OP_RRG = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [7 x i8] c" %s:%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_op(i64 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @PF_OP_IRG, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load i8*, i8** %5, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %11, i8* %12)
  br label %80

14:                                               ; preds = %3
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* @PF_OP_XRG, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i8*, i8** %5, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %19, i8* %20)
  br label %79

22:                                               ; preds = %14
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* @PF_OP_EQ, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %27)
  br label %78

29:                                               ; preds = %22
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* @PF_OP_NE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %34)
  br label %77

36:                                               ; preds = %29
  %37 = load i64, i64* %4, align 8
  %38 = load i64, i64* @PF_OP_LT, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %41)
  br label %76

43:                                               ; preds = %36
  %44 = load i64, i64* %4, align 8
  %45 = load i64, i64* @PF_OP_LE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i8*, i8** %5, align 8
  %49 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %48)
  br label %75

50:                                               ; preds = %43
  %51 = load i64, i64* %4, align 8
  %52 = load i64, i64* @PF_OP_GT, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i8*, i8** %5, align 8
  %56 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %55)
  br label %74

57:                                               ; preds = %50
  %58 = load i64, i64* %4, align 8
  %59 = load i64, i64* @PF_OP_GE, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i8*, i8** %5, align 8
  %63 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %62)
  br label %73

64:                                               ; preds = %57
  %65 = load i64, i64* %4, align 8
  %66 = load i64, i64* @PF_OP_RRG, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load i8*, i8** %5, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* %69, i8* %70)
  br label %72

72:                                               ; preds = %68, %64
  br label %73

73:                                               ; preds = %72, %61
  br label %74

74:                                               ; preds = %73, %54
  br label %75

75:                                               ; preds = %74, %47
  br label %76

76:                                               ; preds = %75, %40
  br label %77

77:                                               ; preds = %76, %33
  br label %78

78:                                               ; preds = %77, %26
  br label %79

79:                                               ; preds = %78, %18
  br label %80

80:                                               ; preds = %79, %10
  ret void
}

declare dso_local i32 @printf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
