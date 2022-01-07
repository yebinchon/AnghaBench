; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tw.init.c_tw_cmd_alias.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tw.init.c_tw_cmd_alias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varent = type { %struct.varent*, %struct.varent*, i64, %struct.varent* }

@aliases = common dso_local global %struct.varent zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @tw_cmd_alias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tw_cmd_alias() #0 {
  %1 = alloca %struct.varent*, align 8
  %2 = alloca %struct.varent*, align 8
  store %struct.varent* @aliases, %struct.varent** %1, align 8
  br label %3

3:                                                ; preds = %35, %0
  br label %4

4:                                                ; preds = %9, %3
  %5 = load %struct.varent*, %struct.varent** %1, align 8
  %6 = getelementptr inbounds %struct.varent, %struct.varent* %5, i32 0, i32 3
  %7 = load %struct.varent*, %struct.varent** %6, align 8
  %8 = icmp ne %struct.varent* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = load %struct.varent*, %struct.varent** %1, align 8
  %11 = getelementptr inbounds %struct.varent, %struct.varent* %10, i32 0, i32 3
  %12 = load %struct.varent*, %struct.varent** %11, align 8
  store %struct.varent* %12, %struct.varent** %1, align 8
  br label %4

13:                                               ; preds = %4
  br label %14

14:                                               ; preds = %51, %13
  %15 = load %struct.varent*, %struct.varent** %1, align 8
  %16 = getelementptr inbounds %struct.varent, %struct.varent* %15, i32 0, i32 0
  %17 = load %struct.varent*, %struct.varent** %16, align 8
  %18 = icmp eq %struct.varent* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  ret void

20:                                               ; preds = %14
  %21 = load %struct.varent*, %struct.varent** %1, align 8
  %22 = getelementptr inbounds %struct.varent, %struct.varent* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.varent*, %struct.varent** %1, align 8
  %27 = getelementptr inbounds %struct.varent, %struct.varent* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @tw_cmd_add(i64 %28)
  br label %30

30:                                               ; preds = %25, %20
  %31 = load %struct.varent*, %struct.varent** %1, align 8
  %32 = getelementptr inbounds %struct.varent, %struct.varent* %31, i32 0, i32 1
  %33 = load %struct.varent*, %struct.varent** %32, align 8
  %34 = icmp ne %struct.varent* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load %struct.varent*, %struct.varent** %1, align 8
  %37 = getelementptr inbounds %struct.varent, %struct.varent* %36, i32 0, i32 1
  %38 = load %struct.varent*, %struct.varent** %37, align 8
  store %struct.varent* %38, %struct.varent** %1, align 8
  br label %3

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %45, %39
  %41 = load %struct.varent*, %struct.varent** %1, align 8
  store %struct.varent* %41, %struct.varent** %2, align 8
  %42 = load %struct.varent*, %struct.varent** %1, align 8
  %43 = getelementptr inbounds %struct.varent, %struct.varent* %42, i32 0, i32 0
  %44 = load %struct.varent*, %struct.varent** %43, align 8
  store %struct.varent* %44, %struct.varent** %1, align 8
  br label %45

45:                                               ; preds = %40
  %46 = load %struct.varent*, %struct.varent** %1, align 8
  %47 = getelementptr inbounds %struct.varent, %struct.varent* %46, i32 0, i32 1
  %48 = load %struct.varent*, %struct.varent** %47, align 8
  %49 = load %struct.varent*, %struct.varent** %2, align 8
  %50 = icmp eq %struct.varent* %48, %49
  br i1 %50, label %40, label %51

51:                                               ; preds = %45
  br label %14
}

declare dso_local i32 @tw_cmd_add(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
