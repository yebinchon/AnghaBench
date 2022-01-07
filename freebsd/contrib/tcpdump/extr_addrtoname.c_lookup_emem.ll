; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_addrtoname.c_lookup_emem.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_addrtoname.c_lookup_emem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enamemem = type { i32, i32, i32, %struct.enamemem* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, i8*)* }

@enametable = common dso_local global %struct.enamemem* null, align 8
@HASHNAMESIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"lookup_emem: calloc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.enamemem* (%struct.TYPE_4__*, i32*)* @lookup_emem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.enamemem* @lookup_emem(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca %struct.enamemem*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.enamemem*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = shl i32 %12, 8
  %14 = load i32*, i32** %5, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %13, %16
  store i32 %17, i32* %8, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 2
  %20 = load i32, i32* %19, align 4
  %21 = shl i32 %20, 8
  %22 = load i32*, i32** %5, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 3
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %21, %24
  store i32 %25, i32* %7, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 4
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %28, 8
  %30 = load i32*, i32** %5, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 5
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %29, %32
  store i32 %33, i32* %6, align 4
  %34 = load %struct.enamemem*, %struct.enamemem** @enametable, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = xor i32 %35, %36
  %38 = load i32, i32* @HASHNAMESIZE, align 4
  %39 = sub nsw i32 %38, 1
  %40 = and i32 %37, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.enamemem, %struct.enamemem* %34, i64 %41
  store %struct.enamemem* %42, %struct.enamemem** %9, align 8
  br label %43

43:                                               ; preds = %72, %2
  %44 = load %struct.enamemem*, %struct.enamemem** %9, align 8
  %45 = getelementptr inbounds %struct.enamemem, %struct.enamemem* %44, i32 0, i32 3
  %46 = load %struct.enamemem*, %struct.enamemem** %45, align 8
  %47 = icmp ne %struct.enamemem* %46, null
  br i1 %47, label %48, label %73

48:                                               ; preds = %43
  %49 = load %struct.enamemem*, %struct.enamemem** %9, align 8
  %50 = getelementptr inbounds %struct.enamemem, %struct.enamemem* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %68

54:                                               ; preds = %48
  %55 = load %struct.enamemem*, %struct.enamemem** %9, align 8
  %56 = getelementptr inbounds %struct.enamemem, %struct.enamemem* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %54
  %61 = load %struct.enamemem*, %struct.enamemem** %9, align 8
  %62 = getelementptr inbounds %struct.enamemem, %struct.enamemem* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load %struct.enamemem*, %struct.enamemem** %9, align 8
  store %struct.enamemem* %67, %struct.enamemem** %3, align 8
  br label %99

68:                                               ; preds = %60, %54, %48
  %69 = load %struct.enamemem*, %struct.enamemem** %9, align 8
  %70 = getelementptr inbounds %struct.enamemem, %struct.enamemem* %69, i32 0, i32 3
  %71 = load %struct.enamemem*, %struct.enamemem** %70, align 8
  store %struct.enamemem* %71, %struct.enamemem** %9, align 8
  br label %72

72:                                               ; preds = %68
  br label %43

73:                                               ; preds = %43
  %74 = load i32, i32* %6, align 4
  %75 = load %struct.enamemem*, %struct.enamemem** %9, align 8
  %76 = getelementptr inbounds %struct.enamemem, %struct.enamemem* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.enamemem*, %struct.enamemem** %9, align 8
  %79 = getelementptr inbounds %struct.enamemem, %struct.enamemem* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.enamemem*, %struct.enamemem** %9, align 8
  %82 = getelementptr inbounds %struct.enamemem, %struct.enamemem* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  %83 = call i64 @calloc(i32 1, i32 24)
  %84 = inttoptr i64 %83 to %struct.enamemem*
  %85 = load %struct.enamemem*, %struct.enamemem** %9, align 8
  %86 = getelementptr inbounds %struct.enamemem, %struct.enamemem* %85, i32 0, i32 3
  store %struct.enamemem* %84, %struct.enamemem** %86, align 8
  %87 = load %struct.enamemem*, %struct.enamemem** %9, align 8
  %88 = getelementptr inbounds %struct.enamemem, %struct.enamemem* %87, i32 0, i32 3
  %89 = load %struct.enamemem*, %struct.enamemem** %88, align 8
  %90 = icmp eq %struct.enamemem* %89, null
  br i1 %90, label %91, label %97

91:                                               ; preds = %73
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32 (%struct.TYPE_4__*, i8*)*, i32 (%struct.TYPE_4__*, i8*)** %93, align 8
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %96 = call i32 %94(%struct.TYPE_4__* %95, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %97

97:                                               ; preds = %91, %73
  %98 = load %struct.enamemem*, %struct.enamemem** %9, align 8
  store %struct.enamemem* %98, %struct.enamemem** %3, align 8
  br label %99

99:                                               ; preds = %97, %66
  %100 = load %struct.enamemem*, %struct.enamemem** %3, align 8
  ret %struct.enamemem* %100
}

declare dso_local i64 @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
