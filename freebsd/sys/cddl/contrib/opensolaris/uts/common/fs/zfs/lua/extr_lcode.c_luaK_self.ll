; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/lua/extr_lcode.c_luaK_self.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/lua/extr_lcode.c_luaK_self.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { i32 }

@VNONRELOC = common dso_local global i32 0, align 4
@OP_SELF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @luaK_self(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1, %struct.TYPE_16__* %2) #0 {
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %6, align 8
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %10 = call i32 @luaK_exp2anyreg(%struct.TYPE_17__* %8, %struct.TYPE_16__* %9)
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %17 = call i32 @freeexp(%struct.TYPE_17__* %15, %struct.TYPE_16__* %16)
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 4
  %24 = load i32, i32* @VNONRELOC, align 4
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %28 = call i32 @luaK_reserveregs(%struct.TYPE_17__* %27, i32 2)
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %30 = load i32, i32* @OP_SELF, align 4
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %38 = call i32 @luaK_exp2RK(%struct.TYPE_17__* %36, %struct.TYPE_16__* %37)
  %39 = call i32 @luaK_codeABC(%struct.TYPE_17__* %29, i32 %30, i32 %34, i32 %35, i32 %38)
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %42 = call i32 @freeexp(%struct.TYPE_17__* %40, %struct.TYPE_16__* %41)
  ret void
}

declare dso_local i32 @luaK_exp2anyreg(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

declare dso_local i32 @freeexp(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

declare dso_local i32 @luaK_reserveregs(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @luaK_codeABC(%struct.TYPE_17__*, i32, i32, i32, i32) #1

declare dso_local i32 @luaK_exp2RK(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
