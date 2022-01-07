; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_setdefregdomain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_setdefregdomain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64* }
%struct.regdata = type { i32 }
%struct.regdomain = type { i64, i32* }

@regdomain = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@CTRY_DEFAULT = common dso_local global i64 0, align 8
@SKU_FCC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"FCC regdomain was not found\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @setdefregdomain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setdefregdomain(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regdata*, align 8
  %4 = alloca %struct.regdomain*, align 8
  store i32 %0, i32* %2, align 4
  %5 = call %struct.regdata* (...) @getregdata()
  store %struct.regdata* %5, %struct.regdata** %3, align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @regdomain, i32 0, i32 0), align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @regdomain, i32 0, i32 1), align 8
  %10 = load i64, i64* @CTRY_DEFAULT, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8, %1
  br label %50

13:                                               ; preds = %8
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @getregdomain(i32 %14)
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @regdomain, i32 0, i32 0), align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @regdomain, i32 0, i32 1), align 8
  %20 = load i64, i64* @CTRY_DEFAULT, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %13
  br label %50

23:                                               ; preds = %18
  %24 = load %struct.regdata*, %struct.regdata** %3, align 8
  %25 = load i32, i32* @SKU_FCC, align 4
  %26 = call %struct.regdomain* @lib80211_regdomain_findbysku(%struct.regdata* %24, i32 %25)
  store %struct.regdomain* %26, %struct.regdomain** %4, align 8
  %27 = load %struct.regdomain*, %struct.regdomain** %4, align 8
  %28 = icmp eq %struct.regdomain* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = call i32 @errx(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %23
  %32 = load %struct.regdomain*, %struct.regdomain** %4, align 8
  %33 = getelementptr inbounds %struct.regdomain, %struct.regdomain* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @regdomain, i32 0, i32 0), align 8
  %35 = load %struct.regdomain*, %struct.regdomain** %4, align 8
  %36 = getelementptr inbounds %struct.regdomain, %struct.regdomain* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load %struct.regdomain*, %struct.regdomain** %4, align 8
  %41 = call i32 @defaultcountry(%struct.regdomain* %40)
  br label %42

42:                                               ; preds = %39, %31
  %43 = load i32, i32* %2, align 4
  %44 = call i32 @setregdomain_cb(i32 %43, %struct.TYPE_3__* @regdomain)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @regdomain, i32 0, i32 0), align 8
  %45 = load i64, i64* @CTRY_DEFAULT, align 8
  store i64 %45, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @regdomain, i32 0, i32 1), align 8
  %46 = load i64*, i64** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @regdomain, i32 0, i32 2), align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 0
  store i64 0, i64* %47, align 8
  %48 = load i64*, i64** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @regdomain, i32 0, i32 2), align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 1
  store i64 0, i64* %49, align 8
  br label %50

50:                                               ; preds = %42, %22, %12
  ret void
}

declare dso_local %struct.regdata* @getregdata(...) #1

declare dso_local i32 @getregdomain(i32) #1

declare dso_local %struct.regdomain* @lib80211_regdomain_findbysku(%struct.regdata*, i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @defaultcountry(%struct.regdomain*) #1

declare dso_local i32 @setregdomain_cb(i32, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
