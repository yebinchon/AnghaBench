; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_roff.c_roff_node_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_roff.c_roff_node_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff_node = type { i32, i32, i32, i32, i32, i32 }
%struct.roff_man = type { i32, i32 }

@MDOC_SYNOPSIS = common dso_local global i32 0, align 4
@NODE_SYNPRETTY = common dso_local global i32 0, align 4
@ROFF_NOFILL = common dso_local global i32 0, align 4
@ROFF_NONOFILL = common dso_local global i32 0, align 4
@NODE_NOFILL = common dso_local global i32 0, align 4
@MDOC_NEWLINE = common dso_local global i32 0, align 4
@NODE_LINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.roff_node* @roff_node_alloc(%struct.roff_man* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.roff_man*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.roff_node*, align 8
  store %struct.roff_man* %0, %struct.roff_man** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = call %struct.roff_node* @mandoc_calloc(i32 1, i32 24)
  store %struct.roff_node* %12, %struct.roff_node** %11, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.roff_node*, %struct.roff_node** %11, align 8
  %15 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.roff_node*, %struct.roff_node** %11, align 8
  %18 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.roff_node*, %struct.roff_node** %11, align 8
  %21 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.roff_node*, %struct.roff_node** %11, align 8
  %24 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  %25 = load %struct.roff_man*, %struct.roff_man** %6, align 8
  %26 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.roff_node*, %struct.roff_node** %11, align 8
  %29 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 4
  %30 = load %struct.roff_man*, %struct.roff_man** %6, align 8
  %31 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @MDOC_SYNOPSIS, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %5
  %37 = load i32, i32* @NODE_SYNPRETTY, align 4
  %38 = load %struct.roff_node*, %struct.roff_node** %11, align 8
  %39 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  br label %49

42:                                               ; preds = %5
  %43 = load i32, i32* @NODE_SYNPRETTY, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.roff_node*, %struct.roff_node** %11, align 8
  %46 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %42, %36
  %50 = load %struct.roff_man*, %struct.roff_man** %6, align 8
  %51 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @ROFF_NOFILL, align 4
  %54 = load i32, i32* @ROFF_NONOFILL, align 4
  %55 = or i32 %53, %54
  %56 = and i32 %52, %55
  %57 = load i32, i32* @ROFF_NOFILL, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %49
  %60 = load i32, i32* @NODE_NOFILL, align 4
  %61 = load %struct.roff_node*, %struct.roff_node** %11, align 8
  %62 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  br label %72

65:                                               ; preds = %49
  %66 = load i32, i32* @NODE_NOFILL, align 4
  %67 = xor i32 %66, -1
  %68 = load %struct.roff_node*, %struct.roff_node** %11, align 8
  %69 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, %67
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %65, %59
  %73 = load %struct.roff_man*, %struct.roff_man** %6, align 8
  %74 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @MDOC_NEWLINE, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %72
  %80 = load i32, i32* @NODE_LINE, align 4
  %81 = load %struct.roff_node*, %struct.roff_node** %11, align 8
  %82 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %79, %72
  %86 = load i32, i32* @MDOC_NEWLINE, align 4
  %87 = xor i32 %86, -1
  %88 = load %struct.roff_man*, %struct.roff_man** %6, align 8
  %89 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, %87
  store i32 %91, i32* %89, align 4
  %92 = load %struct.roff_node*, %struct.roff_node** %11, align 8
  ret %struct.roff_node* %92
}

declare dso_local %struct.roff_node* @mandoc_calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
