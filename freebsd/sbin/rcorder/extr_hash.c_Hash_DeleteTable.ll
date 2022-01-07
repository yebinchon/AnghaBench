; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/rcorder/extr_hash.c_Hash_DeleteTable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/rcorder/extr_hash.c_Hash_DeleteTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.Hash_Entry** }
%struct.Hash_Entry = type { %struct.Hash_Entry* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Hash_DeleteTable(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.Hash_Entry**, align 8
  %4 = alloca %struct.Hash_Entry*, align 8
  %5 = alloca %struct.Hash_Entry*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  store %struct.Hash_Entry* null, %struct.Hash_Entry** %5, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = load %struct.Hash_Entry**, %struct.Hash_Entry*** %8, align 8
  store %struct.Hash_Entry** %9, %struct.Hash_Entry*** %3, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  br label %13

13:                                               ; preds = %33, %1
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %6, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %13
  %18 = load %struct.Hash_Entry**, %struct.Hash_Entry*** %3, align 8
  %19 = getelementptr inbounds %struct.Hash_Entry*, %struct.Hash_Entry** %18, i32 1
  store %struct.Hash_Entry** %19, %struct.Hash_Entry*** %3, align 8
  %20 = load %struct.Hash_Entry*, %struct.Hash_Entry** %18, align 8
  store %struct.Hash_Entry* %20, %struct.Hash_Entry** %4, align 8
  br label %21

21:                                               ; preds = %31, %17
  %22 = load %struct.Hash_Entry*, %struct.Hash_Entry** %4, align 8
  %23 = icmp ne %struct.Hash_Entry* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load %struct.Hash_Entry*, %struct.Hash_Entry** %4, align 8
  %26 = getelementptr inbounds %struct.Hash_Entry, %struct.Hash_Entry* %25, i32 0, i32 0
  %27 = load %struct.Hash_Entry*, %struct.Hash_Entry** %26, align 8
  store %struct.Hash_Entry* %27, %struct.Hash_Entry** %5, align 8
  %28 = load %struct.Hash_Entry*, %struct.Hash_Entry** %4, align 8
  %29 = bitcast %struct.Hash_Entry* %28 to i8*
  %30 = call i32 @free(i8* %29)
  br label %31

31:                                               ; preds = %24
  %32 = load %struct.Hash_Entry*, %struct.Hash_Entry** %5, align 8
  store %struct.Hash_Entry* %32, %struct.Hash_Entry** %4, align 8
  br label %21

33:                                               ; preds = %21
  br label %13

34:                                               ; preds = %13
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load %struct.Hash_Entry**, %struct.Hash_Entry*** %36, align 8
  %38 = bitcast %struct.Hash_Entry** %37 to i8*
  %39 = call i32 @free(i8* %38)
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  store %struct.Hash_Entry** null, %struct.Hash_Entry*** %41, align 8
  ret void
}

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
