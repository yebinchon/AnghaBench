; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/mknetid/extr_hash.c_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/mknetid/extr_hash.c_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grouplist = type { i32 }
%struct.member_entry = type { %struct.member_entry*, %struct.grouplist*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.grouplist* @lookup(%struct.member_entry** %0, i8* %1) #0 {
  %3 = alloca %struct.grouplist*, align 8
  %4 = alloca %struct.member_entry**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.member_entry*, align 8
  store %struct.member_entry** %0, %struct.member_entry*** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.member_entry**, %struct.member_entry*** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i64 @hashkey(i8* %8)
  %10 = getelementptr inbounds %struct.member_entry*, %struct.member_entry** %7, i64 %9
  %11 = load %struct.member_entry*, %struct.member_entry** %10, align 8
  store %struct.member_entry* %11, %struct.member_entry** %6, align 8
  br label %12

12:                                               ; preds = %26, %2
  %13 = load %struct.member_entry*, %struct.member_entry** %6, align 8
  %14 = icmp ne %struct.member_entry* %13, null
  br i1 %14, label %15, label %30

15:                                               ; preds = %12
  %16 = load %struct.member_entry*, %struct.member_entry** %6, align 8
  %17 = getelementptr inbounds %struct.member_entry, %struct.member_entry* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @strcmp(i32 %18, i8* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %15
  %23 = load %struct.member_entry*, %struct.member_entry** %6, align 8
  %24 = getelementptr inbounds %struct.member_entry, %struct.member_entry* %23, i32 0, i32 1
  %25 = load %struct.grouplist*, %struct.grouplist** %24, align 8
  store %struct.grouplist* %25, %struct.grouplist** %3, align 8
  br label %31

26:                                               ; preds = %15
  %27 = load %struct.member_entry*, %struct.member_entry** %6, align 8
  %28 = getelementptr inbounds %struct.member_entry, %struct.member_entry* %27, i32 0, i32 0
  %29 = load %struct.member_entry*, %struct.member_entry** %28, align 8
  store %struct.member_entry* %29, %struct.member_entry** %6, align 8
  br label %12

30:                                               ; preds = %12
  store %struct.grouplist* null, %struct.grouplist** %3, align 8
  br label %31

31:                                               ; preds = %30, %22
  %32 = load %struct.grouplist*, %struct.grouplist** %3, align 8
  ret %struct.grouplist* %32
}

declare dso_local i64 @hashkey(i8*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
