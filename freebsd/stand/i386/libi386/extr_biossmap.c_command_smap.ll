; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_biossmap.c_command_smap.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_biossmap.c_command_smap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64 }

@smapbase = common dso_local global %struct.TYPE_2__* null, align 8
@smaplen = common dso_local global i64 0, align 8
@CMD_ERROR = common dso_local global i32 0, align 4
@smapattr = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [51 x i8] c"SMAP type=%02x base=%016llx len=%016llx attr=%02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"SMAP type=%02x base=%016llx len=%016llx\0A\00", align 1
@CMD_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @command_smap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @command_smap(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @smapbase, align 8
  %8 = icmp eq %struct.TYPE_2__* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i64, i64* @smaplen, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9, %2
  %13 = load i32, i32* @CMD_ERROR, align 4
  store i32 %13, i32* %3, align 4
  br label %78

14:                                               ; preds = %9
  %15 = load i64*, i64** @smapattr, align 8
  %16 = icmp ne i64* %15, null
  br i1 %16, label %17, label %49

17:                                               ; preds = %14
  store i64 0, i64* %6, align 8
  br label %18

18:                                               ; preds = %45, %17
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @smaplen, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %48

22:                                               ; preds = %18
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @smapbase, align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @smapbase, align 8
  %30 = load i64, i64* %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @smapbase, align 8
  %35 = load i64, i64* %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64*, i64** @smapattr, align 8
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i32 (i8*, i32, i64, i64, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %28, i64 %33, i64 %38, i32 %43)
  br label %45

45:                                               ; preds = %22
  %46 = load i64, i64* %6, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %6, align 8
  br label %18

48:                                               ; preds = %18
  br label %76

49:                                               ; preds = %14
  store i64 0, i64* %6, align 8
  br label %50

50:                                               ; preds = %72, %49
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* @smaplen, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %75

54:                                               ; preds = %50
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @smapbase, align 8
  %56 = load i64, i64* %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @smapbase, align 8
  %62 = load i64, i64* %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @smapbase, align 8
  %67 = load i64, i64* %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = call i32 (i8*, i32, i64, i64, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %60, i64 %65, i64 %70)
  br label %72

72:                                               ; preds = %54
  %73 = load i64, i64* %6, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %6, align 8
  br label %50

75:                                               ; preds = %50
  br label %76

76:                                               ; preds = %75, %48
  %77 = load i32, i32* @CMD_OK, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %76, %12
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @printf(i8*, i32, i64, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
