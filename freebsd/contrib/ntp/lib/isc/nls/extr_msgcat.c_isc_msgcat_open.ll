; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/nls/extr_msgcat.c_isc_msgcat_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/nls/extr_msgcat.c_isc_msgcat_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@MSGCAT_MAGIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isc_msgcat_open(i8* %0, %struct.TYPE_4__** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_4__**, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_4__** %1, %struct.TYPE_4__*** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp ne i8* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @REQUIRE(i32 %8)
  %10 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %11 = icmp ne %struct.TYPE_4__** %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = icmp eq %struct.TYPE_4__* %14, null
  br label %16

16:                                               ; preds = %12, %2
  %17 = phi i1 [ false, %2 ], [ %15, %12 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @REQUIRE(i32 %18)
  %20 = call %struct.TYPE_4__* @malloc(i32 8)
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %5, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %22 = icmp eq %struct.TYPE_4__* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %24, align 8
  br label %31

25:                                               ; preds = %16
  %26 = load i32, i32* @MSGCAT_MAGIC, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %30 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  store %struct.TYPE_4__* %29, %struct.TYPE_4__** %30, align 8
  br label %31

31:                                               ; preds = %25, %23
  ret void
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local %struct.TYPE_4__* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
