; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libmp/extr_mpasbn.c__dtom.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libmp/extr_mpasbn.c__dtom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (i8*, i8*)* @_dtom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @_dtom(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = call %struct.TYPE_4__* @malloc(i32 8)
  store %struct.TYPE_4__* %6, %struct.TYPE_4__** %5, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %8 = icmp eq %struct.TYPE_4__* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @MPERR(i8* %10)
  br label %12

12:                                               ; preds = %9, %2
  %13 = call i32* (...) @BN_new()
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store i32* %13, i32** %15, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %12
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @_bnerr(i8* %21)
  br label %23

23:                                               ; preds = %20, %12
  %24 = load i8*, i8** %3, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @BN_dec2bn(i32** %26, i8* %27)
  %29 = call i32 @BN_ERRCHECK(i8* %24, i32 %28)
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  ret %struct.TYPE_4__* %30
}

declare dso_local %struct.TYPE_4__* @malloc(i32) #1

declare dso_local i32 @MPERR(i8*) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @_bnerr(i8*) #1

declare dso_local i32 @BN_ERRCHECK(i8*, i32) #1

declare dso_local i32 @BN_dec2bn(i32**, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
