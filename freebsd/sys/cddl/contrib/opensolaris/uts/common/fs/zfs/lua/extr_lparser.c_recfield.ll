; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/lua/extr_lparser.c_recfield.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/lua/extr_lparser.c_recfield.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_14__, %struct.TYPE_18__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_18__ = type { i32 }
%struct.ConsControl = type { %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }

@TK_NAME = common dso_local global i64 0, align 8
@MAX_INT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"items in a constructor\00", align 1
@OP_SETTABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, %struct.ConsControl*)* @recfield to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @recfield(%struct.TYPE_17__* %0, %struct.ConsControl* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.ConsControl*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store %struct.ConsControl* %1, %struct.ConsControl** %4, align 8
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  store %struct.TYPE_18__* %12, %struct.TYPE_18__** %5, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @TK_NAME, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %2
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %26 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  %27 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @MAX_INT, align 4
  %30 = call i32 @checklimit(%struct.TYPE_18__* %25, i32 %28, i32 %29, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %32 = call i32 @checkname(%struct.TYPE_17__* %31, i32* %7)
  br label %36

33:                                               ; preds = %2
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %35 = call i32 @yindex(%struct.TYPE_17__* %34, i32* %7)
  br label %36

36:                                               ; preds = %33, %24
  %37 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  %38 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 8
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %42 = call i32 @checknext(%struct.TYPE_17__* %41, i8 signext 61)
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %44 = call i32 @luaK_exp2RK(%struct.TYPE_18__* %43, i32* %7)
  store i32 %44, i32* %9, align 4
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %46 = call i32 @expr(%struct.TYPE_17__* %45, i32* %8)
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %48 = load i32, i32* @OP_SETTABLE, align 4
  %49 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  %50 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %49, i32 0, i32 0
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %57 = call i32 @luaK_exp2RK(%struct.TYPE_18__* %56, i32* %8)
  %58 = call i32 @luaK_codeABC(%struct.TYPE_18__* %47, i32 %48, i32 %54, i32 %55, i32 %57)
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  ret void
}

declare dso_local i32 @checklimit(%struct.TYPE_18__*, i32, i32, i8*) #1

declare dso_local i32 @checkname(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @yindex(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @checknext(%struct.TYPE_17__*, i8 signext) #1

declare dso_local i32 @luaK_exp2RK(%struct.TYPE_18__*, i32*) #1

declare dso_local i32 @expr(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @luaK_codeABC(%struct.TYPE_18__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
