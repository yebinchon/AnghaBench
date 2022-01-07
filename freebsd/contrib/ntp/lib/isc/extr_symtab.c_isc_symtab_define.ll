; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_symtab.c_isc_symtab_define.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_symtab.c_isc_symtab_define.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, i32*, i32, i32, i32 (i32, i32, i32, i32)* }
%struct.TYPE_12__ = type { i32, i32, i32 }

@isc_symexists_add = common dso_local global i64 0, align 8
@isc_symexists_reject = common dso_local global i64 0, align 8
@ISC_R_EXISTS = common dso_local global i32 0, align 4
@isc_symexists_replace = common dso_local global i64 0, align 8
@link = common dso_local global i32 0, align 4
@ISC_R_NOMEMORY = common dso_local global i32 0, align 4
@ISC_R_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isc_symtab_define(%struct.TYPE_11__* %0, i8* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %15 = call i32 @VALID_SYMTAB(%struct.TYPE_11__* %14)
  %16 = call i32 @REQUIRE(i32 %15)
  %17 = load i8*, i8** %8, align 8
  %18 = icmp ne i8* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @REQUIRE(i32 %19)
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @REQUIRE(i32 %23)
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %12, align 4
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %30 = call i32 @FIND(%struct.TYPE_11__* %25, i8* %26, i32 %27, i32 %28, %struct.TYPE_12__* %29)
  %31 = load i64, i64* %11, align 8
  %32 = load i64, i64* @isc_symexists_add, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %81

34:                                               ; preds = %5
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %36 = icmp ne %struct.TYPE_12__* %35, null
  br i1 %36, label %37, label %81

37:                                               ; preds = %34
  %38 = load i64, i64* %11, align 8
  %39 = load i64, i64* @isc_symexists_reject, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* @ISC_R_EXISTS, align 4
  store i32 %42, i32* %6, align 4
  br label %133

43:                                               ; preds = %37
  %44 = load i64, i64* %11, align 8
  %45 = load i64, i64* @isc_symexists_replace, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @INSIST(i32 %47)
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %12, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %57 = load i32, i32* @link, align 4
  %58 = call i32 @UNLINK(i32 %55, %struct.TYPE_12__* %56, i32 %57)
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 5
  %61 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %60, align 8
  %62 = icmp ne i32 (i32, i32, i32, i32)* %61, null
  br i1 %62, label %63, label %80

63:                                               ; preds = %43
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 5
  %66 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %65, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = call i32 %66(i32 %69, i32 %72, i32 %75, i32 %78)
  br label %80

80:                                               ; preds = %63, %43
  br label %99

81:                                               ; preds = %34, %5
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = call i64 @isc_mem_get(i32 %84, i32 12)
  %86 = inttoptr i64 %85 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %86, %struct.TYPE_12__** %13, align 8
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %88 = icmp eq %struct.TYPE_12__* %87, null
  br i1 %88, label %89, label %91

89:                                               ; preds = %81
  %90 = load i32, i32* @ISC_R_NOMEMORY, align 4
  store i32 %90, i32* %6, align 4
  br label %133

91:                                               ; preds = %81
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %93 = load i32, i32* @link, align 4
  %94 = call i32 @ISC_LINK_INIT(%struct.TYPE_12__* %92, i32 %93)
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %97, 1
  store i64 %98, i64* %96, align 8
  br label %99

99:                                               ; preds = %91, %80
  %100 = load i8*, i8** %8, align 8
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @DE_CONST(i8* %100, i32 %103)
  %105 = load i32, i32* %9, align 4
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* %10, align 4
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %12, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %119 = load i32, i32* @link, align 4
  %120 = call i32 @PREPEND(i32 %117, %struct.TYPE_12__* %118, i32 %119)
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = icmp sgt i64 %123, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %99
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %130 = call i32 @grow_table(%struct.TYPE_11__* %129)
  br label %131

131:                                              ; preds = %128, %99
  %132 = load i32, i32* @ISC_R_SUCCESS, align 4
  store i32 %132, i32* %6, align 4
  br label %133

133:                                              ; preds = %131, %89, %41
  %134 = load i32, i32* %6, align 4
  ret i32 %134
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i32 @VALID_SYMTAB(%struct.TYPE_11__*) #1

declare dso_local i32 @FIND(%struct.TYPE_11__*, i8*, i32, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @INSIST(i32) #1

declare dso_local i32 @UNLINK(i32, %struct.TYPE_12__*, i32) #1

declare dso_local i64 @isc_mem_get(i32, i32) #1

declare dso_local i32 @ISC_LINK_INIT(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @DE_CONST(i8*, i32) #1

declare dso_local i32 @PREPEND(i32, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @grow_table(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
