; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/rcorder/extr_hash.c_Hash_InitTable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/rcorder/extr_hash.c_Hash_InitTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, %struct.Hash_Entry**, i64 }
%struct.Hash_Entry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Hash_InitTable(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.Hash_Entry**, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp sle i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 16, i32* %5, align 4
  br label %20

10:                                               ; preds = %2
  store i32 2, i32* %5, align 4
  br label %11

11:                                               ; preds = %16, %10
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  br label %16

16:                                               ; preds = %15
  %17 = load i32, i32* %5, align 4
  %18 = shl i32 %17, 1
  store i32 %18, i32* %5, align 4
  br label %11

19:                                               ; preds = %11
  br label %20

20:                                               ; preds = %19, %9
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 3
  store i64 0, i64* %22, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sub nsw i32 %26, 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 8, %31
  %33 = trunc i64 %32 to i32
  %34 = call i64 @emalloc(i32 %33)
  %35 = inttoptr i64 %34 to %struct.Hash_Entry**
  store %struct.Hash_Entry** %35, %struct.Hash_Entry*** %6, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  store %struct.Hash_Entry** %35, %struct.Hash_Entry*** %37, align 8
  br label %38

38:                                               ; preds = %42, %20
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %5, align 4
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load %struct.Hash_Entry**, %struct.Hash_Entry*** %6, align 8
  %44 = getelementptr inbounds %struct.Hash_Entry*, %struct.Hash_Entry** %43, i32 1
  store %struct.Hash_Entry** %44, %struct.Hash_Entry*** %6, align 8
  store %struct.Hash_Entry* null, %struct.Hash_Entry** %43, align 8
  br label %38

45:                                               ; preds = %38
  ret void
}

declare dso_local i64 @emalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
