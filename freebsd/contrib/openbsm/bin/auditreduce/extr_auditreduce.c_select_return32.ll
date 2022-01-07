; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditreduce/extr_auditreduce.c_select_return32.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditreduce/extr_auditreduce.c_select_return32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64 }

@OPT_c = common dso_local global i32 0, align 4
@AU_PRS_SUCCESS = common dso_local global i32 0, align 4
@AU_PRS_FAILURE = common dso_local global i32 0, align 4
@opttochk = common dso_local global i32 0, align 4
@maskp = common dso_local global i32 0, align 4
@AU_PRS_USECACHE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i32, i64, i32*)* @select_return32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @select_return32(i32 %0, i64 %1, i32 %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__, align 8
  %8 = alloca %struct.TYPE_10__, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = bitcast %struct.TYPE_10__* %7 to { i32, i64 }*
  %12 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %11, i32 0, i32 0
  store i32 %0, i32* %12, align 8
  %13 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %11, i32 0, i32 1
  store i64 %1, i64* %13, align 8
  %14 = bitcast %struct.TYPE_10__* %8 to { i32, i64 }*
  %15 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %14, i32 0, i32 0
  store i32 %2, i32* %15, align 8
  %16 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %14, i32 0, i32 1
  store i64 %3, i64* %16, align 8
  store i32* %4, i32** %9, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @OPT_c, align 4
  %20 = call i32 @SETOPT(i32 %18, i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %5
  %27 = load i32, i32* @AU_PRS_SUCCESS, align 4
  store i32 %27, i32* %10, align 4
  br label %30

28:                                               ; preds = %5
  %29 = load i32, i32* @AU_PRS_FAILURE, align 4
  store i32 %29, i32* %10, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = load i32, i32* @opttochk, align 4
  %32 = load i32, i32* @OPT_c, align 4
  %33 = call i64 @ISOPTSET(i32 %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @AU_PRS_USECACHE, align 4
  %42 = call i32 @au_preselect(i32 %39, i32* @maskp, i32 %40, i32 %41)
  %43 = icmp ne i32 %42, 1
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  br label %47

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45, %30
  store i32 1, i32* %6, align 4
  br label %47

47:                                               ; preds = %46, %44
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local i32 @SETOPT(i32, i32) #1

declare dso_local i64 @ISOPTSET(i32, i32) #1

declare dso_local i32 @au_preselect(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
