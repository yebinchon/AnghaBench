; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/revnetgroup/extr_hash.c_store.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/revnetgroup/extr_hash.c_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.group_entry = type { %struct.group_entry*, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @store(%struct.group_entry** %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.group_entry**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.group_entry*, align 8
  %8 = alloca i64, align 8
  store %struct.group_entry** %0, %struct.group_entry*** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i64 @hashkey(i8* %9)
  store i64 %10, i64* %8, align 8
  %11 = call i64 @malloc(i32 24)
  %12 = inttoptr i64 %11 to %struct.group_entry*
  store %struct.group_entry* %12, %struct.group_entry** %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i8* @strdup(i8* %13)
  %15 = load %struct.group_entry*, %struct.group_entry** %7, align 8
  %16 = getelementptr inbounds %struct.group_entry, %struct.group_entry* %15, i32 0, i32 2
  store i8* %14, i8** %16, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i8* @strdup(i8* %17)
  %19 = load %struct.group_entry*, %struct.group_entry** %7, align 8
  %20 = getelementptr inbounds %struct.group_entry, %struct.group_entry* %19, i32 0, i32 1
  store i8* %18, i8** %20, align 8
  %21 = load %struct.group_entry**, %struct.group_entry*** %4, align 8
  %22 = load i64, i64* %8, align 8
  %23 = getelementptr inbounds %struct.group_entry*, %struct.group_entry** %21, i64 %22
  %24 = load %struct.group_entry*, %struct.group_entry** %23, align 8
  %25 = load %struct.group_entry*, %struct.group_entry** %7, align 8
  %26 = getelementptr inbounds %struct.group_entry, %struct.group_entry* %25, i32 0, i32 0
  store %struct.group_entry* %24, %struct.group_entry** %26, align 8
  %27 = load %struct.group_entry*, %struct.group_entry** %7, align 8
  %28 = load %struct.group_entry**, %struct.group_entry*** %4, align 8
  %29 = load i64, i64* %8, align 8
  %30 = getelementptr inbounds %struct.group_entry*, %struct.group_entry** %28, i64 %29
  store %struct.group_entry* %27, %struct.group_entry** %30, align 8
  ret void
}

declare dso_local i64 @hashkey(i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
