; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_usage.c_setGnuOptFmts.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_usage.c_setGnuOptFmts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@setGnuOptFmts.zOneSpace = internal constant [2 x i8] c" \00", align 1
@zNoRq_ShrtTtl = common dso_local global i8* null, align 8
@zGnuStrArg = common dso_local global i8* null, align 8
@argTypes = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@zGnuNumArg = common dso_local global i8* null, align 8
@zGnuKeyArg = common dso_local global i8* null, align 8
@zGnuKeyLArg = common dso_local global i32 0, align 4
@zGnuTimeArg = common dso_local global i32 0, align 4
@zGnuFileArg = common dso_local global i32 0, align 4
@zGnuBoolArg = common dso_local global i8* null, align 8
@zGnuNestArg = common dso_local global i32 0, align 4
@zGnuOptArg = common dso_local global i8* null, align 8
@zGnuBreak = common dso_local global i32 0, align 4
@zSixSpaces = common dso_local global i32 0, align 4
@zThreeSpaces = common dso_local global i32 0, align 4
@zGnuOptFmt = common dso_local global i8* null, align 8
@zShrtGnuOptFmt = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [7 x i8] c" [arg]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8**)* @setGnuOptFmts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setGnuOptFmts(%struct.TYPE_4__* %0, i8** %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i8** %1, i8*** %4, align 8
  store i32 22, i32* %5, align 4
  %6 = load i8*, i8** @zNoRq_ShrtTtl, align 8
  %7 = load i8**, i8*** %4, align 8
  store i8* %6, i8** %7, align 8
  %8 = load i8*, i8** @zGnuStrArg, align 8
  store i8* %8, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @argTypes, i32 0, i32 0), align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @setGnuOptFmts.zOneSpace, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @argTypes, i32 0, i32 1), align 8
  %9 = load i8*, i8** @zGnuNumArg, align 8
  store i8* %9, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @argTypes, i32 0, i32 2), align 8
  %10 = load i8*, i8** @zGnuKeyArg, align 8
  store i8* %10, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @argTypes, i32 0, i32 3), align 8
  %11 = load i32, i32* @zGnuKeyLArg, align 4
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @argTypes, i32 0, i32 14), align 8
  %12 = load i32, i32* @zGnuTimeArg, align 4
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @argTypes, i32 0, i32 13), align 4
  %13 = load i32, i32* @zGnuFileArg, align 4
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @argTypes, i32 0, i32 12), align 8
  %14 = load i8*, i8** @zGnuBoolArg, align 8
  store i8* %14, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @argTypes, i32 0, i32 4), align 8
  %15 = load i32, i32* @zGnuNestArg, align 4
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @argTypes, i32 0, i32 11), align 4
  %16 = load i8*, i8** @zGnuOptArg, align 8
  store i8* %16, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @argTypes, i32 0, i32 5), align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @setGnuOptFmts.zOneSpace, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @argTypes, i32 0, i32 6), align 8
  %17 = load i32, i32* @zGnuBreak, align 4
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @argTypes, i32 0, i32 10), align 8
  %18 = load i32, i32* @zSixSpaces, align 4
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @argTypes, i32 0, i32 9), align 4
  %19 = load i32, i32* @zThreeSpaces, align 4
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @argTypes, i32 0, i32 8), align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 129
  switch i32 %23, label %41 [
    i32 129, label %24
    i32 130, label %26
    i32 0, label %28
    i32 128, label %31
  ]

24:                                               ; preds = %2
  %25 = load i8*, i8** @zGnuOptFmt, align 8
  store i8* %25, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @argTypes, i32 0, i32 7), align 8
  br label %41

26:                                               ; preds = %2
  %27 = load i8*, i8** @zGnuOptFmt, align 8
  store i8* %27, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @argTypes, i32 0, i32 7), align 8
  br label %41

28:                                               ; preds = %2
  %29 = load i8*, i8** @zGnuOptFmt, align 8
  %30 = getelementptr i8, i8* %29, i64 2
  store i8* %30, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @argTypes, i32 0, i32 7), align 8
  br label %41

31:                                               ; preds = %2
  %32 = load i8*, i8** @zShrtGnuOptFmt, align 8
  store i8* %32, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @argTypes, i32 0, i32 7), align 8
  %33 = load i8*, i8** @zGnuBoolArg, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  store i8 32, i8* %34, align 1
  %35 = load i8*, i8** @zGnuKeyArg, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  store i8 32, i8* %36, align 1
  %37 = load i8*, i8** @zGnuNumArg, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  store i8 32, i8* %38, align 1
  %39 = load i8*, i8** @zGnuStrArg, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  store i8 32, i8* %40, align 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @argTypes, i32 0, i32 5), align 8
  store i32 8, i32* %5, align 4
  br label %41

41:                                               ; preds = %2, %31, %28, %26, %24
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
