; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/revnetgroup/extr_hash.c_mstore.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/revnetgroup/extr_hash.c_mstore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.member_entry = type { i8*, i8*, %struct.member_entry*, %struct.grouplist* }
%struct.grouplist = type { i8*, %struct.grouplist* }

@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mstore(%struct.member_entry** %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.member_entry**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.member_entry*, align 8
  %10 = alloca %struct.member_entry*, align 8
  %11 = alloca %struct.grouplist*, align 8
  %12 = alloca i64, align 8
  store %struct.member_entry** %0, %struct.member_entry*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i64 @hashkey(i8* %13)
  store i64 %14, i64* %12, align 8
  %15 = load %struct.member_entry**, %struct.member_entry*** %5, align 8
  %16 = load i64, i64* %12, align 8
  %17 = getelementptr inbounds %struct.member_entry*, %struct.member_entry** %15, i64 %16
  %18 = load %struct.member_entry*, %struct.member_entry** %17, align 8
  store %struct.member_entry* %18, %struct.member_entry** %9, align 8
  %19 = call i64 @malloc(i32 16)
  %20 = inttoptr i64 %19 to %struct.grouplist*
  store %struct.grouplist* %20, %struct.grouplist** %11, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = call i8* @strdup(i8* %21)
  %23 = load %struct.grouplist*, %struct.grouplist** %11, align 8
  %24 = getelementptr inbounds %struct.grouplist, %struct.grouplist* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  %25 = load %struct.grouplist*, %struct.grouplist** %11, align 8
  %26 = getelementptr inbounds %struct.grouplist, %struct.grouplist* %25, i32 0, i32 1
  store %struct.grouplist* null, %struct.grouplist** %26, align 8
  br label %27

27:                                               ; preds = %46, %4
  %28 = load %struct.member_entry*, %struct.member_entry** %9, align 8
  %29 = icmp ne %struct.member_entry* %28, null
  br i1 %29, label %30, label %50

30:                                               ; preds = %27
  %31 = load %struct.member_entry*, %struct.member_entry** %9, align 8
  %32 = getelementptr inbounds %struct.member_entry, %struct.member_entry* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @strcmp(i8* %33, i8* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %30
  %38 = load %struct.member_entry*, %struct.member_entry** %9, align 8
  %39 = getelementptr inbounds %struct.member_entry, %struct.member_entry* %38, i32 0, i32 3
  %40 = load %struct.grouplist*, %struct.grouplist** %39, align 8
  %41 = load %struct.grouplist*, %struct.grouplist** %11, align 8
  %42 = getelementptr inbounds %struct.grouplist, %struct.grouplist* %41, i32 0, i32 1
  store %struct.grouplist* %40, %struct.grouplist** %42, align 8
  %43 = load %struct.grouplist*, %struct.grouplist** %11, align 8
  %44 = load %struct.member_entry*, %struct.member_entry** %9, align 8
  %45 = getelementptr inbounds %struct.member_entry, %struct.member_entry* %44, i32 0, i32 3
  store %struct.grouplist* %43, %struct.grouplist** %45, align 8
  br label %80

46:                                               ; preds = %30
  %47 = load %struct.member_entry*, %struct.member_entry** %9, align 8
  %48 = getelementptr inbounds %struct.member_entry, %struct.member_entry* %47, i32 0, i32 2
  %49 = load %struct.member_entry*, %struct.member_entry** %48, align 8
  store %struct.member_entry* %49, %struct.member_entry** %9, align 8
  br label %27

50:                                               ; preds = %27
  %51 = call i64 @malloc(i32 32)
  %52 = inttoptr i64 %51 to %struct.member_entry*
  store %struct.member_entry* %52, %struct.member_entry** %10, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = call i8* @strdup(i8* %53)
  %55 = load %struct.member_entry*, %struct.member_entry** %10, align 8
  %56 = getelementptr inbounds %struct.member_entry, %struct.member_entry* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %50
  %60 = load i8*, i8** %8, align 8
  %61 = call i8* @strdup(i8* %60)
  br label %63

62:                                               ; preds = %50
  br label %63

63:                                               ; preds = %62, %59
  %64 = phi i8* [ %61, %59 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %62 ]
  %65 = load %struct.member_entry*, %struct.member_entry** %10, align 8
  %66 = getelementptr inbounds %struct.member_entry, %struct.member_entry* %65, i32 0, i32 1
  store i8* %64, i8** %66, align 8
  %67 = load %struct.grouplist*, %struct.grouplist** %11, align 8
  %68 = load %struct.member_entry*, %struct.member_entry** %10, align 8
  %69 = getelementptr inbounds %struct.member_entry, %struct.member_entry* %68, i32 0, i32 3
  store %struct.grouplist* %67, %struct.grouplist** %69, align 8
  %70 = load %struct.member_entry**, %struct.member_entry*** %5, align 8
  %71 = load i64, i64* %12, align 8
  %72 = getelementptr inbounds %struct.member_entry*, %struct.member_entry** %70, i64 %71
  %73 = load %struct.member_entry*, %struct.member_entry** %72, align 8
  %74 = load %struct.member_entry*, %struct.member_entry** %10, align 8
  %75 = getelementptr inbounds %struct.member_entry, %struct.member_entry* %74, i32 0, i32 2
  store %struct.member_entry* %73, %struct.member_entry** %75, align 8
  %76 = load %struct.member_entry*, %struct.member_entry** %10, align 8
  %77 = load %struct.member_entry**, %struct.member_entry*** %5, align 8
  %78 = load i64, i64* %12, align 8
  %79 = getelementptr inbounds %struct.member_entry*, %struct.member_entry** %77, i64 %78
  store %struct.member_entry* %76, %struct.member_entry** %79, align 8
  br label %80

80:                                               ; preds = %63, %37
  ret void
}

declare dso_local i64 @hashkey(i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
