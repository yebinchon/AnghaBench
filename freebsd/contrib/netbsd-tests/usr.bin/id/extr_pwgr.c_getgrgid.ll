; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/usr.bin/id/extr_pwgr.c_getgrgid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/usr.bin/id/extr_pwgr.c_getgrgid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.group = type { i32, i8* }

@GrEntry = common dso_local global %struct.group zeroinitializer, align 8
@.str = private unnamed_addr constant [6 x i8] c"wheel\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"users\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.group* @getgrgid(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.group*, align 8
  store i32 %0, i32* %2, align 4
  store %struct.group* @GrEntry, %struct.group** %3, align 8
  %4 = load %struct.group*, %struct.group** %3, align 8
  %5 = call i32 @memset(%struct.group* %4, i32 0, i32 16)
  %6 = load i32, i32* %2, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = call i8* @__UNCONST(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.group*, %struct.group** %3, align 8
  %11 = getelementptr inbounds %struct.group, %struct.group* %10, i32 0, i32 1
  store i8* %9, i8** %11, align 8
  %12 = load %struct.group*, %struct.group** %3, align 8
  %13 = getelementptr inbounds %struct.group, %struct.group* %12, i32 0, i32 0
  store i32 0, i32* %13, align 8
  br label %25

14:                                               ; preds = %1
  %15 = load i32, i32* %2, align 4
  %16 = icmp eq i32 %15, 100
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = call i8* @__UNCONST(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %19 = load %struct.group*, %struct.group** %3, align 8
  %20 = getelementptr inbounds %struct.group, %struct.group* %19, i32 0, i32 1
  store i8* %18, i8** %20, align 8
  %21 = load %struct.group*, %struct.group** %3, align 8
  %22 = getelementptr inbounds %struct.group, %struct.group* %21, i32 0, i32 0
  store i32 100, i32* %22, align 8
  br label %24

23:                                               ; preds = %14
  store %struct.group* null, %struct.group** %3, align 8
  br label %24

24:                                               ; preds = %23, %17
  br label %25

25:                                               ; preds = %24, %8
  %26 = load %struct.group*, %struct.group** %3, align 8
  ret %struct.group* %26
}

declare dso_local i32 @memset(%struct.group*, i32, i32) #1

declare dso_local i8* @__UNCONST(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
