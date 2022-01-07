; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/restore/extr_utilities.c_pathcheck.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/restore/extr_utilities.c_pathcheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry = type { i32 }
%struct.TYPE_2__ = type { i32 }

@NODE = common dso_local global i32 0, align 4
@NEW = common dso_local global i32 0, align 4
@KEEP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pathcheck(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.entry*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i8* @strchr(i8* %6, i8 signext 47)
  store i8* %7, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %52

11:                                               ; preds = %1
  %12 = load i8*, i8** %5, align 8
  store i8* %12, i8** %3, align 8
  br label %13

13:                                               ; preds = %49, %11
  %14 = load i8*, i8** %3, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %52

18:                                               ; preds = %13
  %19 = load i8*, i8** %3, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 47
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %49

24:                                               ; preds = %18
  %25 = load i8*, i8** %3, align 8
  store i8 0, i8* %25, align 1
  %26 = load i8*, i8** %2, align 8
  %27 = call %struct.entry* @lookupname(i8* %26)
  store %struct.entry* %27, %struct.entry** %4, align 8
  %28 = load %struct.entry*, %struct.entry** %4, align 8
  %29 = icmp eq %struct.entry* %28, null
  br i1 %29, label %30, label %40

30:                                               ; preds = %24
  %31 = load i8*, i8** %2, align 8
  %32 = load i8*, i8** %2, align 8
  %33 = call %struct.TYPE_2__* @pathsearch(i8* %32)
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @NODE, align 4
  %37 = call %struct.entry* @addentry(i8* %31, i32 %35, i32 %36)
  store %struct.entry* %37, %struct.entry** %4, align 8
  %38 = load %struct.entry*, %struct.entry** %4, align 8
  %39 = call i32 @newnode(%struct.entry* %38)
  br label %40

40:                                               ; preds = %30, %24
  %41 = load i32, i32* @NEW, align 4
  %42 = load i32, i32* @KEEP, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.entry*, %struct.entry** %4, align 8
  %45 = getelementptr inbounds %struct.entry, %struct.entry* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load i8*, i8** %3, align 8
  store i8 47, i8* %48, align 1
  br label %49

49:                                               ; preds = %40, %23
  %50 = load i8*, i8** %3, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %3, align 8
  br label %13

52:                                               ; preds = %10, %13
  ret void
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local %struct.entry* @lookupname(i8*) #1

declare dso_local %struct.entry* @addentry(i8*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @pathsearch(i8*) #1

declare dso_local i32 @newnode(%struct.entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
