; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_dmtpps.c_dmtpps_translate_nickname.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_dmtpps.c_dmtpps_translate_nickname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicknames = type { i8*, i32* }

@dmtpps_pin_nicks = common dso_local global %struct.nicknames* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @dmtpps_translate_nickname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @dmtpps_translate_nickname(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.nicknames*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load %struct.nicknames*, %struct.nicknames** @dmtpps_pin_nicks, align 8
  store %struct.nicknames* %5, %struct.nicknames** %4, align 8
  br label %6

6:                                                ; preds = %23, %1
  %7 = load %struct.nicknames*, %struct.nicknames** %4, align 8
  %8 = getelementptr inbounds %struct.nicknames, %struct.nicknames* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %26

11:                                               ; preds = %6
  %12 = load i8*, i8** %3, align 8
  %13 = load %struct.nicknames*, %struct.nicknames** %4, align 8
  %14 = getelementptr inbounds %struct.nicknames, %struct.nicknames* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = call i64 @strcasecmp(i8* %12, i32* %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %11
  %19 = load %struct.nicknames*, %struct.nicknames** %4, align 8
  %20 = getelementptr inbounds %struct.nicknames, %struct.nicknames* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %2, align 8
  br label %28

22:                                               ; preds = %11
  br label %23

23:                                               ; preds = %22
  %24 = load %struct.nicknames*, %struct.nicknames** %4, align 8
  %25 = getelementptr inbounds %struct.nicknames, %struct.nicknames* %24, i32 1
  store %struct.nicknames* %25, %struct.nicknames** %4, align 8
  br label %6

26:                                               ; preds = %6
  %27 = load i8*, i8** %3, align 8
  store i8* %27, i8** %2, align 8
  br label %28

28:                                               ; preds = %26, %18
  %29 = load i8*, i8** %2, align 8
  ret i8* %29
}

declare dso_local i64 @strcasecmp(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
