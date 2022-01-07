; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_rom68k-rom.c_rom68k_supply_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_rom68k-rom.c_rom68k_supply_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PS_REGNUM = common dso_local global i32 0, align 4
@PC_REGNUM = common dso_local global i32 0, align 4
@M68K_D0_REGNUM = common dso_local global i32 0, align 4
@M68K_A0_REGNUM = common dso_local global i32 0, align 4
@SP_REGNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*, i32)* @rom68k_supply_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rom68k_supply_register(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 1, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %55

13:                                               ; preds = %4
  %14 = load i8*, i8** %5, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  switch i32 %17, label %54 [
    i32 83, label %18
    i32 80, label %27
    i32 68, label %36
    i32 65, label %45
  ]

18:                                               ; preds = %13
  %19 = load i8*, i8** %5, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 82
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @PS_REGNUM, align 4
  store i32 %25, i32* %10, align 4
  br label %26

26:                                               ; preds = %24, %18
  br label %54

27:                                               ; preds = %13
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 67
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @PC_REGNUM, align 4
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %33, %27
  br label %54

36:                                               ; preds = %13
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 82
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %54

43:                                               ; preds = %36
  %44 = load i32, i32* @M68K_D0_REGNUM, align 4
  store i32 %44, i32* %10, align 4
  store i32 8, i32* %9, align 4
  br label %54

45:                                               ; preds = %13
  %46 = load i8*, i8** %5, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 82
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %54

52:                                               ; preds = %45
  %53 = load i32, i32* @M68K_A0_REGNUM, align 4
  store i32 %53, i32* %10, align 4
  store i32 7, i32* %9, align 4
  br label %54

54:                                               ; preds = %13, %52, %51, %43, %42, %35, %26
  br label %80

55:                                               ; preds = %4
  %56 = load i32, i32* %6, align 4
  %57 = icmp eq i32 %56, 3
  br i1 %57, label %58, label %79

58:                                               ; preds = %55
  %59 = load i8*, i8** %5, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 0
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  switch i32 %62, label %78 [
    i32 73, label %63
  ]

63:                                               ; preds = %58
  %64 = load i8*, i8** %5, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 83
  br i1 %68, label %69, label %77

69:                                               ; preds = %63
  %70 = load i8*, i8** %5, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 2
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 80
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = load i32, i32* @SP_REGNUM, align 4
  store i32 %76, i32* %10, align 4
  br label %77

77:                                               ; preds = %75, %69, %63
  br label %78

78:                                               ; preds = %77, %58
  br label %79

79:                                               ; preds = %78, %55
  br label %80

80:                                               ; preds = %79, %54
  %81 = load i32, i32* %10, align 4
  %82 = icmp sge i32 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %80
  br label %84

84:                                               ; preds = %88, %83
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %9, align 4
  %87 = icmp sgt i32 %85, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %84
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %10, align 4
  %91 = load i8*, i8** %7, align 8
  %92 = call i8* @rom68k_supply_one_register(i32 %89, i8* %91)
  store i8* %92, i8** %7, align 8
  br label %84

93:                                               ; preds = %84
  br label %94

94:                                               ; preds = %93, %80
  ret void
}

declare dso_local i8* @rom68k_supply_one_register(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
