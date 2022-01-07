; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/extr_kod_management.c_search_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/extr_kod_management.c_search_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kod_entry = type { i32 }

@kod_db_cnt = common dso_local global i32 0, align 4
@kod_db = common dso_local global %struct.kod_entry** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @search_entry(i8* %0, %struct.kod_entry** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.kod_entry**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.kod_entry** %1, %struct.kod_entry*** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %28, %2
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @kod_db_cnt, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %31

13:                                               ; preds = %9
  %14 = load %struct.kod_entry**, %struct.kod_entry*** @kod_db, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.kod_entry*, %struct.kod_entry** %14, i64 %16
  %18 = load %struct.kod_entry*, %struct.kod_entry** %17, align 8
  %19 = getelementptr inbounds %struct.kod_entry, %struct.kod_entry* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @strcmp(i32 %20, i8* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %13
  %25 = load i32, i32* %8, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %8, align 4
  br label %27

27:                                               ; preds = %24, %13
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %6, align 4
  br label %9

31:                                               ; preds = %9
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = load %struct.kod_entry**, %struct.kod_entry*** %5, align 8
  store %struct.kod_entry* null, %struct.kod_entry** %35, align 8
  store i32 0, i32* %3, align 4
  br label %76

36:                                               ; preds = %31
  %37 = load i32, i32* %8, align 4
  %38 = call %struct.kod_entry* @eallocarray(i32 %37, i32 4)
  %39 = load %struct.kod_entry**, %struct.kod_entry*** %5, align 8
  store %struct.kod_entry* %38, %struct.kod_entry** %39, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %71, %36
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @kod_db_cnt, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %74

44:                                               ; preds = %40
  %45 = load %struct.kod_entry**, %struct.kod_entry*** @kod_db, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.kod_entry*, %struct.kod_entry** %45, i64 %47
  %49 = load %struct.kod_entry*, %struct.kod_entry** %48, align 8
  %50 = getelementptr inbounds %struct.kod_entry, %struct.kod_entry* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i8*, i8** %4, align 8
  %53 = call i32 @strcmp(i32 %51, i8* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %70, label %55

55:                                               ; preds = %44
  %56 = load %struct.kod_entry**, %struct.kod_entry*** %5, align 8
  %57 = load %struct.kod_entry*, %struct.kod_entry** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.kod_entry, %struct.kod_entry* %57, i64 %59
  %61 = load %struct.kod_entry**, %struct.kod_entry*** @kod_db, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.kod_entry*, %struct.kod_entry** %61, i64 %63
  %65 = load %struct.kod_entry*, %struct.kod_entry** %64, align 8
  %66 = bitcast %struct.kod_entry* %60 to i8*
  %67 = bitcast %struct.kod_entry* %65 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %66, i8* align 4 %67, i64 4, i1 false)
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %55, %44
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  br label %40

74:                                               ; preds = %40
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %74, %34
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local %struct.kod_entry* @eallocarray(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
