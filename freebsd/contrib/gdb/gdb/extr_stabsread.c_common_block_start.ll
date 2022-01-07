; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_stabsread.c_common_block_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_stabsread.c_common_block_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.objfile = type { i32 }

@common_block_name = common dso_local global i32* null, align 8
@symfile_complaints = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Invalid symbol data: common block within common block\00", align 1
@local_symbols = common dso_local global %struct.TYPE_3__* null, align 8
@common_block = common dso_local global %struct.TYPE_3__* null, align 8
@common_block_i = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @common_block_start(i8* %0, %struct.objfile* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.objfile*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.objfile* %1, %struct.objfile** %4, align 8
  %5 = load i32*, i32** @common_block_name, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = call i32 @complaint(i32* @symfile_complaints, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %7, %2
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @local_symbols, align 8
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** @common_block, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @local_symbols, align 8
  %12 = icmp ne %struct.TYPE_3__* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** @local_symbols, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  br label %18

17:                                               ; preds = %9
  br label %18

18:                                               ; preds = %17, %13
  %19 = phi i32 [ %16, %13 ], [ 0, %17 ]
  store i32 %19, i32* @common_block_i, align 4
  %20 = load i8*, i8** %3, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @strlen(i8* %21)
  %23 = load %struct.objfile*, %struct.objfile** %4, align 8
  %24 = getelementptr inbounds %struct.objfile, %struct.objfile* %23, i32 0, i32 0
  %25 = call i32* @obsavestring(i8* %20, i32 %22, i32* %24)
  store i32* %25, i32** @common_block_name, align 8
  ret void
}

declare dso_local i32 @complaint(i32*, i8*) #1

declare dso_local i32* @obsavestring(i8*, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
