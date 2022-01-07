; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/yp/extr_yplib.c_ypmatch_cache_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/yp/extr_yplib.c_ypmatch_cache_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dom_binding = type { %struct.ypmatch_ent* }
%struct.ypmatch_ent = type { %struct.TYPE_8__, %struct.TYPE_7__, i32, %struct.ypmatch_ent* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dom_binding*, i8*, %struct.TYPE_10__*, %struct.TYPE_9__*)* @ypmatch_cache_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ypmatch_cache_lookup(%struct.dom_binding* %0, i8* %1, %struct.TYPE_10__* %2, %struct.TYPE_9__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dom_binding*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.ypmatch_ent*, align 8
  store %struct.dom_binding* %0, %struct.dom_binding** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %9, align 8
  %11 = load %struct.dom_binding*, %struct.dom_binding** %6, align 8
  %12 = call i32 @ypmatch_cache_expire(%struct.dom_binding* %11)
  %13 = load %struct.dom_binding*, %struct.dom_binding** %6, align 8
  %14 = getelementptr inbounds %struct.dom_binding, %struct.dom_binding* %13, i32 0, i32 0
  %15 = load %struct.ypmatch_ent*, %struct.ypmatch_ent** %14, align 8
  store %struct.ypmatch_ent* %15, %struct.ypmatch_ent** %10, align 8
  br label %16

16:                                               ; preds = %52, %4
  %17 = load %struct.ypmatch_ent*, %struct.ypmatch_ent** %10, align 8
  %18 = icmp ne %struct.ypmatch_ent* %17, null
  br i1 %18, label %19, label %56

19:                                               ; preds = %16
  %20 = load i8*, i8** %7, align 8
  %21 = load %struct.ypmatch_ent*, %struct.ypmatch_ent** %10, align 8
  %22 = getelementptr inbounds %struct.ypmatch_ent, %struct.ypmatch_ent* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @strcmp(i8* %20, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %52

27:                                               ; preds = %19
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.ypmatch_ent*, %struct.ypmatch_ent** %10, align 8
  %32 = getelementptr inbounds %struct.ypmatch_ent, %struct.ypmatch_ent* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %30, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %52

37:                                               ; preds = %27
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.ypmatch_ent*, %struct.ypmatch_ent** %10, align 8
  %42 = getelementptr inbounds %struct.ypmatch_ent, %struct.ypmatch_ent* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i64 @bcmp(i32 %40, i32 %44, i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %37
  br label %52

51:                                               ; preds = %37
  br label %52

52:                                               ; preds = %51, %50, %36, %26
  %53 = load %struct.ypmatch_ent*, %struct.ypmatch_ent** %10, align 8
  %54 = getelementptr inbounds %struct.ypmatch_ent, %struct.ypmatch_ent* %53, i32 0, i32 3
  %55 = load %struct.ypmatch_ent*, %struct.ypmatch_ent** %54, align 8
  store %struct.ypmatch_ent* %55, %struct.ypmatch_ent** %10, align 8
  br label %16

56:                                               ; preds = %16
  %57 = load %struct.ypmatch_ent*, %struct.ypmatch_ent** %10, align 8
  %58 = icmp eq %struct.ypmatch_ent* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i32, i32* @FALSE, align 4
  store i32 %60, i32* %5, align 4
  br label %75

61:                                               ; preds = %56
  %62 = load %struct.ypmatch_ent*, %struct.ypmatch_ent** %10, align 8
  %63 = getelementptr inbounds %struct.ypmatch_ent, %struct.ypmatch_ent* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.ypmatch_ent*, %struct.ypmatch_ent** %10, align 8
  %69 = getelementptr inbounds %struct.ypmatch_ent, %struct.ypmatch_ent* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @TRUE, align 4
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %61, %59
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32 @ypmatch_cache_expire(%struct.dom_binding*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i64 @bcmp(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
