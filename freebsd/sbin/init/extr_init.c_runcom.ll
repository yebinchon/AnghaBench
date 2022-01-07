; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/init/extr_init.c_runcom.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/init/extr_init.c_runcom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_PATH_RUNCOM = common dso_local global i32 0, align 4
@AUTOBOOT = common dso_local global i32 0, align 4
@runcom_mode = common dso_local global i32 0, align 4
@read_ttys = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @runcom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @runcom() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = load i32, i32* @_PATH_RUNCOM, align 4
  %4 = call i32* @run_script(i32 %3)
  store i32* %4, i32** %2, align 8
  %5 = icmp ne i32* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = load i32*, i32** %2, align 8
  store i32* %7, i32** %1, align 8
  br label %13

8:                                                ; preds = %0
  %9 = load i32, i32* @AUTOBOOT, align 4
  store i32 %9, i32* @runcom_mode, align 4
  %10 = load i32, i32* @read_ttys, align 4
  %11 = sext i32 %10 to i64
  %12 = inttoptr i64 %11 to i32*
  store i32* %12, i32** %1, align 8
  br label %13

13:                                               ; preds = %8, %6
  %14 = load i32*, i32** %1, align 8
  ret i32* %14
}

declare dso_local i32* @run_script(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
