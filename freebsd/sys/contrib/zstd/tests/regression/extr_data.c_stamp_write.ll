; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/regression/extr_data.c_stamp_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/regression/extr_data.c_stamp_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@kStampName = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"stamped new data cache\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32**, i32)* @stamp_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stamp_write(i8* %0, i32** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* @kStampName, align 4
  %14 = call i8* @cat3(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %13)
  store i8* %14, i8** %8, align 8
  store i32* null, i32** %9, align 8
  %15 = load i32, i32* @EIO, align 4
  store i32 %15, i32* %10, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  store i32 %19, i32* %4, align 4
  br label %58

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %10, align 4
  br label %42

25:                                               ; preds = %20
  %26 = load i32**, i32*** %6, align 8
  %27 = call i32 @stamp_hash(i32** %26)
  %28 = call i32 @XXH64_canonicalFromHash(i32* %11, i32 %27)
  %29 = load i8*, i8** %8, align 8
  %30 = call i32* @fopen(i8* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %30, i32** %9, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %42

34:                                               ; preds = %25
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 @fwrite(i32* %11, i32 4, i32 1, i32* %35)
  %37 = icmp ne i32 %36, 1
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %42

39:                                               ; preds = %34
  store i32 0, i32* %10, align 4
  %40 = load i32, i32* @stderr, align 4
  %41 = call i32 @fprintf(i32 %40, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %38, %33, %23
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 @unlink(i8* %46)
  br label %48

48:                                               ; preds = %45, %42
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 @free(i8* %49)
  %51 = load i32*, i32** %9, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32*, i32** %9, align 8
  %55 = call i32 @fclose(i32* %54)
  br label %56

56:                                               ; preds = %53, %48
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %56, %18
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i8* @cat3(i8*, i8*, i32) #1

declare dso_local i32 @XXH64_canonicalFromHash(i32*, i32) #1

declare dso_local i32 @stamp_hash(i32**) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fwrite(i32*, i32, i32, i32*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
