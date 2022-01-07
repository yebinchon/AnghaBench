; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_verbs.c___ibv_query_gid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_verbs.c___ibv_query_gid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_context = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%union.ibv_gid = type { i32* }

@.str = private unnamed_addr constant [17 x i8] c"ports/%d/gids/%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%hx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ibv_query_gid(%struct.ibv_context* %0, i32 %1, i32 %2, %union.ibv_gid* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ibv_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %union.ibv_gid*, align 8
  %10 = alloca [24 x i8], align 16
  %11 = alloca [41 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ibv_context* %0, %struct.ibv_context** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %union.ibv_gid* %3, %union.ibv_gid** %9, align 8
  %14 = getelementptr inbounds [24 x i8], [24 x i8]* %10, i64 0, i64 0
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @snprintf(i8* %14, i32 24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16)
  %18 = load %struct.ibv_context*, %struct.ibv_context** %6, align 8
  %19 = getelementptr inbounds %struct.ibv_context, %struct.ibv_context* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds [24 x i8], [24 x i8]* %10, i64 0, i64 0
  %24 = getelementptr inbounds [41 x i8], [41 x i8]* %11, i64 0, i64 0
  %25 = call i64 @ibv_read_sysfs_file(i32 %22, i8* %23, i8* %24, i32 41)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %65

28:                                               ; preds = %4
  store i32 0, i32* %13, align 4
  br label %29

29:                                               ; preds = %61, %28
  %30 = load i32, i32* %13, align 4
  %31 = icmp slt i32 %30, 8
  br i1 %31, label %32, label %64

32:                                               ; preds = %29
  %33 = getelementptr inbounds [41 x i8], [41 x i8]* %11, i64 0, i64 0
  %34 = load i32, i32* %13, align 4
  %35 = mul nsw i32 %34, 5
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %33, i64 %36
  %38 = call i32 @sscanf(i8* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %12)
  %39 = icmp ne i32 %38, 1
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  store i32 -1, i32* %5, align 4
  br label %65

41:                                               ; preds = %32
  %42 = load i32, i32* %12, align 4
  %43 = ashr i32 %42, 8
  %44 = load %union.ibv_gid*, %union.ibv_gid** %9, align 8
  %45 = bitcast %union.ibv_gid* %44 to i32**
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %13, align 4
  %48 = mul nsw i32 %47, 2
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  store i32 %43, i32* %50, align 4
  %51 = load i32, i32* %12, align 4
  %52 = and i32 %51, 255
  %53 = load %union.ibv_gid*, %union.ibv_gid** %9, align 8
  %54 = bitcast %union.ibv_gid* %53 to i32**
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %13, align 4
  %57 = mul nsw i32 %56, 2
  %58 = add nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %55, i64 %59
  store i32 %52, i32* %60, align 4
  br label %61

61:                                               ; preds = %41
  %62 = load i32, i32* %13, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %13, align 4
  br label %29

64:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %64, %40, %27
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i64 @ibv_read_sysfs_file(i32, i8*, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
