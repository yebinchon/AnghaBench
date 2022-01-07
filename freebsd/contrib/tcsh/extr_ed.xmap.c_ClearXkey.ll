; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.xmap.c_ClearXkey.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.xmap.c_ClearXkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64* }

@F_XKEY = common dso_local global i64 0, align 8
@CcKeyMap = common dso_local global i64* null, align 8
@CcAltMap = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ClearXkey(i64* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8, align 1
  store i64* %0, i64** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i64*, i64** %7, align 8
  %9 = load i64, i64* %8, align 8
  %10 = trunc i64 %9 to i8
  store i8 %10, i8* %5, align 1
  %11 = load i64*, i64** %3, align 8
  %12 = load i8, i8* %5, align 1
  %13 = zext i8 %12 to i64
  %14 = getelementptr inbounds i64, i64* %11, i64 %13
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @F_XKEY, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %45

18:                                               ; preds = %2
  %19 = load i64*, i64** %3, align 8
  %20 = load i64*, i64** @CcKeyMap, align 8
  %21 = icmp eq i64* %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = load i64*, i64** @CcAltMap, align 8
  %24 = load i8, i8* %5, align 1
  %25 = zext i8 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @F_XKEY, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %42, label %30

30:                                               ; preds = %22, %18
  %31 = load i64*, i64** %3, align 8
  %32 = load i64*, i64** @CcAltMap, align 8
  %33 = icmp eq i64* %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %30
  %35 = load i64*, i64** @CcKeyMap, align 8
  %36 = load i8, i8* %5, align 1
  %37 = zext i8 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @F_XKEY, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %34, %22
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %44 = call i32 @DeleteXkey(%struct.TYPE_4__* %43)
  br label %45

45:                                               ; preds = %42, %34, %30, %2
  ret void
}

declare dso_local i32 @DeleteXkey(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
