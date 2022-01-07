; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsdb/extr_fsdb.c_dolookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsdb/extr_fsdb.c_dolookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inodesc = type { i8*, i32, i32, i32, i32, i32 }

@curinum = common dso_local global i32 0, align 4
@findino = common dso_local global i32 0, align 4
@DATA = common dso_local global i32 0, align 4
@IGNORE = common dso_local global i32 0, align 4
@curinode = common dso_local global i32 0, align 4
@FOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"name `%s' not found in current inode directory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @dolookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dolookup(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.inodesc, align 8
  store i8* %0, i8** %3, align 8
  %5 = call i32 (...) @checkactivedir()
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %33

8:                                                ; preds = %1
  %9 = load i32, i32* @curinum, align 4
  %10 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %4, i32 0, i32 5
  store i32 %9, i32* %10, align 8
  %11 = load i32, i32* @findino, align 4
  %12 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %4, i32 0, i32 4
  store i32 %11, i32* %12, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %4, i32 0, i32 0
  store i8* %13, i8** %14, align 8
  %15 = load i32, i32* @DATA, align 4
  %16 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %4, i32 0, i32 3
  store i32 %15, i32* %16, align 8
  %17 = load i32, i32* @IGNORE, align 4
  %18 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %4, i32 0, i32 2
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @curinode, align 4
  %20 = call i32 @ckinode(i32 %19, %struct.inodesc* %4)
  %21 = load i32, i32* @FOUND, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %8
  %25 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %4, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* @curinum, align 4
  %27 = load i32, i32* @curinum, align 4
  %28 = call i32 @ginode(i32 %27)
  store i32 %28, i32* @curinode, align 4
  %29 = call i32 @printactive(i32 0)
  store i32 1, i32* %2, align 4
  br label %33

30:                                               ; preds = %8
  %31 = load i8*, i8** %3, align 8
  %32 = call i32 @warnx(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %31)
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %30, %24, %7
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @checkactivedir(...) #1

declare dso_local i32 @ckinode(i32, %struct.inodesc*) #1

declare dso_local i32 @ginode(i32) #1

declare dso_local i32 @printactive(i32) #1

declare dso_local i32 @warnx(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
