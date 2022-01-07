; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/db/extr_h_db.c_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/db/extr_h_db.c_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (%struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_7__*, i32)* }
%struct.TYPE_7__ = type { i8*, i32 }

@R_LAST = common dso_local global i32 0, align 4
@R_PREV = common dso_local global i32 0, align 4
@R_FIRST = common dso_local global i32 0, align 4
@R_NEXT = common dso_local global i32 0, align 4
@ofd = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"line %zu: (dump) seq failed\00", align 1
@lineno = common dso_local global i32 0, align 4
@R_RNEXT = common dso_local global i32 0, align 4
@R_RPREV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32, i32)* @dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump(%struct.TYPE_8__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__, align 8
  %8 = alloca %struct.TYPE_7__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @R_LAST, align 4
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* @R_PREV, align 4
  store i32 %15, i32* %10, align 4
  br label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @R_FIRST, align 4
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* @R_NEXT, align 4
  store i32 %18, i32* %10, align 4
  br label %19

19:                                               ; preds = %16, %13
  br label %20

20:                                               ; preds = %46, %19
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32 (%struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_7__*, i32)** %22, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 %23(%struct.TYPE_8__* %24, %struct.TYPE_7__* %7, %struct.TYPE_7__* %8, i32 %25)
  switch i32 %26, label %45 [
    i32 0, label %27
    i32 1, label %41
    i32 -1, label %42
  ]

27:                                               ; preds = %20
  %28 = load i32, i32* @ofd, align 4
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @write(i32 %28, i8* %30, i32 %32)
  %34 = load i32, i32* @ofd, align 4
  %35 = load i32, i32* @STDOUT_FILENO, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %27
  %38 = load i32, i32* @ofd, align 4
  %39 = call i32 @write(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  br label %40

40:                                               ; preds = %37, %27
  br label %45

41:                                               ; preds = %20
  br label %48

42:                                               ; preds = %20
  %43 = load i32, i32* @lineno, align 4
  %44 = call i32 @err(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %42, %20, %40
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %9, align 4
  br label %20

48:                                               ; preds = %41
  ret void
}

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
