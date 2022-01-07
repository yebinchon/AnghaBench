; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_eqn.c_eqn_delim.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_eqn.c_eqn_delim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eqn_node = type { i8*, i32, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@MANDOCERR_REQ_EMPTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"delim\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eqn_node*)* @eqn_delim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eqn_delim(%struct.eqn_node* %0) #0 {
  %2 = alloca %struct.eqn_node*, align 8
  store %struct.eqn_node* %0, %struct.eqn_node** %2, align 8
  %3 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %4 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %3, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8
  %6 = getelementptr inbounds i8, i8* %5, i64 0
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %1
  %11 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %12 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 1
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %44

18:                                               ; preds = %10, %1
  %19 = load i32, i32* @MANDOCERR_REQ_EMPTY, align 4
  %20 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %21 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %20, i32 0, i32 4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %26 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %25, i32 0, i32 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @mandoc_msg(i32 %19, i32 %24, i32 %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %32 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %18
  %39 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %40 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %40, align 8
  br label %43

43:                                               ; preds = %38, %18
  br label %102

44:                                               ; preds = %10
  %45 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %46 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i64 @strncmp(i8* %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %44
  %51 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %52 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %51, i32 0, i32 1
  store i32 0, i32* %52, align 8
  %53 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %54 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 3
  store i8* %56, i8** %54, align 8
  br label %101

57:                                               ; preds = %44
  %58 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %59 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i64 @strncmp(i8* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %81

63:                                               ; preds = %57
  %64 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %65 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %63
  %69 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %70 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %75 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %74, i32 0, i32 1
  store i32 1, i32* %75, align 8
  br label %76

76:                                               ; preds = %73, %68, %63
  %77 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %78 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 2
  store i8* %80, i8** %78, align 8
  br label %100

81:                                               ; preds = %57
  %82 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %83 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %83, align 8
  %86 = load i8, i8* %84, align 1
  %87 = sext i8 %86 to i64
  %88 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %89 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %88, i32 0, i32 3
  store i64 %87, i64* %89, align 8
  %90 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %91 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %91, align 8
  %94 = load i8, i8* %92, align 1
  %95 = sext i8 %94 to i64
  %96 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %97 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %96, i32 0, i32 2
  store i64 %95, i64* %97, align 8
  %98 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %99 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %98, i32 0, i32 1
  store i32 1, i32* %99, align 8
  br label %100

100:                                              ; preds = %81, %76
  br label %101

101:                                              ; preds = %100, %50
  br label %102

102:                                              ; preds = %101, %43
  ret void
}

declare dso_local i32 @mandoc_msg(i32, i32, i32, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
