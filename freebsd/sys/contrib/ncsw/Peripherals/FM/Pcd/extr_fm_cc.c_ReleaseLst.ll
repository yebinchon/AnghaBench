; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_ReleaseLst.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_ReleaseLst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ReleaseLst(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  store i32* null, i32** %3, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i32 @NCSW_LIST_IsEmpty(i32* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %1
  %8 = load i32*, i32** %2, align 8
  %9 = call i32* @DequeueAdditionalInfoFromRelevantLst(i32* %8)
  store i32* %9, i32** %3, align 8
  br label %10

10:                                               ; preds = %13, %7
  %11 = load i32*, i32** %3, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @XX_Free(i32* %14)
  %16 = load i32*, i32** %2, align 8
  %17 = call i32* @DequeueAdditionalInfoFromRelevantLst(i32* %16)
  store i32* %17, i32** %3, align 8
  br label %10

18:                                               ; preds = %10
  br label %19

19:                                               ; preds = %18, %1
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 @NCSW_LIST_Del(i32* %20)
  ret void
}

declare dso_local i32 @NCSW_LIST_IsEmpty(i32*) #1

declare dso_local i32* @DequeueAdditionalInfoFromRelevantLst(i32*) #1

declare dso_local i32 @XX_Free(i32*) #1

declare dso_local i32 @NCSW_LIST_Del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
