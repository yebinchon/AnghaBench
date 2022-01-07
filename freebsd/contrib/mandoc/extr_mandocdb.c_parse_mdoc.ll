; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mandocdb.c_parse_mdoc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mandocdb.c_parse_mdoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdoc_handler = type { i32, i32, i32 (%struct.mpage*, %struct.roff_meta*, %struct.roff_node*)* }
%struct.mpage = type { i32 }
%struct.roff_meta = type { i32 }
%struct.roff_node = type { i64, i32, i32, %struct.roff_node*, %struct.roff_node* }

@TOKEN_NONE = common dso_local global i64 0, align 8
@ROFF_MAX = common dso_local global i64 0, align 8
@MDOC_Dd = common dso_local global i64 0, align 8
@MDOC_MAX = common dso_local global i64 0, align 8
@mdoc_handlers = common dso_local global %struct.mdoc_handler* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpage*, %struct.roff_meta*, %struct.roff_node*)* @parse_mdoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_mdoc(%struct.mpage* %0, %struct.roff_meta* %1, %struct.roff_node* %2) #0 {
  %4 = alloca %struct.mpage*, align 8
  %5 = alloca %struct.roff_meta*, align 8
  %6 = alloca %struct.roff_node*, align 8
  %7 = alloca %struct.mdoc_handler*, align 8
  store %struct.mpage* %0, %struct.mpage** %4, align 8
  store %struct.roff_meta* %1, %struct.roff_meta** %5, align 8
  store %struct.roff_node* %2, %struct.roff_node** %6, align 8
  %8 = load %struct.roff_node*, %struct.roff_node** %6, align 8
  %9 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %8, i32 0, i32 3
  %10 = load %struct.roff_node*, %struct.roff_node** %9, align 8
  store %struct.roff_node* %10, %struct.roff_node** %6, align 8
  br label %11

11:                                               ; preds = %107, %3
  %12 = load %struct.roff_node*, %struct.roff_node** %6, align 8
  %13 = icmp ne %struct.roff_node* %12, null
  br i1 %13, label %14, label %111

14:                                               ; preds = %11
  %15 = load %struct.roff_node*, %struct.roff_node** %6, align 8
  %16 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @TOKEN_NONE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = load %struct.roff_node*, %struct.roff_node** %6, align 8
  %22 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ROFF_MAX, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20, %14
  br label %107

27:                                               ; preds = %20
  %28 = load %struct.roff_node*, %struct.roff_node** %6, align 8
  %29 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @MDOC_Dd, align 8
  %32 = icmp sge i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load %struct.roff_node*, %struct.roff_node** %6, align 8
  %35 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @MDOC_MAX, align 8
  %38 = icmp slt i64 %36, %37
  br label %39

39:                                               ; preds = %33, %27
  %40 = phi i1 [ false, %27 ], [ %38, %33 ]
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load %struct.mdoc_handler*, %struct.mdoc_handler** @mdoc_handlers, align 8
  %44 = load %struct.roff_node*, %struct.roff_node** %6, align 8
  %45 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @MDOC_Dd, align 8
  %48 = sub nsw i64 %46, %47
  %49 = getelementptr inbounds %struct.mdoc_handler, %struct.mdoc_handler* %43, i64 %48
  store %struct.mdoc_handler* %49, %struct.mdoc_handler** %7, align 8
  %50 = load %struct.roff_node*, %struct.roff_node** %6, align 8
  %51 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.mdoc_handler*, %struct.mdoc_handler** %7, align 8
  %54 = getelementptr inbounds %struct.mdoc_handler, %struct.mdoc_handler* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = and i32 %52, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %39
  br label %107

59:                                               ; preds = %39
  %60 = load %struct.roff_node*, %struct.roff_node** %6, align 8
  %61 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  switch i32 %62, label %96 [
    i32 130, label %63
    i32 132, label %63
    i32 129, label %63
    i32 131, label %63
    i32 128, label %63
  ]

63:                                               ; preds = %59, %59, %59, %59, %59
  %64 = load %struct.mdoc_handler*, %struct.mdoc_handler** %7, align 8
  %65 = getelementptr inbounds %struct.mdoc_handler, %struct.mdoc_handler* %64, i32 0, i32 2
  %66 = load i32 (%struct.mpage*, %struct.roff_meta*, %struct.roff_node*)*, i32 (%struct.mpage*, %struct.roff_meta*, %struct.roff_node*)** %65, align 8
  %67 = icmp ne i32 (%struct.mpage*, %struct.roff_meta*, %struct.roff_node*)* %66, null
  br i1 %67, label %68, label %78

68:                                               ; preds = %63
  %69 = load %struct.mdoc_handler*, %struct.mdoc_handler** %7, align 8
  %70 = getelementptr inbounds %struct.mdoc_handler, %struct.mdoc_handler* %69, i32 0, i32 2
  %71 = load i32 (%struct.mpage*, %struct.roff_meta*, %struct.roff_node*)*, i32 (%struct.mpage*, %struct.roff_meta*, %struct.roff_node*)** %70, align 8
  %72 = load %struct.mpage*, %struct.mpage** %4, align 8
  %73 = load %struct.roff_meta*, %struct.roff_meta** %5, align 8
  %74 = load %struct.roff_node*, %struct.roff_node** %6, align 8
  %75 = call i32 %71(%struct.mpage* %72, %struct.roff_meta* %73, %struct.roff_node* %74)
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %68
  br label %97

78:                                               ; preds = %68, %63
  %79 = load %struct.mdoc_handler*, %struct.mdoc_handler** %7, align 8
  %80 = getelementptr inbounds %struct.mdoc_handler, %struct.mdoc_handler* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %78
  %84 = load %struct.mpage*, %struct.mpage** %4, align 8
  %85 = load %struct.roff_node*, %struct.roff_node** %6, align 8
  %86 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %85, i32 0, i32 3
  %87 = load %struct.roff_node*, %struct.roff_node** %86, align 8
  %88 = load %struct.mdoc_handler*, %struct.mdoc_handler** %7, align 8
  %89 = getelementptr inbounds %struct.mdoc_handler, %struct.mdoc_handler* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.mdoc_handler*, %struct.mdoc_handler** %7, align 8
  %92 = getelementptr inbounds %struct.mdoc_handler, %struct.mdoc_handler* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @putmdockey(%struct.mpage* %84, %struct.roff_node* %87, i32 %90, i32 %93)
  br label %95

95:                                               ; preds = %83, %78
  br label %97

96:                                               ; preds = %59
  br label %107

97:                                               ; preds = %95, %77
  %98 = load %struct.roff_node*, %struct.roff_node** %6, align 8
  %99 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %98, i32 0, i32 3
  %100 = load %struct.roff_node*, %struct.roff_node** %99, align 8
  %101 = icmp ne %struct.roff_node* null, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load %struct.mpage*, %struct.mpage** %4, align 8
  %104 = load %struct.roff_meta*, %struct.roff_meta** %5, align 8
  %105 = load %struct.roff_node*, %struct.roff_node** %6, align 8
  call void @parse_mdoc(%struct.mpage* %103, %struct.roff_meta* %104, %struct.roff_node* %105)
  br label %106

106:                                              ; preds = %102, %97
  br label %107

107:                                              ; preds = %106, %96, %58, %26
  %108 = load %struct.roff_node*, %struct.roff_node** %6, align 8
  %109 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %108, i32 0, i32 4
  %110 = load %struct.roff_node*, %struct.roff_node** %109, align 8
  store %struct.roff_node* %110, %struct.roff_node** %6, align 8
  br label %11

111:                                              ; preds = %11
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @putmdockey(%struct.mpage*, %struct.roff_node*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
