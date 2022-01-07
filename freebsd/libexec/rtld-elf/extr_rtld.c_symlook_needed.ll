; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rtld-elf/extr_rtld.c_symlook_needed.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rtld-elf/extr_rtld.c_symlook_needed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__*, %struct.TYPE_12__* }
%struct.TYPE_10__ = type { i32 }

@STB_WEAK = common dso_local global i64 0, align 8
@ESRCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_12__*, i32*)* @symlook_needed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @symlook_needed(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_11__, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %8, align 8
  store i32* null, i32** %10, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %14 = call i32 @symlook_init_from_req(%struct.TYPE_11__* %11, %struct.TYPE_11__* %13)
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_12__* %15, %struct.TYPE_12__** %9, align 8
  br label %16

16:                                               ; preds = %58, %3
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %18 = icmp ne %struct.TYPE_12__* %17, null
  br i1 %18, label %19, label %62

19:                                               ; preds = %16
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = icmp eq %struct.TYPE_10__* %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %19
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @symlook_list(%struct.TYPE_11__* %11, i32* %28, i32* %29)
  store i32 %30, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24, %19
  br label %58

33:                                               ; preds = %24
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %35 = icmp eq %struct.TYPE_13__* %34, null
  br i1 %35, label %44, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @ELF_ST_BIND(i32 %40)
  %42 = load i64, i64* @STB_WEAK, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %36, %33
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %45, align 8
  store %struct.TYPE_13__* %46, %struct.TYPE_13__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** %10, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @ELF_ST_BIND(i32 %51)
  %53 = load i64, i64* @STB_WEAK, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %44
  br label %62

56:                                               ; preds = %44
  br label %57

57:                                               ; preds = %56, %36
  br label %58

58:                                               ; preds = %57, %32
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %60, align 8
  store %struct.TYPE_12__* %61, %struct.TYPE_12__** %9, align 8
  br label %16

62:                                               ; preds = %55, %16
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %64 = icmp ne %struct.TYPE_13__* %63, null
  br i1 %64, label %65, label %72

65:                                               ; preds = %62
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  store %struct.TYPE_13__* %66, %struct.TYPE_13__** %68, align 8
  %69 = load i32*, i32** %10, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  store i32* %69, i32** %71, align 8
  store i32 0, i32* %4, align 4
  br label %74

72:                                               ; preds = %62
  %73 = load i32, i32* @ESRCH, align 4
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %72, %65
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @symlook_init_from_req(%struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i32 @symlook_list(%struct.TYPE_11__*, i32*, i32*) #1

declare dso_local i64 @ELF_ST_BIND(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
