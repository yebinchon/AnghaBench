; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_asldebug.c_UtDumpParseOpName.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_asldebug.c_UtDumpParseOpName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@ASL_TREE_OUTPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%5.5d [%2d]\00", align 1
@DEBUG_SPACES_PER_INDENT = common dso_local global i32 0, align 4
@DEBUG_MAX_LINE_LENGTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"\0A%*s\00", align 1
@DEBUG_FULL_LINE_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32, i32)* @UtDumpParseOpName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UtDumpParseOpName(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* @ASL_TREE_OUTPUT, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 (i32, i8*, ...) @DbgPrint(i32 %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17)
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @UtGetOpName(i32 %22)
  store i8* %23, i8** %7, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @DEBUG_SPACES_PER_INDENT, align 4
  %26 = mul nsw i32 %24, %25
  store i32 %26, i32* %8, align 4
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @strlen(i8* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, 1
  %31 = load i32, i32* %9, align 4
  %32 = add nsw i32 %30, %31
  %33 = add nsw i32 %32, 1
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %33, %34
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* @DEBUG_MAX_LINE_LENGTH, align 4
  %37 = add nsw i32 %36, 1
  %38 = load i32, i32* %10, align 4
  %39 = sub nsw i32 %37, %38
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %3
  %43 = load i32, i32* @ASL_TREE_OUTPUT, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 (i32, i8*, ...) @DbgPrint(i32 %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %46

46:                                               ; preds = %42, %3
  %47 = load i32, i32* @ASL_TREE_OUTPUT, align 4
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 (i32, i8*, ...) @DbgPrint(i32 %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %48)
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @DEBUG_MAX_LINE_LENGTH, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %46
  %54 = load i32, i32* @ASL_TREE_OUTPUT, align 4
  %55 = load i32, i32* @DEBUG_FULL_LINE_LENGTH, align 4
  %56 = load i32, i32* %6, align 4
  %57 = sub nsw i32 %55, %56
  %58 = call i32 (i32, i8*, ...) @DbgPrint(i32 %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %63

59:                                               ; preds = %46
  %60 = load i32, i32* @ASL_TREE_OUTPUT, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call i32 (i32, i8*, ...) @DbgPrint(i32 %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %63

63:                                               ; preds = %59, %53
  ret void
}

declare dso_local i32 @DbgPrint(i32, i8*, ...) #1

declare dso_local i8* @UtGetOpName(i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
