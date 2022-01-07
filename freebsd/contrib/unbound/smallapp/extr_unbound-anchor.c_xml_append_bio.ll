; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-anchor.c_xml_append_bio.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-anchor.c_xml_append_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@verb = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"out of memory in BIO_write\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @xml_append_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xml_append_bio(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i8* null, i8** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @BIO_seek(i32* %8, i32 0)
  %10 = load i32*, i32** %4, align 8
  %11 = call i64 @BIO_get_mem_data(i32* %10, i8** %5)
  store i64 %11, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %14, %2
  %18 = load i64, i64* @verb, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %17
  %23 = call i32 @exit(i32 0) #3
  unreachable

24:                                               ; preds = %14
  store i64 0, i64* %6, align 8
  br label %25

25:                                               ; preds = %48, %24
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %51

29:                                               ; preds = %25
  %30 = load i8*, i8** %5, align 8
  %31 = load i64, i64* %6, align 8
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 13
  br i1 %35, label %43, label %36

36:                                               ; preds = %29
  %37 = load i8*, i8** %5, align 8
  %38 = load i64, i64* %6, align 8
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 10
  br i1 %42, label %43, label %47

43:                                               ; preds = %36, %29
  %44 = load i8*, i8** %5, align 8
  %45 = load i64, i64* %6, align 8
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  store i8 32, i8* %46, align 1
  br label %47

47:                                               ; preds = %43, %36
  br label %48

48:                                               ; preds = %47
  %49 = load i64, i64* %6, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %6, align 8
  br label %25

51:                                               ; preds = %25
  %52 = load i32*, i32** %3, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = load i64, i64* %7, align 8
  %55 = call i64 @BIO_write(i32* %52, i8* %53, i64 %54)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %51
  %58 = load i64, i64* @verb, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %57
  %63 = call i32 @exit(i32 0) #3
  unreachable

64:                                               ; preds = %51
  ret void
}

declare dso_local i32 @BIO_seek(i32*, i32) #1

declare dso_local i64 @BIO_get_mem_data(i32*, i8**) #1

declare dso_local i32 @printf(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @BIO_write(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
