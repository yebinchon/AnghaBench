; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifconfig.c_cmd_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifconfig.c_cmd_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd = type { i64, i32, %struct.cmd* }

@cmds = common dso_local global %struct.cmd* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cmd* (i8*, i32)* @cmd_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cmd* @cmd_lookup(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.cmd*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cmd*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.cmd*, %struct.cmd** @cmds, align 8
  store %struct.cmd* %7, %struct.cmd** %6, align 8
  br label %8

8:                                                ; preds = %39, %2
  %9 = load %struct.cmd*, %struct.cmd** %6, align 8
  %10 = icmp ne %struct.cmd* %9, null
  br i1 %10, label %11, label %43

11:                                               ; preds = %8
  %12 = load i8*, i8** %4, align 8
  %13 = load %struct.cmd*, %struct.cmd** %6, align 8
  %14 = getelementptr inbounds %struct.cmd, %struct.cmd* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @strcmp(i8* %12, i32 %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %38

18:                                               ; preds = %11
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = load %struct.cmd*, %struct.cmd** %6, align 8
  %23 = getelementptr inbounds %struct.cmd, %struct.cmd* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load %struct.cmd*, %struct.cmd** %6, align 8
  store %struct.cmd* %27, %struct.cmd** %3, align 8
  br label %44

28:                                               ; preds = %21
  br label %37

29:                                               ; preds = %18
  %30 = load %struct.cmd*, %struct.cmd** %6, align 8
  %31 = getelementptr inbounds %struct.cmd, %struct.cmd* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = load %struct.cmd*, %struct.cmd** %6, align 8
  store %struct.cmd* %35, %struct.cmd** %3, align 8
  br label %44

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36, %28
  br label %38

38:                                               ; preds = %37, %11
  br label %39

39:                                               ; preds = %38
  %40 = load %struct.cmd*, %struct.cmd** %6, align 8
  %41 = getelementptr inbounds %struct.cmd, %struct.cmd* %40, i32 0, i32 2
  %42 = load %struct.cmd*, %struct.cmd** %41, align 8
  store %struct.cmd* %42, %struct.cmd** %6, align 8
  br label %8

43:                                               ; preds = %8
  store %struct.cmd* null, %struct.cmd** %3, align 8
  br label %44

44:                                               ; preds = %43, %34, %26
  %45 = load %struct.cmd*, %struct.cmd** %3, align 8
  ret %struct.cmd* %45
}

declare dso_local i64 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
