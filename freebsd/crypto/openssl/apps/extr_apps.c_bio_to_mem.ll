; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_apps.c_bio_to_mem.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_apps.c_bio_to_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BIO_FLAGS_MEM_RDONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bio_to_mem(i8** %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [1024 x i8], align 16
  store i8** %0, i8*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = call i32 (...) @BIO_s_mem()
  %13 = call i32* @BIO_new(i32 %12)
  store i32* %13, i32** %8, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %69

17:                                               ; preds = %3
  br label %18

18:                                               ; preds = %58, %17
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 1024
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %9, align 4
  br label %27

26:                                               ; preds = %21, %18
  store i32 1024, i32* %9, align 4
  br label %27

27:                                               ; preds = %26, %24
  %28 = load i32*, i32** %7, align 8
  %29 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @BIO_read(i32* %28, i8* %29, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @BIO_free(i32* %35)
  store i32 -1, i32* %4, align 4
  br label %69

37:                                               ; preds = %27
  %38 = load i32, i32* %9, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  br label %59

41:                                               ; preds = %37
  %42 = load i32*, i32** %8, align 8
  %43 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @BIO_write(i32* %42, i8* %43, i32 %44)
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load i32*, i32** %8, align 8
  %50 = call i32 @BIO_free(i32* %49)
  store i32 -1, i32* %4, align 4
  br label %69

51:                                               ; preds = %41
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %6, align 4
  %54 = sub nsw i32 %53, %52
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %59

58:                                               ; preds = %51
  br label %18

59:                                               ; preds = %57, %40
  %60 = load i32*, i32** %8, align 8
  %61 = load i8**, i8*** %5, align 8
  %62 = call i32 @BIO_get_mem_data(i32* %60, i8** %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32*, i32** %8, align 8
  %64 = load i32, i32* @BIO_FLAGS_MEM_RDONLY, align 4
  %65 = call i32 @BIO_set_flags(i32* %63, i32 %64)
  %66 = load i32*, i32** %8, align 8
  %67 = call i32 @BIO_free(i32* %66)
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %59, %48, %34, %16
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32* @BIO_new(i32) #1

declare dso_local i32 @BIO_s_mem(...) #1

declare dso_local i32 @BIO_read(i32*, i8*, i32) #1

declare dso_local i32 @BIO_free(i32*) #1

declare dso_local i32 @BIO_write(i32*, i8*, i32) #1

declare dso_local i32 @BIO_get_mem_data(i32*, i8**) #1

declare dso_local i32 @BIO_set_flags(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
