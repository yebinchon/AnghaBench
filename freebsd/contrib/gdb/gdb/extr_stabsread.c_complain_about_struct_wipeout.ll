; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_stabsread.c_complain_about_struct_wipeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_stabsread.c_complain_about_struct_wipeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"struct \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"union \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"enum \00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@symfile_complaints = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [46 x i8] c"struct/union type gets multiply defined: %s%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.type*)* @complain_about_struct_wipeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @complain_about_struct_wipeout(%struct.type* %0) #0 {
  %2 = alloca %struct.type*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store %struct.type* %0, %struct.type** %2, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  %5 = load %struct.type*, %struct.type** %2, align 8
  %6 = call i8* @TYPE_TAG_NAME(%struct.type* %5)
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %18

8:                                                ; preds = %1
  %9 = load %struct.type*, %struct.type** %2, align 8
  %10 = call i8* @TYPE_TAG_NAME(%struct.type* %9)
  store i8* %10, i8** %3, align 8
  %11 = load %struct.type*, %struct.type** %2, align 8
  %12 = call i32 @TYPE_CODE(%struct.type* %11)
  switch i32 %12, label %16 [
    i32 129, label %13
    i32 128, label %14
    i32 130, label %15
  ]

13:                                               ; preds = %8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %17

14:                                               ; preds = %8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  br label %17

15:                                               ; preds = %8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  br label %17

16:                                               ; preds = %8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %17

17:                                               ; preds = %16, %15, %14, %13
  br label %27

18:                                               ; preds = %1
  %19 = load %struct.type*, %struct.type** %2, align 8
  %20 = call i8* @TYPE_NAME(%struct.type* %19)
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load %struct.type*, %struct.type** %2, align 8
  %24 = call i8* @TYPE_NAME(%struct.type* %23)
  store i8* %24, i8** %3, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %26

25:                                               ; preds = %18
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %26

26:                                               ; preds = %25, %22
  br label %27

27:                                               ; preds = %26, %17
  %28 = load i8*, i8** %4, align 8
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 @complaint(i32* @symfile_complaints, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i8* %28, i8* %29)
  ret void
}

declare dso_local i8* @TYPE_TAG_NAME(%struct.type*) #1

declare dso_local i32 @TYPE_CODE(%struct.type*) #1

declare dso_local i8* @TYPE_NAME(%struct.type*) #1

declare dso_local i32 @complaint(i32*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
