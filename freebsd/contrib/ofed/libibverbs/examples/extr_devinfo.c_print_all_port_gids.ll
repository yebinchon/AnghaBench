; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/examples/extr_devinfo.c_print_all_port_gids.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/examples/extr_devinfo.c_print_all_port_gids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_context = type { i32 }
%union.ibv_gid = type { i32* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Failed to query gid to port %d, index %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [87 x i8] c"\09\09\09GID[%3d]:\09\09%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibv_context*, i32, i32)* @print_all_port_gids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_all_port_gids(%struct.ibv_context* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ibv_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.ibv_gid, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ibv_context* %0, %struct.ibv_context** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %99, %3
  %12 = load i32, i32* %10, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %102

15:                                               ; preds = %11
  %16 = load %struct.ibv_context*, %struct.ibv_context** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @ibv_query_gid(%struct.ibv_context* %16, i32 %17, i32 %18, %union.ibv_gid* %8)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %15
  %23 = load i32, i32* @stderr, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @fprintf(i32 %23, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %4, align 4
  br label %104

28:                                               ; preds = %15
  %29 = call i32 @null_gid(%union.ibv_gid* %8)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %98, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %10, align 4
  %33 = bitcast %union.ibv_gid* %8 to i32**
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = bitcast %union.ibv_gid* %8 to i32**
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = bitcast %union.ibv_gid* %8 to i32**
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  %44 = load i32, i32* %43, align 4
  %45 = bitcast %union.ibv_gid* %8 to i32**
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 3
  %48 = load i32, i32* %47, align 4
  %49 = bitcast %union.ibv_gid* %8 to i32**
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 4
  %52 = load i32, i32* %51, align 4
  %53 = bitcast %union.ibv_gid* %8 to i32**
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 5
  %56 = load i32, i32* %55, align 4
  %57 = bitcast %union.ibv_gid* %8 to i32**
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 6
  %60 = load i32, i32* %59, align 4
  %61 = bitcast %union.ibv_gid* %8 to i32**
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 7
  %64 = load i32, i32* %63, align 4
  %65 = bitcast %union.ibv_gid* %8 to i32**
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 8
  %68 = load i32, i32* %67, align 4
  %69 = bitcast %union.ibv_gid* %8 to i32**
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 9
  %72 = load i32, i32* %71, align 4
  %73 = bitcast %union.ibv_gid* %8 to i32**
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 10
  %76 = load i32, i32* %75, align 4
  %77 = bitcast %union.ibv_gid* %8 to i32**
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 11
  %80 = load i32, i32* %79, align 4
  %81 = bitcast %union.ibv_gid* %8 to i32**
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 12
  %84 = load i32, i32* %83, align 4
  %85 = bitcast %union.ibv_gid* %8 to i32**
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 13
  %88 = load i32, i32* %87, align 4
  %89 = bitcast %union.ibv_gid* %8 to i32**
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 14
  %92 = load i32, i32* %91, align 4
  %93 = bitcast %union.ibv_gid* %8 to i32**
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 15
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @printf(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %36, i32 %40, i32 %44, i32 %48, i32 %52, i32 %56, i32 %60, i32 %64, i32 %68, i32 %72, i32 %76, i32 %80, i32 %84, i32 %88, i32 %92, i32 %96)
  br label %98

98:                                               ; preds = %31, %28
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %10, align 4
  br label %11

102:                                              ; preds = %11
  %103 = load i32, i32* %9, align 4
  store i32 %103, i32* %4, align 4
  br label %104

104:                                              ; preds = %102, %22
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i32 @ibv_query_gid(%struct.ibv_context*, i32, i32, %union.ibv_gid*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @null_gid(%union.ibv_gid*) #1

declare dso_local i32 @printf(i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
