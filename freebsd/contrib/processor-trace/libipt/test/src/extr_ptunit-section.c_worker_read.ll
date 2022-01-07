; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-section.c_worker_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-section.c_worker_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.section_fixture = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@num_work = common dso_local global i32 0, align 4
@__const.worker_read.buffer = private unnamed_addr constant [3 x i32] [i32 204, i32 204, i32 204], align 4
@pte_invalid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @worker_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @worker_read(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.section_fixture*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [3 x i32], align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.section_fixture*
  store %struct.section_fixture* %10, %struct.section_fixture** %4, align 8
  %11 = load %struct.section_fixture*, %struct.section_fixture** %4, align 8
  %12 = icmp ne %struct.section_fixture* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @pte_internal, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %95

16:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %80, %16
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @num_work, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %83

21:                                               ; preds = %17
  %22 = bitcast [3 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 bitcast ([3 x i32]* @__const.worker_read.buffer to i8*), i64 12, i1 false)
  %23 = load %struct.section_fixture*, %struct.section_fixture** %4, align 8
  %24 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @pt_section_get(i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %2, align 4
  br label %95

31:                                               ; preds = %21
  %32 = load %struct.section_fixture*, %struct.section_fixture** %4, align 8
  %33 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @pt_section_map(i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %89

39:                                               ; preds = %31
  %40 = load %struct.section_fixture*, %struct.section_fixture** %4, align 8
  %41 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %44 = call i32 @pt_section_read(i32 %42, i32* %43, i32 2, i32 0)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %84

48:                                               ; preds = %39
  %49 = load i32, i32* @pte_invalid, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 2
  br i1 %52, label %61, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 2
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 4
  br i1 %60, label %61, label %62

61:                                               ; preds = %57, %53, %48
  br label %84

62:                                               ; preds = %57
  %63 = load %struct.section_fixture*, %struct.section_fixture** %4, align 8
  %64 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @pt_section_unmap(i32 %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %89

70:                                               ; preds = %62
  %71 = load %struct.section_fixture*, %struct.section_fixture** %4, align 8
  %72 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @pt_section_put(i32 %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %2, align 4
  br label %95

79:                                               ; preds = %70
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %5, align 4
  br label %17

83:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %95

84:                                               ; preds = %61, %47
  %85 = load %struct.section_fixture*, %struct.section_fixture** %4, align 8
  %86 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @pt_section_unmap(i32 %87)
  br label %89

89:                                               ; preds = %84, %69, %38
  %90 = load %struct.section_fixture*, %struct.section_fixture** %4, align 8
  %91 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @pt_section_put(i32 %92)
  %94 = load i32, i32* %6, align 4
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %89, %83, %77, %29, %13
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pt_section_get(i32) #2

declare dso_local i32 @pt_section_map(i32) #2

declare dso_local i32 @pt_section_read(i32, i32*, i32, i32) #2

declare dso_local i32 @pt_section_unmap(i32) #2

declare dso_local i32 @pt_section_put(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
