; ModuleID = '/home/carl/AnghaBench/freebsd/lib/lib80211/extr_lib80211_regdomain.c_findid.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/lib80211/extr_lib80211_regdomain.c_findid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regdata = type { %struct.ident* }
%struct.ident = type { i8*, i32*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.regdata*, i8*, i32)* @findid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @findid(%struct.regdata* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.regdata*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ident*, align 8
  store %struct.regdata* %0, %struct.regdata** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.regdata*, %struct.regdata** %5, align 8
  %10 = getelementptr inbounds %struct.regdata, %struct.regdata* %9, i32 0, i32 0
  %11 = load %struct.ident*, %struct.ident** %10, align 8
  store %struct.ident* %11, %struct.ident** %8, align 8
  br label %12

12:                                               ; preds = %36, %3
  %13 = load %struct.ident*, %struct.ident** %8, align 8
  %14 = getelementptr inbounds %struct.ident, %struct.ident* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %39

17:                                               ; preds = %12
  %18 = load %struct.ident*, %struct.ident** %8, align 8
  %19 = getelementptr inbounds %struct.ident, %struct.ident* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = trunc i64 %20 to i32
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %17
  %25 = load %struct.ident*, %struct.ident** %8, align 8
  %26 = getelementptr inbounds %struct.ident, %struct.ident* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = call i64 @strcasecmp(i32* %27, i8* %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load %struct.ident*, %struct.ident** %8, align 8
  %33 = getelementptr inbounds %struct.ident, %struct.ident* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %4, align 8
  br label %40

35:                                               ; preds = %24, %17
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.ident*, %struct.ident** %8, align 8
  %38 = getelementptr inbounds %struct.ident, %struct.ident* %37, i32 1
  store %struct.ident* %38, %struct.ident** %8, align 8
  br label %12

39:                                               ; preds = %12
  store i8* null, i8** %4, align 8
  br label %40

40:                                               ; preds = %39, %31
  %41 = load i8*, i8** %4, align 8
  ret i8* %41
}

declare dso_local i64 @strcasecmp(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
