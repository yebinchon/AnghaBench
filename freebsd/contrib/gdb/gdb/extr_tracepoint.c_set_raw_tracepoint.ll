; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_tracepoint.c_set_raw_tracepoint.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_tracepoint.c_set_raw_tracepoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.tracepoint = type { i32, %struct.tracepoint*, i32*, i64, i64, i32, i32, i32, i32, i32*, i32 }
%struct.symtab_and_line = type { i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.cleanup = type { i32 }

@xfree = common dso_local global i32 0, align 4
@current_language = common dso_local global %struct.TYPE_4__* null, align 8
@input_radix = common dso_local global i32 0, align 4
@tracepoint_chain = common dso_local global %struct.tracepoint* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tracepoint* (%struct.symtab_and_line*)* @set_raw_tracepoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tracepoint* @set_raw_tracepoint(%struct.symtab_and_line* byval(%struct.symtab_and_line) align 8 %0) #0 {
  %2 = alloca %struct.tracepoint*, align 8
  %3 = alloca %struct.tracepoint*, align 8
  %4 = alloca %struct.cleanup*, align 8
  %5 = call i64 @xmalloc(i32 72)
  %6 = inttoptr i64 %5 to %struct.tracepoint*
  store %struct.tracepoint* %6, %struct.tracepoint** %2, align 8
  %7 = load i32, i32* @xfree, align 4
  %8 = load %struct.tracepoint*, %struct.tracepoint** %2, align 8
  %9 = call %struct.cleanup* @make_cleanup(i32 %7, %struct.tracepoint* %8)
  store %struct.cleanup* %9, %struct.cleanup** %4, align 8
  %10 = load %struct.tracepoint*, %struct.tracepoint** %2, align 8
  %11 = call i32 @memset(%struct.tracepoint* %10, i32 0, i32 72)
  %12 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %0, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.tracepoint*, %struct.tracepoint** %2, align 8
  %15 = getelementptr inbounds %struct.tracepoint, %struct.tracepoint* %14, i32 0, i32 10
  store i32 %13, i32* %15, align 8
  %16 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %0, i32 0, i32 2
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = icmp eq %struct.TYPE_3__* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.tracepoint*, %struct.tracepoint** %2, align 8
  %21 = getelementptr inbounds %struct.tracepoint, %struct.tracepoint* %20, i32 0, i32 9
  store i32* null, i32** %21, align 8
  br label %35

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %0, i32 0, i32 2
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %0, i32 0, i32 2
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @strlen(i32 %30)
  %32 = call i32* @savestring(i32 %26, i32 %31)
  %33 = load %struct.tracepoint*, %struct.tracepoint** %2, align 8
  %34 = getelementptr inbounds %struct.tracepoint, %struct.tracepoint* %33, i32 0, i32 9
  store i32* %32, i32** %34, align 8
  br label %35

35:                                               ; preds = %22, %19
  %36 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %0, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.tracepoint*, %struct.tracepoint** %2, align 8
  %39 = getelementptr inbounds %struct.tracepoint, %struct.tracepoint* %38, i32 0, i32 8
  store i32 %37, i32* %39, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_language, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.tracepoint*, %struct.tracepoint** %2, align 8
  %44 = getelementptr inbounds %struct.tracepoint, %struct.tracepoint* %43, i32 0, i32 7
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @input_radix, align 4
  %46 = load %struct.tracepoint*, %struct.tracepoint** %2, align 8
  %47 = getelementptr inbounds %struct.tracepoint, %struct.tracepoint* %46, i32 0, i32 6
  store i32 %45, i32* %47, align 4
  %48 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %0, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.tracepoint*, %struct.tracepoint** %2, align 8
  %51 = getelementptr inbounds %struct.tracepoint, %struct.tracepoint* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 8
  %52 = load %struct.tracepoint*, %struct.tracepoint** %2, align 8
  %53 = getelementptr inbounds %struct.tracepoint, %struct.tracepoint* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  %54 = load %struct.tracepoint*, %struct.tracepoint** %2, align 8
  %55 = getelementptr inbounds %struct.tracepoint, %struct.tracepoint* %54, i32 0, i32 1
  store %struct.tracepoint* null, %struct.tracepoint** %55, align 8
  %56 = load %struct.tracepoint*, %struct.tracepoint** %2, align 8
  %57 = getelementptr inbounds %struct.tracepoint, %struct.tracepoint* %56, i32 0, i32 4
  store i64 0, i64* %57, align 8
  %58 = load %struct.tracepoint*, %struct.tracepoint** %2, align 8
  %59 = getelementptr inbounds %struct.tracepoint, %struct.tracepoint* %58, i32 0, i32 3
  store i64 0, i64* %59, align 8
  %60 = load %struct.tracepoint*, %struct.tracepoint** %2, align 8
  %61 = getelementptr inbounds %struct.tracepoint, %struct.tracepoint* %60, i32 0, i32 2
  store i32* null, i32** %61, align 8
  %62 = load %struct.tracepoint*, %struct.tracepoint** @tracepoint_chain, align 8
  store %struct.tracepoint* %62, %struct.tracepoint** %3, align 8
  %63 = load %struct.tracepoint*, %struct.tracepoint** %3, align 8
  %64 = icmp eq %struct.tracepoint* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %35
  %66 = load %struct.tracepoint*, %struct.tracepoint** %2, align 8
  store %struct.tracepoint* %66, %struct.tracepoint** @tracepoint_chain, align 8
  br label %81

67:                                               ; preds = %35
  br label %68

68:                                               ; preds = %73, %67
  %69 = load %struct.tracepoint*, %struct.tracepoint** %3, align 8
  %70 = getelementptr inbounds %struct.tracepoint, %struct.tracepoint* %69, i32 0, i32 1
  %71 = load %struct.tracepoint*, %struct.tracepoint** %70, align 8
  %72 = icmp ne %struct.tracepoint* %71, null
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load %struct.tracepoint*, %struct.tracepoint** %3, align 8
  %75 = getelementptr inbounds %struct.tracepoint, %struct.tracepoint* %74, i32 0, i32 1
  %76 = load %struct.tracepoint*, %struct.tracepoint** %75, align 8
  store %struct.tracepoint* %76, %struct.tracepoint** %3, align 8
  br label %68

77:                                               ; preds = %68
  %78 = load %struct.tracepoint*, %struct.tracepoint** %2, align 8
  %79 = load %struct.tracepoint*, %struct.tracepoint** %3, align 8
  %80 = getelementptr inbounds %struct.tracepoint, %struct.tracepoint* %79, i32 0, i32 1
  store %struct.tracepoint* %78, %struct.tracepoint** %80, align 8
  br label %81

81:                                               ; preds = %77, %65
  %82 = load %struct.cleanup*, %struct.cleanup** %4, align 8
  %83 = call i32 @discard_cleanups(%struct.cleanup* %82)
  %84 = load %struct.tracepoint*, %struct.tracepoint** %2, align 8
  ret %struct.tracepoint* %84
}

declare dso_local i64 @xmalloc(i32) #1

declare dso_local %struct.cleanup* @make_cleanup(i32, %struct.tracepoint*) #1

declare dso_local i32 @memset(%struct.tracepoint*, i32, i32) #1

declare dso_local i32* @savestring(i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @discard_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
