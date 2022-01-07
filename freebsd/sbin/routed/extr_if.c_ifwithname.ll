; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/routed/extr_if.c_ifwithname.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/routed/extr_if.c_ifwithname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.interface = type { i32, i64, i32, %struct.interface* }

@IS_ALIAS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.interface* (i8*, i64)* @ifwithname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.interface* @ifwithname(i8* %0, i64 %1) #0 {
  %3 = alloca %struct.interface*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.interface*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  br label %7

7:                                                ; preds = %48, %2
  %8 = load i8*, i8** %4, align 8
  %9 = call %struct.interface** @nhash(i8* %8)
  %10 = load %struct.interface*, %struct.interface** %9, align 8
  store %struct.interface* %10, %struct.interface** %6, align 8
  br label %11

11:                                               ; preds = %40, %7
  %12 = load %struct.interface*, %struct.interface** %6, align 8
  %13 = icmp ne %struct.interface* %12, null
  br i1 %13, label %14, label %44

14:                                               ; preds = %11
  %15 = load %struct.interface*, %struct.interface** %6, align 8
  %16 = getelementptr inbounds %struct.interface, %struct.interface* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @strcmp(i32 %17, i8* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %39, label %21

21:                                               ; preds = %14
  %22 = load i64, i64* %5, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load %struct.interface*, %struct.interface** %6, align 8
  %26 = getelementptr inbounds %struct.interface, %struct.interface* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @IS_ALIAS, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %24, %21
  %32 = load %struct.interface*, %struct.interface** %6, align 8
  %33 = getelementptr inbounds %struct.interface, %struct.interface* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %5, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31, %24
  %38 = load %struct.interface*, %struct.interface** %6, align 8
  store %struct.interface* %38, %struct.interface** %3, align 8
  br label %50

39:                                               ; preds = %31, %14
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.interface*, %struct.interface** %6, align 8
  %42 = getelementptr inbounds %struct.interface, %struct.interface* %41, i32 0, i32 3
  %43 = load %struct.interface*, %struct.interface** %42, align 8
  store %struct.interface* %43, %struct.interface** %6, align 8
  br label %11

44:                                               ; preds = %11
  %45 = call i64 (...) @IF_RESCAN_DELAY()
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store %struct.interface* null, %struct.interface** %3, align 8
  br label %50

48:                                               ; preds = %44
  %49 = call i32 (...) @ifinit()
  br label %7

50:                                               ; preds = %47, %37
  %51 = load %struct.interface*, %struct.interface** %3, align 8
  ret %struct.interface* %51
}

declare dso_local %struct.interface** @nhash(i8*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i64 @IF_RESCAN_DELAY(...) #1

declare dso_local i32 @ifinit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
