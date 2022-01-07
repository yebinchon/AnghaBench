; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_symtab.c_isc_symtab_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_symtab.c_isc_symtab_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i8*, i32, i64, i32*, i32* }

@ISC_R_NOMEMORY = common dso_local global i32 0, align 4
@SYMTAB_MAGIC = common dso_local global i32 0, align 4
@ISC_R_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isc_symtab_create(i32* %0, i32 %1, i32 %2, i8* %3, i32 %4, %struct.TYPE_4__** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_4__**, align 8
  %14 = alloca %struct.TYPE_4__*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.TYPE_4__** %5, %struct.TYPE_4__*** %13, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = icmp ne i32* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @REQUIRE(i32 %18)
  %20 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %13, align 8
  %21 = icmp ne %struct.TYPE_4__** %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %6
  %23 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %13, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = icmp eq %struct.TYPE_4__* %24, null
  br label %26

26:                                               ; preds = %22, %6
  %27 = phi i1 [ false, %6 ], [ %25, %22 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @REQUIRE(i32 %28)
  %30 = load i32, i32* %9, align 4
  %31 = icmp ugt i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @REQUIRE(i32 %32)
  %34 = load i32*, i32** %8, align 8
  %35 = call i64 @isc_mem_get(i32* %34, i32 56)
  %36 = inttoptr i64 %35 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %36, %struct.TYPE_4__** %14, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %38 = icmp eq %struct.TYPE_4__* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %26
  %40 = load i32, i32* @ISC_R_NOMEMORY, align 4
  store i32 %40, i32* %7, align 4
  br label %106

41:                                               ; preds = %26
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %9, align 4
  %44 = zext i32 %43 to i64
  %45 = mul i64 %44, 4
  %46 = trunc i64 %45 to i32
  %47 = call i64 @isc_mem_get(i32* %42, i32 %46)
  %48 = inttoptr i64 %47 to i32*
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 8
  store i32* %48, i32** %50, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 8
  %53 = load i32*, i32** %52, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %41
  %56 = load i32*, i32** %8, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %58 = call i32 @isc_mem_put(i32* %56, %struct.TYPE_4__* %57, i32 56)
  %59 = load i32, i32* @ISC_R_NOMEMORY, align 4
  store i32 %59, i32* %7, align 4
  br label %106

60:                                               ; preds = %41
  store i32 0, i32* %15, align 4
  br label %61

61:                                               ; preds = %74, %60
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp ult i32 %62, %63
  br i1 %64, label %65, label %77

65:                                               ; preds = %61
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 8
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %15, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @INIT_LIST(i32 %72)
  br label %74

74:                                               ; preds = %65
  %75 = load i32, i32* %15, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %15, align 4
  br label %61

77:                                               ; preds = %61
  %78 = load i32*, i32** %8, align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 7
  store i32* %78, i32** %80, align 8
  %81 = load i32, i32* %9, align 4
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 6
  store i64 0, i64* %85, align 8
  %86 = load i32, i32* %9, align 4
  %87 = mul i32 %86, 3
  %88 = udiv i32 %87, 4
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* %10, align 4
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 5
  store i32 %91, i32* %93, align 8
  %94 = load i8*, i8** %11, align 8
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 4
  store i8* %94, i8** %96, align 8
  %97 = load i32, i32* %12, align 4
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* @SYMTAB_MAGIC, align 4
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 8
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %104 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %13, align 8
  store %struct.TYPE_4__* %103, %struct.TYPE_4__** %104, align 8
  %105 = load i32, i32* @ISC_R_SUCCESS, align 4
  store i32 %105, i32* %7, align 4
  br label %106

106:                                              ; preds = %77, %55, %39
  %107 = load i32, i32* %7, align 4
  ret i32 %107
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i64 @isc_mem_get(i32*, i32) #1

declare dso_local i32 @isc_mem_put(i32*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @INIT_LIST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
