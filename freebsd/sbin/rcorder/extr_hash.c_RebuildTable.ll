; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/rcorder/extr_hash.c_RebuildTable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/rcorder/extr_hash.c_RebuildTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, %struct.Hash_Entry** }
%struct.Hash_Entry = type { i32, %struct.Hash_Entry* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @RebuildTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RebuildTable(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.Hash_Entry*, align 8
  %4 = alloca %struct.Hash_Entry*, align 8
  %5 = alloca %struct.Hash_Entry**, align 8
  %6 = alloca %struct.Hash_Entry**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.Hash_Entry**, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  store %struct.Hash_Entry* null, %struct.Hash_Entry** %4, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  %13 = load %struct.Hash_Entry**, %struct.Hash_Entry*** %12, align 8
  store %struct.Hash_Entry** %13, %struct.Hash_Entry*** %9, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %7, align 4
  %18 = shl i32 %17, 1
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sub nsw i32 %22, 1
  store i32 %23, i32* %8, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 8, %27
  %29 = trunc i64 %28 to i32
  %30 = call i64 @emalloc(i32 %29)
  %31 = inttoptr i64 %30 to %struct.Hash_Entry**
  store %struct.Hash_Entry** %31, %struct.Hash_Entry*** %5, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  store %struct.Hash_Entry** %31, %struct.Hash_Entry*** %33, align 8
  br label %34

34:                                               ; preds = %38, %1
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %7, align 4
  %37 = icmp sge i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load %struct.Hash_Entry**, %struct.Hash_Entry*** %5, align 8
  %40 = getelementptr inbounds %struct.Hash_Entry*, %struct.Hash_Entry** %39, i32 1
  store %struct.Hash_Entry** %40, %struct.Hash_Entry*** %5, align 8
  store %struct.Hash_Entry* null, %struct.Hash_Entry** %39, align 8
  br label %34

41:                                               ; preds = %34
  %42 = load %struct.Hash_Entry**, %struct.Hash_Entry*** %9, align 8
  store %struct.Hash_Entry** %42, %struct.Hash_Entry*** %5, align 8
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %77, %41
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %7, align 4
  %47 = icmp sge i32 %46, 0
  br i1 %47, label %48, label %78

48:                                               ; preds = %44
  %49 = load %struct.Hash_Entry**, %struct.Hash_Entry*** %5, align 8
  %50 = getelementptr inbounds %struct.Hash_Entry*, %struct.Hash_Entry** %49, i32 1
  store %struct.Hash_Entry** %50, %struct.Hash_Entry*** %5, align 8
  %51 = load %struct.Hash_Entry*, %struct.Hash_Entry** %49, align 8
  store %struct.Hash_Entry* %51, %struct.Hash_Entry** %3, align 8
  br label %52

52:                                               ; preds = %75, %48
  %53 = load %struct.Hash_Entry*, %struct.Hash_Entry** %3, align 8
  %54 = icmp ne %struct.Hash_Entry* %53, null
  br i1 %54, label %55, label %77

55:                                               ; preds = %52
  %56 = load %struct.Hash_Entry*, %struct.Hash_Entry** %3, align 8
  %57 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %56, i32 0, i32 1
  %58 = load %struct.Hash_Entry*, %struct.Hash_Entry** %57, align 8
  store %struct.Hash_Entry* %58, %struct.Hash_Entry** %4, align 8
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  %61 = load %struct.Hash_Entry**, %struct.Hash_Entry*** %60, align 8
  %62 = load %struct.Hash_Entry*, %struct.Hash_Entry** %3, align 8
  %63 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = and i32 %64, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.Hash_Entry*, %struct.Hash_Entry** %61, i64 %67
  store %struct.Hash_Entry** %68, %struct.Hash_Entry*** %6, align 8
  %69 = load %struct.Hash_Entry**, %struct.Hash_Entry*** %6, align 8
  %70 = load %struct.Hash_Entry*, %struct.Hash_Entry** %69, align 8
  %71 = load %struct.Hash_Entry*, %struct.Hash_Entry** %3, align 8
  %72 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %71, i32 0, i32 1
  store %struct.Hash_Entry* %70, %struct.Hash_Entry** %72, align 8
  %73 = load %struct.Hash_Entry*, %struct.Hash_Entry** %3, align 8
  %74 = load %struct.Hash_Entry**, %struct.Hash_Entry*** %6, align 8
  store %struct.Hash_Entry* %73, %struct.Hash_Entry** %74, align 8
  br label %75

75:                                               ; preds = %55
  %76 = load %struct.Hash_Entry*, %struct.Hash_Entry** %4, align 8
  store %struct.Hash_Entry* %76, %struct.Hash_Entry** %3, align 8
  br label %52

77:                                               ; preds = %52
  br label %44

78:                                               ; preds = %44
  %79 = load %struct.Hash_Entry**, %struct.Hash_Entry*** %9, align 8
  %80 = bitcast %struct.Hash_Entry** %79 to i8*
  %81 = call i32 @free(i8* %80)
  ret void
}

declare dso_local i64 @emalloc(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
