; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcompat/4.4/extr_cuserid.c_cuserid.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcompat/4.4/extr_cuserid.c_cuserid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i8* }

@L_cuserid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @cuserid(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.passwd*, align 8
  store i8* %0, i8** %3, align 8
  %5 = call i32 (...) @geteuid()
  %6 = call %struct.passwd* @getpwuid(i32 %5)
  store %struct.passwd* %6, %struct.passwd** %4, align 8
  %7 = icmp eq %struct.passwd* %6, null
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = load i8*, i8** %3, align 8
  store i8 0, i8* %12, align 1
  br label %13

13:                                               ; preds = %11, %8
  %14 = load i8*, i8** %3, align 8
  store i8* %14, i8** %2, align 8
  br label %30

15:                                               ; preds = %1
  %16 = load i8*, i8** %3, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  %19 = load i8*, i8** %3, align 8
  %20 = load %struct.passwd*, %struct.passwd** %4, align 8
  %21 = getelementptr inbounds %struct.passwd, %struct.passwd* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load i32, i32* @L_cuserid, align 4
  %24 = call i32 @strncpy(i8* %19, i8* %22, i32 %23)
  %25 = load i8*, i8** %3, align 8
  store i8* %25, i8** %2, align 8
  br label %30

26:                                               ; preds = %15
  %27 = load %struct.passwd*, %struct.passwd** %4, align 8
  %28 = getelementptr inbounds %struct.passwd, %struct.passwd* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %2, align 8
  br label %30

30:                                               ; preds = %26, %18, %13
  %31 = load i8*, i8** %2, align 8
  ret i8* %31
}

declare dso_local %struct.passwd* @getpwuid(i32) #1

declare dso_local i32 @geteuid(...) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
