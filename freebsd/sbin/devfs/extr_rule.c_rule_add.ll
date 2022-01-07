; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/devfs/extr_rule.c_rule_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/devfs/extr_rule.c_rule_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devfs_rule = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = common dso_local global i32 0, align 4
@DEVFSIO_RADD = common dso_local global i32 0, align 4
@in_rsnum = common dso_local global i32 0, align 4
@mpfd = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"ioctl DEVFSIO_RADD\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @rule_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rule_add(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.devfs_rule, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 2
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = call i32 (...) @usage()
  br label %11

11:                                               ; preds = %9, %2
  %12 = load i8**, i8*** %4, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 1
  %14 = load i8*, i8** %13, align 8
  %15 = call i64 @strcmp(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %11
  %18 = load i32, i32* @stdin, align 4
  %19 = load i32, i32* @DEVFSIO_RADD, align 4
  %20 = load i32, i32* @in_rsnum, align 4
  %21 = call i32 @rulespec_infp(i32 %18, i32 %19, i32 %20)
  br label %37

22:                                               ; preds = %11
  %23 = load i32, i32* %3, align 4
  %24 = sub nsw i32 %23, 1
  %25 = load i8**, i8*** %4, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 1
  %27 = load i32, i32* @in_rsnum, align 4
  %28 = call i32 @rulespec_intok(%struct.devfs_rule* %5, i32 %24, i8** %26, i32 %27)
  %29 = load i32, i32* @mpfd, align 4
  %30 = load i32, i32* @DEVFSIO_RADD, align 4
  %31 = call i32 @ioctl(i32 %29, i32 %30, %struct.devfs_rule* %5)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %36

34:                                               ; preds = %22
  %35 = call i32 @err(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %22
  br label %37

37:                                               ; preds = %36, %17
  ret i32 0
}

declare dso_local i32 @usage(...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @rulespec_infp(i32, i32, i32) #1

declare dso_local i32 @rulespec_intok(%struct.devfs_rule*, i32, i8**, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.devfs_rule*) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
