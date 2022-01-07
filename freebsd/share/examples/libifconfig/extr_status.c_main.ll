; ModuleID = '/home/carl/AnghaBench/freebsd/share/examples/libifconfig/extr_status.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/share/examples/libifconfig/extr_status.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"Usage: example_status\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to open libifconfig handle.\00", align 1
@print_iface = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Failed to get interfaces\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 1
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = call i32 @errx(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %2
  %12 = call i32* (...) @ifconfig_open()
  store i32* %12, i32** %6, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = call i32 @errx(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %11
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* @print_iface, align 4
  %20 = call i64 @ifconfig_foreach_iface(i32* %18, i32 %19, i32* null)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = call i32 @err(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %17
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @ifconfig_close(i32* %25)
  store i32* null, i32** %6, align 8
  ret i32 -1
}

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32* @ifconfig_open(...) #1

declare dso_local i64 @ifconfig_foreach_iface(i32*, i32, i32*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @ifconfig_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
