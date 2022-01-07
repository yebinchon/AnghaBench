; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_win32-nat.c_do_child_fetch_inferior_registers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_win32-nat.c_do_child_fetch_inferior_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32 }

@current_thread = common dso_local global %struct.TYPE_4__* null, align 8
@mappings = common dso_local global i32* null, align 8
@CONTEXT_DEBUGGER_DR = common dso_local global i32 0, align 4
@dr = common dso_local global i32* null, align 8
@I387_FISEG_REGNUM = common dso_local global i32 0, align 4
@I387_FOP_REGNUM = common dso_local global i32 0, align 4
@NUM_REGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @do_child_fetch_inferior_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_child_fetch_inferior_registers(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_thread, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %8 = bitcast %struct.TYPE_5__* %7 to i8*
  %9 = load i32*, i32** @mappings, align 8
  %10 = load i32, i32* %2, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %8, i64 %14
  store i8* %15, i8** %3, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_thread, align 8
  %17 = icmp ne %struct.TYPE_4__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  br label %119

19:                                               ; preds = %1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_thread, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %74

24:                                               ; preds = %19
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_thread, align 8
  store %struct.TYPE_4__* %25, %struct.TYPE_4__** %5, align 8
  %26 = load i32, i32* @CONTEXT_DEBUGGER_DR, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 6
  store i32 %26, i32* %29, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = call i32 @GetThreadContext(i32 %32, %struct.TYPE_5__* %34)
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** @dr, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = load i32*, i32** @dr, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** @dr, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 2
  store i32 %51, i32* %53, align 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i32*, i32** @dr, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 3
  store i32 %57, i32* %59, align 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** @dr, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 6
  store i32 %63, i32* %65, align 4
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32*, i32** @dr, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 7
  store i32 %69, i32* %71, align 4
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_thread, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  store i64 0, i64* %73, align 8
  br label %74

74:                                               ; preds = %24, %19
  %75 = load i32, i32* %2, align 4
  %76 = load i32, i32* @I387_FISEG_REGNUM, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %74
  %79 = load i8*, i8** %3, align 8
  %80 = bitcast i8* %79 to i64*
  %81 = load i64, i64* %80, align 8
  %82 = and i64 %81, 65535
  store i64 %82, i64* %4, align 8
  %83 = load i32, i32* %2, align 4
  %84 = bitcast i64* %4 to i8*
  %85 = call i32 @supply_register(i32 %83, i8* %84)
  br label %119

86:                                               ; preds = %74
  %87 = load i32, i32* %2, align 4
  %88 = load i32, i32* @I387_FOP_REGNUM, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %99

90:                                               ; preds = %86
  %91 = load i8*, i8** %3, align 8
  %92 = bitcast i8* %91 to i64*
  %93 = load i64, i64* %92, align 8
  %94 = ashr i64 %93, 16
  %95 = and i64 %94, 2047
  store i64 %95, i64* %4, align 8
  %96 = load i32, i32* %2, align 4
  %97 = bitcast i64* %4 to i8*
  %98 = call i32 @supply_register(i32 %96, i8* %97)
  br label %118

99:                                               ; preds = %86
  %100 = load i32, i32* %2, align 4
  %101 = icmp sge i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %99
  %103 = load i32, i32* %2, align 4
  %104 = load i8*, i8** %3, align 8
  %105 = call i32 @supply_register(i32 %103, i8* %104)
  br label %117

106:                                              ; preds = %99
  store i32 0, i32* %2, align 4
  br label %107

107:                                              ; preds = %113, %106
  %108 = load i32, i32* %2, align 4
  %109 = load i32, i32* @NUM_REGS, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %116

111:                                              ; preds = %107
  %112 = load i32, i32* %2, align 4
  call void @do_child_fetch_inferior_registers(i32 %112)
  br label %113

113:                                              ; preds = %111
  %114 = load i32, i32* %2, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %2, align 4
  br label %107

116:                                              ; preds = %107
  br label %117

117:                                              ; preds = %116, %102
  br label %118

118:                                              ; preds = %117, %90
  br label %119

119:                                              ; preds = %18, %118, %78
  ret void
}

declare dso_local i32 @GetThreadContext(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @supply_register(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
