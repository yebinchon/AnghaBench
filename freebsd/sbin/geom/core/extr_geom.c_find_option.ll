; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/geom/core/extr_geom.c_find_option.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/geom/core/extr_geom.c_find_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_option = type { i8, i32* }
%struct.g_command = type { %struct.g_option* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.g_option* (%struct.g_command*, i8)* @find_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.g_option* @find_option(%struct.g_command* %0, i8 signext %1) #0 {
  %3 = alloca %struct.g_option*, align 8
  %4 = alloca %struct.g_command*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.g_option*, align 8
  %7 = alloca i32, align 4
  store %struct.g_command* %0, %struct.g_command** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %31, %2
  %9 = load %struct.g_command*, %struct.g_command** %4, align 8
  %10 = getelementptr inbounds %struct.g_command, %struct.g_command* %9, i32 0, i32 0
  %11 = load %struct.g_option*, %struct.g_option** %10, align 8
  %12 = load i32, i32* %7, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.g_option, %struct.g_option* %11, i64 %13
  store %struct.g_option* %14, %struct.g_option** %6, align 8
  %15 = load %struct.g_option*, %struct.g_option** %6, align 8
  %16 = getelementptr inbounds %struct.g_option, %struct.g_option* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %8
  store %struct.g_option* null, %struct.g_option** %3, align 8
  br label %34

20:                                               ; preds = %8
  %21 = load %struct.g_option*, %struct.g_option** %6, align 8
  %22 = getelementptr inbounds %struct.g_option, %struct.g_option* %21, i32 0, i32 0
  %23 = load i8, i8* %22, align 8
  %24 = sext i8 %23 to i32
  %25 = load i8, i8* %5, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load %struct.g_option*, %struct.g_option** %6, align 8
  store %struct.g_option* %29, %struct.g_option** %3, align 8
  br label %34

30:                                               ; preds = %20
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %7, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %7, align 4
  br label %8

34:                                               ; preds = %28, %19
  %35 = load %struct.g_option*, %struct.g_option** %3, align 8
  ret %struct.g_option* %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
