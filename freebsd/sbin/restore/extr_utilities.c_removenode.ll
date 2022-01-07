; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/restore/extr_utilities.c_removenode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/restore/extr_utilities.c_removenode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry = type { i64, i32, i32* }

@NODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"removenode: not a node\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"removenode: non-empty directory\00", align 1
@REMOVED = common dso_local global i32 0, align 4
@TMPNAME = common dso_local global i32 0, align 4
@Nflag = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"warning: %s: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"Remove node %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @removenode(%struct.entry* %0) #0 {
  %2 = alloca %struct.entry*, align 8
  %3 = alloca i8*, align 8
  store %struct.entry* %0, %struct.entry** %2, align 8
  %4 = load %struct.entry*, %struct.entry** %2, align 8
  %5 = getelementptr inbounds %struct.entry, %struct.entry* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @NODE, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.entry*, %struct.entry** %2, align 8
  %11 = call i32 @badentry(%struct.entry* %10, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %9, %1
  %13 = load %struct.entry*, %struct.entry** %2, align 8
  %14 = getelementptr inbounds %struct.entry, %struct.entry* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load %struct.entry*, %struct.entry** %2, align 8
  %19 = call i32 @badentry(%struct.entry* %18, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %12
  %21 = load i32, i32* @REMOVED, align 4
  %22 = load %struct.entry*, %struct.entry** %2, align 8
  %23 = getelementptr inbounds %struct.entry, %struct.entry* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 8
  %26 = load i32, i32* @TMPNAME, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.entry*, %struct.entry** %2, align 8
  %29 = getelementptr inbounds %struct.entry, %struct.entry* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load %struct.entry*, %struct.entry** %2, align 8
  %33 = call i8* @myname(%struct.entry* %32)
  store i8* %33, i8** %3, align 8
  %34 = load i32, i32* @Nflag, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %20
  %37 = load i8*, i8** %3, align 8
  %38 = call i64 @rmdir(i8* %37)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = load i32, i32* @stderr, align 4
  %42 = load i8*, i8** %3, align 8
  %43 = load i32, i32* @errno, align 4
  %44 = call i8* @strerror(i32 %43)
  %45 = call i32 @fprintf(i32 %41, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %42, i8* %44)
  br label %50

46:                                               ; preds = %36, %20
  %47 = load i32, i32* @stdout, align 4
  %48 = load i8*, i8** %3, align 8
  %49 = call i32 @vprintf(i32 %47, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %48)
  br label %50

50:                                               ; preds = %46, %40
  ret void
}

declare dso_local i32 @badentry(%struct.entry*, i8*) #1

declare dso_local i8* @myname(%struct.entry*) #1

declare dso_local i64 @rmdir(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @vprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
