; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_control.c_setac_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_control.c_setac_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64 }

@setac_locked.lastctime = internal global i64 0, align 8
@ptrmoved = common dso_local global i32 0, align 4
@fp = common dso_local global i32* null, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @setac_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setac_locked() #0 {
  %1 = alloca %struct.stat, align 8
  store i32 1, i32* @ptrmoved, align 4
  %2 = load i32*, i32** @fp, align 8
  %3 = icmp ne i32* %2, null
  br i1 %3, label %4, label %25

4:                                                ; preds = %0
  %5 = load i32*, i32** @fp, align 8
  %6 = call i32 @fileno(i32* %5)
  %7 = call i64 @fstat(i32 %6, %struct.stat* %1)
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  br label %18

10:                                               ; preds = %4
  %11 = load i64, i64* @setac_locked.lastctime, align 8
  %12 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %11, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* @setac_locked.lastctime, align 8
  br label %18

18:                                               ; preds = %15, %9
  %19 = load i32*, i32** @fp, align 8
  %20 = call i32 @fclose(i32* %19)
  store i32* null, i32** @fp, align 8
  br label %25

21:                                               ; preds = %10
  %22 = load i32*, i32** @fp, align 8
  %23 = load i32, i32* @SEEK_SET, align 4
  %24 = call i32 @fseek(i32* %22, i32 0, i32 %23)
  br label %25

25:                                               ; preds = %18, %21, %0
  ret void
}

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
