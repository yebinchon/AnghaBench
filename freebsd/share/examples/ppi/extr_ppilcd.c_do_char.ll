; ModuleID = '/home/carl/AnghaBench/freebsd/share/examples/ppi/extr_ppilcd.c_do_char.c'
source_filename = "/home/carl/AnghaBench/freebsd/share/examples/ppi/extr_ppilcd.c_do_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcd_driver = type { i32 (i8)*, i32 (i8)* }

@do_char.esc = internal global i32 0, align 4
@CMD_BKSP = common dso_local global i8 0, align 1
@CMD_CLR = common dso_local global i8 0, align 1
@CMD_NL = common dso_local global i8 0, align 1
@CMD_CR = common dso_local global i8 0, align 1
@CMD_RESET = common dso_local global i8 0, align 1
@CMD_HOME = common dso_local global i8 0, align 1
@vflag = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lcd_driver*, i8)* @do_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_char(%struct.lcd_driver* %0, i8 signext %1) #0 {
  %3 = alloca %struct.lcd_driver*, align 8
  %4 = alloca i8, align 1
  store %struct.lcd_driver* %0, %struct.lcd_driver** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load i32, i32* @do_char.esc, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %58

7:                                                ; preds = %2
  %8 = load i8, i8* %4, align 1
  %9 = sext i8 %8 to i32
  switch i32 %9, label %51 [
    i32 98, label %10
    i32 102, label %16
    i32 110, label %22
    i32 114, label %28
    i32 82, label %34
    i32 118, label %40
    i32 92, label %46
  ]

10:                                               ; preds = %7
  %11 = load %struct.lcd_driver*, %struct.lcd_driver** %3, align 8
  %12 = getelementptr inbounds %struct.lcd_driver, %struct.lcd_driver* %11, i32 0, i32 1
  %13 = load i32 (i8)*, i32 (i8)** %12, align 8
  %14 = load i8, i8* @CMD_BKSP, align 1
  %15 = call i32 %13(i8 signext %14)
  br label %57

16:                                               ; preds = %7
  %17 = load %struct.lcd_driver*, %struct.lcd_driver** %3, align 8
  %18 = getelementptr inbounds %struct.lcd_driver, %struct.lcd_driver* %17, i32 0, i32 1
  %19 = load i32 (i8)*, i32 (i8)** %18, align 8
  %20 = load i8, i8* @CMD_CLR, align 1
  %21 = call i32 %19(i8 signext %20)
  br label %57

22:                                               ; preds = %7
  %23 = load %struct.lcd_driver*, %struct.lcd_driver** %3, align 8
  %24 = getelementptr inbounds %struct.lcd_driver, %struct.lcd_driver* %23, i32 0, i32 1
  %25 = load i32 (i8)*, i32 (i8)** %24, align 8
  %26 = load i8, i8* @CMD_NL, align 1
  %27 = call i32 %25(i8 signext %26)
  br label %57

28:                                               ; preds = %7
  %29 = load %struct.lcd_driver*, %struct.lcd_driver** %3, align 8
  %30 = getelementptr inbounds %struct.lcd_driver, %struct.lcd_driver* %29, i32 0, i32 1
  %31 = load i32 (i8)*, i32 (i8)** %30, align 8
  %32 = load i8, i8* @CMD_CR, align 1
  %33 = call i32 %31(i8 signext %32)
  br label %57

34:                                               ; preds = %7
  %35 = load %struct.lcd_driver*, %struct.lcd_driver** %3, align 8
  %36 = getelementptr inbounds %struct.lcd_driver, %struct.lcd_driver* %35, i32 0, i32 1
  %37 = load i32 (i8)*, i32 (i8)** %36, align 8
  %38 = load i8, i8* @CMD_RESET, align 1
  %39 = call i32 %37(i8 signext %38)
  br label %57

40:                                               ; preds = %7
  %41 = load %struct.lcd_driver*, %struct.lcd_driver** %3, align 8
  %42 = getelementptr inbounds %struct.lcd_driver, %struct.lcd_driver* %41, i32 0, i32 1
  %43 = load i32 (i8)*, i32 (i8)** %42, align 8
  %44 = load i8, i8* @CMD_HOME, align 1
  %45 = call i32 %43(i8 signext %44)
  br label %57

46:                                               ; preds = %7
  %47 = load %struct.lcd_driver*, %struct.lcd_driver** %3, align 8
  %48 = getelementptr inbounds %struct.lcd_driver, %struct.lcd_driver* %47, i32 0, i32 0
  %49 = load i32 (i8)*, i32 (i8)** %48, align 8
  %50 = call i32 %49(i8 signext 92)
  br label %57

51:                                               ; preds = %7
  %52 = load %struct.lcd_driver*, %struct.lcd_driver** %3, align 8
  %53 = getelementptr inbounds %struct.lcd_driver, %struct.lcd_driver* %52, i32 0, i32 1
  %54 = load i32 (i8)*, i32 (i8)** %53, align 8
  %55 = load i8, i8* %4, align 1
  %56 = call i32 %54(i8 signext %55)
  br label %57

57:                                               ; preds = %51, %46, %40, %34, %28, %22, %16, %10
  store i32 0, i32* @do_char.esc, align 4
  br label %78

58:                                               ; preds = %2
  %59 = load i8, i8* %4, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 92
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i32 1, i32* @do_char.esc, align 4
  br label %77

63:                                               ; preds = %58
  %64 = load i64, i64* @vflag, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %63
  %67 = load i8, i8* %4, align 1
  %68 = call i64 @isprint(i8 signext %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %66, %63
  %71 = load %struct.lcd_driver*, %struct.lcd_driver** %3, align 8
  %72 = getelementptr inbounds %struct.lcd_driver, %struct.lcd_driver* %71, i32 0, i32 0
  %73 = load i32 (i8)*, i32 (i8)** %72, align 8
  %74 = load i8, i8* %4, align 1
  %75 = call i32 %73(i8 signext %74)
  br label %76

76:                                               ; preds = %70, %66
  br label %77

77:                                               ; preds = %76, %62
  br label %78

78:                                               ; preds = %77, %57
  ret void
}

declare dso_local i64 @isprint(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
