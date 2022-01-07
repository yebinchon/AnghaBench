; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ping/extr_ping.c_capdns_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ping/extr_ping.c_capdns_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"unable to create casper process\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"system.dns\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"unable to open system.dns service\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @capdns_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @capdns_setup() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = call i32* (...) @cap_init()
  store i32* %3, i32** %1, align 8
  %4 = load i32*, i32** %1, align 8
  %5 = icmp eq i32* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 @err(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %8

8:                                                ; preds = %6, %0
  %9 = load i32*, i32** %1, align 8
  %10 = call i32* @cap_service_open(i32* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32* %10, i32** %2, align 8
  %11 = load i32*, i32** %1, align 8
  %12 = call i32 @cap_close(i32* %11)
  %13 = load i32*, i32** %2, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %8
  %16 = call i32 @err(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %8
  %18 = load i32*, i32** %2, align 8
  ret i32* %18
}

declare dso_local i32* @cap_init(...) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32* @cap_service_open(i32*, i8*) #1

declare dso_local i32 @cap_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
