; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_restore.c_optionRestore.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_restore.c_optionRestore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i8*, %struct.TYPE_7__*, i64, %struct.TYPE_7__* }

@zNil = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@zNoState = common dso_local global i8* null, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @optionRestore(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 2
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %7, %struct.TYPE_7__** %3, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = icmp eq %struct.TYPE_7__* %8, null
  br i1 %9, label %10, label %32

10:                                               ; preds = %1
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %10
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %4, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i8*, i8** @zNil, align 8
  store i8* %23, i8** %4, align 8
  br label %24

24:                                               ; preds = %22, %16
  br label %25

25:                                               ; preds = %24, %10
  %26 = load i32, i32* @stderr, align 4
  %27 = load i8*, i8** @zNoState, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @fprintf(i32 %26, i8* %27, i8* %28)
  %30 = load i32, i32* @EXIT_FAILURE, align 4
  %31 = call i32 @option_exits(i32 %30)
  br label %32

32:                                               ; preds = %25, %1
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 2
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %34, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %36 = call i32 @optionFree(%struct.TYPE_7__* %35)
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %39 = call i32 @memcpy(%struct.TYPE_7__* %37, %struct.TYPE_7__* %38, i64 40)
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i64 1
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = mul i64 %47, 4
  %49 = call i32 @memcpy(%struct.TYPE_7__* %42, %struct.TYPE_7__* %44, i64 %48)
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 2
  store %struct.TYPE_7__* %50, %struct.TYPE_7__** %52, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %54 = call i32 @fixupSavedOptionArgs(%struct.TYPE_7__* %53)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @option_exits(i32) #1

declare dso_local i32 @optionFree(%struct.TYPE_7__*) #1

declare dso_local i32 @memcpy(%struct.TYPE_7__*, %struct.TYPE_7__*, i64) #1

declare dso_local i32 @fixupSavedOptionArgs(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
