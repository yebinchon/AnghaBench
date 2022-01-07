; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/grep/extr_grep.c_grepbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/grep/extr_grep.c_grepbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@out_invert = common dso_local global i64 0, align 8
@outleft = common dso_local global i64 0, align 8
@done_on_match = common dso_local global i64 0, align 8
@exit_on_match = common dso_local global i64 0, align 8
@bufoffset = common dso_local global i32 0, align 4
@buflim = common dso_local global i8* null, align 8
@after_last_match = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @grepbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grepbuf(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load i8*, i8** %4, align 8
  store i8* %13, i8** %8, align 8
  br label %14

14:                                               ; preds = %89, %2
  %15 = load i8*, i8** %8, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = ptrtoint i8* %16 to i64
  %19 = ptrtoint i8* %17 to i64
  %20 = sub i64 %18, %19
  %21 = trunc i64 %20 to i32
  %22 = call i64 @execute(i8* %15, i32 %21, i64* %10, i32 0)
  store i64 %22, i64* %9, align 8
  %23 = icmp ne i64 %22, -1
  br i1 %23, label %24, label %91

24:                                               ; preds = %14
  %25 = load i8*, i8** %8, align 8
  %26 = load i64, i64* %9, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  store i8* %27, i8** %11, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = load i64, i64* %10, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  store i8* %30, i8** %12, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = icmp eq i8* %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  br label %91

35:                                               ; preds = %24
  %36 = load i64, i64* @out_invert, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %68, label %38

38:                                               ; preds = %35
  %39 = load i8*, i8** %11, align 8
  %40 = load i8*, i8** %12, align 8
  %41 = call i32 @prtext(i8* %39, i8* %40, i32* null)
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  %44 = load i64, i64* @outleft, align 8
  %45 = add nsw i64 %44, -1
  store i64 %45, i64* @outleft, align 8
  %46 = load i64, i64* @outleft, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %38
  %49 = load i64, i64* @done_on_match, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %48, %38
  %52 = load i64, i64* @exit_on_match, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = call i32 @exit(i32 0) #3
  unreachable

56:                                               ; preds = %51
  %57 = load i32, i32* @bufoffset, align 4
  %58 = sext i32 %57 to i64
  %59 = load i8*, i8** @buflim, align 8
  %60 = load i8*, i8** %12, align 8
  %61 = ptrtoint i8* %59 to i64
  %62 = ptrtoint i8* %60 to i64
  %63 = sub i64 %61, %62
  %64 = sub nsw i64 %58, %63
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* @after_last_match, align 4
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %3, align 4
  br label %111

67:                                               ; preds = %48
  br label %89

68:                                               ; preds = %35
  %69 = load i8*, i8** %8, align 8
  %70 = load i8*, i8** %11, align 8
  %71 = icmp ult i8* %69, %70
  br i1 %71, label %72, label %88

72:                                               ; preds = %68
  %73 = load i8*, i8** %8, align 8
  %74 = load i8*, i8** %11, align 8
  %75 = call i32 @prtext(i8* %73, i8* %74, i32* %7)
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, %76
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = load i64, i64* @outleft, align 8
  %82 = sub nsw i64 %81, %80
  store i64 %82, i64* @outleft, align 8
  %83 = load i64, i64* @outleft, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %72
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* %3, align 4
  br label %111

87:                                               ; preds = %72
  br label %88

88:                                               ; preds = %87, %68
  br label %89

89:                                               ; preds = %88, %67
  %90 = load i8*, i8** %12, align 8
  store i8* %90, i8** %8, align 8
  br label %14

91:                                               ; preds = %34, %14
  %92 = load i64, i64* @out_invert, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %109

94:                                               ; preds = %91
  %95 = load i8*, i8** %8, align 8
  %96 = load i8*, i8** %5, align 8
  %97 = icmp ult i8* %95, %96
  br i1 %97, label %98, label %109

98:                                               ; preds = %94
  %99 = load i8*, i8** %8, align 8
  %100 = load i8*, i8** %5, align 8
  %101 = call i32 @prtext(i8* %99, i8* %100, i32* %7)
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* %6, align 4
  %104 = add nsw i32 %103, %102
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = load i64, i64* @outleft, align 8
  %108 = sub nsw i64 %107, %106
  store i64 %108, i64* @outleft, align 8
  br label %109

109:                                              ; preds = %98, %94, %91
  %110 = load i32, i32* %6, align 4
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %109, %85, %56
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i64 @execute(i8*, i32, i64*, i32) #1

declare dso_local i32 @prtext(i8*, i8*, i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
