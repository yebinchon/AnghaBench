; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dump/extr_itime.c_readdumptimes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dump/extr_itime.c_readdumptimes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dumptime = type { i32 }

@nddates = common dso_local global i32 0, align 4
@dthead = common dso_local global i32 0, align 4
@dt_list = common dso_local global i32 0, align 4
@ddatev = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @readdumptimes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @readdumptimes(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.dumptime*, align 8
  store i32* %0, i32** %2, align 8
  br label %5

5:                                                ; preds = %16, %1
  %6 = call i32** @calloc(i32 1, i32 4)
  %7 = bitcast i32** %6 to %struct.dumptime*
  store %struct.dumptime* %7, %struct.dumptime** %4, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = load %struct.dumptime*, %struct.dumptime** %4, align 8
  %10 = getelementptr inbounds %struct.dumptime, %struct.dumptime* %9, i32 0, i32 0
  %11 = call i64 @getrecord(i32* %8, i32* %10)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %5
  %14 = load %struct.dumptime*, %struct.dumptime** %4, align 8
  %15 = call i32 @free(%struct.dumptime* %14)
  br label %22

16:                                               ; preds = %5
  %17 = load i32, i32* @nddates, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* @nddates, align 4
  %19 = load %struct.dumptime*, %struct.dumptime** %4, align 8
  %20 = load i32, i32* @dt_list, align 4
  %21 = call i32 @SLIST_INSERT_HEAD(i32* @dthead, %struct.dumptime* %19, i32 %20)
  br label %5

22:                                               ; preds = %13
  %23 = load i32, i32* @nddates, align 4
  %24 = add nsw i32 %23, 1
  %25 = call i32** @calloc(i32 %24, i32 8)
  store i32** %25, i32*** @ddatev, align 8
  %26 = call %struct.dumptime* @SLIST_FIRST(i32* @dthead)
  store %struct.dumptime* %26, %struct.dumptime** %4, align 8
  %27 = load i32, i32* @nddates, align 4
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %39, %22
  %30 = load i32, i32* %3, align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %29
  %33 = load %struct.dumptime*, %struct.dumptime** %4, align 8
  %34 = getelementptr inbounds %struct.dumptime, %struct.dumptime* %33, i32 0, i32 0
  %35 = load i32**, i32*** @ddatev, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  store i32* %34, i32** %38, align 8
  br label %39

39:                                               ; preds = %32
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %3, align 4
  %42 = load %struct.dumptime*, %struct.dumptime** %4, align 8
  %43 = load i32, i32* @dt_list, align 4
  %44 = call %struct.dumptime* @SLIST_NEXT(%struct.dumptime* %42, i32 %43)
  store %struct.dumptime* %44, %struct.dumptime** %4, align 8
  br label %29

45:                                               ; preds = %29
  ret void
}

declare dso_local i32** @calloc(i32, i32) #1

declare dso_local i64 @getrecord(i32*, i32*) #1

declare dso_local i32 @free(%struct.dumptime*) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.dumptime*, i32) #1

declare dso_local %struct.dumptime* @SLIST_FIRST(i32*) #1

declare dso_local %struct.dumptime* @SLIST_NEXT(%struct.dumptime*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
