; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_optimize.c_atomuse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_optimize.c_atomuse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmt = type { i32, i32 }

@NOP = common dso_local global i32 0, align 4
@BPF_A = common dso_local global i32 0, align 4
@A_ATOM = common dso_local global i32 0, align 4
@BPF_X = common dso_local global i32 0, align 4
@X_ATOM = common dso_local global i32 0, align 4
@BPF_IND = common dso_local global i32 0, align 4
@BPF_MEM = common dso_local global i32 0, align 4
@AX_ATOM = common dso_local global i32 0, align 4
@BPF_TXA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stmt*)* @atomuse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atomuse(%struct.stmt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stmt*, align 8
  %4 = alloca i32, align 4
  store %struct.stmt* %0, %struct.stmt** %3, align 8
  %5 = load %struct.stmt*, %struct.stmt** %3, align 8
  %6 = getelementptr inbounds %struct.stmt, %struct.stmt* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @NOP, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %81

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @BPF_CLASS(i32 %13)
  switch i32 %14, label %79 [
    i32 130, label %15
    i32 133, label %34
    i32 132, label %34
    i32 129, label %55
    i32 128, label %57
    i32 134, label %59
    i32 135, label %59
    i32 131, label %68
  ]

15:                                               ; preds = %12
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @BPF_RVAL(i32 %16)
  %18 = load i32, i32* @BPF_A, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @A_ATOM, align 4
  br label %32

22:                                               ; preds = %15
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @BPF_RVAL(i32 %23)
  %25 = load i32, i32* @BPF_X, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* @X_ATOM, align 4
  br label %30

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29, %27
  %31 = phi i32 [ %28, %27 ], [ -1, %29 ]
  br label %32

32:                                               ; preds = %30, %20
  %33 = phi i32 [ %21, %20 ], [ %31, %30 ]
  store i32 %33, i32* %2, align 4
  br label %81

34:                                               ; preds = %12, %12
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @BPF_MODE(i32 %35)
  %37 = load i32, i32* @BPF_IND, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @X_ATOM, align 4
  br label %53

41:                                               ; preds = %34
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @BPF_MODE(i32 %42)
  %44 = load i32, i32* @BPF_MEM, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load %struct.stmt*, %struct.stmt** %3, align 8
  %48 = getelementptr inbounds %struct.stmt, %struct.stmt* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  br label %51

50:                                               ; preds = %41
  br label %51

51:                                               ; preds = %50, %46
  %52 = phi i32 [ %49, %46 ], [ -1, %50 ]
  br label %53

53:                                               ; preds = %51, %39
  %54 = phi i32 [ %40, %39 ], [ %52, %51 ]
  store i32 %54, i32* %2, align 4
  br label %81

55:                                               ; preds = %12
  %56 = load i32, i32* @A_ATOM, align 4
  store i32 %56, i32* %2, align 4
  br label %81

57:                                               ; preds = %12
  %58 = load i32, i32* @X_ATOM, align 4
  store i32 %58, i32* %2, align 4
  br label %81

59:                                               ; preds = %12, %12
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @BPF_SRC(i32 %60)
  %62 = load i32, i32* @BPF_X, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i32, i32* @AX_ATOM, align 4
  store i32 %65, i32* %2, align 4
  br label %81

66:                                               ; preds = %59
  %67 = load i32, i32* @A_ATOM, align 4
  store i32 %67, i32* %2, align 4
  br label %81

68:                                               ; preds = %12
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @BPF_MISCOP(i32 %69)
  %71 = load i32, i32* @BPF_TXA, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i32, i32* @X_ATOM, align 4
  br label %77

75:                                               ; preds = %68
  %76 = load i32, i32* @A_ATOM, align 4
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i32 [ %74, %73 ], [ %76, %75 ]
  store i32 %78, i32* %2, align 4
  br label %81

79:                                               ; preds = %12
  %80 = call i32 (...) @abort() #3
  unreachable

81:                                               ; preds = %77, %66, %64, %57, %55, %53, %32, %11
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @BPF_CLASS(i32) #1

declare dso_local i32 @BPF_RVAL(i32) #1

declare dso_local i32 @BPF_MODE(i32) #1

declare dso_local i32 @BPF_SRC(i32) #1

declare dso_local i32 @BPF_MISCOP(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
