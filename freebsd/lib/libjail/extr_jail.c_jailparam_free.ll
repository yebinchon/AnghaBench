; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libjail/extr_jail.c_jailparam_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libjail/extr_jail.c_jailparam_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jailparam = type { i32, i32, i32 }

@JP_RAWVALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jailparam_free(%struct.jailparam* %0, i32 %1) #0 {
  %3 = alloca %struct.jailparam*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.jailparam* %0, %struct.jailparam** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %36, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %39

10:                                               ; preds = %6
  %11 = load %struct.jailparam*, %struct.jailparam** %3, align 8
  %12 = load i32, i32* %5, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.jailparam, %struct.jailparam* %11, i64 %13
  %15 = getelementptr inbounds %struct.jailparam, %struct.jailparam* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @free(i32 %16)
  %18 = load %struct.jailparam*, %struct.jailparam** %3, align 8
  %19 = load i32, i32* %5, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.jailparam, %struct.jailparam* %18, i64 %20
  %22 = getelementptr inbounds %struct.jailparam, %struct.jailparam* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @JP_RAWVALUE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %10
  %28 = load %struct.jailparam*, %struct.jailparam** %3, align 8
  %29 = load i32, i32* %5, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.jailparam, %struct.jailparam* %28, i64 %30
  %32 = getelementptr inbounds %struct.jailparam, %struct.jailparam* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @free(i32 %33)
  br label %35

35:                                               ; preds = %27, %10
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %5, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %6

39:                                               ; preds = %6
  ret void
}

declare dso_local i32 @free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
