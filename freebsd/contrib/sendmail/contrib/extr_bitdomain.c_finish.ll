; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sendmail/contrib/extr_bitdomain.c_finish.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sendmail/contrib/extr_bitdomain.c_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry = type { i32, i32, %struct.entry* }

@firstentry = common dso_local global %struct.entry* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @finish() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.entry*, align 8
  %3 = alloca i8*, align 8
  %4 = load %struct.entry*, %struct.entry** @firstentry, align 8
  store %struct.entry* %4, %struct.entry** %2, align 8
  br label %5

5:                                                ; preds = %27, %0
  %6 = load %struct.entry*, %struct.entry** %2, align 8
  %7 = icmp ne %struct.entry* %6, null
  br i1 %7, label %8, label %31

8:                                                ; preds = %5
  %9 = load %struct.entry*, %struct.entry** %2, align 8
  %10 = getelementptr inbounds %struct.entry, %struct.entry* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @strchr(i32 %11, i8 signext 46)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %8
  %15 = load %struct.entry*, %struct.entry** %2, align 8
  %16 = getelementptr inbounds %struct.entry, %struct.entry* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @lookup(i32 %17)
  store i8* %18, i8** %3, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load %struct.entry*, %struct.entry** %2, align 8
  %22 = getelementptr inbounds %struct.entry, %struct.entry* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 @remember(i32 %23, i8* %24)
  br label %26

26:                                               ; preds = %20, %14, %8
  br label %27

27:                                               ; preds = %26
  %28 = load %struct.entry*, %struct.entry** %2, align 8
  %29 = getelementptr inbounds %struct.entry, %struct.entry* %28, i32 0, i32 2
  %30 = load %struct.entry*, %struct.entry** %29, align 8
  store %struct.entry* %30, %struct.entry** %2, align 8
  br label %5

31:                                               ; preds = %5
  %32 = load i32, i32* %1, align 4
  ret i32 %32
}

declare dso_local i32 @strchr(i32, i8 signext) #1

declare dso_local i8* @lookup(i32) #1

declare dso_local i32 @remember(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
