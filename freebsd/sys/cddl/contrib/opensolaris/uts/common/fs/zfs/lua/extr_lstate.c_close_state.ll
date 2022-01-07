; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/lua/extr_lstate.c_close_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/lua/extr_lstate.c_close_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32 (i32, i32, i32, i32)*, i32, %struct.TYPE_15__, i64 }
%struct.TYPE_15__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*)* @close_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @close_state(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %4 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %5 = call %struct.TYPE_17__* @G(%struct.TYPE_16__* %4)
  store %struct.TYPE_17__* %5, %struct.TYPE_17__** %3, align 8
  %6 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %7 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @luaF_close(%struct.TYPE_16__* %6, i32 %9)
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %12 = call i32 @luaC_freeallobjects(%struct.TYPE_16__* %11)
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %19 = call i32 @luai_userstateclose(%struct.TYPE_16__* %18)
  br label %20

20:                                               ; preds = %17, %1
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %23 = call %struct.TYPE_17__* @G(%struct.TYPE_16__* %22)
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %28 = call %struct.TYPE_17__* @G(%struct.TYPE_16__* %27)
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @luaM_freearray(%struct.TYPE_16__* %21, i32 %26, i32 %31)
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 2
  %36 = call i32 @luaZ_freebuffer(%struct.TYPE_16__* %33, i32* %35)
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %38 = call i32 @freestack(%struct.TYPE_16__* %37)
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %40 = call i32 @gettotalbytes(%struct.TYPE_17__* %39)
  %41 = sext i32 %40 to i64
  %42 = icmp eq i64 %41, 4
  %43 = zext i1 %42 to i32
  %44 = call i32 @lua_assert(i32 %43)
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 1
  %47 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %46, align 8
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %52 = call i32 @fromstate(%struct.TYPE_16__* %51)
  %53 = call i32 %47(i32 %50, i32 %52, i32 4, i32 0)
  ret void
}

declare dso_local %struct.TYPE_17__* @G(%struct.TYPE_16__*) #1

declare dso_local i32 @luaF_close(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @luaC_freeallobjects(%struct.TYPE_16__*) #1

declare dso_local i32 @luai_userstateclose(%struct.TYPE_16__*) #1

declare dso_local i32 @luaM_freearray(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @luaZ_freebuffer(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @freestack(%struct.TYPE_16__*) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @gettotalbytes(%struct.TYPE_17__*) #1

declare dso_local i32 @fromstate(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
