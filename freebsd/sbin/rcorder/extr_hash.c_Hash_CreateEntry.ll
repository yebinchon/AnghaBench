; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/rcorder/extr_hash.c_Hash_CreateEntry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/rcorder/extr_hash.c_Hash_CreateEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Hash_Entry = type { i32, i32, i32*, %struct.Hash_Entry* }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.Hash_Entry** }

@FALSE = common dso_local global i32 0, align 4
@rebuildLimit = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Hash_Entry* @Hash_CreateEntry(%struct.TYPE_4__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.Hash_Entry*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.Hash_Entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.Hash_Entry**, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %9, align 4
  %13 = load i8*, i8** %6, align 8
  store i8* %13, i8** %10, align 8
  br label %14

14:                                               ; preds = %18, %3
  %15 = load i8*, i8** %10, align 8
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %14
  %19 = load i32, i32* %9, align 4
  %20 = shl i32 %19, 5
  %21 = load i32, i32* %9, align 4
  %22 = sub i32 %20, %21
  %23 = load i8*, i8** %10, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %10, align 8
  %25 = load i8, i8* %23, align 1
  %26 = sext i8 %25 to i32
  %27 = add i32 %22, %26
  store i32 %27, i32* %9, align 4
  br label %14

28:                                               ; preds = %14
  %29 = load i8*, i8** %10, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = ptrtoint i8* %29 to i64
  %32 = ptrtoint i8* %30 to i64
  %33 = sub i64 %31, %32
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %11, align 4
  %35 = load i8*, i8** %6, align 8
  store i8* %35, i8** %10, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 3
  %38 = load %struct.Hash_Entry**, %struct.Hash_Entry*** %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %39, %42
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.Hash_Entry*, %struct.Hash_Entry** %38, i64 %44
  %46 = load %struct.Hash_Entry*, %struct.Hash_Entry** %45, align 8
  store %struct.Hash_Entry* %46, %struct.Hash_Entry** %8, align 8
  br label %47

47:                                               ; preds = %72, %28
  %48 = load %struct.Hash_Entry*, %struct.Hash_Entry** %8, align 8
  %49 = icmp ne %struct.Hash_Entry* %48, null
  br i1 %49, label %50, label %76

50:                                               ; preds = %47
  %51 = load %struct.Hash_Entry*, %struct.Hash_Entry** %8, align 8
  %52 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %71

56:                                               ; preds = %50
  %57 = load %struct.Hash_Entry*, %struct.Hash_Entry** %8, align 8
  %58 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i8*, i8** %10, align 8
  %61 = call i64 @strcmp(i32 %59, i8* %60)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %56
  %64 = load i32*, i32** %7, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32, i32* @FALSE, align 4
  %68 = load i32*, i32** %7, align 8
  store i32 %67, i32* %68, align 4
  br label %69

69:                                               ; preds = %66, %63
  %70 = load %struct.Hash_Entry*, %struct.Hash_Entry** %8, align 8
  store %struct.Hash_Entry* %70, %struct.Hash_Entry** %4, align 8
  br label %133

71:                                               ; preds = %56, %50
  br label %72

72:                                               ; preds = %71
  %73 = load %struct.Hash_Entry*, %struct.Hash_Entry** %8, align 8
  %74 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %73, i32 0, i32 3
  %75 = load %struct.Hash_Entry*, %struct.Hash_Entry** %74, align 8
  store %struct.Hash_Entry* %75, %struct.Hash_Entry** %8, align 8
  br label %47

76:                                               ; preds = %47
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @rebuildLimit, align 4
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = mul nsw i32 %80, %83
  %85 = icmp sge i32 %79, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %76
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %88 = call i32 @RebuildTable(%struct.TYPE_4__* %87)
  br label %89

89:                                               ; preds = %86, %76
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = add i64 24, %91
  %93 = trunc i64 %92 to i32
  %94 = call i64 @emalloc(i32 %93)
  %95 = inttoptr i64 %94 to %struct.Hash_Entry*
  store %struct.Hash_Entry* %95, %struct.Hash_Entry** %8, align 8
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 3
  %98 = load %struct.Hash_Entry**, %struct.Hash_Entry*** %97, align 8
  %99 = load i32, i32* %9, align 4
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = and i32 %99, %102
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.Hash_Entry*, %struct.Hash_Entry** %98, i64 %104
  store %struct.Hash_Entry** %105, %struct.Hash_Entry*** %12, align 8
  %106 = load %struct.Hash_Entry**, %struct.Hash_Entry*** %12, align 8
  %107 = load %struct.Hash_Entry*, %struct.Hash_Entry** %106, align 8
  %108 = load %struct.Hash_Entry*, %struct.Hash_Entry** %8, align 8
  %109 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %108, i32 0, i32 3
  store %struct.Hash_Entry* %107, %struct.Hash_Entry** %109, align 8
  %110 = load %struct.Hash_Entry*, %struct.Hash_Entry** %8, align 8
  %111 = load %struct.Hash_Entry**, %struct.Hash_Entry*** %12, align 8
  store %struct.Hash_Entry* %110, %struct.Hash_Entry** %111, align 8
  %112 = load %struct.Hash_Entry*, %struct.Hash_Entry** %8, align 8
  %113 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %112, i32 0, i32 2
  store i32* null, i32** %113, align 8
  %114 = load i32, i32* %9, align 4
  %115 = load %struct.Hash_Entry*, %struct.Hash_Entry** %8, align 8
  %116 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  %117 = load %struct.Hash_Entry*, %struct.Hash_Entry** %8, align 8
  %118 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i8*, i8** %10, align 8
  %121 = call i32 @strcpy(i32 %119, i8* %120)
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %123, align 4
  %126 = load i32*, i32** %7, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %128, label %131

128:                                              ; preds = %89
  %129 = load i32, i32* @TRUE, align 4
  %130 = load i32*, i32** %7, align 8
  store i32 %129, i32* %130, align 4
  br label %131

131:                                              ; preds = %128, %89
  %132 = load %struct.Hash_Entry*, %struct.Hash_Entry** %8, align 8
  store %struct.Hash_Entry* %132, %struct.Hash_Entry** %4, align 8
  br label %133

133:                                              ; preds = %131, %69
  %134 = load %struct.Hash_Entry*, %struct.Hash_Entry** %4, align 8
  ret %struct.Hash_Entry* %134
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @RebuildTable(%struct.TYPE_4__*) #1

declare dso_local i64 @emalloc(i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
