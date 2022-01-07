; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_tokenize.c_alloc_token_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_tokenize.c_alloc_token_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32** }

@NUL = common dso_local global i8 0, align 1
@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (i8*)* @alloc_token_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @alloc_token_list(i8* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 2, i32* %5, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %69

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = call i8* @SPN_WHITESPACE_CHARS(i8* %11)
  store i8* %12, i8** %3, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = load i8, i8* @NUL, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %10
  br label %69

20:                                               ; preds = %10
  %21 = load i8*, i8** %3, align 8
  store i8* %21, i8** %6, align 8
  br label %22

22:                                               ; preds = %30, %20
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  %27 = call i8* @BRK_WHITESPACE_CHARS(i8* %26)
  store i8* %27, i8** %6, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = call i8* @SPN_WHITESPACE_CHARS(i8* %28)
  store i8* %29, i8** %6, align 8
  br label %30

30:                                               ; preds = %22
  %31 = load i8*, i8** %6, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = load i8, i8* @NUL, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %33, %35
  br i1 %36, label %22, label %37

37:                                               ; preds = %30
  %38 = load i8*, i8** %6, align 8
  %39 = load i8*, i8** %3, align 8
  %40 = ptrtoint i8* %38 to i64
  %41 = ptrtoint i8* %39 to i64
  %42 = sub i64 %40, %41
  %43 = add i64 8, %42
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 %45, 8
  %47 = add i64 %43, %46
  %48 = trunc i64 %47 to i32
  %49 = call %struct.TYPE_4__* @malloc(i32 %48)
  store %struct.TYPE_4__* %49, %struct.TYPE_4__** %4, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %51 = icmp eq %struct.TYPE_4__* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %37
  %53 = load i32, i32* @ENOMEM, align 4
  store i32 %53, i32* @errno, align 4
  br label %67

54:                                               ; preds = %37
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32**, i32*** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32*, i32** %57, i64 %60
  %62 = bitcast i32** %61 to i32*
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32**, i32*** %64, align 8
  %66 = getelementptr inbounds i32*, i32** %65, i64 0
  store i32* %62, i32** %66, align 8
  br label %67

67:                                               ; preds = %54, %52
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %68, %struct.TYPE_4__** %2, align 8
  br label %71

69:                                               ; preds = %19, %9
  %70 = load i32, i32* @ENOENT, align 4
  store i32 %70, i32* @errno, align 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %2, align 8
  br label %71

71:                                               ; preds = %69, %67
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  ret %struct.TYPE_4__* %72
}

declare dso_local i8* @SPN_WHITESPACE_CHARS(i8*) #1

declare dso_local i8* @BRK_WHITESPACE_CHARS(i8*) #1

declare dso_local %struct.TYPE_4__* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
