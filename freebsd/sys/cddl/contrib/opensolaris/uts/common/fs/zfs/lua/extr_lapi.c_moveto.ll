; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/lua/extr_lapi.c_moveto.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/lua/extr_lapi.c_moveto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32*, i32)* @moveto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @moveto(%struct.TYPE_9__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call i32* @index2addr(%struct.TYPE_9__* %8, i32 %9)
  store i32* %10, i32** %7, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = call i32 @api_checkvalidindex(%struct.TYPE_9__* %11, i32* %12)
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @setobj(%struct.TYPE_9__* %14, i32* %15, i32* %16)
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %3
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @clCvalue(i32 %27)
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @luaC_barrier(%struct.TYPE_9__* %22, i32 %28, i32* %29)
  br label %31

31:                                               ; preds = %21, %3
  ret void
}

declare dso_local i32* @index2addr(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @api_checkvalidindex(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @setobj(%struct.TYPE_9__*, i32*, i32*) #1

declare dso_local i32 @luaC_barrier(%struct.TYPE_9__*, i32, i32*) #1

declare dso_local i32 @clCvalue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
