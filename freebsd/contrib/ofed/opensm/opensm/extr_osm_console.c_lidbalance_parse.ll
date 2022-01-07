; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_console.c_lidbalance_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_console.c_lidbalance_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Invalid switchguid specified\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"switchguid not found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, %struct.TYPE_9__*, i32*)* @lidbalance_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lidbalance_parse(i8** %0, %struct.TYPE_9__* %1, i32* %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  store i8** %0, i8*** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i32* %2, i32** %6, align 8
  store i64 0, i64* %8, align 8
  %12 = load i8**, i8*** %4, align 8
  %13 = call i8* @next_token(i8** %12)
  store i8* %13, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %32

16:                                               ; preds = %3
  %17 = load i8*, i8** %7, align 8
  %18 = call i64 @strtoull(i8* %17, i8** %10, i32 0)
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load i8*, i8** %10, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21, %16
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @fprintf(i32* %27, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @help_lidbalance(i32* %29, i32 1)
  br label %83

31:                                               ; preds = %21
  br label %32

32:                                               ; preds = %31, %3
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = call i32 @cl_plock_acquire(i32* %34)
  %36 = load i64, i64* %8, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %32
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @cl_hton64(i64 %41)
  %43 = call %struct.TYPE_8__* @osm_get_switch_by_guid(%struct.TYPE_10__* %40, i32 %42)
  store %struct.TYPE_8__* %43, %struct.TYPE_8__** %9, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %45 = icmp ne %struct.TYPE_8__* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %38
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @fprintf(i32* %47, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %79

49:                                               ; preds = %38
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @lidbalance_check(%struct.TYPE_9__* %50, %struct.TYPE_8__* %51, i32* %52)
  br label %78

54:                                               ; preds = %32
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  store i32* %57, i32** %11, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = call i64 @cl_qmap_head(i32* %58)
  %60 = inttoptr i64 %59 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %60, %struct.TYPE_8__** %9, align 8
  br label %61

61:                                               ; preds = %72, %54
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = call i64 @cl_qmap_end(i32* %63)
  %65 = inttoptr i64 %64 to %struct.TYPE_8__*
  %66 = icmp ne %struct.TYPE_8__* %62, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %61
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %70 = load i32*, i32** %6, align 8
  %71 = call i32 @lidbalance_check(%struct.TYPE_9__* %68, %struct.TYPE_8__* %69, i32* %70)
  br label %72

72:                                               ; preds = %67
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = call i64 @cl_qmap_next(i32* %74)
  %76 = inttoptr i64 %75 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %76, %struct.TYPE_8__** %9, align 8
  br label %61

77:                                               ; preds = %61
  br label %78

78:                                               ; preds = %77, %49
  br label %79

79:                                               ; preds = %78, %46
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = call i32 @cl_plock_release(i32* %81)
  br label %83

83:                                               ; preds = %79, %26
  ret void
}

declare dso_local i8* @next_token(i8**) #1

declare dso_local i64 @strtoull(i8*, i8**, i32) #1

declare dso_local i32 @fprintf(i32*, i8*) #1

declare dso_local i32 @help_lidbalance(i32*, i32) #1

declare dso_local i32 @cl_plock_acquire(i32*) #1

declare dso_local %struct.TYPE_8__* @osm_get_switch_by_guid(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @cl_hton64(i64) #1

declare dso_local i32 @lidbalance_check(%struct.TYPE_9__*, %struct.TYPE_8__*, i32*) #1

declare dso_local i64 @cl_qmap_head(i32*) #1

declare dso_local i64 @cl_qmap_end(i32*) #1

declare dso_local i64 @cl_qmap_next(i32*) #1

declare dso_local i32 @cl_plock_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
