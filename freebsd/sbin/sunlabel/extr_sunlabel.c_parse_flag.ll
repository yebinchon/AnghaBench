; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/sunlabel/extr_sunlabel.c_parse_flag.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/sunlabel/extr_sunlabel.c_parse_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tags = type { i64, i32 }
%struct.sun_disklabel = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@knownflags = common dso_local global %struct.tags* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sun_disklabel*, i32, i8*)* @parse_flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_flag(%struct.sun_disklabel* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sun_disklabel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.tags*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.sun_disklabel* %0, %struct.sun_disklabel** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 0, i64* %10, align 8
  %12 = load %struct.tags*, %struct.tags** @knownflags, align 8
  store %struct.tags* %12, %struct.tags** %8, align 8
  br label %13

13:                                               ; preds = %38, %3
  %14 = load i64, i64* %10, align 8
  %15 = load %struct.tags*, %struct.tags** @knownflags, align 8
  %16 = call i64 @nitems(%struct.tags* %15)
  %17 = icmp ult i64 %14, %16
  br i1 %17, label %18, label %43

18:                                               ; preds = %13
  %19 = load %struct.tags*, %struct.tags** %8, align 8
  %20 = getelementptr inbounds %struct.tags, %struct.tags* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call i64 @strcmp(i32 %21, i8* %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %18
  %26 = load %struct.tags*, %struct.tags** %8, align 8
  %27 = getelementptr inbounds %struct.tags, %struct.tags* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i8*
  %30 = load %struct.sun_disklabel*, %struct.sun_disklabel** %5, align 8
  %31 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i8* %29, i8** %36, align 8
  store i32 0, i32* %4, align 4
  br label %66

37:                                               ; preds = %18
  br label %38

38:                                               ; preds = %37
  %39 = load i64, i64* %10, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %10, align 8
  %41 = load %struct.tags*, %struct.tags** %8, align 8
  %42 = getelementptr inbounds %struct.tags, %struct.tags* %41, i32 1
  store %struct.tags* %42, %struct.tags** %8, align 8
  br label %13

43:                                               ; preds = %13
  %44 = load i8*, i8** %7, align 8
  %45 = call i64 @strtoul(i8* %44, i8** %9, i32 0)
  store i64 %45, i64* %11, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %43
  %51 = load i8*, i8** %9, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %50
  %56 = load i64, i64* %11, align 8
  %57 = inttoptr i64 %56 to i8*
  %58 = load %struct.sun_disklabel*, %struct.sun_disklabel** %5, align 8
  %59 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i8* %57, i8** %64, align 8
  store i32 0, i32* %4, align 4
  br label %66

65:                                               ; preds = %50, %43
  store i32 -1, i32* %4, align 4
  br label %66

66:                                               ; preds = %65, %55, %25
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i64 @nitems(%struct.tags*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
