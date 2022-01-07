; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/restore/extr_utilities.c_badentry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/restore/extr_utilities.c_badentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry = type { i64, i64, %struct.entry*, %struct.entry*, %struct.entry*, %struct.entry*, %struct.entry* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"bad entry: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"name: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"parent name %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"sibling name: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"next entry name: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"next link name: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"next hashchain name: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"entry type: %s\0A\00", align 1
@NODE = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [5 x i8] c"NODE\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"LEAF\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"inode number: %lu\0A\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"flags: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @badentry(%struct.entry* %0, i8* %1) #0 {
  %3 = alloca %struct.entry*, align 8
  %4 = alloca i8*, align 8
  store %struct.entry* %0, %struct.entry** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* @stderr, align 4
  %6 = load i8*, i8** %4, align 8
  %7 = call i32 @fprintf(i32 %5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %6)
  %8 = load i32, i32* @stderr, align 4
  %9 = load %struct.entry*, %struct.entry** %3, align 8
  %10 = call i8* @myname(%struct.entry* %9)
  %11 = call i32 @fprintf(i32 %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %10)
  %12 = load i32, i32* @stderr, align 4
  %13 = load %struct.entry*, %struct.entry** %3, align 8
  %14 = getelementptr inbounds %struct.entry, %struct.entry* %13, i32 0, i32 6
  %15 = load %struct.entry*, %struct.entry** %14, align 8
  %16 = call i8* @myname(%struct.entry* %15)
  %17 = call i32 @fprintf(i32 %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %16)
  %18 = load %struct.entry*, %struct.entry** %3, align 8
  %19 = getelementptr inbounds %struct.entry, %struct.entry* %18, i32 0, i32 5
  %20 = load %struct.entry*, %struct.entry** %19, align 8
  %21 = icmp ne %struct.entry* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load i32, i32* @stderr, align 4
  %24 = load %struct.entry*, %struct.entry** %3, align 8
  %25 = getelementptr inbounds %struct.entry, %struct.entry* %24, i32 0, i32 5
  %26 = load %struct.entry*, %struct.entry** %25, align 8
  %27 = call i8* @myname(%struct.entry* %26)
  %28 = call i32 @fprintf(i32 %23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %27)
  br label %29

29:                                               ; preds = %22, %2
  %30 = load %struct.entry*, %struct.entry** %3, align 8
  %31 = getelementptr inbounds %struct.entry, %struct.entry* %30, i32 0, i32 4
  %32 = load %struct.entry*, %struct.entry** %31, align 8
  %33 = icmp ne %struct.entry* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load i32, i32* @stderr, align 4
  %36 = load %struct.entry*, %struct.entry** %3, align 8
  %37 = getelementptr inbounds %struct.entry, %struct.entry* %36, i32 0, i32 4
  %38 = load %struct.entry*, %struct.entry** %37, align 8
  %39 = call i8* @myname(%struct.entry* %38)
  %40 = call i32 @fprintf(i32 %35, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* %39)
  br label %41

41:                                               ; preds = %34, %29
  %42 = load %struct.entry*, %struct.entry** %3, align 8
  %43 = getelementptr inbounds %struct.entry, %struct.entry* %42, i32 0, i32 3
  %44 = load %struct.entry*, %struct.entry** %43, align 8
  %45 = icmp ne %struct.entry* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load i32, i32* @stderr, align 4
  %48 = load %struct.entry*, %struct.entry** %3, align 8
  %49 = getelementptr inbounds %struct.entry, %struct.entry* %48, i32 0, i32 3
  %50 = load %struct.entry*, %struct.entry** %49, align 8
  %51 = call i8* @myname(%struct.entry* %50)
  %52 = call i32 @fprintf(i32 %47, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* %51)
  br label %53

53:                                               ; preds = %46, %41
  %54 = load %struct.entry*, %struct.entry** %3, align 8
  %55 = getelementptr inbounds %struct.entry, %struct.entry* %54, i32 0, i32 2
  %56 = load %struct.entry*, %struct.entry** %55, align 8
  %57 = icmp ne %struct.entry* %56, null
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = load i32, i32* @stderr, align 4
  %60 = load %struct.entry*, %struct.entry** %3, align 8
  %61 = getelementptr inbounds %struct.entry, %struct.entry* %60, i32 0, i32 2
  %62 = load %struct.entry*, %struct.entry** %61, align 8
  %63 = call i8* @myname(%struct.entry* %62)
  %64 = call i32 @fprintf(i32 %59, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8* %63)
  br label %65

65:                                               ; preds = %58, %53
  %66 = load i32, i32* @stderr, align 4
  %67 = load %struct.entry*, %struct.entry** %3, align 8
  %68 = getelementptr inbounds %struct.entry, %struct.entry* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @NODE, align 8
  %71 = icmp eq i64 %69, %70
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0)
  %74 = call i32 @fprintf(i32 %66, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8* %73)
  %75 = load i32, i32* @stderr, align 4
  %76 = load %struct.entry*, %struct.entry** %3, align 8
  %77 = getelementptr inbounds %struct.entry, %struct.entry* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = inttoptr i64 %78 to i8*
  %80 = call i32 @fprintf(i32 %75, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i8* %79)
  %81 = load %struct.entry*, %struct.entry** %3, align 8
  %82 = call i32 @flagvalues(%struct.entry* %81)
  %83 = call i32 @panic(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i32 %82)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @myname(%struct.entry*) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @flagvalues(%struct.entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
