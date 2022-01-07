; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_sha3Func.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_sha3Func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [44 x i8] c"SHA3 size should be one of: 224 256 384 512\00", align 1
@SQLITE_NULL = common dso_local global i32 0, align 4
@SQLITE_BLOB = common dso_local global i32 0, align 4
@SQLITE_TRANSIENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @sha3Func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sha3Func(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %11 = load i32**, i32*** %6, align 8
  %12 = getelementptr inbounds i32*, i32** %11, i64 0
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @sqlite3_value_type(i32* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32**, i32*** %6, align 8
  %16 = getelementptr inbounds i32*, i32** %15, i64 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @sqlite3_value_bytes(i32* %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 256, i32* %10, align 4
  br label %42

22:                                               ; preds = %3
  %23 = load i32**, i32*** %6, align 8
  %24 = getelementptr inbounds i32*, i32** %23, i64 1
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @sqlite3_value_int(i32* %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 224
  br i1 %28, label %29, label %41

29:                                               ; preds = %22
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 256
  br i1 %31, label %32, label %41

32:                                               ; preds = %29
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 384
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 512
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @sqlite3_result_error(i32* %39, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 -1)
  br label %74

41:                                               ; preds = %35, %32, %29, %22
  br label %42

42:                                               ; preds = %41, %21
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @SQLITE_NULL, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %74

47:                                               ; preds = %42
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @SHA3Init(i32* %7, i32 %48)
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @SQLITE_BLOB, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = load i32**, i32*** %6, align 8
  %55 = getelementptr inbounds i32*, i32** %54, i64 0
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @sqlite3_value_blob(i32* %56)
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @SHA3Update(i32* %7, i32 %57, i32 %58)
  br label %67

60:                                               ; preds = %47
  %61 = load i32**, i32*** %6, align 8
  %62 = getelementptr inbounds i32*, i32** %61, i64 0
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @sqlite3_value_text(i32* %63)
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @SHA3Update(i32* %7, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %60, %53
  %68 = load i32*, i32** %4, align 8
  %69 = call i32 @SHA3Final(i32* %7)
  %70 = load i32, i32* %10, align 4
  %71 = sdiv i32 %70, 8
  %72 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %73 = call i32 @sqlite3_result_blob(i32* %68, i32 %69, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %67, %46, %38
  ret void
}

declare dso_local i32 @sqlite3_value_type(i32*) #1

declare dso_local i32 @sqlite3_value_bytes(i32*) #1

declare dso_local i32 @sqlite3_value_int(i32*) #1

declare dso_local i32 @sqlite3_result_error(i32*, i8*, i32) #1

declare dso_local i32 @SHA3Init(i32*, i32) #1

declare dso_local i32 @SHA3Update(i32*, i32, i32) #1

declare dso_local i32 @sqlite3_value_blob(i32*) #1

declare dso_local i32 @sqlite3_value_text(i32*) #1

declare dso_local i32 @sqlite3_result_blob(i32*, i32, i32, i32) #1

declare dso_local i32 @SHA3Final(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
