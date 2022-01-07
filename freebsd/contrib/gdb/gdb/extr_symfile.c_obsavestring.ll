; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symfile.c_obsavestring.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symfile.c_obsavestring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obstack = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @obsavestring(i8* %0, i32 %1, %struct.obstack* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.obstack*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.obstack* %2, %struct.obstack** %6, align 8
  %11 = load %struct.obstack*, %struct.obstack** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = add nsw i32 %12, 1
  %14 = call i64 @obstack_alloc(%struct.obstack* %11, i32 %13)
  %15 = inttoptr i64 %14 to i8*
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** %4, align 8
  store i8* %16, i8** %8, align 8
  %17 = load i8*, i8** %7, align 8
  store i8* %17, i8** %9, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  store i8* %21, i8** %10, align 8
  br label %22

22:                                               ; preds = %26, %3
  %23 = load i8*, i8** %8, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = icmp ne i8* %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load i8*, i8** %8, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %8, align 8
  %29 = load i8, i8* %27, align 1
  %30 = load i8*, i8** %9, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %9, align 8
  store i8 %29, i8* %30, align 1
  br label %22

32:                                               ; preds = %22
  %33 = load i8*, i8** %7, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  store i8 0, i8* %36, align 1
  %37 = load i8*, i8** %7, align 8
  ret i8* %37
}

declare dso_local i64 @obstack_alloc(%struct.obstack*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
