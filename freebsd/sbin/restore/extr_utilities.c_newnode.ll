; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/restore/extr_utilities.c_newnode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/restore/extr_utilities.c_newnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry = type { i64, i32 }

@NODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"newnode: not a node\00", align 1
@Nflag = common dso_local global i32 0, align 4
@uflag = common dso_local global i32 0, align 4
@EXISTED = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"warning: %s: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"Make node %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @newnode(%struct.entry* %0) #0 {
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
  %11 = call i32 @badentry(%struct.entry* %10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %9, %1
  %13 = load %struct.entry*, %struct.entry** %2, align 8
  %14 = call i8* @myname(%struct.entry* %13)
  store i8* %14, i8** %3, align 8
  %15 = load i32, i32* @Nflag, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %35, label %17

17:                                               ; preds = %12
  %18 = load i8*, i8** %3, align 8
  %19 = call i64 @mkdir(i8* %18, i32 511)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %17
  %22 = load i32, i32* @uflag, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* @EXISTED, align 4
  %26 = load %struct.entry*, %struct.entry** %2, align 8
  %27 = getelementptr inbounds %struct.entry, %struct.entry* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load i32, i32* @stderr, align 4
  %31 = load i8*, i8** %3, align 8
  %32 = load i32, i32* @errno, align 4
  %33 = call i8* @strerror(i32 %32)
  %34 = call i32 @fprintf(i32 %30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %31, i8* %33)
  br label %39

35:                                               ; preds = %21, %17, %12
  %36 = load i32, i32* @stdout, align 4
  %37 = load i8*, i8** %3, align 8
  %38 = call i32 @vprintf(i32 %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %37)
  br label %39

39:                                               ; preds = %35, %24
  ret void
}

declare dso_local i32 @badentry(%struct.entry*, i8*) #1

declare dso_local i8* @myname(%struct.entry*) #1

declare dso_local i64 @mkdir(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @vprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
