; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-decnet.c_dnnum_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-decnet.c_dnnum_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, i8*)* }

@AREAMASK = common dso_local global i32 0, align 4
@AREASHIFT = common dso_local global i32 0, align 4
@NODEMASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"dnnum_string: malloc\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%d.%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @dnnum_string(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @AREAMASK, align 4
  %11 = and i32 %9, %10
  %12 = load i32, i32* @AREASHIFT, align 4
  %13 = ashr i32 %11, %12
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @NODEMASK, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %8, align 4
  store i64 8, i64* %6, align 8
  %17 = call i64 @malloc(i64 8)
  %18 = inttoptr i64 %17 to i8*
  store i8* %18, i8** %5, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32 (%struct.TYPE_4__*, i8*)*, i32 (%struct.TYPE_4__*, i8*)** %23, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %26 = call i32 %24(%struct.TYPE_4__* %25, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %21, %2
  %28 = load i8*, i8** %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @snprintf(i8* %28, i64 %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %31)
  %33 = load i8*, i8** %5, align 8
  ret i8* %33
}

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
