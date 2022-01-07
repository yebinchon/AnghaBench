; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/mknetid/extr_hash.c_mstore.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/mknetid/extr_hash.c_mstore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.member_entry = type { %struct.member_entry*, %struct.grouplist*, i32 }
%struct.grouplist = type { i32, %struct.grouplist* }

@dummy = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mstore(%struct.member_entry** %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.member_entry**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.member_entry*, align 8
  %10 = alloca %struct.member_entry*, align 8
  %11 = alloca %struct.grouplist*, align 8
  %12 = alloca i64, align 8
  store %struct.member_entry** %0, %struct.member_entry*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = call i64 @hashkey(i8* %13)
  store i64 %14, i64* %12, align 8
  %15 = load %struct.member_entry**, %struct.member_entry*** %5, align 8
  %16 = load i64, i64* %12, align 8
  %17 = getelementptr inbounds %struct.member_entry*, %struct.member_entry** %15, i64 %16
  %18 = load %struct.member_entry*, %struct.member_entry** %17, align 8
  store %struct.member_entry* %18, %struct.member_entry** %9, align 8
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %4
  %22 = call i64 @malloc(i32 16)
  %23 = inttoptr i64 %22 to %struct.grouplist*
  store %struct.grouplist* %23, %struct.grouplist** %11, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.grouplist*, %struct.grouplist** %11, align 8
  %26 = getelementptr inbounds %struct.grouplist, %struct.grouplist* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.grouplist*, %struct.grouplist** %11, align 8
  %28 = getelementptr inbounds %struct.grouplist, %struct.grouplist* %27, i32 0, i32 1
  store %struct.grouplist* null, %struct.grouplist** %28, align 8
  br label %29

29:                                               ; preds = %21, %4
  br label %30

30:                                               ; preds = %52, %29
  %31 = load %struct.member_entry*, %struct.member_entry** %9, align 8
  %32 = icmp ne %struct.member_entry* %31, null
  br i1 %32, label %33, label %56

33:                                               ; preds = %30
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %52, label %36

36:                                               ; preds = %33
  %37 = load %struct.member_entry*, %struct.member_entry** %9, align 8
  %38 = getelementptr inbounds %struct.member_entry, %struct.member_entry* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @strcmp(i32 %39, i8* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %36
  %44 = load %struct.member_entry*, %struct.member_entry** %9, align 8
  %45 = getelementptr inbounds %struct.member_entry, %struct.member_entry* %44, i32 0, i32 1
  %46 = load %struct.grouplist*, %struct.grouplist** %45, align 8
  %47 = load %struct.grouplist*, %struct.grouplist** %11, align 8
  %48 = getelementptr inbounds %struct.grouplist, %struct.grouplist* %47, i32 0, i32 1
  store %struct.grouplist* %46, %struct.grouplist** %48, align 8
  %49 = load %struct.grouplist*, %struct.grouplist** %11, align 8
  %50 = load %struct.member_entry*, %struct.member_entry** %9, align 8
  %51 = getelementptr inbounds %struct.member_entry, %struct.member_entry* %50, i32 0, i32 1
  store %struct.grouplist* %49, %struct.grouplist** %51, align 8
  br label %83

52:                                               ; preds = %36, %33
  %53 = load %struct.member_entry*, %struct.member_entry** %9, align 8
  %54 = getelementptr inbounds %struct.member_entry, %struct.member_entry* %53, i32 0, i32 0
  %55 = load %struct.member_entry*, %struct.member_entry** %54, align 8
  store %struct.member_entry* %55, %struct.member_entry** %9, align 8
  br label %30

56:                                               ; preds = %30
  %57 = call i64 @malloc(i32 24)
  %58 = inttoptr i64 %57 to %struct.member_entry*
  store %struct.member_entry* %58, %struct.member_entry** %10, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 @strdup(i8* %59)
  %61 = load %struct.member_entry*, %struct.member_entry** %10, align 8
  %62 = getelementptr inbounds %struct.member_entry, %struct.member_entry* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %56
  %66 = load %struct.grouplist*, %struct.grouplist** %11, align 8
  %67 = load %struct.member_entry*, %struct.member_entry** %10, align 8
  %68 = getelementptr inbounds %struct.member_entry, %struct.member_entry* %67, i32 0, i32 1
  store %struct.grouplist* %66, %struct.grouplist** %68, align 8
  br label %72

69:                                               ; preds = %56
  %70 = load %struct.member_entry*, %struct.member_entry** %10, align 8
  %71 = getelementptr inbounds %struct.member_entry, %struct.member_entry* %70, i32 0, i32 1
  store %struct.grouplist* bitcast (i32* @dummy to %struct.grouplist*), %struct.grouplist** %71, align 8
  br label %72

72:                                               ; preds = %69, %65
  %73 = load %struct.member_entry**, %struct.member_entry*** %5, align 8
  %74 = load i64, i64* %12, align 8
  %75 = getelementptr inbounds %struct.member_entry*, %struct.member_entry** %73, i64 %74
  %76 = load %struct.member_entry*, %struct.member_entry** %75, align 8
  %77 = load %struct.member_entry*, %struct.member_entry** %10, align 8
  %78 = getelementptr inbounds %struct.member_entry, %struct.member_entry* %77, i32 0, i32 0
  store %struct.member_entry* %76, %struct.member_entry** %78, align 8
  %79 = load %struct.member_entry*, %struct.member_entry** %10, align 8
  %80 = load %struct.member_entry**, %struct.member_entry*** %5, align 8
  %81 = load i64, i64* %12, align 8
  %82 = getelementptr inbounds %struct.member_entry*, %struct.member_entry** %80, i64 %81
  store %struct.member_entry* %79, %struct.member_entry** %82, align 8
  br label %83

83:                                               ; preds = %72, %43
  ret void
}

declare dso_local i64 @hashkey(i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
