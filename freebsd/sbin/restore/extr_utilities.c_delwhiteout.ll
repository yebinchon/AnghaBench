; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/restore/extr_utilities.c_delwhiteout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/restore/extr_utilities.c_delwhiteout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry = type { i64, i32 }

@LEAF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"delwhiteout: not a leaf\00", align 1
@REMOVED = common dso_local global i32 0, align 4
@TMPNAME = common dso_local global i32 0, align 4
@Nflag = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"warning: cannot delete whiteout %s: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Delete whiteout %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @delwhiteout(%struct.entry* %0) #0 {
  %2 = alloca %struct.entry*, align 8
  %3 = alloca i8*, align 8
  store %struct.entry* %0, %struct.entry** %2, align 8
  %4 = load %struct.entry*, %struct.entry** %2, align 8
  %5 = getelementptr inbounds %struct.entry, %struct.entry* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @LEAF, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.entry*, %struct.entry** %2, align 8
  %11 = call i32 @badentry(%struct.entry* %10, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %9, %1
  %13 = load i32, i32* @REMOVED, align 4
  %14 = load %struct.entry*, %struct.entry** %2, align 8
  %15 = getelementptr inbounds %struct.entry, %struct.entry* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 8
  %18 = load i32, i32* @TMPNAME, align 4
  %19 = xor i32 %18, -1
  %20 = load %struct.entry*, %struct.entry** %2, align 8
  %21 = getelementptr inbounds %struct.entry, %struct.entry* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, %19
  store i32 %23, i32* %21, align 8
  %24 = load %struct.entry*, %struct.entry** %2, align 8
  %25 = call i8* @myname(%struct.entry* %24)
  store i8* %25, i8** %3, align 8
  %26 = load i32, i32* @Nflag, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %12
  %29 = load i8*, i8** %3, align 8
  %30 = call i64 @undelete(i8* %29)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load i32, i32* @stderr, align 4
  %34 = load i8*, i8** %3, align 8
  %35 = load i32, i32* @errno, align 4
  %36 = call i8* @strerror(i32 %35)
  %37 = call i32 @fprintf(i32 %33, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %34, i8* %36)
  br label %42

38:                                               ; preds = %28, %12
  %39 = load i32, i32* @stdout, align 4
  %40 = load i8*, i8** %3, align 8
  %41 = call i32 @vprintf(i32 %39, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %40)
  br label %42

42:                                               ; preds = %38, %32
  ret void
}

declare dso_local i32 @badentry(%struct.entry*, i8*) #1

declare dso_local i8* @myname(%struct.entry*) #1

declare dso_local i64 @undelete(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @vprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
