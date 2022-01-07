; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_target.c_add_target.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_target.c_add_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.target_ops = type { i32, i32, i32, i32* }

@default_xfer_partial = common dso_local global i32* null, align 8
@target_structs = common dso_local global %struct.target_ops** null, align 8
@DEFAULT_ALLOCSIZE = common dso_local global i32 0, align 4
@target_struct_allocsize = common dso_local global i32 0, align 4
@target_struct_size = common dso_local global i32 0, align 4
@targetlist = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"target\00", align 1
@class_run = common dso_local global i32 0, align 4
@target_command = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [283 x i8] c"Connect to a target machine or process.\0AThe first argument is the type or protocol of the target machine.\0ARemaining arguments are interpreted by the target protocol.  For more\0Ainformation on the arguments for a particular protocol, type\0A`help target ' followed by the protocol name.\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"target \00", align 1
@cmdlist = common dso_local global i32 0, align 4
@no_class = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_target(%struct.target_ops* %0) #0 {
  %2 = alloca %struct.target_ops*, align 8
  store %struct.target_ops* %0, %struct.target_ops** %2, align 8
  %3 = load %struct.target_ops*, %struct.target_ops** %2, align 8
  %4 = getelementptr inbounds %struct.target_ops, %struct.target_ops* %3, i32 0, i32 3
  %5 = load i32*, i32** %4, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i32*, i32** @default_xfer_partial, align 8
  %9 = load %struct.target_ops*, %struct.target_ops** %2, align 8
  %10 = getelementptr inbounds %struct.target_ops, %struct.target_ops* %9, i32 0, i32 3
  store i32* %8, i32** %10, align 8
  br label %11

11:                                               ; preds = %7, %1
  %12 = load %struct.target_ops**, %struct.target_ops*** @target_structs, align 8
  %13 = icmp ne %struct.target_ops** %12, null
  br i1 %13, label %22, label %14

14:                                               ; preds = %11
  %15 = load i32, i32* @DEFAULT_ALLOCSIZE, align 4
  store i32 %15, i32* @target_struct_allocsize, align 4
  %16 = load i32, i32* @target_struct_allocsize, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 8
  %19 = trunc i64 %18 to i32
  %20 = call i64 @xmalloc(i32 %19)
  %21 = inttoptr i64 %20 to %struct.target_ops**
  store %struct.target_ops** %21, %struct.target_ops*** @target_structs, align 8
  br label %22

22:                                               ; preds = %14, %11
  %23 = load i32, i32* @target_struct_size, align 4
  %24 = load i32, i32* @target_struct_allocsize, align 4
  %25 = icmp sge i32 %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %22
  %27 = load i32, i32* @target_struct_allocsize, align 4
  %28 = mul nsw i32 %27, 2
  store i32 %28, i32* @target_struct_allocsize, align 4
  %29 = load %struct.target_ops**, %struct.target_ops*** @target_structs, align 8
  %30 = bitcast %struct.target_ops** %29 to i8*
  %31 = load i32, i32* @target_struct_allocsize, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 8
  %34 = trunc i64 %33 to i32
  %35 = call i64 @xrealloc(i8* %30, i32 %34)
  %36 = inttoptr i64 %35 to %struct.target_ops**
  store %struct.target_ops** %36, %struct.target_ops*** @target_structs, align 8
  br label %37

37:                                               ; preds = %26, %22
  %38 = load %struct.target_ops*, %struct.target_ops** %2, align 8
  %39 = load %struct.target_ops**, %struct.target_ops*** @target_structs, align 8
  %40 = load i32, i32* @target_struct_size, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* @target_struct_size, align 4
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds %struct.target_ops*, %struct.target_ops** %39, i64 %42
  store %struct.target_ops* %38, %struct.target_ops** %43, align 8
  %44 = load i32*, i32** @targetlist, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %37
  %47 = load i32, i32* @class_run, align 4
  %48 = load i32, i32* @target_command, align 4
  %49 = call i32 @add_prefix_cmd(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %48, i8* getelementptr inbounds ([283 x i8], [283 x i8]* @.str.1, i64 0, i64 0), i32** @targetlist, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 0, i32* @cmdlist)
  br label %50

50:                                               ; preds = %46, %37
  %51 = load %struct.target_ops*, %struct.target_ops** %2, align 8
  %52 = getelementptr inbounds %struct.target_ops, %struct.target_ops* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @no_class, align 4
  %55 = load %struct.target_ops*, %struct.target_ops** %2, align 8
  %56 = getelementptr inbounds %struct.target_ops, %struct.target_ops* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.target_ops*, %struct.target_ops** %2, align 8
  %59 = getelementptr inbounds %struct.target_ops, %struct.target_ops* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @add_cmd(i32 %53, i32 %54, i32 %57, i32 %60, i32** @targetlist)
  ret void
}

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i64 @xrealloc(i8*, i32) #1

declare dso_local i32 @add_prefix_cmd(i8*, i32, i32, i8*, i32**, i8*, i32, i32*) #1

declare dso_local i32 @add_cmd(i32, i32, i32, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
