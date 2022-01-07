; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_ht.c_ck_ht_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_ht.c_ck_ht_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ck_ht = type { %struct.ck_ht_map* }
%struct.ck_ht_map = type { i64, %struct.ck_ht_entry* }
%struct.ck_ht_entry = type { i64 }
%struct.ck_ht_iterator = type { i64 }

@CK_HT_KEY_EMPTY = common dso_local global i64 0, align 8
@CK_HT_KEY_TOMBSTONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ck_ht_next(%struct.ck_ht* %0, %struct.ck_ht_iterator* %1, %struct.ck_ht_entry** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ck_ht*, align 8
  %6 = alloca %struct.ck_ht_iterator*, align 8
  %7 = alloca %struct.ck_ht_entry**, align 8
  %8 = alloca %struct.ck_ht_map*, align 8
  %9 = alloca i64, align 8
  store %struct.ck_ht* %0, %struct.ck_ht** %5, align 8
  store %struct.ck_ht_iterator* %1, %struct.ck_ht_iterator** %6, align 8
  store %struct.ck_ht_entry** %2, %struct.ck_ht_entry*** %7, align 8
  %10 = load %struct.ck_ht*, %struct.ck_ht** %5, align 8
  %11 = getelementptr inbounds %struct.ck_ht, %struct.ck_ht* %10, i32 0, i32 0
  %12 = load %struct.ck_ht_map*, %struct.ck_ht_map** %11, align 8
  store %struct.ck_ht_map* %12, %struct.ck_ht_map** %8, align 8
  %13 = load %struct.ck_ht_iterator*, %struct.ck_ht_iterator** %6, align 8
  %14 = getelementptr inbounds %struct.ck_ht_iterator, %struct.ck_ht_iterator* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.ck_ht_map*, %struct.ck_ht_map** %8, align 8
  %17 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp uge i64 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %69

21:                                               ; preds = %3
  br label %22

22:                                               ; preds = %41, %21
  %23 = load %struct.ck_ht_map*, %struct.ck_ht_map** %8, align 8
  %24 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %23, i32 0, i32 1
  %25 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %24, align 8
  %26 = load %struct.ck_ht_iterator*, %struct.ck_ht_iterator** %6, align 8
  %27 = getelementptr inbounds %struct.ck_ht_iterator, %struct.ck_ht_iterator* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.ck_ht_entry, %struct.ck_ht_entry* %25, i64 %28
  %30 = getelementptr inbounds %struct.ck_ht_entry, %struct.ck_ht_entry* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %9, align 8
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* @CK_HT_KEY_EMPTY, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %22
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* @CK_HT_KEY_TOMBSTONE, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %50

40:                                               ; preds = %35, %22
  br label %41

41:                                               ; preds = %40
  %42 = load %struct.ck_ht_iterator*, %struct.ck_ht_iterator** %6, align 8
  %43 = getelementptr inbounds %struct.ck_ht_iterator, %struct.ck_ht_iterator* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %43, align 8
  %46 = load %struct.ck_ht_map*, %struct.ck_ht_map** %8, align 8
  %47 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ult i64 %45, %48
  br i1 %49, label %22, label %50

50:                                               ; preds = %41, %39
  %51 = load %struct.ck_ht_iterator*, %struct.ck_ht_iterator** %6, align 8
  %52 = getelementptr inbounds %struct.ck_ht_iterator, %struct.ck_ht_iterator* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.ck_ht_map*, %struct.ck_ht_map** %8, align 8
  %55 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp uge i64 %53, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %69

59:                                               ; preds = %50
  %60 = load %struct.ck_ht_map*, %struct.ck_ht_map** %8, align 8
  %61 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %60, i32 0, i32 1
  %62 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %61, align 8
  %63 = load %struct.ck_ht_iterator*, %struct.ck_ht_iterator** %6, align 8
  %64 = getelementptr inbounds %struct.ck_ht_iterator, %struct.ck_ht_iterator* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %64, align 8
  %67 = getelementptr inbounds %struct.ck_ht_entry, %struct.ck_ht_entry* %62, i64 %65
  %68 = load %struct.ck_ht_entry**, %struct.ck_ht_entry*** %7, align 8
  store %struct.ck_ht_entry* %67, %struct.ck_ht_entry** %68, align 8
  store i32 1, i32* %4, align 4
  br label %69

69:                                               ; preds = %59, %58, %20
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
