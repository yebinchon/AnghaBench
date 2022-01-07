; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/revnetgroup/extr_parse_netgroup.c___setnetgrent.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/revnetgroup/extr_parse_netgroup.c___setnetgrent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, %struct.netgrp* }
%struct.netgrp = type { i32 }

@grouphead = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@nextgrp = common dso_local global %struct.netgrp* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__setnetgrent(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = icmp eq i8* %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load i8*, i8** %2, align 8
  %7 = call i64 @strlen(i8* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %5, %1
  br label %37

10:                                               ; preds = %5
  %11 = load %struct.netgrp*, %struct.netgrp** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @grouphead, i32 0, i32 1), align 8
  %12 = icmp eq %struct.netgrp* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %10
  %14 = load i8*, i8** %2, align 8
  %15 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @grouphead, i32 0, i32 0), align 8
  %16 = call i64 @strcmp(i8* %14, i8* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %13, %10
  %19 = call i32 (...) @__endnetgrent()
  %20 = load i8*, i8** %2, align 8
  %21 = call i64 @parse_netgrp(i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = call i32 (...) @__endnetgrent()
  br label %34

25:                                               ; preds = %18
  %26 = load i8*, i8** %2, align 8
  %27 = call i64 @strlen(i8* %26)
  %28 = add nsw i64 %27, 1
  %29 = call i64 @malloc(i64 %28)
  %30 = inttoptr i64 %29 to i8*
  store i8* %30, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @grouphead, i32 0, i32 0), align 8
  %31 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @grouphead, i32 0, i32 0), align 8
  %32 = load i8*, i8** %2, align 8
  %33 = call i32 @strcpy(i8* %31, i8* %32)
  br label %34

34:                                               ; preds = %25, %23
  br label %35

35:                                               ; preds = %34, %13
  %36 = load %struct.netgrp*, %struct.netgrp** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @grouphead, i32 0, i32 1), align 8
  store %struct.netgrp* %36, %struct.netgrp** @nextgrp, align 8
  br label %37

37:                                               ; preds = %35, %9
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @__endnetgrent(...) #1

declare dso_local i64 @parse_netgrp(i8*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
