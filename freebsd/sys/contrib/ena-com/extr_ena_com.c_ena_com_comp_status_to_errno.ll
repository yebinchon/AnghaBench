; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_comp_status_to_errno.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_comp_status_to_errno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"admin command failed[%u]\0A\00", align 1
@ENA_COM_INVAL = common dso_local global i32 0, align 4
@ENA_COM_NO_MEM = common dso_local global i32 0, align 4
@ENA_COM_UNSUPPORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ena_com_comp_status_to_errno to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_com_comp_status_to_errno(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp ne i32 %4, 0
  %6 = zext i1 %5 to i32
  %7 = call i64 @unlikely(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @ena_trc_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %10)
  br label %12

12:                                               ; preds = %9, %1
  %13 = load i32, i32* %3, align 4
  %14 = icmp sgt i32 %13, 129
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i32, i32* @ENA_COM_INVAL, align 4
  store i32 %19, i32* %2, align 4
  br label %30

20:                                               ; preds = %12
  %21 = load i32, i32* %3, align 4
  switch i32 %21, label %29 [
    i32 130, label %22
    i32 131, label %23
    i32 128, label %25
    i32 134, label %27
    i32 132, label %27
    i32 133, label %27
    i32 129, label %27
  ]

22:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %30

23:                                               ; preds = %20
  %24 = load i32, i32* @ENA_COM_NO_MEM, align 4
  store i32 %24, i32* %2, align 4
  br label %30

25:                                               ; preds = %20
  %26 = load i32, i32* @ENA_COM_UNSUPPORTED, align 4
  store i32 %26, i32* %2, align 4
  br label %30

27:                                               ; preds = %20, %20, %20, %20
  %28 = load i32, i32* @ENA_COM_INVAL, align 4
  store i32 %28, i32* %2, align 4
  br label %30

29:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %27, %25, %23, %22, %18
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ena_trc_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
