; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_target.c_debug_to_xfer_memory.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_target.c_debug_to_xfer_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i64, i8*, i32, i32, %struct.mem_attrib*, %struct.target_ops*)* }
%struct.mem_attrib = type { i32 }
%struct.target_ops = type { i32 }

@debug_target = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@gdb_stdlog = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"target_xfer_memory (0x%x, xxx, %d, %s, xxx) = %d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c", bytes =\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*, i32, i32, %struct.mem_attrib*, %struct.target_ops*)* @debug_to_xfer_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @debug_to_xfer_memory(i64 %0, i8* %1, i32 %2, i32 %3, %struct.mem_attrib* %4, %struct.target_ops* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mem_attrib*, align 8
  %12 = alloca %struct.target_ops*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.mem_attrib* %4, %struct.mem_attrib** %11, align 8
  store %struct.target_ops* %5, %struct.target_ops** %12, align 8
  %15 = load i32 (i64, i8*, i32, i32, %struct.mem_attrib*, %struct.target_ops*)*, i32 (i64, i8*, i32, i32, %struct.mem_attrib*, %struct.target_ops*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @debug_target, i32 0, i32 0), align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.mem_attrib*, %struct.mem_attrib** %11, align 8
  %21 = load %struct.target_ops*, %struct.target_ops** %12, align 8
  %22 = call i32 %15(i64 %16, i8* %17, i32 %18, i32 %19, %struct.mem_attrib* %20, %struct.target_ops* %21)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* @gdb_stdlog, align 4
  %24 = load i64, i64* %7, align 8
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %31 = load i32, i32* %13, align 4
  %32 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %23, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26, i8* %30, i32 %31)
  %33 = load i32, i32* %13, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %67

35:                                               ; preds = %6
  %36 = load i32, i32* @gdb_stdlog, align 4
  %37 = call i32 @fputs_unfiltered(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %36)
  store i32 0, i32* %14, align 4
  br label %38

38:                                               ; preds = %63, %35
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %66

42:                                               ; preds = %38
  %43 = load i8*, i8** %8, align 8
  %44 = load i32, i32* %14, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = ptrtoint i8* %46 to i64
  %48 = and i64 %47, 15
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load i32, i32* @gdb_stdlog, align 4
  %52 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %42
  %54 = load i32, i32* @gdb_stdlog, align 4
  %55 = load i8*, i8** %8, align 8
  %56 = load i32, i32* %14, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = and i32 %60, 255
  %62 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %53
  %64 = load i32, i32* %14, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %14, align 4
  br label %38

66:                                               ; preds = %38
  br label %67

67:                                               ; preds = %66, %6
  %68 = load i32, i32* @gdb_stdlog, align 4
  %69 = call i32 @fputc_unfiltered(i8 signext 10, i32 %68)
  %70 = load i32, i32* %13, align 4
  ret i32 %70
}

declare dso_local i32 @fprintf_unfiltered(i32, i8*, ...) #1

declare dso_local i32 @fputs_unfiltered(i8*, i32) #1

declare dso_local i32 @fputc_unfiltered(i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
