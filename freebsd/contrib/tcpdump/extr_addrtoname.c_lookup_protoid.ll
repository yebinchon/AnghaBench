; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_addrtoname.c_lookup_protoid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_addrtoname.c_lookup_protoid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.protoidmem = type { i32, i32, %struct.protoidmem* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, i8*)* }

@protoidtable = common dso_local global %struct.protoidmem* null, align 8
@HASHNAMESIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"lookup_protoid: calloc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.protoidmem* (%struct.TYPE_4__*, i32*)* @lookup_protoid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.protoidmem* @lookup_protoid(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca %struct.protoidmem*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.protoidmem*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = shl i32 %11, 8
  %13 = load i32*, i32** %5, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %12, %15
  %17 = shl i32 %16, 8
  %18 = load i32*, i32** %5, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 2
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %17, %20
  store i32 %21, i32* %6, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 3
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 %24, 8
  %26 = load i32*, i32** %5, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 4
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %25, %28
  store i32 %29, i32* %7, align 4
  %30 = load %struct.protoidmem*, %struct.protoidmem** @protoidtable, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = xor i32 %31, %32
  %34 = load i32, i32* @HASHNAMESIZE, align 4
  %35 = sub nsw i32 %34, 1
  %36 = and i32 %33, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.protoidmem, %struct.protoidmem* %30, i64 %37
  store %struct.protoidmem* %38, %struct.protoidmem** %8, align 8
  br label %39

39:                                               ; preds = %62, %2
  %40 = load %struct.protoidmem*, %struct.protoidmem** %8, align 8
  %41 = getelementptr inbounds %struct.protoidmem, %struct.protoidmem* %40, i32 0, i32 2
  %42 = load %struct.protoidmem*, %struct.protoidmem** %41, align 8
  %43 = icmp ne %struct.protoidmem* %42, null
  br i1 %43, label %44, label %63

44:                                               ; preds = %39
  %45 = load %struct.protoidmem*, %struct.protoidmem** %8, align 8
  %46 = getelementptr inbounds %struct.protoidmem, %struct.protoidmem* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %44
  %51 = load %struct.protoidmem*, %struct.protoidmem** %8, align 8
  %52 = getelementptr inbounds %struct.protoidmem, %struct.protoidmem* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load %struct.protoidmem*, %struct.protoidmem** %8, align 8
  store %struct.protoidmem* %57, %struct.protoidmem** %3, align 8
  br label %86

58:                                               ; preds = %50, %44
  %59 = load %struct.protoidmem*, %struct.protoidmem** %8, align 8
  %60 = getelementptr inbounds %struct.protoidmem, %struct.protoidmem* %59, i32 0, i32 2
  %61 = load %struct.protoidmem*, %struct.protoidmem** %60, align 8
  store %struct.protoidmem* %61, %struct.protoidmem** %8, align 8
  br label %62

62:                                               ; preds = %58
  br label %39

63:                                               ; preds = %39
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.protoidmem*, %struct.protoidmem** %8, align 8
  %66 = getelementptr inbounds %struct.protoidmem, %struct.protoidmem* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.protoidmem*, %struct.protoidmem** %8, align 8
  %69 = getelementptr inbounds %struct.protoidmem, %struct.protoidmem* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = call i64 @calloc(i32 1, i32 16)
  %71 = inttoptr i64 %70 to %struct.protoidmem*
  %72 = load %struct.protoidmem*, %struct.protoidmem** %8, align 8
  %73 = getelementptr inbounds %struct.protoidmem, %struct.protoidmem* %72, i32 0, i32 2
  store %struct.protoidmem* %71, %struct.protoidmem** %73, align 8
  %74 = load %struct.protoidmem*, %struct.protoidmem** %8, align 8
  %75 = getelementptr inbounds %struct.protoidmem, %struct.protoidmem* %74, i32 0, i32 2
  %76 = load %struct.protoidmem*, %struct.protoidmem** %75, align 8
  %77 = icmp eq %struct.protoidmem* %76, null
  br i1 %77, label %78, label %84

78:                                               ; preds = %63
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32 (%struct.TYPE_4__*, i8*)*, i32 (%struct.TYPE_4__*, i8*)** %80, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %83 = call i32 %81(%struct.TYPE_4__* %82, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %84

84:                                               ; preds = %78, %63
  %85 = load %struct.protoidmem*, %struct.protoidmem** %8, align 8
  store %struct.protoidmem* %85, %struct.protoidmem** %3, align 8
  br label %86

86:                                               ; preds = %84, %56
  %87 = load %struct.protoidmem*, %struct.protoidmem** %3, align 8
  ret %struct.protoidmem* %87
}

declare dso_local i64 @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
