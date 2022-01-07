; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_db_interface.c_db_write_bytes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_db_interface.c_db_write_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @db_write_bytes(i64 %0, i64 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %10, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = call i8* @kdb_jmpbuf(i8* %12)
  store i8* %13, i8** %8, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call i32 @setjmp(i8* %14) #3
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %3
  %19 = call i32 (...) @disable_wp()
  store i32 %19, i32* %10, align 4
  %20 = load i64, i64* %4, align 8
  %21 = inttoptr i64 %20 to i8*
  store i8* %21, i8** %9, align 8
  br label %22

22:                                               ; preds = %26, %18
  %23 = load i64, i64* %5, align 8
  %24 = add i64 %23, -1
  store i64 %24, i64* %5, align 8
  %25 = icmp ugt i64 %23, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load i8*, i8** %6, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %6, align 8
  %29 = load i8, i8* %27, align 1
  %30 = load i8*, i8** %9, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %9, align 8
  store i8 %29, i8* %30, align 1
  br label %22

32:                                               ; preds = %22
  br label %33

33:                                               ; preds = %32, %3
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @restore_wp(i32 %34)
  %36 = load i8*, i8** %8, align 8
  %37 = call i8* @kdb_jmpbuf(i8* %36)
  %38 = load i32, i32* %11, align 4
  ret i32 %38
}

declare dso_local i8* @kdb_jmpbuf(i8*) #1

; Function Attrs: returns_twice
declare dso_local i32 @setjmp(i8*) #2

declare dso_local i32 @disable_wp(...) #1

declare dso_local i32 @restore_wp(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
