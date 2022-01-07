; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq-subs.c_doquerylist.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq-subs.c_doquerylist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varlist = type { i32 }

@CTL_MAX_DATA_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.varlist*, i32, i32, i32, i32*, i64*, i8**)* @doquerylist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @doquerylist(%struct.varlist* %0, i32 %1, i32 %2, i32 %3, i32* %4, i64* %5, i8** %6) #0 {
  %8 = alloca %struct.varlist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.varlist* %0, %struct.varlist** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i64* %5, i64** %13, align 8
  store i8** %6, i8*** %14, align 8
  %18 = load i32, i32* @CTL_MAX_DATA_LEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %15, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %16, align 8
  store i64 %19, i64* %17, align 8
  %22 = load %struct.varlist*, %struct.varlist** %8, align 8
  %23 = call i32 @makequerydata(%struct.varlist* %22, i64* %17, i8* %21)
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load i64, i64* %17, align 8
  %28 = load i32*, i32** %12, align 8
  %29 = load i64*, i64** %13, align 8
  %30 = load i8**, i8*** %14, align 8
  %31 = call i32 @doquery(i32 %24, i32 %25, i32 %26, i64 %27, i8* %21, i32* %28, i64* %29, i8** %30)
  %32 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %32)
  ret i32 %31
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @makequerydata(%struct.varlist*, i64*, i8*) #2

declare dso_local i32 @doquery(i32, i32, i32, i64, i8*, i32*, i64*, i8**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
