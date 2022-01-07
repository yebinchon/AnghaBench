; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_groupaccess.c_ga_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_groupaccess.c_ga_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ngroups = common dso_local global i32 0, align 4
@groups_byname = common dso_local global i32***** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ga_free() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @ngroups, align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %23

4:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %17, %4
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @ngroups, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %20

9:                                                ; preds = %5
  %10 = load i32*****, i32****** @groups_byname, align 8
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32****, i32***** %10, i64 %12
  %14 = load i32****, i32***** %13, align 8
  %15 = bitcast i32**** %14 to i32*****
  %16 = call i32 @free(i32***** %15)
  br label %17

17:                                               ; preds = %9
  %18 = load i32, i32* %1, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %1, align 4
  br label %5

20:                                               ; preds = %5
  store i32 0, i32* @ngroups, align 4
  %21 = load i32*****, i32****** @groups_byname, align 8
  %22 = call i32 @free(i32***** %21)
  br label %23

23:                                               ; preds = %20, %0
  ret void
}

declare dso_local i32 @free(i32*****) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
