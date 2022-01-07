; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_roff.c_roff_node_append.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_roff.c_roff_node_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff_man = type { i32, %struct.roff_node* }
%struct.roff_node = type { i32, %struct.roff_node*, i32, %struct.roff_node*, %struct.roff_node*, i32, %struct.roff_node*, %struct.roff_node*, %struct.roff_node*, %struct.roff_node*, %struct.roff_node* }

@ENDBODY_NOT = common dso_local global i32 0, align 4
@ROFFT_BLOCK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @roff_node_append(%struct.roff_man* %0, %struct.roff_node* %1) #0 {
  %3 = alloca %struct.roff_man*, align 8
  %4 = alloca %struct.roff_node*, align 8
  store %struct.roff_man* %0, %struct.roff_man** %3, align 8
  store %struct.roff_node* %1, %struct.roff_node** %4, align 8
  %5 = load %struct.roff_man*, %struct.roff_man** %3, align 8
  %6 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %95 [
    i32 128, label %8
    i32 129, label %56
  ]

8:                                                ; preds = %2
  %9 = load %struct.roff_man*, %struct.roff_man** %3, align 8
  %10 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %9, i32 0, i32 1
  %11 = load %struct.roff_node*, %struct.roff_node** %10, align 8
  %12 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %11, i32 0, i32 10
  %13 = load %struct.roff_node*, %struct.roff_node** %12, align 8
  %14 = icmp ne %struct.roff_node* %13, null
  br i1 %14, label %15, label %30

15:                                               ; preds = %8
  %16 = load %struct.roff_man*, %struct.roff_man** %3, align 8
  %17 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %16, i32 0, i32 1
  %18 = load %struct.roff_node*, %struct.roff_node** %17, align 8
  %19 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %18, i32 0, i32 10
  %20 = load %struct.roff_node*, %struct.roff_node** %19, align 8
  %21 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %22 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %21, i32 0, i32 10
  store %struct.roff_node* %20, %struct.roff_node** %22, align 8
  %23 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %24 = load %struct.roff_man*, %struct.roff_man** %3, align 8
  %25 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %24, i32 0, i32 1
  %26 = load %struct.roff_node*, %struct.roff_node** %25, align 8
  %27 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %26, i32 0, i32 10
  %28 = load %struct.roff_node*, %struct.roff_node** %27, align 8
  %29 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %28, i32 0, i32 9
  store %struct.roff_node* %23, %struct.roff_node** %29, align 8
  br label %38

30:                                               ; preds = %8
  %31 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %32 = load %struct.roff_man*, %struct.roff_man** %3, align 8
  %33 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %32, i32 0, i32 1
  %34 = load %struct.roff_node*, %struct.roff_node** %33, align 8
  %35 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %34, i32 0, i32 1
  %36 = load %struct.roff_node*, %struct.roff_node** %35, align 8
  %37 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %36, i32 0, i32 8
  store %struct.roff_node* %31, %struct.roff_node** %37, align 8
  br label %38

38:                                               ; preds = %30, %15
  %39 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %40 = load %struct.roff_man*, %struct.roff_man** %3, align 8
  %41 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %40, i32 0, i32 1
  %42 = load %struct.roff_node*, %struct.roff_node** %41, align 8
  %43 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %42, i32 0, i32 10
  store %struct.roff_node* %39, %struct.roff_node** %43, align 8
  %44 = load %struct.roff_man*, %struct.roff_man** %3, align 8
  %45 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %44, i32 0, i32 1
  %46 = load %struct.roff_node*, %struct.roff_node** %45, align 8
  %47 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %48 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %47, i32 0, i32 9
  store %struct.roff_node* %46, %struct.roff_node** %48, align 8
  %49 = load %struct.roff_man*, %struct.roff_man** %3, align 8
  %50 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %49, i32 0, i32 1
  %51 = load %struct.roff_node*, %struct.roff_node** %50, align 8
  %52 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %51, i32 0, i32 1
  %53 = load %struct.roff_node*, %struct.roff_node** %52, align 8
  %54 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %55 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %54, i32 0, i32 1
  store %struct.roff_node* %53, %struct.roff_node** %55, align 8
  br label %97

56:                                               ; preds = %2
  %57 = load %struct.roff_man*, %struct.roff_man** %3, align 8
  %58 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %57, i32 0, i32 1
  %59 = load %struct.roff_node*, %struct.roff_node** %58, align 8
  %60 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %59, i32 0, i32 7
  %61 = load %struct.roff_node*, %struct.roff_node** %60, align 8
  %62 = icmp ne %struct.roff_node* %61, null
  br i1 %62, label %63, label %78

63:                                               ; preds = %56
  %64 = load %struct.roff_man*, %struct.roff_man** %3, align 8
  %65 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %64, i32 0, i32 1
  %66 = load %struct.roff_node*, %struct.roff_node** %65, align 8
  %67 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %66, i32 0, i32 7
  %68 = load %struct.roff_node*, %struct.roff_node** %67, align 8
  %69 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %70 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %69, i32 0, i32 10
  store %struct.roff_node* %68, %struct.roff_node** %70, align 8
  %71 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %72 = load %struct.roff_man*, %struct.roff_man** %3, align 8
  %73 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %72, i32 0, i32 1
  %74 = load %struct.roff_node*, %struct.roff_node** %73, align 8
  %75 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %74, i32 0, i32 7
  %76 = load %struct.roff_node*, %struct.roff_node** %75, align 8
  %77 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %76, i32 0, i32 9
  store %struct.roff_node* %71, %struct.roff_node** %77, align 8
  br label %84

78:                                               ; preds = %56
  %79 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %80 = load %struct.roff_man*, %struct.roff_man** %3, align 8
  %81 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %80, i32 0, i32 1
  %82 = load %struct.roff_node*, %struct.roff_node** %81, align 8
  %83 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %82, i32 0, i32 8
  store %struct.roff_node* %79, %struct.roff_node** %83, align 8
  br label %84

84:                                               ; preds = %78, %63
  %85 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %86 = load %struct.roff_man*, %struct.roff_man** %3, align 8
  %87 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %86, i32 0, i32 1
  %88 = load %struct.roff_node*, %struct.roff_node** %87, align 8
  %89 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %88, i32 0, i32 7
  store %struct.roff_node* %85, %struct.roff_node** %89, align 8
  %90 = load %struct.roff_man*, %struct.roff_man** %3, align 8
  %91 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %90, i32 0, i32 1
  %92 = load %struct.roff_node*, %struct.roff_node** %91, align 8
  %93 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %94 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %93, i32 0, i32 1
  store %struct.roff_node* %92, %struct.roff_node** %94, align 8
  br label %97

95:                                               ; preds = %2
  %96 = call i32 (...) @abort() #3
  unreachable

97:                                               ; preds = %84, %38
  %98 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %99 = load %struct.roff_man*, %struct.roff_man** %3, align 8
  %100 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %99, i32 0, i32 1
  store %struct.roff_node* %98, %struct.roff_node** %100, align 8
  %101 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %102 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  switch i32 %103, label %129 [
    i32 131, label %104
    i32 132, label %110
    i32 130, label %123
  ]

104:                                              ; preds = %97
  %105 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %106 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %107 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %106, i32 0, i32 1
  %108 = load %struct.roff_node*, %struct.roff_node** %107, align 8
  %109 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %108, i32 0, i32 6
  store %struct.roff_node* %105, %struct.roff_node** %109, align 8
  br label %130

110:                                              ; preds = %97
  %111 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %112 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @ENDBODY_NOT, align 4
  %115 = icmp ne i32 %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  br label %148

117:                                              ; preds = %110
  %118 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %119 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %120 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %119, i32 0, i32 1
  %121 = load %struct.roff_node*, %struct.roff_node** %120, align 8
  %122 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %121, i32 0, i32 4
  store %struct.roff_node* %118, %struct.roff_node** %122, align 8
  br label %130

123:                                              ; preds = %97
  %124 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %125 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %126 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %125, i32 0, i32 1
  %127 = load %struct.roff_node*, %struct.roff_node** %126, align 8
  %128 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %127, i32 0, i32 3
  store %struct.roff_node* %124, %struct.roff_node** %128, align 8
  br label %130

129:                                              ; preds = %97
  br label %148

130:                                              ; preds = %123, %117, %104
  %131 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %132 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %131, i32 0, i32 1
  %133 = load %struct.roff_node*, %struct.roff_node** %132, align 8
  %134 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %137 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %136, i32 0, i32 2
  store i32 %135, i32* %137, align 8
  %138 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %139 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %138, i32 0, i32 1
  %140 = load %struct.roff_node*, %struct.roff_node** %139, align 8
  %141 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = sext i32 %142 to i64
  %144 = load i64, i64* @ROFFT_BLOCK, align 8
  %145 = icmp eq i64 %143, %144
  %146 = zext i1 %145 to i32
  %147 = call i32 @assert(i32 %146)
  br label %148

148:                                              ; preds = %130, %129, %116
  ret void
}

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #1

declare dso_local i32 @assert(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
