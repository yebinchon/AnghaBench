; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_console.c_switchbalance_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_console.c_switchbalance_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Invalid guid specified\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"guid not found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, %struct.TYPE_9__*, i32*)* @switchbalance_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @switchbalance_parse(i8** %0, %struct.TYPE_9__* %1, i32* %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  store i8** %0, i8*** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i32* %2, i32** %6, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %10, align 4
  %13 = load i8**, i8*** %4, align 8
  %14 = call i8* @next_token(i8** %13)
  store i8* %14, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %46

17:                                               ; preds = %3
  %18 = load i8*, i8** %7, align 8
  %19 = call i64 @strcmp(i8* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load i32, i32* %10, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %10, align 4
  %24 = load i8**, i8*** %4, align 8
  %25 = call i8* @next_token(i8** %24)
  store i8* %25, i8** %7, align 8
  br label %26

26:                                               ; preds = %21, %17
  %27 = load i8*, i8** %7, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %45

29:                                               ; preds = %26
  %30 = load i8*, i8** %7, align 8
  %31 = call i64 @strtoull(i8* %30, i8** %11, i32 0)
  store i64 %31, i64* %8, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load i8*, i8** %11, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34, %29
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @fprintf(i32* %40, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @help_switchbalance(i32* %42, i32 1)
  br label %99

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %44, %26
  br label %46

46:                                               ; preds = %45, %3
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = call i32 @cl_plock_acquire(i32* %48)
  %50 = load i64, i64* %8, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %69

52:                                               ; preds = %46
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @cl_hton64(i64 %55)
  %57 = call %struct.TYPE_8__* @osm_get_switch_by_guid(%struct.TYPE_10__* %54, i32 %56)
  store %struct.TYPE_8__* %57, %struct.TYPE_8__** %9, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %59 = icmp ne %struct.TYPE_8__* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %52
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @fprintf(i32* %61, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %95

63:                                               ; preds = %52
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @switchbalance_check(%struct.TYPE_9__* %64, %struct.TYPE_8__* %65, i32* %66, i32 %67)
  br label %94

69:                                               ; preds = %46
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  store i32* %72, i32** %12, align 8
  %73 = load i32*, i32** %12, align 8
  %74 = call i64 @cl_qmap_head(i32* %73)
  %75 = inttoptr i64 %74 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %75, %struct.TYPE_8__** %9, align 8
  br label %76

76:                                               ; preds = %88, %69
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %78 = load i32*, i32** %12, align 8
  %79 = call i64 @cl_qmap_end(i32* %78)
  %80 = inttoptr i64 %79 to %struct.TYPE_8__*
  %81 = icmp ne %struct.TYPE_8__* %77, %80
  br i1 %81, label %82, label %93

82:                                               ; preds = %76
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %85 = load i32*, i32** %6, align 8
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @switchbalance_check(%struct.TYPE_9__* %83, %struct.TYPE_8__* %84, i32* %85, i32 %86)
  br label %88

88:                                               ; preds = %82
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = call i64 @cl_qmap_next(i32* %90)
  %92 = inttoptr i64 %91 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %92, %struct.TYPE_8__** %9, align 8
  br label %76

93:                                               ; preds = %76
  br label %94

94:                                               ; preds = %93, %63
  br label %95

95:                                               ; preds = %94, %60
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = call i32 @cl_plock_release(i32* %97)
  br label %99

99:                                               ; preds = %95, %39
  ret void
}

declare dso_local i8* @next_token(i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strtoull(i8*, i8**, i32) #1

declare dso_local i32 @fprintf(i32*, i8*) #1

declare dso_local i32 @help_switchbalance(i32*, i32) #1

declare dso_local i32 @cl_plock_acquire(i32*) #1

declare dso_local %struct.TYPE_8__* @osm_get_switch_by_guid(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @cl_hton64(i64) #1

declare dso_local i32 @switchbalance_check(%struct.TYPE_9__*, %struct.TYPE_8__*, i32*, i32) #1

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
