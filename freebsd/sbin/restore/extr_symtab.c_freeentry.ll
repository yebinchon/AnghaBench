; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/restore/extr_symtab.c_freeentry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/restore/extr_symtab.c_freeentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry = type { i64, i64, i64, %struct.entry*, i32, %struct.entry*, i32* }

@REMOVED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"not marked REMOVED\00", align 1
@NODE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"freeing referenced directory\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"freeing non-empty directory\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"lookupino failed\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"link not found\00", align 1
@freelist = common dso_local global %struct.entry* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @freeentry(%struct.entry* %0) #0 {
  %2 = alloca %struct.entry*, align 8
  %3 = alloca %struct.entry*, align 8
  %4 = alloca i64, align 8
  store %struct.entry* %0, %struct.entry** %2, align 8
  %5 = load %struct.entry*, %struct.entry** %2, align 8
  %6 = getelementptr inbounds %struct.entry, %struct.entry* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @REMOVED, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.entry*, %struct.entry** %2, align 8
  %12 = call i32 @badentry(%struct.entry* %11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %10, %1
  %14 = load %struct.entry*, %struct.entry** %2, align 8
  %15 = getelementptr inbounds %struct.entry, %struct.entry* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @NODE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %36

19:                                               ; preds = %13
  %20 = load %struct.entry*, %struct.entry** %2, align 8
  %21 = getelementptr inbounds %struct.entry, %struct.entry* %20, i32 0, i32 5
  %22 = load %struct.entry*, %struct.entry** %21, align 8
  %23 = icmp ne %struct.entry* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load %struct.entry*, %struct.entry** %2, align 8
  %26 = call i32 @badentry(%struct.entry* %25, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %19
  %28 = load %struct.entry*, %struct.entry** %2, align 8
  %29 = getelementptr inbounds %struct.entry, %struct.entry* %28, i32 0, i32 6
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load %struct.entry*, %struct.entry** %2, align 8
  %34 = call i32 @badentry(%struct.entry* %33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %27
  br label %36

36:                                               ; preds = %35, %13
  %37 = load %struct.entry*, %struct.entry** %2, align 8
  %38 = getelementptr inbounds %struct.entry, %struct.entry* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %101

41:                                               ; preds = %36
  %42 = load %struct.entry*, %struct.entry** %2, align 8
  %43 = getelementptr inbounds %struct.entry, %struct.entry* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = call %struct.entry* @lookupino(i64 %44)
  store %struct.entry* %45, %struct.entry** %3, align 8
  %46 = load %struct.entry*, %struct.entry** %3, align 8
  %47 = icmp eq %struct.entry* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load %struct.entry*, %struct.entry** %2, align 8
  %50 = call i32 @badentry(%struct.entry* %49, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %41
  %52 = load %struct.entry*, %struct.entry** %3, align 8
  %53 = load %struct.entry*, %struct.entry** %2, align 8
  %54 = icmp eq %struct.entry* %52, %53
  br i1 %54, label %55, label %72

55:                                               ; preds = %51
  %56 = load %struct.entry*, %struct.entry** %2, align 8
  %57 = getelementptr inbounds %struct.entry, %struct.entry* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %4, align 8
  %59 = load i64, i64* %4, align 8
  %60 = call i32 @deleteino(i64 %59)
  %61 = load %struct.entry*, %struct.entry** %2, align 8
  %62 = getelementptr inbounds %struct.entry, %struct.entry* %61, i32 0, i32 5
  %63 = load %struct.entry*, %struct.entry** %62, align 8
  %64 = icmp ne %struct.entry* %63, null
  br i1 %64, label %65, label %71

65:                                               ; preds = %55
  %66 = load i64, i64* %4, align 8
  %67 = load %struct.entry*, %struct.entry** %2, align 8
  %68 = getelementptr inbounds %struct.entry, %struct.entry* %67, i32 0, i32 5
  %69 = load %struct.entry*, %struct.entry** %68, align 8
  %70 = call i32 @addino(i64 %66, %struct.entry* %69)
  br label %71

71:                                               ; preds = %65, %55
  br label %100

72:                                               ; preds = %51
  br label %73

73:                                               ; preds = %89, %72
  %74 = load %struct.entry*, %struct.entry** %3, align 8
  %75 = icmp ne %struct.entry* %74, null
  br i1 %75, label %76, label %93

76:                                               ; preds = %73
  %77 = load %struct.entry*, %struct.entry** %3, align 8
  %78 = getelementptr inbounds %struct.entry, %struct.entry* %77, i32 0, i32 5
  %79 = load %struct.entry*, %struct.entry** %78, align 8
  %80 = load %struct.entry*, %struct.entry** %2, align 8
  %81 = icmp eq %struct.entry* %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %76
  %83 = load %struct.entry*, %struct.entry** %2, align 8
  %84 = getelementptr inbounds %struct.entry, %struct.entry* %83, i32 0, i32 5
  %85 = load %struct.entry*, %struct.entry** %84, align 8
  %86 = load %struct.entry*, %struct.entry** %3, align 8
  %87 = getelementptr inbounds %struct.entry, %struct.entry* %86, i32 0, i32 5
  store %struct.entry* %85, %struct.entry** %87, align 8
  br label %93

88:                                               ; preds = %76
  br label %89

89:                                               ; preds = %88
  %90 = load %struct.entry*, %struct.entry** %3, align 8
  %91 = getelementptr inbounds %struct.entry, %struct.entry* %90, i32 0, i32 5
  %92 = load %struct.entry*, %struct.entry** %91, align 8
  store %struct.entry* %92, %struct.entry** %3, align 8
  br label %73

93:                                               ; preds = %82, %73
  %94 = load %struct.entry*, %struct.entry** %3, align 8
  %95 = icmp eq %struct.entry* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load %struct.entry*, %struct.entry** %2, align 8
  %98 = call i32 @badentry(%struct.entry* %97, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %99

99:                                               ; preds = %96, %93
  br label %100

100:                                              ; preds = %99, %71
  br label %101

101:                                              ; preds = %100, %36
  %102 = load %struct.entry*, %struct.entry** %2, align 8
  %103 = call i32 @removeentry(%struct.entry* %102)
  %104 = load %struct.entry*, %struct.entry** %2, align 8
  %105 = getelementptr inbounds %struct.entry, %struct.entry* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @freename(i32 %106)
  %108 = load %struct.entry*, %struct.entry** @freelist, align 8
  %109 = load %struct.entry*, %struct.entry** %2, align 8
  %110 = getelementptr inbounds %struct.entry, %struct.entry* %109, i32 0, i32 3
  store %struct.entry* %108, %struct.entry** %110, align 8
  %111 = load %struct.entry*, %struct.entry** %2, align 8
  store %struct.entry* %111, %struct.entry** @freelist, align 8
  ret void
}

declare dso_local i32 @badentry(%struct.entry*, i8*) #1

declare dso_local %struct.entry* @lookupino(i64) #1

declare dso_local i32 @deleteino(i64) #1

declare dso_local i32 @addino(i64, %struct.entry*) #1

declare dso_local i32 @removeentry(%struct.entry*) #1

declare dso_local i32 @freename(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
