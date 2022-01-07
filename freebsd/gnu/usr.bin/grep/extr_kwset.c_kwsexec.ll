; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/grep/extr_kwset.c_kwsexec.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/grep/extr_kwset.c_kwsexec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kwsmatch = type { i64*, i32*, i64 }
%struct.kwset = type { i32, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kwsexec(i64 %0, i8* %1, i64 %2, %struct.kwsmatch* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.kwsmatch*, align 8
  %10 = alloca %struct.kwset*, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.kwsmatch* %3, %struct.kwsmatch** %9, align 8
  %12 = load i64, i64* %6, align 8
  %13 = inttoptr i64 %12 to %struct.kwset*
  store %struct.kwset* %13, %struct.kwset** %10, align 8
  %14 = load %struct.kwset*, %struct.kwset** %10, align 8
  %15 = getelementptr inbounds %struct.kwset, %struct.kwset* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %50

18:                                               ; preds = %4
  %19 = load %struct.kwset*, %struct.kwset** %10, align 8
  %20 = getelementptr inbounds %struct.kwset, %struct.kwset* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %50

23:                                               ; preds = %18
  %24 = load i64, i64* %6, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i64, i64* %8, align 8
  %27 = call i64 @bmexec(i64 %24, i8* %25, i64 %26)
  store i64 %27, i64* %11, align 8
  %28 = load %struct.kwsmatch*, %struct.kwsmatch** %9, align 8
  %29 = icmp ne %struct.kwsmatch* %28, null
  br i1 %29, label %30, label %48

30:                                               ; preds = %23
  %31 = load i64, i64* %11, align 8
  %32 = icmp ne i64 %31, -1
  br i1 %32, label %33, label %48

33:                                               ; preds = %30
  %34 = load %struct.kwsmatch*, %struct.kwsmatch** %9, align 8
  %35 = getelementptr inbounds %struct.kwsmatch, %struct.kwsmatch* %34, i32 0, i32 2
  store i64 0, i64* %35, align 8
  %36 = load i64, i64* %11, align 8
  %37 = load %struct.kwsmatch*, %struct.kwsmatch** %9, align 8
  %38 = getelementptr inbounds %struct.kwsmatch, %struct.kwsmatch* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 0
  store i64 %36, i64* %40, align 8
  %41 = load %struct.kwset*, %struct.kwset** %10, align 8
  %42 = getelementptr inbounds %struct.kwset, %struct.kwset* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.kwsmatch*, %struct.kwsmatch** %9, align 8
  %45 = getelementptr inbounds %struct.kwsmatch, %struct.kwsmatch* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  store i32 %43, i32* %47, align 4
  br label %48

48:                                               ; preds = %33, %30, %23
  %49 = load i64, i64* %11, align 8
  store i64 %49, i64* %5, align 8
  br label %56

50:                                               ; preds = %18, %4
  %51 = load i64, i64* %6, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = load i64, i64* %8, align 8
  %54 = load %struct.kwsmatch*, %struct.kwsmatch** %9, align 8
  %55 = call i64 @cwexec(i64 %51, i8* %52, i64 %53, %struct.kwsmatch* %54)
  store i64 %55, i64* %5, align 8
  br label %56

56:                                               ; preds = %50, %48
  %57 = load i64, i64* %5, align 8
  ret i64 %57
}

declare dso_local i64 @bmexec(i64, i8*, i64) #1

declare dso_local i64 @cwexec(i64, i8*, i64, %struct.kwsmatch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
