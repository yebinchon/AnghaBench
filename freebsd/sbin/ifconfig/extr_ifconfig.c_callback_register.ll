; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifconfig.c_callback_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifconfig.c_callback_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.callback = type { %struct.callback*, i8*, i32* }

@.str = private unnamed_addr constant [39 x i8] c"unable to allocate memory for callback\00", align 1
@callbacks = common dso_local global %struct.callback* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @callback_register(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.callback*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = call %struct.callback* @malloc(i32 24)
  store %struct.callback* %6, %struct.callback** %5, align 8
  %7 = load %struct.callback*, %struct.callback** %5, align 8
  %8 = icmp eq %struct.callback* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = call i32 @errx(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %2
  %12 = load i32*, i32** %3, align 8
  %13 = load %struct.callback*, %struct.callback** %5, align 8
  %14 = getelementptr inbounds %struct.callback, %struct.callback* %13, i32 0, i32 2
  store i32* %12, i32** %14, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = load %struct.callback*, %struct.callback** %5, align 8
  %17 = getelementptr inbounds %struct.callback, %struct.callback* %16, i32 0, i32 1
  store i8* %15, i8** %17, align 8
  %18 = load %struct.callback*, %struct.callback** @callbacks, align 8
  %19 = load %struct.callback*, %struct.callback** %5, align 8
  %20 = getelementptr inbounds %struct.callback, %struct.callback* %19, i32 0, i32 0
  store %struct.callback* %18, %struct.callback** %20, align 8
  %21 = load %struct.callback*, %struct.callback** %5, align 8
  store %struct.callback* %21, %struct.callback** @callbacks, align 8
  ret void
}

declare dso_local %struct.callback* @malloc(i32) #1

declare dso_local i32 @errx(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
