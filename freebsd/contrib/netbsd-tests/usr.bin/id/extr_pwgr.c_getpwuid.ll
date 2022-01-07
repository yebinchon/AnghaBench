; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/usr.bin/id/extr_pwgr.c_getpwuid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/usr.bin/id/extr_pwgr.c_getpwuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32, i32, i8* }

@PwEntry = common dso_local global %struct.passwd zeroinitializer, align 8
@.str = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"test\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.passwd* @getpwuid(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.passwd*, align 8
  store i32 %0, i32* %2, align 4
  store %struct.passwd* @PwEntry, %struct.passwd** %3, align 8
  %4 = load %struct.passwd*, %struct.passwd** %3, align 8
  %5 = call i32 @memset(%struct.passwd* %4, i32 0, i32 16)
  %6 = load i32, i32* %2, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = call i8* @__UNCONST(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.passwd*, %struct.passwd** %3, align 8
  %11 = getelementptr inbounds %struct.passwd, %struct.passwd* %10, i32 0, i32 2
  store i8* %9, i8** %11, align 8
  %12 = load %struct.passwd*, %struct.passwd** %3, align 8
  %13 = getelementptr inbounds %struct.passwd, %struct.passwd* %12, i32 0, i32 0
  store i32 0, i32* %13, align 8
  %14 = load %struct.passwd*, %struct.passwd** %3, align 8
  %15 = getelementptr inbounds %struct.passwd, %struct.passwd* %14, i32 0, i32 1
  store i32 0, i32* %15, align 4
  br label %29

16:                                               ; preds = %1
  %17 = load i32, i32* %2, align 4
  %18 = icmp eq i32 %17, 100
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = call i8* @__UNCONST(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.passwd*, %struct.passwd** %3, align 8
  %22 = getelementptr inbounds %struct.passwd, %struct.passwd* %21, i32 0, i32 2
  store i8* %20, i8** %22, align 8
  %23 = load %struct.passwd*, %struct.passwd** %3, align 8
  %24 = getelementptr inbounds %struct.passwd, %struct.passwd* %23, i32 0, i32 0
  store i32 100, i32* %24, align 8
  %25 = load %struct.passwd*, %struct.passwd** %3, align 8
  %26 = getelementptr inbounds %struct.passwd, %struct.passwd* %25, i32 0, i32 1
  store i32 100, i32* %26, align 4
  br label %28

27:                                               ; preds = %16
  store %struct.passwd* null, %struct.passwd** %3, align 8
  br label %28

28:                                               ; preds = %27, %19
  br label %29

29:                                               ; preds = %28, %8
  %30 = load %struct.passwd*, %struct.passwd** %3, align 8
  ret %struct.passwd* %30
}

declare dso_local i32 @memset(%struct.passwd*, i32, i32) #1

declare dso_local i8* @__UNCONST(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
